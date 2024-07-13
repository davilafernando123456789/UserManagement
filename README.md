# README
# User Management System

This is a User Management System built with Ruby on Rails. It implements a CRUD (Create, Read, Update, Delete) system for managing users.

## Requirements

- Ruby 3.3.4
- Rails 6.1.4
- SQLite3

## Setup

1. Clone the repository:
   git clone https://github.com/davilafernando123456789/UserManagement.git

Navigate to the project directory:

cd UserManagement

Install dependencies:

bundle install

Setup the database:

rails db:create db:migrate

Start the Rails server:

rails server

Visit http://localhost:3000/users in your browser to see the application.

Features:

Create, Read, Update, and Delete users.
Validations for user inputs.
Flash messages for successful and error actions.
Responsive design for better user experience.