Feature: Buying, adding items to the cart and wishlist etc

  Scenario: Adding an item to the wishlist
    Given A new user is registered and logged in
    And User goes to categories page
    And User opens Hair Combs categeory
    And User adds the first item to the wishlist
    And User goes back to main page and then to wishlist
    And User refreshes the wishlist
    Then The added item is shown in the wishlist
    And User deletes the item
    Then Empty wishlist image and text is shown
