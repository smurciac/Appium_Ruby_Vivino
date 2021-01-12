@e2e @TryUsOut
Feature: Verify all Get Started Page elements are displayed

  Scenario: Verify all Get Started Page elements are displayed
    Given I launch app
    When I tap on "Try Us Out" button on "Home" page
      And I tap on "Next" button on "Try Us Out" page
      And I tap on "Next" button on "Try Us Out" page
      And I tap on "Next" button on "Try Us Out" page
      And I tap on "Next" button on "Try Us Out" page
    Then I see the "Create Free Account" on "Try Us Out" page
      And I see the "Continue Withou Account" on "Try Us Out" page
      And I see the "Try Us Out" on "Try Us Out" page
      And I see the "Log In" on "Try Us Out" page