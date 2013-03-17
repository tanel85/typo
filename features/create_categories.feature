Feature: Create Categories
  As a blog administrator
  In order to group similar articles
  I want to be able to create categories

  Background:
    Given the blog is set up

  Scenario: When I open Categories I shoult be on the add category page
    And I am logged into the admin panel
    And I follow "Categories"
    Then I should see "Categories"