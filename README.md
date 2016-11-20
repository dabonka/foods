<h1>Foords Order Readme</h1>
[![Build Status](https://travis-ci.org/dabonka/foods.svg?branch=master)](https://travis-ci.org/dabonka/foods)
[![Code Climate](https://codeclimate.com/github/dabonka/foods/badges/gpa.svg)](https://codeclimate.com/github/dabonka/foods)
<p>Each company that uses the services of delivery meals, sooner or later, comes to the great and original idea to develop their own service to order a lunch. Many start, but only few of them bring it to the end. The objective of this task is to develop very small MVP, which could be taken and used already in production. </p>
 
<p>We will try to simplify the problem as much as possible. Please find User Stories below. Let’s assume that there is only one organization in the application, all users belong to it. </p>
<ul>
<li>As a guest I should be able to sign up with name, email and password. </li>
<li>As a guest I should be able to sign in with email and password. </li>
<li>As a first registered user in the system, I become a Lunches Admin.</li> 
</ul>
<ul>
<li>As a user I can edit my profile </li>
<li>As a user I can see a weekdays on the dashboard page </li>
<li>As a user, when I click on the weekday(today or days in the past), I can see menu ­ list of items with prices. </li>
<li>As a user, when I choose items from menu, I can only choose one item from the first course, one item from the main course and one drink. Total 3 items.</li>
<li>As a user I can press Submit button to process my order. </li>
</ul>
<ul> 
<li>As a Lunches Admin, I can browse registered users. </li>
<li>As a Lunches Admin, I can browse days and see users’ orders there. </li>
<li>As a Lunches Admin, I can add items in menu only for today by adding a name and price. </li>
<li>As a Lunches Admin, I can upload photo for each menu item </li>
<li>As a Lunches Admin, on the date page I can see the list of orders and total lunch cost for today.  </li>
</ul>
<ul>
<li>As a system, I should be able to provide list of the orders for today with details for each person through RESTful JSON API endpoint. </li>
<li>As a system, I should have a secure API. </li>
</ul>

<h2>General Notes</h2> 
<ul>
<li>Keep your code clean.  </li>
<li>Thin controllers, fat models. Don’t forget about validations </li>
<li>Prefer quality to the speed of delivering this task </li>
<li>The code should be covered with unit, functional and integration tests. (Please use RSpec+Capybara) </li>
<li>Front­end can be pretty very simple. </li>
<li>The source code of application should be uploaded on github.com and deployed to heroku in the end. </li>
<li>Connect Travis­CI to your public repository </li>
</ul>
<h2>Recommended technologies </h2>
<p>If you know your way, skip this step. ​ Otherwise we are expecting from you to use these gems in project ­ Rails 4+, devise, twitter bootstrap, haml, simple_form, carrierwave, rspec, capybara </p>
