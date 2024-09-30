# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...


## Notes

<% %> means evaluate the enclosed ruby code <% end %>

<%= %> means evaluate the enclosed ruby code, and output the value it returns

erb is like jsx. embedded ruby

redirect_to will cause the browser to make a new request, whereas render renders the specified view for the current request. It is important to use redirect_to after mutating the database or application state. Otherwise, if the user refreshes the page, the browser will make the same request, and the mutation will be repeated.

