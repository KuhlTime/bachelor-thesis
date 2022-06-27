# Technologies
<!-- What technologies / libraries have been used? -->
  <!-- What part of the application is each software used for? -->
  <!-- What are the benefits / disadvantages of the technology used? -->

For the applications to work, a wide variety of technologies were used. This chapter should give a quick overview on each software and explain the core concepts needed to understand the further development of the applications.

A common application can be divided into two parts. The **frontend**, the applications that gets used by the end user and the **backend**, the applications that is used by the system itself. Most commonly the term frontend only refers to a website accessible through a browser, I will misuse this term for any native mobile application as both a native app and a website fulfill the same purpose -- to provide an interface to the end user.

## Electron

Electron is a development framework^[A **framework** is a collection of libraries that abstracts some functionality and provides a starting point for all kinds of different application.] that enables developers to build cross platform^[**Cross platform** meaning that the same program can be run on different operating systems. @wikipediacontributors_2019_crossplatform, @openjsfoundation_build] desktop applications. Electron is based on Chromium and Node.js which both use the Google developed V8 browser engine^[A **browser engine** is used to render HTML documents, compile and run JavaScript code.]. Browser applications written in HTML, CSS and JavaScript can be run on any of the supported platforms. Different to a normal website the application does not need to be hosted on a server but instead gets downloaded and installed just like a normal executable would. Additionally, to using all the available APIs inside of Chromium, Electron comes with its own set of libraries for performing window manipulation or communicating with the host PC. @electron_build

The library can be installed via the Node Package Manager^[A **Package Manager** is a piece of software that is normally provided with a programming language. It provides a way of installing libraries from a large repository of publicly shared software packages. Some examples of common package managers include: (+npm) (Node.js), gem (Ruby), pip (Python), spm (Swift), pub (Dart), ...] ((+npm)). The following command will install the latest version of electron:

``` bash
npm install electron
```

Though electron applications are quite large and resource extensive compared to natively compiled applications many big companies use it for their software. Microsoft Teams, Visual Studio Code, Discord, Slack, WhatsApp Desktop and many more all rely on Electron @electron_electron.

## VueJS

VueJS is a reactive frontend framework that is used to build complex web applications. VueJS like other popular frontend frameworks such as React or Svelte is component based. That means that the final application is divided up into a multitude of different `.vue` component files. Each of these components holds its own state and logic @delany_2020_vuejs, @you_introduction. This enforces a reusable programming style and enables a faster design and development process.

```html
<script setup>
const count = ref(0)
</script>

<template>
  <button @click="count++">Count is: {{ count }}</button>
</template>

<style scoped>
button {
  font-weight: bold;
}
</style>
```

The code snippet above shows a very simple VueJS component depicting a simple counter. The `count` variable is a reference to a number that is incremented each time the button is clicked. As soon as a change to the `count` variable is detected, the component will be re-rendered. This is what's called reactivity -- where any input to the data automatically triggers the Browser to update. In vanilla JavaScript^[**Vanilla JavaScript** refers to JavaScript without the use of any Frameworks and simply relying on the built-in JavaScript features.] the developer would need to handle the re-rendering of the component manually.

<!-- Tauri -->
<!-- Vite -->

## Firebase
<!-- What database should be used? What features should it poses? -->
  <!-- How is logging of changes enabled? -->

#### No-SQL vs SQL

#### Firebase Functions

#### Firebase Rules

## Version Control

## Unit Testing
<!-- What is static Code Quality Analysis? How does it work? -->
<!-- What parts of the application need testing scripts in order to continously check their correct behaviour? -->

## Continuous Deployment

## Sentry
