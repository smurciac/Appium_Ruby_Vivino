@e2e @Home
Feature: Verify all Home Page elements are displayed

  Scenario: Verify all Home Page elements are displayed
    Given I launch app
    Then I see the "Image" on "Home" page
      And I see the "Description" on "Home" page
      And I see the "Get Started" on "Home" page
      And I see the "See How It Works" on "Home" page
      And I see the "Try Us Out" on "Home" page
      And I see the "I have an Account" on "Home" page