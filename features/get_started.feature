@e2e @GetStarted
Feature: Verify all Get Started Page elements are displayed

  Scenario: Verify all Get Started Page elements are displayed
    Given I launch app
    When I tap on "Get Started" button on "Home" page
    Then I see the "Email" on "Get Started" page
      And I see the "Password" on "Get Started" page
      And I see the "Sign Up With Facebook" on "Get Started" page
      And I see the "Sign Up With Google" on "Get Started" page