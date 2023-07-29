@InsuranceZip
Feature: Smoke

  @insurance1
  Scenario: Insurance zip1

    Given I Launch insurance page
    Then I type "94022" into element with xpath "//input[@id='zip-code']"
    Then I wait for 2 sec
    Then I click on element with xpath "//button[normalize-space()='Submit form']"
    Then I wait for element with xpath "//div[@class='card application']//div[4]//div[1]//small[1]" to be present
    Then I verify that the error message with xpath "//div[@class='card application']//div[4]//div[1]//small[1]" is displayed
    Then I wait for 10 sec

    Scenario: Name 
      Given I Launch insurance page
      Then I type "Sherlock Holmes" into element with xpath "//input[@id='name']"
      Then I wait for 2 sec
      Then I click on element with xpath "//button[normalize-space()='Submit form']"
      Then I wait for element with xpath "//div[@class='card application']//div[4]//div[1]//small[1]" to be present
      # Then I wait for 2 sec


      
