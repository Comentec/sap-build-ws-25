# Exercise 01 - Set up your workspace
At the end of this exercise, you'll have an environment in which to work for the duration of this workshop. For this exercise, we will start from scratch so we can eliminate the need for pre-existing knowledge of SuccessFactors and SAP Build.
## Set up the environment
For this workshop, we will be using an SAP Build subscription dedicated for this workshop. This environment will be available to you during the workshop and some time after so you can revisit what you have built.

Anytime, you can replicate the same examples in your own environment as well.

Log on to SAP Build with the credentials provided to you by the instructor of the workshop.
- URL to access the SAP Build subscription
- Username and password

### Create your project
In the projects area, create a new project. Choose the create option from the drop-down.

![Create your project](assets/create_project.png)

1. Objective: Application
1. Category: Full-Stack
1. Type: Full-Stack Node.JS
1. Project Details
    - Name: feedback_<username>
    - Description: Employee feedback application
    - Dev Space: Full_Stack
1. Review and create.

The status will show pending creation and after a minute or two will be ready.

### Go to Dev Space

Once the project has been generated, you can click on its hyperlink and it will take you to the project environment within the Dev Space.

By default, the project Storyboard will open, showing you external resources, data models, services, and UI applications.

## Check the installation of the CDS development kit

👉 Inside your dev container or your Dev Space, open a terminal, using "Terminal: Create New Terminal" in the Command Palette, and at the prompt, check the version:

```
cds v
```

You should see that the CDS development kit is installed. Depending on your workspace, you'll see slightly different output, but it should generally look something like this:

```
@sap/cds: 9.4.4
@sap/cds-dk: 9.4.3
@sap/cds-compiler: 6.4.6
@sap/cds-dk (global): 9.4.3
@sap/cds-fiori: 2.1.1
@sap/cds-mtxs: 3.4.3
@cap-js/asyncapi: 1.0.3
@cap-js/db-service: 2.6.0
@cap-js/hana: 2.3.4
@cap-js/openapi: 1.2.3
@cap-js/sqlite: 2.0.4
Node.js: v22.13.1
home: /home/user/projects/feedback_model/node_modules/@sap/cds
```
> The CDS development kit is installed as part of any "Full Stack Cloud Application" type of Dev Space in the SAP Business Application Studio.

## Summary
At this point you've got an environment in which to work through the rest of the exercises in this workshop, and you have the CDS development kit installed and ready to use.

## (Optional) Connect to SAP Business Application Studio remotely

1. In your local VSCode application, install extension [SAP Business Application Studio toolkit](https://marketplace.visualstudio.com/items?itemName=SAPOSS.app-studio-toolkit).
1. Enter the URL of the Business Application Studioe. It looks like https://...applicationstudio.cloud.sap
1. This URL will register the BAS in your extension.
1. Click on the login button to the right of your landscape entry.
1. The browser will open and log you into the environment.
1. The extension is now ready to be used. Click on the `open in new window` button to the your landscape entry.
1. This will open new window connected to the Dev Space.
1. Then open the project folder -> /home/user/project/feedback...
1. Now you can run it locally connected to the Dev Space container.

## (Optional) Add Remote Repository

Create new empty repository in your own versioning environment.

- Name: sap_build_ws_feedback
- Make sure it is empty, so don’t add anything to it, like README.

Then take the url (e.g. https://github.com/frankmeertens/sap_build_ws_feedback.

On the left sidebar, click on the Simple Git extension and here we can add the remote repository.

Note: When you store the credentials for the remote Git repository, they will be stored in /home/user/.git-credentials.

The Simple Git extension will automatically commit and sync the changes.

Open the terminal panel (ctrl+`) and the GitLens extension will show the first commit that was completed.