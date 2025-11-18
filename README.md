# Building SuccessFactors Extensions with SAP Build (SAP Build Discovery Days)

## Description

This repository contains the material for the "Building SuccessFactors Extensions with SAP Build" workshop, brought to you by Comentec. This hands-on workshop introduces developers to the integrated development experience of SAP Build Code with a focus on SuccessFactors HR system integration.

## Overview

This workshop introduces attendees to building modern HR extensions using SAP Build Code on SAP Business Technology Platform (BTP). You'll create a full-stack employee feedback application that demonstrates the core concepts of SAP cloud development for HR professionals.

The workshop provides insight into SAP cloud development concepts through a simple, yet reusable foundation that can be used for any HR extension. You'll experience the separation of responsibilities, learn to simplify complex data models, and leverage the BTP platform to help HR IT professionals meet their business demands efficiently.

## What You'll Build

During this workshop, you'll follow this high-level development flow:

1. **Import External Service Definitions** - Connect to SuccessFactors Personal Information API via SAP Business Accelerator Hub
2. **Develop Local Data Model** - Create your feedback application entities and relationships
3. **Expose the Model** - Build services that combine local and external data
4. **Build User Interface** - Generate forms and views for the feedback application

This approach demonstrates enterprise-grade architecture patterns while remaining accessible to developers new to SAP BTP.

## Target Audience

This workshop is designed for technical developers from SAP customer organizations who are:
- New to SAP Business Technology Platform (BTP)
- Interested in extending SuccessFactors or other HR systems
- Looking to understand modern SAP cloud development patterns
- Working in HR IT teams seeking to build internal capabilities

No prior experience with SuccessFactors or SAP BTP is required, though general programming knowledge is helpful.

## Session Prerequisites

In order to get the most from this workshop, and to be able to work through the exercises, there are certain prerequisites that you must have sorted out before we start the workshop.

The prerequisites are detailed in a separate [prerequisites](prerequisites.md) file. Please ensure you have everything ready before attending the workshop.

## Key Learning Outcomes

By completing this workshop, you will:

- **Understand SAP Build Code's integrated development experience** and how it streamlines enterprise development
- **Master external service integration patterns** for connecting to and extending SuccessFactors APIs
- **Build full-stack applications** with proper separation of concerns between data, services, and UI
- **Implement HR-specific business scenarios** with realistic employee data and relationships
- **Experience enterprise-grade development workflows** that scale from simple extensions to complex applications

The end result is a reusable foundation project that demonstrates best practices for HR extensions on SAP BTP.

## Exercises

These are the exercises, each in their own directory, sometimes with supporting files and sample data. We will work through the exercises in the order shown here:

The instructor will guide you through each exercise. If you finish before others, there are additional questions and optional sections to explore. Please wait for the instructor before proceeding to the next exercise.

1. [Set Up Your Workspace](exercises/01-set-up-workspace/README.md) - Create your SAP Build Code project and verify your development environment
2. [Import External Service Definition](exercises/02-import-external-service/README.md) - Connect to SuccessFactors Personal Information API via SAP Business Accelerator Hub
3. [Introduce Mock Service](exercises/03-introducing-mock-service/README.md) - Set up local development with realistic HR test data
4. [Create Local Data Model](exercises/04-create-local-data-model/README.md) - Build your feedback application's data entities and relationships
5. [Build Service Layer](exercises/05-build-service-layer/README.md) - Expose your data model through OData services
6. [Create User Interface](exercises/06-create-user-interface/README.md) - Generate a Fiori Elements form for feedback creation
7. [Enhance User Interface](exercises/07-enhance-user-interface/README.md) - Improve the UI with professional layouts, labels, and branding
8. [Add Authentication](exercises/08-add-authentication/README.md) - Implement user authentication and automatic user tracking

## Feedback

If you can spare a couple of minutes at the end of the workshop, please help us improve for next time by providing some feedback.

Simply use this [Give Feedback](https://github.com/Comentec/sap-build-ws-25/issues/new?assignees=&labels=feedback&template=session-feedback-template.md&title=Session%20Feedback) link to create a special "feedback" issue, and follow the instructions provided.

Thank you!

## How to Obtain Support

Support for the content in this repository is available during the actual time of the workshop event for which this content has been designed. For post-workshop questions, please refer to the SAP Community or your organization's SAP support channels.

## License

Copyright (c) 2025 Comentec LLC. All rights reserved. This project is licensed under the Apache Software License, version 2.0.