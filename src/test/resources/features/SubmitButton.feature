Feature: Smoke steps

  Scenario: Verify message error while submitting the form without accepting agreement
    Given I open url "http://154.41.228.85"
    Then I wait for element with "name" to be present
    And I type "Joe Biden" into element with id "name"
    Then I choose "USA" from the country list
    Then I type "20500" into element with id "zip-code"
    Then I type "1600 Pennsylvania Avenue, N.W." into element with id "street"
    Then I type "Washington" into element with id "city"
    Then I type "DC" into element with id "state"
    Then I type "n/a" into element with id "additional"
    Then I type "joe_biden" into element with id "username"
    Then I type "password123" into element with id "password"
    Then I type "password123" into element with id "retype_password"
    Then I type "jbiden@email.com" into element with id "email"
    Then I type "2024561111" into element with id "phone_number"
    Then I type "11/20/1942" into element with xpath "//div/input[@name='date']"
    Then I click on element with id "male"
    Then I choose products from the products list:
      | auto        |
      | life        |
      | health      |
    Then I switch to iframe with xpath "//iframe[@src='http://154.41.228.85/iframe']"
    Then I type "Jill Biden" into element with id "Name"
    Then I type "2024561414" into element with id "Phone"
    Then I switch to default content
    Then I click on element with xpath "//button[contains(text(), 'Submit form')]"
    Then I capture the alert message and make sure that it contains "Please accept agreement"
