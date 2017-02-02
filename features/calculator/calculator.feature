Feature: Calculator
  In order to sum up numbers
  As a user
  I should get the result from it

  Scenario: Add two numbers
    Given I have entered 50 into the calculator
    And I have entered 70 into the calculator
    When I press add
    Then the result should be 120 on the screen

  Scenario: Add three numbers
    Given I have entered 50 into the calculator
    And I have entered 70 into the calculator
    And I have entered 80 into the calculator
    When I press add
    Then the result should be 200 on the screen