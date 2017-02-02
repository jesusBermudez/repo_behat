Feature: Buy toys
  In order to buy a product in toy page
  As a website user
  I am able to choose a product of catalog page an buy it

  @buy
  Scenario: Add two products to cart, check into cart and make ends cart without paying
    Given I am on superhomepage
    When I follow "Peluches gigantes"
    And I follow "Oso de peluche gigante HUELLA blanco - 100cm"
    And I press "Añadir al carrito"
    And I wait 2 seconds
    And I should see "Carrito de compras"
    Then I should see "Oso de peluche gigante HUELLA blanco - 100cm"


