# Technologies
<!-- What technologies / libraries have been used? -->
  <!-- What part of the application is each software used for? -->
  <!-- What are the benefits / disadvantages of the technology used? -->

For the applications to work, a wide variety of technologies were used. This chapter should give a quick overview on each software and explain the core concepts needed to understand the further development of the applications.

A common application can be divided into two parts. The **frontend**, the applications that gets used by the end user and the **backend**, the applications that is used by the system itself. Most commonly the term frontend only refers to a website accessible through a browser, I will misuse this term for any native mobile application as both a native app and a website fulfill the same purpose -- to provide an interface to the end user.

## Electron

Electron is a development framework^[A **framework** is a collection of libraries that abstracts some functionality and provides a starting point for all kinds of different application.] that enables developers to build cross platform^[**Cross platform** meaning that the same program can be run on different operating systems. @wikipediacontributors_2019_crossplatform, @openjsfoundation_build] desktop applications. Electron is based on Chromium and Node.js which both use the Google developed V8 browser engine^[A **browser engine** is used to render HTML documents, compile and run JavaScript code.]. Browser applications written in HTML, CSS and JavaScript can be run on any of the supported platforms. Different to a normal website the application does not need to be hosted on a server but instead gets downloaded and installed just like a normal executable would. Additionally, to using all the available APIs inside of Chromium, Electron comes with its own set of libraries for performing window manipulation or communicating with the host PC. @electron_build

The library can be installed via the Node Package Manager^[A **Package Manager** is a piece of software that is normally provided with a programming language. It provides a way of installing libraries from a large repository of publicly shared software packages. Some examples of common package managers include: (+npm) (Node.js), gem (Ruby), pip (Python), spm (Swift), pub (Dart), ...] ((+npm)).

``` bash
npm install electron
```

Though Electron applications are quite large and resource extensive compared to natively compiled applications many big companies use it for their software. Microsoft Teams, Visual Studio Code, Discord, Slack, WhatsApp Desktop and many more all rely on Electron @electron_electron.

\newpage
## VueJS

VueJS is a reactive frontend framework that is used to build complex web applications. It was developed and published by Evan You in February 2014 @wikipediacontributors_2020_vuejs. VueJS like other popular frontend frameworks such as React or Svelte is component based. That means that the final application is divided up into a multitude of different `.vue` component files. Each of these components holds its own state and logic @delany_2020_vuejs, @you_introduction. This enforces a reusable programming style and enables a faster design and development process.

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

I choose VueJS as it has numerous developers who have created all sort of different libraries over the years. It is therefor one of the most popular frontend frameworks. Personally I like how VueJS functions as it is quite comfortable to read and write the components.

<!-- Tauri -->
<!-- Vite -->

\newpage
## Firebase

Acquired by Google back in 2014 @wikipediacontributors_2022_firebase Firebase is an App Development Platform @google_firebase making it easy to build small and large scale applications. Their business case has grown over the years from a real-time database to an authentication provider, data storage provider, analytics and cloud computing service @google_firebase. As of right now, their offering counts 18 products and services @wikipediacontributors_2022_firebase to streamline the whole development cycle of a modern application. Official SDKs are available for all major platforms and programming languages.

#### Firestore

Firebase offers two kinds of database services to their customers. Starting with the initial release of Firebase their Realtime Database Service was the default. With the introduction of Firestore in 2017 they made available a second solution which instead of using a JSON-Tree for storing data now uses a NoSQL database model. With the concepts of a document, collections and indexes this meant that queries where much faster and less cumbersome to implement. @kerpelman_2019_cloud

#### Authentication & Rules

To restrict access to an application and to the database -- Firebase Authentication provides an SDK for client-side authentication of a user. Multiply ways of authentication like e-mail and password authentication, magic-link authentication, 3rd party OAuth authentication and many more are supported. Through a custom domain-specific language @mcdonald_2017_firebase called "Common Expression Language" @google_2022_security each request will be checked against a predefined rule set @google_2022_common. "The rule set should follow the principle of least privilege" @kerpelman_2020_unit. That means that any user by default should not have any privileges to read or write to the database. Access will than be given by whitelisting certain actions on certain documents. 

In the example below any request made to the `/users/{uid}` document will get checked for the right permissions. Only users that are logged in (with a valid JWT token) will be able to `read` any document inside the `/users` collection. Through custom authentication claims a role based access control can be realized @kerpelman_2020_unit, @google_2022_control. In this example users belonging to the administrator role (role `0`) are able to both `read` and `write` to any document inside the `/users` collection. Giving `write` access implies that the user is allowed to `create`, `update` and `delete` a certain document. Furthermore, users that are logged in are allowed to perform a `update`-request if the `/users` object matches the ID of the user itself `allow update: if matchesUID()`.

