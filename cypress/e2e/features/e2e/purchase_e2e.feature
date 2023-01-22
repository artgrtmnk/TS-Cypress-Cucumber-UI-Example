Feature: Item purchase
  Background:
    Given User is logged in

  @e2eTest
  Scenario Outline: User buyes an item successfuly : QA-3
    When User clicks on random item on Product List Page
    Then User is on the 'Product Details' Page
    When User clicks on Add To Cart
    Then Cart counter number changes to '1'
    When User clicks on Cart icon
    Then User is on the 'Cart' Page
    When User clicks on Checkout
    And User fills firstname with 'John', lastname with 'Doe', zipcode with '12345'
    And User clicks on Continue within Checkout
    When User clicks on Finish
    Then Checkout success message appears