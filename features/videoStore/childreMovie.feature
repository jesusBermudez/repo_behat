Feature: Rental children movie
  In order to rental a movie in video store
  As a customer
  I am able to choose a movie of video store and rental it

  Scenario: Rental a children movie without passing the limit of days
    Given I insert the name of customer "Juan Lopez Garcia"
    When I rental a children movie with title "Daniel el travieso" during 2 days
    Then I should see the total amount is "3" euros

  Scenario: Rental a children movie passing the limit of days
    Given I insert the name of customer "Juan Lopez Garcia"
    When I rental a children movie with title "Daniel el travieso" during 5 days
    Then I should see the total amount is "4.5" euros

  Scenario: Rental several children movie without passing the limit of days
    Given I insert the name of customer "Juan Lopez Garcia"
    When I rental a children movie with title "Daniel el travieso" during 2 days
    And I rental a children movie with title "La historia interminable" during 1 days
    And I rental a children movie with title "La historia interminable II" during 2 days
    Then I should see the total amount is "4.5" euros

  Scenario: Rental several children movie passing the limit of days
    Given I insert the name of customer "Juan Lopez Garcia"
    When I rental a children movie with title "Daniel el travieso" during 5 days
    And I rental a children movie with title "La historia interminable" during 6 days
    And I rental a children movie with title "La historia interminable II" during 10 days
    Then I should see the total amount is "20" euros

