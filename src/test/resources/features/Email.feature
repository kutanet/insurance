@insurance
Feature: Email field

  @insurance
  Scenario: Happy path
    Then I Launch insurance page
    Then I wait for element with "name" to be present
    And I fill out the email field with "example@mail.com"
    And I wait for 2 sec
    And I verify that the error message with xpath "//small[normalize-space()='The email format is invalid.']" is not displayed

  @insurance
  Scenario: Mandatory
    Given I Launch insurance page
    Then I wait for element with "name" to be present
    Then I accept agreement
    And I wait for 2 sec
    And I verify that the error message with xpath "//small[normalize-space()='The email field is required.']" is displayed

  @insurance
  Scenario Outline: Some Negative
    Given I Launch insurance page
    Then I wait for element with "name" to be present
    #Then I wait for 2 sec
    And I fill out the email field with "<email>"
    And I wait for element with xpath "//small[normalize-space()='The email format is invalid.']" to be present
    And I verify that the error message with xpath "//small[normalize-space()='The email format is invalid.']" is displayed
    Examples:
      |email	                            	|
      |Abc.example.com								|
      |A@b@c@example.com								|
      |A..bc@example.com								|
      |this\ still\"not\\allowed@example.com 						|
      |1234567890123456789012345678901234567890123456789012345678901234+x@example.com |
      |i.like.underscores@but_its_not_allowed_in_this_part 				|
      |QA[icon]CHOCOLATE[icon]@test.com 						|
      |example@-mail.com						|

  @insurance
  Scenario: Negative (local-part length is 65, "more than 64")
    Given I Launch insurance page
    Then I wait for element with "name" to be present
    And I fill out the email field with "exampleexampleexampleexampleexampleexampleexampleexampleexample12@mail.com"
    And I wait for element with xpath "//small[normalize-space()='The email format is invalid.']" to be present
    And I verify that the error message with xpath "//small[normalize-space()='The email format is invalid.']" is displayed

  @insurance
  Scenario: Negative (domain length is 256, "more than 255")
    Given I Launch insurance page
    #Then I wait for 2 sec
    Then I wait for element with "name" to be present
    And I fill out the email field with "example@mailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmail.com"
    And I wait for element with xpath "//small[normalize-space()='The email format is invalid.']" to be present
    And I verify that the error message with xpath "//small[normalize-space()='The email format is invalid.']" is displayed

  @insurance
  Scenario Outline: Positive (printable symbols in local-part)
    Given I Launch insurance page
    #Then I wait for 2 sec
    Then I wait for element with "name" to be present
    And I fill out the email field with "exam<printable symbol>ple@mail.com"
    And I wait for 2 sec
    And I verify that the error message with xpath "//small[normalize-space()='The email format is invalid.']" is not displayed
    Examples:
      |printable symbol|
      |\|   |
      |#    |
      |$    |
      |%    |
      |&    |
      |'    |
      |*    |
      |+    |
      |-    |
      |/    |
      |=    |
      |?    |
      |^    |
      |_    |
      |`    |
      |{    |
      |!    |
      |}    |
      |~    |

  @insurance
  Scenario: Positive (local-part length is 64)
    Given I Launch insurance page
    Then I wait for element with "name" to be present
    And I fill out the email field with "exampleexampleexampleexampleexampleexampleexampleexampleexample1@mail.com"
    And I wait for 2 sec
    And I verify that the error message with xpath "//small[normalize-space()='The email format is invalid.']" is not displayed

  @insurance
  Scenario: Positive (domain length is 255)
    Given I Launch insurance page
    Then I wait for element with "name" to be present
    And I type "example@mailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmai.com" into element with xpath "//input[@id='email']"
    And I click on element with xpath "//input[@id='phone_number']"
    And I wait for 2 sec
    And I verify that the error message with xpath "//small[normalize-space()='The email format is invalid.']" is not displayed

  @insurance
  Scenario Outline: Some Positive
    Given I Launch insurance page
    Then I wait for 15 sec
    #Then I wait for element with "name" to be present
    And I fill out the email field with "<email>"
    And I wait for 2 sec
    And I verify that the error message with xpath "//small[normalize-space()='The email format is invalid.']" is not displayed
    Examples:
      |email|
      |very.common@example.com|
      |disposable.style.email.with+symbol@example.com|
      |other.email-with-hyphen@and.subdomains.example.com|
      |fully-qualified-domain@example.com|
      |user.name+tag+sorting@example.com|
      |x@example.com |
      |example@m.com              |
      |example-indeed@strange-example.com|
      |test/test@test.com |
      |admin@mailserver1 |
      |example@s.example |
      |mailhost!username@example.org |
      |user%example.com@example.org |
      |user-@example.org |
      |postmaster@[123.123.123.123] |
      |postmaster@[IPv6:2001:0db8:85a3:0000:0000:8a2e:0370:7334] |
      |example@mail.c                                            |
      |example@mail.comcomc                                      |
      |example@(mail)mail.com                                    |
      |(example)example@mail.com                                 |
      |example@[123.123.123.123]                                 |
      |example@[IPv6:2001:0db8:85a3:0000:0000:8a2e:0370:7334]    |
