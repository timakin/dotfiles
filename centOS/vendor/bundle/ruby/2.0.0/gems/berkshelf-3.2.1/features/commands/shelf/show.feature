Feature: berks shelf show
  Scenario: With a cookbook that is not in the store
    When I run `berks shelf show fake`
    Then the output should contain:
      """
      Cookbook 'fake' not found in the Berkshelf shelf!
      """
    And the exit status should be "CookbookNotFound"

  Scenario: With cookbooks in the store
    Given the cookbook store has the cookbooks:
      | fake | 1.0.0 |
      | ekaf | 2.3.4 |
    When I successfully run `berks shelf show fake`
    Then the output should contain:
      """
      Displaying all versions of 'fake' in the Berkshelf shelf:
              Name: fake
           Version: 1.0.0
       Description: A fabulous new cookbook
            Author: YOUR_COMPANY_NAME
             Email: YOUR_EMAIL
           License: none
      """
    And the output should not contain:
      """
      Name: ekaf
      """

  Scenario: With cookbooks in the store and the --version option
    Given the cookbook store has the cookbooks:
      | fake | 1.0.0 |
      | ekaf | 2.3.4 |
    When I successfully run `berks shelf show fake --version 1.0.0`
    Then the output should contain:
      """
      Displaying 'fake' (1.0.0) in the Berkshelf shelf:
              Name: fake
           Version: 1.0.0
       Description: A fabulous new cookbook
            Author: YOUR_COMPANY_NAME
             Email: YOUR_EMAIL
           License: none
      """
    And the output should not contain:
      """
      Name: ekaf
      """

  Scenario: With cookbooks in the store and the --version option doesn't exist
    Given the cookbook store has the cookbooks:
      | fake | 1.0.0 |
      | ekaf | 2.3.4 |
    When I run `berks shelf show fake --version 1.2.3`
    Then the output should contain:
      """
      Cookbook 'fake' (1.2.3) not found in the Berkshelf shelf!
      """
    And the exit status should be "CookbookNotFound"

  Scenario: With multiple cookbook versions installed
    Given the cookbook store has the cookbooks:
      | fake | 1.0.0 |
      | fake | 1.1.0 |
      | fake | 1.2.0 |
      | fake | 2.0.0 |
    When I successfully run `berks shelf show fake`
    Then the output should contain:
      """
      Displaying all versions of 'fake' in the Berkshelf shelf:
              Name: fake
           Version: 1.0.0
       Description: A fabulous new cookbook
            Author: YOUR_COMPANY_NAME
             Email: YOUR_EMAIL
           License: none

              Name: fake
           Version: 1.1.0
       Description: A fabulous new cookbook
            Author: YOUR_COMPANY_NAME
             Email: YOUR_EMAIL
           License: none

              Name: fake
           Version: 1.2.0
       Description: A fabulous new cookbook
            Author: YOUR_COMPANY_NAME
             Email: YOUR_EMAIL
           License: none

              Name: fake
           Version: 2.0.0
       Description: A fabulous new cookbook
            Author: YOUR_COMPANY_NAME
             Email: YOUR_EMAIL
           License: none
      """

  Scenario: With multiple cookbook versions installed and the --version flag
    Given the cookbook store has the cookbooks:
      | fake | 1.0.0 |
      | fake | 1.1.0 |
      | fake | 1.2.0 |
      | fake | 2.0.0 |
    When I successfully run `berks shelf show fake --version 1.0.0`
    Then the output should contain:
      """
      Displaying 'fake' (1.0.0) in the Berkshelf shelf:
              Name: fake
           Version: 1.0.0
       Description: A fabulous new cookbook
            Author: YOUR_COMPANY_NAME
             Email: YOUR_EMAIL
           License: none
      """
    And the output should not contain:
      """
              Name: fake
           Version: 1.1.0
       Description: A fabulous new cookbook
            Author: YOUR_COMPANY_NAME
             Email: YOUR_EMAIL
           License: none
      """
    And the output should not contain:
      """
              Name: fake
           Version: 1.2.0
       Description: A fabulous new cookbook
            Author: YOUR_COMPANY_NAME
             Email: YOUR_EMAIL
           License: none
      """
    And the output should not contain:
      """
              Name: fake
           Version: 2.0.0
       Description: A fabulous new cookbook
            Author: YOUR_COMPANY_NAME
             Email: YOUR_EMAIL
           License: none
      """
