@insurance
Feature: Email field

  @insurance
  #====== Under construction ==============
  Scenario: Email field positive testing
    And I launch email field positive testing

  @insurance
  #====== Under construction ==============
  Scenario: Email field negative testing
    And I launch email field negative testing

  @insurance
  Scenario: Valid email
    Then I Launch insurance page
    Then I wait for email field to be present
    And I fill out the email field with "example@mail.com"
    And I accept agreement
    And I wait for 1 sec
    And I verify that email format error message is not displayed

  @insurance
  Scenario: Invalid email
    Then I Launch insurance page
    Then I wait for email field to be present
    And I fill out the email field with "example.mail.com"
    And I accept agreement
    And I wait for 1 sec
    And I verify that email format error message is displayed

  @insurance
  Scenario: Mandatory
    Given I Launch insurance page
    Then I wait for email field to be present
    Then I accept agreement
    And I wait for 1 sec
    And I verify that email mandatory error message is displayed

  @insurance
  Scenario Outline: Some Negative
    Given I Launch insurance page
    Then I wait for email field to be present
    And I fill out the email field with "<email>"
    And I wait for 1 sec
    And I verify that email format error message is displayed
    Examples:
      |email	                            	|
      |Abc.example.com								|
      |A@b@c@example.com								|
      |A..bc@example.com								|
      |this\ still\"not\\allowed@example.com 						|
      |i.like.underscores@but_its_not_allowed_in_this_part 				|
      |QA[icon]CHOCOLATE[icon]@test.com 						|
      |example@-mail.com						|

  @insurance
  Scenario: Negative (boundary; local-part length is 65, "more than 64")
    Given I Launch insurance page
    Then I wait for email field to be present
    And I fill out the email field with "exampleexampleexampleexampleexampleexampleexampleexampleexample12@mail.com"
    And I wait for 1 sec
    And I verify that email format error message is displayed

  @insurance
  Scenario: Negative (boundary; domain length is 256, "more than 255")
    Given I Launch insurance page
    #Then I wait for 2 sec
    Then I wait for email field to be present
    And I fill out the email field with "example@mailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmail.com"
    And I wait for 1 sec
    And I verify that email format error message is displayed

  @insurance
  Scenario Outline: Positive (special symbols in local-part)
    Given I Launch insurance page
    Then I wait for email field to be present
    And I fill out the email field with "exam<special_symbol>ple@mail.com"
    And I verify that email format error message is not displayed
    Examples:
      |special_symbol|
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
  Scenario: Positive (boundary; local-part length is 64)
    Given I Launch insurance page
    Then I wait for email field to be present
    And I fill out the email field with "exampleexampleexampleexampleexampleexampleexampleexampleexample1@mail.com"
    And I wait for 1 sec
    And I verify that email format error message is not displayed

  @insurance
  Scenario: Positive (boundary; domain length is 255)
    Given I Launch insurance page
    Then I wait for email field to be present
    And I fill out the email field with "example@mailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmai.com"
    And I wait for 1 sec
    And I verify that email format error message is not displayed

  @insurance
  Scenario Outline: Some Positive
    Given I Launch insurance page
    Then I wait for email field to be present
    And I fill out the email field with "<email>"
    And I wait for 1 sec
    And I verify that email format error message is not displayed
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
      |example@mail.c                                            |
      |example@mail.comcomc                                      |
      |example@(mail)mail.com                                    |
      |(example)example@mail.com                                 |
      |example@[123.123.123.123]                                 |
      |example@[IPv6:2001:0db8:85a3:0000:0000:8a2e:0370:7334]    |
