<!-- Goal: 12 pages -->
# System Design

<!-- TODO: Rewrite -->
As the whole ecosystem is made up of many smaller software pieces discussed in the previous part *[3 Capabilities](#capabilities)* many design considerations had to be made. In this chapter I will walk over all the important concepts I have come up with and will go into more detail the more this chapter progresses. First I will lay out general concepts on how the application should function. Later I will get more specific and explain the individual software libraries and technologies used in order to accomplish the previously set goals.

## Architecture

Releases 1 and 2 will consist of two electron applications 

<!-- Write this in a flow of how the data should flow -->

## Application Flows

For a good user experience the interactions with the software were designed before developing the applications. Each flow represents the flow in which firemen, operators, workers and employers might work with the software.

As the first two releases are quite limited in their functionality these flows will represent the release versions 3 and up.

### Register new Contractor

As the 

<!-- As there has been a huge gab between good documentation and no documentation at all. Some information should be made mandatory for the contractor to fill out. -->

<!-- TODO: 3 year hazard report warning -->
<!-- TODO: Confirmation E-Mail for the Contractor to sign that the information is correct. -->

### Schedule Confined Space

<!-- What information about a confined space is required within the applcations? -->

<!-- NOTE: Each confined space needs to hold relevant information that should be concise and free of duplication. For the optimal application I have come up with a data model that should be extendable f -->

<!-- The chapter should describe the applications on a high level. Not the implementation. No languages and no code! -->

The employer should be able to schedule a confined space operation. This should either be possible by calling the operator, handing in a filled out form or by using the *Worker* application.

Scheduling the operations requires some important information:

1. Which Confined Space is the operation going to take place?
2. When is the Operation going to take place?
3. Who to contact in case of an emergency?
4. Who is going to enter the confined space?
   - What is the maximum number of workers entering the confined space at any time?
5. What work is going to be performed?
6. Additional Information?
   - Hazards that could occur that are not covered by the confined space?
   - Rescue Equipment to the equipment that has been covered by the confined space?

Should the selected space's hazard report be older than the maximum age of three years a warning is displayed that the employer first needs to provide an updated hazard report, or he needs to reaffirm that the information is still up-to-date.

After filling out all the information a review page should give a summary of the data that has been entered.

Once the operation has been scheduled the emergency contact will receive an e-mail or an SMS with the information provided in the form. By clicking on a link provided inside the e-mail or the SMS the emergency contact can confirm the captured information is valid.

### Entering a Confined Space

Any confined space operation has to be approved by the operators before someone is allowed entry. A request to enter a space can either be performed by calling in to one of the operators inside the fire department or by sending a request through the *Worker* application. Only if the confined space operation has been scheduled -- an entry can be approved. This gives the fire department and also the workers the confidence that all precautions have been met.

Should the entry be requested through the *Worker* application, the operator will receive a push notification asking him to give approval. In the time the operator needs to respond the one requesting the entry will be shown a waiting screen warning him to wait for approval. In case the operator is not responding the worker will be told to call in to the operator.

Each operation can be in one of eight different states:

1. Scheduled
2. Requested
3. Canceled
4. Approved
5. Declined
6. In Progress
7. Emergency
8. Completed

Once a request to enter the confined space has been made to the operators the request will either be approved or declined. A decline of the request may be caused due to a lack of information about the operation or a lack of emergency responders inside the fire department.

Both the cancelation and the decline of an operation require additional information to why it was called off. Most predominant reason being a valuation of the risks being off limits. But might also be due to a rescheduling of the operation or a lack of workers.

Each step gets documented with the time and date of the event. This will provide essential knowledge to prove the correct execution of each of the steps.

Should the whole fire department be busy with a huge emergency requiring all stuff the operators are able to decline all requests automatically and display a message to the *Worker* saying that operations are currently on hold.

### Declaring an Emergency

## Architecture

<!-- What is the architecture of this application? -->
  <!-- What do books recommend on how a good system architecture should look like? -->

<!-- How will the different applications communicate with one another? -->

<!-- TODO: How should the application data be modeled? ERD Diagram -->

<!-- Does the software needs to be scalable? -->

<!-- What should be the maximum cost of the ecostytem? -->

## Quality

<!-- What qualitiy / security standards need to be set? -->
  <!-- What defines a software to be of high quality? - See:  Ensuring the Software Quality for Critical Infrastructure Objects -->
  
  <!-- What happens when there is no network connection? -->

### Reliability

<!-- How should issues and crashes be handled? -->
<!-- What Fallback is there in case of a malfuntion or a complete system outage? -->

### Safety
  <!-- What are common errors that need to be prevented? e.g. User error (Incorrect use), Network Connectivity -->
  <!-- How is the application protected against hackers? -->
  <!-- What attack surfaces does the application poses? -->
  <!-- What are the consquences of someone breaching different parts of the system -->
  <!-- How can this be prevented? -->

  <!-- How is future provness guaranteed? -->

## Interface Design

For the User Interface^[The **User Interface** ((+UI)) describes the visual style of an application @dumont_2021_ui] ((+UI)) and the User Experience^[The **User Experience** ((+UX)) describes the functionality of an application. As to *what steps need to be taken in order to perform a certain task*. When talking about a "good" (+UX) that generally means that a software is intuitive and easy to use.] ((+UX))

#### Terminal

abc

![Indicator States - Source: Author](images/indicator-states.png)

#### Trigger

#### Dispatcher

For the dispatchment application I have come up with a complete design system that should bring uniformity to all screen and 

<!-- TODO: Use the following passage somewhere -->
<!-- NOTE: A rescue is a balancing act between speed and safety. No rescue comes without risks that is why it is important to have only the most demanding information visiable that is vital to perform an operation. -->

#### Worker

<!-- How should the UI function? -->
<!-- How can incorrect usage of the application be prevented? How does the UI reflect these protections? -->
<!-- What DevOps Pipelines need to be developed? -->
<!-- What pages are needed for the Dispatcher? -->
<!-- UI components and their use cases? -->

<!-- How should Forms in the Dispatcher application should look like? What data is needed by the operator? -->
