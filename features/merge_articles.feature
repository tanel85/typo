Feature: Merge Articles
  As a blog administrator
  In order to merge different articles with similar topics and content
  I want to be able to merge articles

  Background:
    Given the blog is set up

  Scenario: A non-admin cannot merge two articles
    And I am logged into the admin panel as regular user
    And I add an article
    And I follow "cucumber test article"
    Then I should not see "Merge Articles"
    
  Scenario: When articles are merged, the merged article should contain the text of both previous articles
    And I am logged into the admin panel
    And I add an article
    And I follow "cucumber test article"
    And I merge first article
    And I follow "cucumber test article"
    Then I should see "Welcome to Typo. This is your first article. Edit or delete it, then start blogging!"
    And I should see "cucumber test article text"
