# Auth Proxy

Naas Auth Proxy provides the following features:

* Cookies can be retrived after login
* Filter cookie based on name

## Supported Logins

* Notion.so
* LinkedIn.com

## Setup and Run

Clone the repo and install dependencies / packages:

`$ npm install`

Start the API:

`$ npm start`

## API Documentation & Endpoints

API will be started at `http://localhost:3001`

### [GET] Token
URL : `/token`
Params : <br>
`url` - URL of the service to perform login<br>
`email` - Registred user's email id to be used for login<br>
`password` - User password as plain text<br>
`filter` - (Optional) Retrive specific cookie based on name<br>
