Feature: Rental Regular movie
  In order to rental a movie in video store
  As a customer
  I am able to choose a movie of video store and rental it

  Scenario: Rental a regular movie without passing the limit of days
    Given I insert the name of customer "Juan Lopez Garcia"
    When I rental a regular movie with title "Daniel el travieso" during 2 days
    Then I should see the total amount is "2.0" euros

  Scenario: Rental a regular movie passing the limit of days
    Given I insert the name of customer "Juan Lopez Garcia"
    When I rental a regular movie with title "Daniel el travieso" during 5 days
    Then I should see the total amount is "4.5" euros

  Scenario: Rental several regular movie without passing the limit of days
    Given I insert the name of customer "Juan Lopez Garcia"
    When I rental a regular movie with title "Daniel el travieso" during 2 days
    And I rental a regular movie with title "La historia interminable" during 1 days
    And I rental a regular movie with title "La historia interminable II" during 2 days
    Then I should see the total amount is "4.5" euros

  Scenario: Rental several regular movie passing the limit of days
    Given I insert the name of customer "Juan Lopez Garcia"
    When I rental a regular movie with title "Daniel el travieso" during 5 days
    And I rental a regular movie with title "La historia interminable" during 6 days
    And I rental a regular movie with title "La historia interminable II" during 10 days
    Then I should see the total amount is "20" euros
