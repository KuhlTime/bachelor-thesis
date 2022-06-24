<!-- TODO: Find a better title for this chapter. -->
<!-- Goal: 500 Words -->
# Capabilities

<!-- What gaps / issues does the software need to address? -->
Canadian authorities prohibited the management of confined spaces through the (+CAD) software that is currently used at the Campbell River fire department. The planned software should fill in these gaps. As the original software was not designed to handle confined spaces, operators got creative and created pending emergency calls which should indicate that some workers would be in a confined space.

<!-- TODO: Figure number -->
The software should be rolled out in multiple release cycles with an increasing amount of functionality and complexity. As for the features required I have created a roadmap (Figure X) that indicates the functionality implemented in each cycle.

<!-- TODO: Fix Image Size -->
<!-- TODO: Remove In Progress Sound (Dublicate) -->
![Software Release Roadmap - Source: Author](images/cs-release-plan.png){#fig:cs-release-plan}

In order for the application to quickly be deployed into the field, the first two releases only consist of a very basic feature set to indicate whether there is an ongoing operation or not. With each release the application should evolve into a more complex and feature-rich application. Version 1 is the bare minimum of what is needed by the fire department. This would already drastically improve their safety concerning confined spaces, as they currently use sticky notes taped to the windshield of the vehicles to indicate that there is an ongoing confined space operation. @bellefleur_2022_in

<!-- TODO: Figure number -->
The complete ecosystem should consist of multiple applications that should all handle a different task. In the following subchapters I will explain -- what will be the purpose of each of the pieces of software and how they evolve throughout the different releases. I will list the requirements made by the fire department and add additional features and ideas that I came up with. See Figure X.

<!-- Based on: https://latex-tutorial.com/landscape-page/ -->

\begin{sidewaysfigure}[htbp]
    \centering
    \includegraphics[width=1.2\textwidth]{content/images/feature-mindmap.png}
    \caption{Feature Mind Map - Source: Author}
    \label{fig:nature}
\end{sidewaysfigure}

\newpage
## Terminal

<!-- TODO: Figure number -->
The Terminal application is deployed to the complete fleet of vehicles throughout the fire department. Each truck has one or more Windows based computers mounted to the dashboard or to the seats of the vehicle. See Figure X.

![Windows Tablet Onboard - Source: K. Bellefleur](images/tablet-onboard.jpg){#fig:tablet-onboard}

A small application, mimicking the functionality of a LED should indicate to everyone onboard that there is an active confined space operation. With that information the operators should be reminded that in case of any incoming emergencies they have to stuff or call additional personal to standby for any incident happening inside the confined space. In case the incoming emergency requires the complete stuff of the fire department the workers inside the confined space have to be notified and may need to terminate their operation.

#### Version 1

The first version of the application should have the very basic feature of displaying the on and off state with an additional offline indicator to give a warning whenever the data could not be retrieved from the backend.

#### Version 2

Building up on the first version. The terminal should now implement a sound whenever the state of the LED indicator changes and maybe play a little animation to subtly get the attention of whoever is looking at the monitor.

#### Version 3

As the application gets much bigger with the 3rd version of the ecosystem. More data will be provided by the operators. This will give the opportunity to display a list of confined spaces inside the vehicle.

#### Version 4

In case of an emergency the application should present an easy guideline on how to respond and visualize the key aspects of the confined space.

## Trigger

This application runs on the operators desktop inside the dispatchment center. Whenever a worker calls in to enter a confined space and gets approval by the operators they are able to press a button that send that status change to all running *Terminal* applications inside the vehicles.

As the software is not allowed on the main dispatchment devices this application will most likely run externally on a Microsoft Surface Pro tablet running Windows 10. @bellefleur_2022_in

![Dispatchment Center Campbell River - Source: NI911 @ni911_contact](images/cr-dispatchment-center.jpg){#fig:cr-dispatchment-center}

The first version of both the *Terminal* and the *Trigger* build up the basis on what is required by the fire department.

#### Version 1 and 2

A simple button to toggle the confined space state on or off is more than enough.

#### Version 3 or higher

Discontinued and replaced by the *Dispatcher* application.

## Dispatcher

With the introduction of version 3 the *Trigger* application will be replaced by a better application that should allow dispatchers to control operations with far more precision.

<!-- TODO: Important Metrics, like Oxygen requirements should be highlighted -->

#### Version 3

The fire department could imagine the following features being implemented into the dispatchment application:

- Static input forms to input information about an operation, such as:
  - Company name
  - Site address
  - Site name
  - Confined space id
  - Hatchwatch^[A **hatchwatch** is the person standing outside the confined space that is tasked with contacting the emergency responders in case of an incident.] name
  - Contact information
- A administration panel to see historic confined spaces operations

#### Version 4

This version should introduce some authentication process to protect the data from any unauthorized person to be accessed.

<!-- Map Feature -->
<!-- Search -->
<!-- Forms -->
  <!-- Hazard Assesment for new confined spaces -->
<!-- Warning when infromation of the confined space is outdated -->
  <!-- Warn the operator -->

## Worker

The *Worker* is a concept that I made an early prototype off. This application should introduce a new method for the worker to communicate with the fire department. I have imagined an app that can be installed on the workers phone. Inside the application -- access to a confined space can be scheduled and requested from the fire departments operators. When access is granted the phone will constantly send data back to the operators. In case the operation did not get canceled and the predetermined exit time gets exceeded, operators will get informed over a possible issue and be able to call in to check on the workers well-being.

Possible data that can be transmitted to the operators might include:

- The GPS Location of the device
- Phone Acceleration Spikes
- Battery Level
- Connection Strength
- When connected to a smartwatch, send health stats such as the workers' heart rate

This would open up new ways of responding to emergencies and give the workers an extra level of security. 

Although iOS usage on smartphones in Canada is quite high compared to Europe. The application should be developed for both major players iOS (57.3% @statcounter_2022_mobile) and Android (42.5% @statcounter_2022_mobile) to ensure maximum coverage.

<!-- What requirements should the application fullfill? -->

<!-- Should future provness be a consideration? -->

<!-- How was the release schedule planed? -->
  <!-- Features -->
  <!-- Timing -->

<!-- What is the process of recieving a confined space? -->
  <!-- Create user flow diagrams -->

<!-- How is a protocol generated to  -->