\newpage
```
service cloud.firestore {
  match /databases/{database}/documents {
    match /users/{uid} {
      allow read: if loggedIn()
      allow write: if isAdmin()
      allow update: if matchesUID()
    }
    
    // Checks if the user is logged in
    function loggedIn() {
    	return request.auth != null
    }
  
  	// Checks if the requested resource id matches the 
    // uid of the caller
  	function matchesUID() {
    	return loggedIn() && request.auth.uid == resource.id
    }
    
    // Checks if the caller belongs to the admin group
    function isAdmin() {
    	return request.auth.token.role == 0
    }
  }
}
```

#### Firebase Functions
On many other cloud providers oftentimes referred to as lambda functions^[In many programming languages so-called **lambda functions** refer to a concept of anonymous functions. In these languages functions can be assigned to a variable and be executed on demand.] Firebase offers a cloud service called Firebase Functions. By setting event triggers small operations can be executed without the need of a dedicated server infrastructure. A trigger might be an HTTP request to a predefined endpoint or a change inside the database. A full list of supported environments and languages can be found under: [https://cloud.google.com/functions/docs/concepts/execution-environment](https://cloud.google.com/functions/docs/concepts/execution-environment) @vanpuffelen_2020_server.

## Version Control

A version control system makes it easy to track changes made to a project. Over the years "Git has become the de facto standard for version control" @athalye_2020_lecture. In a 2021 survey by StackOverflow it ranked as the number one developer tool @stackoverflow_2021_stack. Git is a distributed version control system @git_2019_git and therefor allows for multiple users to work on the same project. Git is a free and open source software that was developed by the Linus Torvalds back in 2005 @wikipediacontributors_2019_git. He originally created the project to better maintain the development of his ever-growing Linux operating system @wikipediacontributors_2019_git. Git is a command line application and does not require a Graphical User Interface (+GUI). Every change gets tracked inside a special `.git` repository folder. Along with some metadata each change gets tracked and can be traversed to the original editor @athalye_2020_lecture. A Git repository can either be stored locally or on a remote server. You can set up your own repository server or use on of the many hosted services, like GitHub or GitLab.

GitHub calls itself "the largest and most advanced development platform in the world" @github_build. The service comes with additional features to track issues, review and merge pull requests, and more. 

## Automated Testing

As the name "Automated Testing" implies automated testing scripts can be written to validate the operability and correct behavior of a software system. Instead of checking the functionality of a system manually on every change made to the codebase testing scripts will check defined conditions on their own. In practices like Continuous Integration ((+CI)) and Continuous Delivery ((+CD)) where code commits are pushed frequently to production automated testing ensures no bugs find its way into the deployment. @rehkopf_automated

In the most popular testing framework for JavaScript "Jest" a test might be written as such:

```javascript
test('adds 1 + 2 to equal 3', () => {
  expect(sum(1, 2)).toBe(3)
})
```

Should someone change the behavior of the summation `sum` function the automated test will fail, and the developer will be notified.

<!-- What is static Code Quality Analysis? How does it work? -->
<!-- What parts of the application need testing scripts in order to continously check their correct behaviour? -->

## CI/CD

In the philosophy of Continuous Integration ((+CI)) and Continuous Delivery ((+CD)) the development process is split into two phases:

  * Continuous Integration: Is the process of verifying the quality of the code and checking the defined test cases.
  * Continuous Delivery: The process of pushing the code to production.

Rather than using many feature branches inside a repository, which normally delays the deployment process due to many merge conflicts^[A **merge conflict** occurs when two developers happen to work on the same lines of code. One of the developers then needs to manually evaluate the right logic and resolve the issue.], developers are encouraged to work as close to production as possible. Specially programmed pipelines will then handle the complete deployment process. Updates will happen at a more frequent rate hence boosting general productivity.

The process of developing these pipelines is refereed to as Development Operations ((+DevOps)). Through the use of CI/CD tools like Jenkins, Travis, CircleCI, GitLab CI and GitHub Actions the pipelines will be run automatically as soon as a change is pushed to the repository. GitHub Action uses a `.yaml` file to specify the operations to be executed. Inside this pipeline configuration file things like the branch or the operating system of the server executing the tasks is defined.
