Feature: berks shelf list
  Scenario: With no cookbooks in the store
    When I successfully run `berks shelf list`
    Then the output should contain:
      """
      There are no cookbooks in the Berkshelf shelf
      """

  Scenario: With two cookbooks in the store
    Given the cookbook store has the cookbooks:
      | fake | 1.0.0 |
      | ekaf | 2.3.4 |
    When I successfully run `berks shelf list`
    Then the output should contain:
      """
      Cookbooks in the Berkshelf shelf:
        * ekaf (2.3.4)
        * fake (1.0.0)
      """

  Scenario: With multiple cookbook versions installed
    Given the cookbook store has the cookbooks:
      | fake | 1.0.0 |
      | fake | 1.1.0 |
      | fake | 1.2.0 |
      | fake | 2.0.0 |
    When I successfully run `berks shelf list`
    Then the output should contain:
      """
      Cookbooks in the Berkshelf shelf:
        * fake (1.0.0, 1.1.0, 1.2.0, 2.0.0)
      """
