Feature: Create book form
Input data to form
click submit button

Scenario: Create a new book with empty author
  Given I am on "/books/new"
  When I fill in "book[name]" with "Gone with the wind"
  When I press "Create Book"
  Then I should see "Author can't be blank"

Scenario: Create a new book with empty name
  Given I am on "/books/new"
  When I fill in "book[author]" with "Margaret Mitchell"
  When I press "Create Book"
  Then I should see "Name can't be blank"

Scenario: Create a new book with valid params
  Given I am on "/books/new"
  When I fill in "book[name]" with "Gone with the wind"
  When I fill in "book[author]" with "Margaret Mitchell"
  When I press "Create Book"
  Then I should see "Book was successfully created."
