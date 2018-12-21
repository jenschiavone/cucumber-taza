Feature: Testing

  Scenario: First test
    Given I visit the Google site
    When I search for "cat gifs"
    Then I should see "Cat GIFs - Get the best GIF on GIPHY"