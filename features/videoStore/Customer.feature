Feature: Information rental movies customer
  In order to show reports about rented movies
  As a customer
  I am able to choose create a report to customer about rented movies


  Scenario: Report children movies rented
    Given I insert the name of customer "Juan Lopez Garcia"
    And I rental a children movie with title "Daniel el travieso" during 5 days
    And I rental a children movie with title "La historia interminable" during 6 days
    And I rental a children movie with title "La historia interminable II" during 10 days
    When I request report of rented movies
    Then I shoud see the next report
    """
    Rental Record for Customer Name
        Regular 1 2.0
        Regular 2 2.0
        Regular 3 3.5
         You owed 7.5
         You earned 3 frequent renter points
    """