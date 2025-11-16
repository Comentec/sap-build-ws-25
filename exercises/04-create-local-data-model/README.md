# Exercise 04 - Create Local Data Model

In this exercise, you'll create the local data model for your feedback application and adapt the external service to your needs. This demonstrates how to design entities that work alongside external services, following enterprise data modeling best practices.

## Adapt External Service

First, you'll create a simplified projection of the external SuccessFactors service to make it easier to work with in your application.

1. Create a new file `srv/external/index.cds`:
   ```bash
   touch srv/external/index.cds
   ```

2. Open `srv/external/index.cds` and add the projection:
   ```cds
   using {PersonalInformation as sfec} from './PersonalInformation';

   namespace ext.simple;

   entity Employees as
       projection on sfec.PerPersonal {
           key personIdExternal as ID,
               firstName,
               lastName,
               displayName
       }
   ```

**What this does:**
- **Simplifies the complex SuccessFactors metadata** - The original PerPersonal entity has dozens of fields; this projection shows only what you need
- **Renames the key field** - `personIdExternal` becomes the simpler `ID` 
- **Creates a clean namespace** - `ext.simple.Employees` is easier to reference than the full SuccessFactors path
- **Maintains loose coupling** - Changes to SuccessFactors metadata don't break your application logic

## Create Data Model Schema

Now you'll create the main database schema with your business entities.

1. Create the database schema file:
   ```bash
   mkdir -p db
   touch db/schema.cds
   ```

2. Open `db/schema.cds` and start with the Core Values entity:
   ```cds
   using {sap.common.CodeList as CodeList} from '@sap/cds/common';

   namespace data.model;

   entity CoreValues : CodeList {
       key code : String;
   }
   ```

3. Add the Feedbacks entity below the CoreValues definition:
   ```cds
   using {sap.common.CodeList as CodeList} from '@sap/cds/common';
   using {cuid} from '@sap/cds/common';
   using {ext} from '../srv/external';

   namespace data.model;

   entity CoreValues : CodeList {
       key code : String;
   }

   entity Feedbacks: cuid {
       reporter: Association to ext.simple.Employees;
       subject: Association to ext.simple.Employees;
       comment: LargeString;
       coreValue: Association to CoreValues;
   }
   ```

## Understanding the Schema Design

### Core Values as Code List
The `CoreValues` entity extends the standard `CodeList` aspect, which provides:
- **code** field - Short identifier for the value
- **name** field - Human-readable name (from CodeList aspect)
- **descr** field - Optional description (from CodeList aspect)
- **Automatic UI support** - CAP generates dropdown lists for code list entities

### Feedbacks Entity Structure
- **cuid aspect**: Provides auto-generated UUID `ID` field as primary key
- **Association fields**: Connect to external employees and internal core values
- **LargeString**: Optimized for longer text content (comments up to ~2GB)
- **Managed relationships**: CAP handles the foreign key relationships automatically

### Association Benefits
Using associations instead of simple foreign keys provides:
- **Type safety** - CAP validates relationships at compile time
- **Automatic joins** - OData queries can expand related entities
- **Referential integrity** - Database constraints are generated automatically
- **Navigation properties** - UI can follow relationships easily

## Add Sample Data

Create realistic test data that demonstrates the feedback scenarios. CAP distinguishes between two types of data:

- **`db/data`** - Deployment data that gets loaded into your production database (e.g., code lists, reference data)
- **`test/data`** - Local test data for development only, not deployed to production

### Core Values (Deployment Data)

Core values are reference data that should be deployed with your application:

1. Create the core values data:
   ```bash
   mkdir -p db/data
   touch db/data/data.model-CoreValues.csv
   ```

2. Add core values to `db/data/data.model-CoreValues.csv`:
   ```csv
   code,name
   TRST,Trust
   TEAM,Team Work
   TRNS,Transparency
   ```

### Feedbacks (Test Data)

Feedback records are transactional data - you don't want to deploy sample feedbacks to production. This goes in the `test/data` folder:

1. Create the test data directory and file:
   ```bash
   mkdir -p test/data
   touch test/data/data.model-Feedbacks.csv
   ```

2. Add sample feedbacks to `test/data/data.model-Feedbacks.csv`:
   ```csv
   ID;reporter_ID;subject_ID;comment;coreValue_code
   00000000-0000-0000-0000-000000000001;1;4;Good team work on the quarterly presentation;TEAM
   00000000-0000-0000-0000-000000000002;1;2;Thanks for the trust in handling the client relationship;TRST
   00000000-0000-0000-0000-000000000003;3;2;Appreciate the transparency in sharing project challenges;TRNS
   ```

   > **Note:** The CSV uses semicolons (`;`) as delimiters instead of commas to safely handle free-text content in the `comment` field that might contain commas. CAP supports both comma and semicolon delimiters - we used commas for CoreValues (simple data) and semicolons for Feedbacks (contains free text). The `reporter_ID` and `subject_ID` values (1, 2, 3, 4) correspond to the `personIdExternal` values from your mock SuccessFactors data.

