@salesforce
Feature:
  In order to land in saleforce service source webpage
  As a registered user
  I should navigate to saleforce service source setup module

  @login
  Scenario Outline: to test the login scenario
    Given I should visit saleforce website
    Then I should see "logo" image
    And I should see "Forgot Your Password?" link
    And I should see "Use Custom Domain" link
    When I fill "username" as "<username>"
    And I fill "password" as "pass@word1"
    And I should click on "Log In" button
    And I wait for "20" seconds

    Examples:
      | username                                  |
      | qa-renewnetops-csmdev19@servicesource.com |
      | qa-renewnetops-csmdev19@servicesource.com |
      | qa-renewnetops-csmdev19@servicesource.com |

  @ServiceSourceSetup
  Scenario: ServiceSourceSetup
    Given I should land on salesforce application homepage
    And I wait for "10" seconds
    When I follow "ServiceSource Setup" link
    Then I should see "ServiceSource Setup"
    And I should see "Home"