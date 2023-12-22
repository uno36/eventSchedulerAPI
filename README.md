# 📗 Table of Contents

- [📗 Table of Contents](#-table-of-contents)
- [EventScheduerAPI ](#eventscheduerapi-)
  - [🛠 Built With ](#-built-with-)
    - [Tech Stack ](#tech-stack-)
  - [💻 Getting Started ](#-getting-started-)
    - [Prerequisites](#prerequisites)
    - [Setup](#setup)
    - [Install](#install)
    - [Usage](#usage)
  - [👥 Authors ](#-authors-)
  - [🤝 Contributing ](#-contributing-)
  - [⭐️ Show your support ](#️-show-your-support-)
  - [❓ FAQ (OPTIONAL) ](#-faq-optional-)
  - [📝 License ](#-license-)

<!-- PROJECT DESCRIPTION -->

# EventScheduerAPI <a name="about-project"></a>

  - The EventSchedulerAPI is a RESTful Rails application enabling users to manage events. It employs Devise with JWT for user authentication, offering CRUD operations for creating, viewing, updating, and deleting events. With secured endpoints, it facilitates event scheduling and organization in a user-friendly manner.

## 🛠 Built With <a name="built-with"></a>

### Tech Stack <a name="tech-stack"></a>

<details>
  <summary>Client</summary>
  <ul>
    <li><a href="https://react.dev/">React</a></li>
  </ul>
</details>

<details>
  <summary>Server</summary>
  <ul>
    <li><a href="https://rubyonrails.org/">Ruby on Rails</a></li>
  </ul>
</details>

<details>
<summary>Database</summary>
  <ul>
    <li><a href="https://www.postgresql.org/">PostgreSQL</a></li>
  </ul>
</details>
<!-- GETTING STARTED -->

## 💻 Getting Started <a name="getting-started"></a>

To get a local copy up and running, follow these steps.

### Prerequisites

In order to run this project you need:

```sh
 gem install rails
```

### Setup

Clone this repository to your desired folder:

```sh  
  git clone https://github.com/uno36/event-scheduler-back-end.git
  cd event_scheduler_app  
```

### Install

Install this project by executing the following commands. Since its an Open API, there is no need to set up any API keys:

```sh
  cd event_scheduler_app

  bundle install

  touch .env
    `Add the following lines to the .env file`
      DB_USERNAME=`Your PostgreSQL username`
      DB_PASSWORD=`Your PostgreSQL password`

  rails db:create
  rails db:migrate
  rails db:seed
```

### Usage

To run the project, execute the following command:

```sh
  rails server
```

<!-- AUTHORS -->

## 👥 Authors <a name="authors"></a>

👤 **Emmanuel Tofa**

- GitHub: [@uno36](https://github.com/uno36)
- LinkedIn: [LinkedIn](https://linkedin.com/in/emmanuel-tofa-673b2516a)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- CONTRIBUTING -->

## 🤝 Contributing <a name="contributing"></a>

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](../../issues/).

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- SUPPORT -->

## ⭐️ Show your support <a name="support"></a>

If you like this project consider leaving a star to the repository.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- FAQ (optional) -->

## ❓ FAQ (OPTIONAL) <a name="faq"></a>

**What is an event scheduler**
- An event scheduler is a digital tool enabling seamless organization, tracking, and management of various engagements. It empowers users to create, update, and delete events, specifying titles, descriptions, dates, and times. Integrated with user authentication, it ensures secure access and modification of events, allowing individuals or teams to efficiently plan meetings, presentations, or social gatherings. Through a user-friendly interface, it provides a centralized hub for scheduling, streamlining daily routines, and ensuring timely execution of tasks while fostering collaboration and better time management among participants.

<p align="right">(<a href="#readme-top">back to top</a>)</p>


<!-- LICENSE -->

## 📝 License <a name="license"></a>

This project is [MIT](LICENSE) licensed.


<p align="right">(<a href="#readme-top">back to top</a>)</p>
