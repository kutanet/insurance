@predefined_Password_Test_Suite # Author Ruslan
Feature: Password Test Suite
  Scenario Outline: N5 Insurance password smoke test - Re-enter Password Match
    Given I open url "http://154.41.228.85/dashboard/"
    Then I wait for 2 sec
    Then I type "<password>" into element with xpath "<password_field>"
    Then I wait for 2 sec
    Then I type "<retype_password>" into element with xpath "<retype_password_field>"
    Then I wait for 2 sec
    Then I click on element with xpath "//input[@id='agreement']"
    Then I click on element with xpath "//button[normalize-space()='Submit form']"
    Then I wait for 2 sec
    Examples:
      | password | retype_password | password_field | retype_password_field |
      | password*!1 | password*!1  | //input[@id='password'] | //input[@id='retype_password'] |
      | aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaA64 | aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaA64  | //input[@id='password'] | //input[@id='retype_password'] |
      | aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaA!65 | aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaA!65  | //input[@id='password'] | //input[@id='retype_password'] |
      |  |  | //input[@id='password'] | //input[@id='retype_password'] |

  @predefined_Password_Happy_Path_Object_Oriented_Module
  Scenario: N1 Insurance password smoke test - Happy Path
    Given I open url "http://154.41.228.85/dashboard/"
    Then I fill the password field with "password*!1"
    Then I verify that the error message with xpath "//input[@id='retype_password']/../small" is not displayed
    #if you input password correctly as required, it must verify that the error message with xpath “//input[@id=‘password’]/../small” is not displayed, right? But, if you input password wrong, it shouldn’t verify that the error message with xpath “//input[@id=‘password’]/../small” is not displayed.
    Then I fill the retype-password filed "password*!1"
    Then I verify that the error message with xpath "//input[@id='retype_password']/../small" is not displayed
    Then I click on element with xpath "//input[@id='agreement']"
    Then I wait for 2 sec
    Then I click on element with xpath "//button[normalize-space()='Submit form']"
    Then I wait for 2 sec


  @predefined_Password_Special_Characters_Required_Object_Oriented_Module

  Scenario: N2 Insurance password smoke test - Special Characters
    Given I open url "http://154.41.228.85/dashboard/"
    Then I fill the password field with "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaA64"
    Then I wait for element with xpath "//small[@id='password']" to be present
    Then I fill the retype-password filed "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaA64"
    Then I wait for element with xpath "//small[@id='password']" to be present
    Then I click on element with xpath "//input[@id='agreement']"
    Then I verify that the error message with xpath "//input[@id='retype_password']/../small" is displayed
    Then I click on element with xpath "//button[normalize-space()='Submit form']"
    Then I wait for 2 sec

  @predefined_Password_Boundary_Negative_Direct_Predifined_Methods

  Scenario: N3 Insurance password smoke test - Boundary Negative
    Given I open url "http://154.41.228.85/dashboard/"
    Then I wait for 2 sec
    Then I type "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaA!65" into element with xpath "//input[@id='password']"
    Then I wait for element with xpath "//small[@id='password']" to be present
    # boundary notification should have its own xpath. currently, all have same xpath, not a big deal here, though.
    Then I type "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaA!65" into element with xpath "//input[@id='retype_password']"
    Then I wait for element with xpath "//small[contains(text(),'The retype password must not be greater than 64 ch')]" to be present
    Then I click on element with xpath "//input[@id='agreement']"
    Then I click on element with xpath "//button[normalize-space()='Submit form']"
    Then I wait for 2 sec

  @predefined_Password_Empty_Field_Direct_Predefined_Methods

  Scenario: N4 Insurance password smoke test - Empty Field
    Given I open url "http://154.41.228.85/dashboard/"
    Then I wait for 2 sec
    Then I type "" into element with xpath "//input[@id='password']"
    Then I wait for 2 sec
    #this message will never appear if do nothing in the field, need to change focus to make it appear
    Then I mouse over element with xpath "//input[@id='retype_password']"
    Then I type "" into element with xpath "//input[@id='retype_password']"
    Then I wait for 2 sec
    Then I click on element with xpath "//input[@id='agreement']"
    Then I click on element with xpath "//button[normalize-space()='Submit form']"
    Then I wait for 2 sec

  @predefined_Password_Parametrization_With_Object_Oriented_Module

  Scenario Outline: N5 Insurance password smoke test - Re-enter Password Match
    Given I open url "http://154.41.228.85/dashboard/"
    Then I wait for 2 sec
    Then I type "<password>" into element with xpath "<password_field>"
    Then I wait for 2 sec
    Then I type "<retype_password>" into element with xpath "<retype_password_field>"
    Then I wait for 2 sec
    Then I click on element with xpath "//input[@id='agreement']"
    Then I click on element with xpath "//button[normalize-space()='Submit form']"
    Then I wait for 2 sec
    Examples:
      | password | retype_password | password_field | retype_password_field |
      | password*!1 | password*!1  | //input[@id='password'] | //input[@id='retype_password'] |
      | aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaA64 | aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaA64  | //input[@id='password'] | //input[@id='retype_password'] |
      | aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaA!65 | aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaA!65  | //input[@id='password'] | //input[@id='retype_password'] |
      |  |  | //input[@id='password'] | //input[@id='retype_password'] |


