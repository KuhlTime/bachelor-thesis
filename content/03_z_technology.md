# Technologies
<!-- What technologies / libraries have been used? -->
  <!-- What part of the application is each software used for? -->
  <!-- What are the benefits / disadvantages of the technology used? -->

For the applications to work, a wide variety of technologies were used. This chapter should give a quick overview on each software and explain the core concepts needed to understand the further development of the applications.

A common application can be devided into two parts. The **frontend**, the applications that gets used by the enduser and the **backend**, the applications that is used by the system itself. Commonly frontends only refers to a website, I will missuse this term for mobile applications, as both fullfill the same purpose -- to provide an interface to the enduser.



## Frontend Development
### Electron

Electron is a development framework^[A **framework** is a collection of libraries that abstracts some functionality and provides a starting point for all kinds of different application.] that enables developers to build cross platform^[**Cross platform** meaning that the same program can be run on different operating systems. @wikipediacontributors_2019_crossplatform, @openjsfoundation_build] desktop applications. It is used to develop desktop applications for Windows, MacOS, Linux and ChromeOS. Electron is based on Node.js which uses the Google developed V8 browser engine^[A **browser engine** is used to render HTML documents, compile and run JavaScript code.]. It abstracts the windowing system and provides a way to create native applications that run on a web browser.

The package can be installed via the Node Package Manager^[A **Package Manager** is a piece of software that is normally provided with a programming language. It provides a way of installing libraries from a large repository of publicly shared software packages. Some examples of common package managers include: (+npm) (Node.js), gem (Ruby), pip (Python), spm (Swift), pub (Dart), ...] ((+npm)). The following command will install the latest version of electron:

``` bash
npm install electron
```

### VueJS

VueJS is a reactive frontend framework that is used to build web applications. A **reactive** application keeps variables stored inside a so called "reference". On any change to that referenced data the (+UI) automatically updates to reflect the changes. This averts the need to write complex update routines to change the content that is being displaied to the user. 

<!-- Who has created Vue? -->
<!-- React -->
<!-- What is reactivity? -->

#### Vite

### Flutter

<!-- Multi-Platform -->
<!-- Compatibility -->
<!-- Tauri -->

## Backend Development
### Firebase
<!-- What database should be used? What features should it poses? -->
  <!-- How is logging of changes enabled? -->


## Testing
<!-- What is static Code Quality Analysis? How does it work? -->
<!-- What parts of the application need testing scripts in order to continously check their correct behaviour? -->

## Software Services
