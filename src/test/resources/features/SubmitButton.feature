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


  Scenario: Verify user's information on the confirmation page
    Given I Launch insurance page
    Then I wait for element with "name" to be present
    Then I fill out the name field with "Joe Biden"
    Then I choose USA from the country list
    Then I fill out the zip code field with "20500"
    Then I fill out the street field with "1600 Pennsylvania Avenue, N.W."
    Then I fill out the apartment field with "100"
    Then I fill out the city field with "Washington"
    Then I fill out the state field with "District of Columbia"
    Then I fill out the additional info field with "n/a"
    Then I fill out the username field with "joeBiden"
    Then I fill out the password field with "password123#"
    Then I fill out the reenter password field with "password123#"
    Then I fill out the email field with "jbiden@email.com"
    Then I fill out the phone number field with "2024561111"
    Then I fill out the birthday field with "11/20/1942"
    Then I choose male gender
    Then I accept agreement
    Then I choose user products from the products list
    Then I switch to emergency contact iframe
    Then I fill out the emergency contact name field with "Jill Biden"
    Then I fill out the emergency contact phone number field with "+12024561414"
    Then I switch to default content
    Then I submit form
    Then I verify that the name in the confirmation page is "Joe Biden"
    And I verify that the address in the confirmation page is "Washington usa"
    And I verify that the username in the confirmation page is "joeBiden"
    And I verify that the email in the confirmation page is "jbiden@email.com"
