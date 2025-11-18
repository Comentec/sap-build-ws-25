# Exercise 08 - Add Authentication

In this exercise, you'll enhance your feedback application with user authentication and user tracking. You'll switch from dummy authentication to mocked authentication and add automatic tracking of who creates and modifies records.

## What You'll Learn

This exercise adds two essential features that every production application needs:

### 1. Authentication - Who Can Access Your Application

**What it does:** Requires users to log in before accessing your application

**How you'll implement it:**
- Switch from `dummy` to `mocked` authentication in development
- Add `@requires: 'authenticated-user'` annotation to protect your service
- Test with mock users (like "alice") that simulate real login

**Why it matters:**
- Protects your application from unauthorized access
- Prepares for production deployment with real authentication (IAS)
- Establishes foundation for role-based access control later

### 2. User Tracking - Who Did What and When

**What it does:** Automatically records who creates and modifies each record

**How you'll implement it:**
- Add the `managed` aspect to your entity definition
- CAP framework automatically captures user and timestamp data
- No additional code needed - it just works!

**Why it matters:**
- Creates an audit trail for compliance and accountability
- Helps troubleshoot issues by knowing who made changes
- Provides data for user-specific features (like "my feedback")

## Step 1: Update Package Configuration

Switch from dummy to mocked authentication in your project configuration.

### Modify package.json

Open `package.json` and locate the `cds.requires.auth` section:

```json
{
  "name": "feedback_<username>",
  "version": "1.0.0",
  "cds": {
    "requires": {
      "auth": {
        "[development]": {
          "kind": "dummy"
        },
        "[production]": {
          "kind": "xsuaa"
        }
      },
    }
  }
}
```

**Change the auth strategy** from `dummy` to `mocked`:

```json
{
  "name": "feedback_<username>",
  "version": "1.0.0",
  "cds": {
    "requires": {
      "auth": {
        "[development]": {
          "kind": "mocked"
        },
        "[production]": {
          "kind": "xsuaa"
        }
      },
    }
  }
}
```

### What This Change Does

- **Enables authentication** - Users must log in to access services
- **Activates mock users** - Provides test users for development
- **Triggers login flow** - Applications will show login screens
- **Prepares for production** - Sets foundation for real authentication

Run the following command to see the authentication related settings for this project. This includes the settings we have defined together with the defaults provided by the framework.

```bash
cds env requires.auth
```
This will give you a list as follows.

```json
{
  "restrict_all_services": false,
  "kind": "mocked",
  "users": {
    "alice": {
      "tenant": "t1",
      "roles": [
        "admin"
      ]
    },
    "bob": {
      "tenant": "t1",
      "roles": [
        "cds.ExtensionDeveloper"
      ]
    },
    "carol": {
      "tenant": "t1",
      "roles": [
        "admin",
        "cds.ExtensionDeveloper"
      ]
    },
    ...
```

## Step 2: Add User Tracking with Managed Aspect

Enable automatic tracking of who creates and modifies records by adding the managed aspect to your data model.

### Update Data Model

Open `db/schema.cds` and add the managed aspect to your Feedbacks entity:

```cds
using {
    sap.common.CodeList as CodeList,
                           cuid,
                           managed
} from '@sap/cds/common';

namespace data.model;

entity Feedbacks : cuid, managed {
    reporter  : Association to ext.simple.Employees;
    subject   : Association to ext.simple.Employees;
    comment   : LargeString;
    coreValue : Association to CoreValues;
}

...
```

### What the Managed Aspect Provides

The `managed` aspect automatically adds these fields to your entity:
- **createdAt** - Timestamp when record was created
- **createdBy** - User who created the record
- **modifiedAt** - Timestamp when record was last modified  
- **modifiedBy** - User who last modified the record

**Framework handles automatically:**
- **User context** - Gets current user from authentication
- **Timestamps** - Sets creation and modification times
- **No manual code** - Works without additional programming

## Step 3: Create Authentication Service Configuration

Separate authentication concerns by creating a dedicated configuration file for service-level security.

### Create Service Authentication File

Create a new file `srv/main-service-auth.cds`:

```cds
using {MainService} from './main-service';

// Require authentication for the entire service
annotate MainService with @requires: 'authenticated-user';
```

### Why This Configuration?

**CAP Pattern - Separation of Concerns:**

1. **Pattern Description:**
   - Keep service structure and authorization annotations in separate files using CDS aspects
   - `main-service.cds` contains the pure service and entity structure
   - `main-service-auth.cds` augments the service with `@requires` and `@restrict` annotations

2. **Benefits:**
   - Cleaner project structure
   - Different ownership/lifecycle for authorization concerns
   - Easier authorization updates without touching base service definitions
   - Service model stays concise

3. **Prerequisites:**
   - Same namespace/compilation context so annotations apply correctly

## Step 4: Test Authentication and User Tracking

### Restart Application

Restart your application to apply the authentication changes:

```bash
# Stop current process with Ctrl+C
# Then restart
cds watch
```

### Test Authentication with Incognito Browser

1. **Open an incognito/private browser window**
2. **Navigate to** `http://localhost:4004`
3. **Click on the Fiori link**
4. **You should see a login screen** instead of direct access

### Login with Mock User

CAP provides default mock users for testing:

**Use any mock user:**
- **Username:** `alice` 
- **Password:** (leave empty)

**Login steps:**
1. **Enter "alice"** in the username field
2. **Leave password empty** (or enter any text)
3. **Click Login**
4. **Access granted** - You should now see the Fiori preview page

### Create Feedback to Test User Tracking

1. **Click "Provide feedback"** to open the form
2. **Fill out the feedback:**
   ```
   Reporter: [Select an employee - e.g., "Michael Scott"]
   Subject: [Select another employee - e.g., "Jim Halpert"]
   Core Value: [Select a value - e.g., "COLLABORATION"]
   Comment: "Great teamwork on the recent project launch!"
   ```
3. **Click Save** to create the feedback

### Verify User Tracking Data

Check that the managed aspect is working by viewing the created record:

1. **Open a new browser tab**
2. **Navigate to** `http://localhost:4004/odata/v4/main-service/Feedbacks`
3. **Look for the managed fields** in the JSON response - you should see `createdBy` and `modifiedBy` both showing "alice", along with `createdAt` and `modifiedAt` timestamps

## Summary

You've successfully added authentication and user tracking to your feedback application! Your application now:

- ✅ **Requires user login** - Incognito browser testing shows authentication requirement
- ✅ **Uses mocked authentication** - Realistic login behavior for development
- ✅ **Protects the entire service** - All entities require authentication automatically
- ✅ **Tracks user actions** - Managed aspect records who creates and modifies records
- ✅ **Separates security concerns** - Authentication configuration in dedicated file
- ✅ **Provides audit trail** - Created/modified by and timestamp data automatically captured

The authentication and user tracking establish a solid foundation for production deployment. When you deploy to SAP BTP, you'll simply change the authentication from "mocked" to use IAS (Identity Authentication Service) for real user login, while the user tracking will continue to work automatically.

---

**Next Steps**: Deploy to SAP BTP with IAS authentication, add role-based access control, or implement user-specific features like automatically setting the reporter field to the logged-in user.