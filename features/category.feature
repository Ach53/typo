Feature: Category create
  As a blog admin
  So That I can classify based on criteria
  I want to create Category
  
  Background:
    Given the blog is set up
    And   I am logged into the admin panel
  
  Scenario: Access the categories page as admin
    Given I am on the admin page
    When I follow "Categories"
    Then I should be on the new categories page

  Scenario: Create a new Category
    Given I am on the new categories page
    And I fill in "Name" with "Cristiano Ronaldo"
    And I fill in "Description" with "Not G.O.A.T"
    And I press "Save"
    Then I should be on the new categories page
    Then I should see "Cristiano"
    
  Scenario: Edit a Category
    Given I am on the new categories page
    And I follow "General"
    And I fill in "Name" with "Specific"
    And I press "Save"
    Then I should be on the new categories page
    Then should see "Specific"
    Then I should see "Specific"
    
  Scenario: Delete a Category
    Given I am on the new categories page
    And I follow "Delete" of "General"
    And I press "delete"
    Then I should be on the new categories page
    Then I should not see "General"