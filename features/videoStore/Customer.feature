Feature: Information rental movies customer
  In order to show reports about rented movies
  As a customer
  I am able to choose create a report to customer about rented movies


  Scenario: Report children movies rented
    Given I insert the name of customer "Juan Lopez Garcia"
    And I rental a children movie with title "Daniel el travieso" during 2 days
    And I rental a children movie with title "La historia interminable" during 2 days
    And I rental a children movie with title "La historia interminable II" during 8 days
    When I request report of rented movies
    Then I shoud see the next report
    """
    Rental Record for Customer Name
        Daniel el travieso 1.5
        La historia interminable 1.5
        La historia interminable II 9.0
        You owed 12.0
        You earned 3 frequent renter points
    """

  Scenario: Report regular movies rented
    Given I insert the name of customer "Juan Lopez Garcia"
    And I rental a regular movie with title "La mascara" during 1 days
    And I rental a regular movie with title "Las memorias de Africa" during 2 days
    And I rental a regular movie with title "Los piratas del caribe" during 5 days
    When I request report of rented movies
    Then I shoud see the next report
    """
    Rental Record for Customer Name
        La mascara 2.0
        Las memorias de Africa 2.0
        Los piratas del caribe 6.5
        You owed 10.5
        You earned 3 frequent renter points
    """

  Scenario: Report regular movies rented
    Given I insert the name of customer "Juan Lopez Garcia"
    And I rental a new movie with title "Capitán America: Civil War" during 2 days
    And I rental a new movie with title "Deadpool" during 2 days
    And I rental a new movie with title "Assassin's Creed" during 7 days
    When I request report of rented movies
    Then I shoud see the next report
    """
    Rental Record for Customer Name
        Capitán America: Civil War 6.0
        Deadpool 6.0
        Assassin's Creed 21.0
        You owed 33.0
        You earned 6 frequent renter points
    """