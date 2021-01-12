@e2e @SeeHowItWork
Feature: Verify if See How It Work flow works correctly

  Scenario: Verify if See How It Work flow works correctly
    Given I launch app
    When I tap on "See How It Works" button on "Home" page
      And I tap on "Next" button on "See How It Work" page
      And I tap on "Next" button on "See How It Work" page
      And I tap on "Next" button on "See How It Work" page
      And I tap on "Next" button on "See How It Work" page
    Then I see the "Continue With Email" on "See How It Work" page
      And I see the "Continue With Facebook" on "See How It Work" page
      And I see the "Continue With Google" on "See How It Work" page
      And I see the "Try Us Out" on "See How It Work" page
      And I see the "Log In" on "See How It Work" page