@insurance
Feature: Name field

  @insurance
  Scenario: allowed letters "A-Z', characters "-", "_", "'", space
    Given I open url "http://154.41.228.85/"
    Then I type "QWERTYUIOPasdfghjklzxcvbnm -_'" into element with xpath "//input[@id='name']"
    And I wait for 3 sec
    Then I click on element with xpath "//select[@class='form-control']"
    And I wait for 1 sec
    And I verify that the error message with xpath "//div[@class='form-group']//small[@id='nameHelp']" is not displayed

  @insurance
  Scenario: Max length 256 characters Positive
    Given I open url "http://154.41.228.85/"
    And I wait for 3 sec
    Then I type "QWERTYUIOPASDFGHjklzxcvbnmqwertyuiopasdfghjklzxcvbnmqwertyuiopasdfghjkllllllllllllllllkejthfiekwhtbihetwiuyetiueytfuhgiduryhgiuerytoiuerdhgkdufhgkudhgieruyhtiuerytiudrhudrtirueoruhgiedriuftyieuryteirutykduhfgisduhetiuertyieurdfjkhgdkruhtieurtyfuhggjhcfjghj" into element with xpath "//input[@id='name']"
    And I wait for 6 sec
    And I verify that the error message with xpath "//div[@class='form-group']//small[@id='nameHelp']" is not displayed

  @insurance
  Scenario: Max length 256 characters Negative
    Given I open url "http://154.41.228.85/"
    And I wait for 3 sec
    Then I type "AQWERTYUIOPASDFGHjklzxcvbnmqwertyuiopasdfghjklzxcvbnmqwertyuiopasdfghjkllllllllllllllllkejthfiekwhtbihetwiuyetiueytfuhgiduryhgiuerytoiuerdhgkdufhgkudhgieruyhtiuerytiudrhudrtirueoruhgiedriuftyieuryteirutykduhfgisduhetiuertyieurdfjkhgdkruhtieurtyfuhggjhcfjghj" into element with xpath "//input[@id='name']"
    And I wait for 6 sec
    And I wait for element with xpath "//div[@class='form-group']//small[@id='nameHelp']" to be present
    And I verify that the error message with xpath "//div[@class='form-group']//small[@id='nameHelp']" is not displayed

  @insurance
  Scenario: Min length 3 characters Positive
    Given I open url "http://154.41.228.85/"
    And I wait for 3 sec
    Then I type "Qwe" into element with xpath "//input[@id='name']"
    And I wait for 6 sec
    And I verify that the error message with xpath "//div[@class='form-group']//small[@id='nameHelp']" is not displayed

  @insurance
  Scenario: Min length 3 characters Negative
    Given I open url "http://154.41.228.85/"
    And I wait for 3 sec
    Then I type "Qw" into element with xpath "//input[@id='name']"
    And I wait for 6 sec
    And I wait for element with xpath "///div[@class='form-group']//small[@id='nameHelp']" to be present
    And I verify that the error message with xpath "//div[@class='form-group']//small[@id='nameHelp']" is not displayed

  @insurance
  Scenario: Not allowed numbers
    Given I open url "http://154.41.228.85/"
    And I wait for 1 sec
    Then I type "Name1 Username" into element with xpath "//input[@id='name']"
    And I wait for 6 sec
    And I wait for element with xpath "//div[@class='form-group']//small[@id='nameHelp']" to be present
    And I verify that the error message with xpath "//div[@class='form-group']//small[@id='nameHelp']" is displayed

  @insurance
  Scenario: Not allowed inappropriate character "@,!,#,$,%,^,&,*,(,),+,=,`,[,],{,},\,|,:,;,",<,>
    Given I open url "http://154.41.228.85/"
    And I wait for 1 sec
    Then I type "<characters>" into element with xpath "//input[@id='name']"
    And I wait for 6 sec
    And I wait for element with xpath "//div[@class='form-group']//small[@id='nameHelp']" to be present
    And I verify that the error message with xpath "//div[@class='form-group']//small[@id='nameHelp']" is displayed
    Examples:
      |characters|
      |@name               |
      |!name               |
      |#name               |
      |$name               |
      |%name               |
      |^name               |
      |&name               |
      |*name               |
      |(name               |
      |)name               |
      |<name               |
      |>name               |
      |?name               |
    |/name               |

  @insurance
  Scenario: Mandatory field
    Given I open url "http://154.41.228.85/"
    Then I scroll down to "//button[normalize-space()='Submit form']"
    Then I click on element with xpath "//button[normalize-space()='Submit form']"
    And I accept alert
    And I wait for 1 sec
    And I wait for element with xpath "//div[@class='form-group']//small[@id='nameHelp']" to be present
    And I verify that the error message with xpath "//div[@class='form-group']//small[@id='nameHelp']" is displayed