## Test the Data Model

Verify your schema loads correctly:

1. Start the application to test the data model:
   ```bash
   cds watch
   ```

2. Review the startup output to confirm your models load:
   ```
   [cds] - loaded model from 6 file(s):

     srv/external/PersonalInformation.cds
     srv/external/index.cds
     db/schema.cds
     node_modules/@sap/cds/common.cds
     ...

   [cds] - connect to db > sqlite { url: ':memory:' }
   > init from db/data/data.model-CoreValues.csv
   > init from test/data/data.model-Feedbacks.csv
   > init from srv/external/data/PersonalInformation-PerPersonal.csv
   ```

   The application currently shows no services because you haven't created the service layer yet, but the data model compilation confirms everything is working.

   > **Note:** Notice that `cds watch` automatically loads the mock data from Exercise 03 (`PersonalInformation-PerPersonal.csv`). Even though you're not running a separate mock service, `cds watch` detects external service definitions and loads their mock data into the in-memory database alongside your local data. It also loads both `db/data` (deployment data) and `test/data` (test-only data) when running locally.

## Preview Database Schema

Since you haven't created the service layer yet, you can't see the data model in action through OData endpoints. However, you can preview the database schema that CAP generates from your data model using the deployment preview command:

```bash
cds deploy -2 sqlite --dry
```

This command shows the SQL DDL (Data Definition Language) that CAP would generate to create your database tables. The output includes (trimmed for clarity):

```sql
CREATE TABLE data_model_CoreValues (
  code NVARCHAR(5000) PRIMARY KEY,
  name NVARCHAR(5000),
  descr NVARCHAR(5000)
);

CREATE TABLE data_model_Feedbacks (
  ID NVARCHAR(36) PRIMARY KEY,
  reporter_ID NVARCHAR(5000),
  subject_ID NVARCHAR(5000),
  comment NCLOB,
  coreValue_code NVARCHAR(5000)
);
```

**Key observations:**
- **Automatic foreign keys**: Notice `reporter_ID`, `subject_ID`, and `coreValue_code` fields - CAP automatically generates these foreign key columns based on your association definitions
- **Type mapping**: CDS types like `LargeString` are mapped to appropriate SQL types like `NCLOB`
- **Naming conventions**: Entity names are converted to table names with underscores (e.g., `data.model.Feedbacks` becomes `data_model_Feedbacks`)

**This demonstrates one of CAP's core benefits**: CDS modeling keeps your focus on data modeling and business logic, not on database activities. You define associations in your schema, and CAP handles the underlying database implementation details.

> **Note:** The full output includes additional tables for external services and common aspects. For workshop purposes, the output above has been trimmed to focus on the key tables that demonstrate the core concepts.

## Understanding the Data Architecture

### Namespace Strategy
- **`data.model`** - Contains your business entities
- **`ext.simple`** - Simplified external service projections
- **`PersonalInformation`** - Original external service (untouched)

This separation allows you to:
- **Evolve your model** independently from external services
- **Version different concerns** separately
- **Scale development** across multiple teams
- **Deploy components** independently if needed

### Association vs. Composition
Your model uses **associations** rather than **compositions**:
- **Associations** - Relationships between independent entities (what you have)
- **Compositions** - Parent-child relationships where child cannot exist without parent

Feedbacks are independent records that reference employees, so associations are the correct choice.

### Foreign Key Management
CAP automatically generates foreign key fields:
- `reporter_ID` - Stores the association key to the reporter employee
- `subject_ID` - Stores the association key to the subject employee  
- `coreValue_code` - Stores the association key to the core value

You don't define these explicitly - CAP creates them based on your association definitions.

## Summary

You've successfully created a local data model with external service integration! You now have:
- ✅ Simplified external service projection for easier development
- ✅ Core Values entity using standard code list patterns
- ✅ Feedback entity with proper associations to internal and external data
- ✅ Sample data demonstrating realistic HR feedback scenarios
- ✅ Understanding of CAP's association and namespace patterns

Your data model provides a solid foundation for capturing structured feedback while maintaining clean separation between local and external concerns.

---

**Next:** You'll create the service layer that exposes your data model and handles the integration between local and external entities.