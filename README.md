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

## Why External Services First?

This workshop adopts an **external-first approach** that mirrors real-world HR development:

**Real-World Context**: Most HR projects extend existing SuccessFactors systems rather than starting from scratch. Beginning with external services immediately demonstrates SAP Build Code's integration strengths—often the primary reason for choosing SAP BTP.

**Natural Learning Flow**: Starting with complex SuccessFactors metadata naturally leads to questions like "How do I simplify this for my use case?" and "How do I develop locally?" This creates authentic challenges that make mocking, projections, and local modeling feel necessary rather than academic.

**Production Architecture**: This approach mirrors how enterprise HR applications actually work—external HR systems as the source of truth, with local extensions adding business value through a proper integration layer.

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

> The exercises are written to provide both hands-on instructions and contextual background. Look for 👉 pointers throughout that indicate specific actions to take, as opposed to background information to read.

1. [Set Up Your Workspace](exercises/01-set-up-workspace/README.md) - Create your SAP Build Code project and verify your development environment
2. [Import External Service Definition](exercises/02-import-external-service/README.md) - Connect to SuccessFactors Personal Information API via SAP Business Accelerator Hub
3. [Mock External Service](exercises/03-mock-external-service/README.md) - Set up local development with realistic HR test data

...(add as exercises are completed)

## Feedback

If you can spare a couple of minutes at the end of the workshop, please help us improve for next time by providing some feedback.

Simply use this [Give Feedback](https://github.com/Comentec/sap-build-ws-25/issues/new?assignees=&labels=feedback&template=session-feedback-template.md&title=Session%20Feedback) link to create a special "feedback" issue, and follow the instructions provided.

Thank you!

## How to Obtain Support

Support for the content in this repository is available during the actual time of the workshop event for which this content has been designed. For post-workshop questions, please refer to the SAP Community or your organization's SAP support channels.

## License

Copyright (c) 2025 Comentec LLC. All rights reserved. This project is licensed under the Apache Software License, version 2.0.