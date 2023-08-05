Feature: Responsiveness of the Main page

  Scenario: Responsiveness of Main Page for Desktop View
    Given I open url "http://154.41.228.85/dashboard/"
    And I wait for 5 sec
    And I maximize window
    And I wait for 5 sec
    And I resize window to 1280 and 1024
    And I wait for 10 sec

  Scenario: Responsiveness of Main Page for Tablet View (portrait mode)
    Given I open url "http://154.41.228.85/dashboard/"
    And I wait for 5 sec
    And I maximize window
    And I wait for 5 sec
    And I resize window to 768 and 1024
    And I wait for 10 sec

  Scenario: Responsiveness of Main Page for Tablet View (landscape mode)
    Given I open url "http://154.41.228.85/dashboard/"
    And I wait for 5 sec
    And I maximize window
    And I wait for 5 sec
    And I resize window to 1024 and 768
    And I wait for 10 sec

  Scenario: Responsiveness of Main Page for Phone View (portrait mode)
    Given I open url "http://154.41.228.85/dashboard/"
    And I wait for 5 sec
    And I maximize window
    And I wait for 5 sec
    And I resize window to 360 and 640
    And I wait for 10 sec

  Scenario: Responsiveness of Main Page for Phone View (landscape mode)
    Given I open url "http://154.41.228.85/dashboard/"
    And I wait for 5 sec
    And I maximize window
    And I wait for 5 sec
    And I resize window to 640 and 360
    And I wait for 10 sec