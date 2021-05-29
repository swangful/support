Feature: My Recent Activity

  @smoke
  Scenario: User navigates to My Recent Activity
    Given I am on the support page
    When I navigate to My Recent Activity for "<game>"
    Then I am presented with the default My Recent Activity panel

    Examples:
    | game                |
    | Hearthstone         |
    | World of Warcraft   |
    | Heroes of the Storm |
