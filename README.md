# EventNite

A simple clone of [EventBrite](https://www.eventbrite.nl/), an event hosting and management platform. 

Platform gives users the ability to create events, with the ability for other users to manage their tickets for these events.

To create events or manage tickets, you need an account.

[Live Preview](https://desolate-caverns-00279.herokuapp.com/) <--

## Features
  - Main page with separated list of future and past events 
  - Railsy webpage building, using templates & partials
  - Managment pages for tickets & hosted events, when logged in
  - UI Created with Bulma.io library and customized for specific usecase
  - User authentication using email & password, handled by Devise gem

## Built With
- Frontend: HTML, CSS, JS
- Backend: Ruby on Rails 7.0
  - Bulma.io for Rails (UI Design)
  - Devise (Authentication Management)
  - SQLite3 / PostgreSQL (Database, SQLite used in testing)
  - Simple Forms
