@e2e @IHaveAnAccount
Feature: Verify all I Have An Account Page elements are displayed

  Scenario: Verify all I Have An Account Page elements are displayed
    Given I launch app
    When I tap on "I have an Account" button on "Home" page
    Then I see the "Email" on "I Have an Account" page
      And I see the "Password" on "I Have an Account" page
      And I see the "Forgot Your Password?" on "I Have an Account" page
      And I see the "Log in With Facebook" on "I Have an Account" page
      And I see the "Log in With Google" on "I Have an Account" page
      And I see the "Need a New Account?" on "I Have an Account" page