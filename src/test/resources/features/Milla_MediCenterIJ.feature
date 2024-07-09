Feature: MediCenter MillaBCJune2024

Scenario: As a patient to create an appointment
Given I open url "https://medicenter-qa2.vercel.app/"
#page title "Medical Center" is displayed
Then element with xpath "//h1[contains(text(),'Medical Center')]" should be displayed
  #Login as a Patient
Then I click on element with xpath "(//button[contains(text(),'Login')])"
When I type "patient1@gmail.com" into element with xpath "//input[@id='email']"
When I type "abc123" into element with xpath "//input[@id='password']"
Then I click on element with xpath "//button[contains(text(),'Sign in')]"
Then I wait for element with xpath "//h1[contains(text(),'James Johnson')]" to be present
Then I click on element with xpath "//button[contains(text(),'Make an appointment')]"
When I type "Annual Exam" into element with xpath "//textarea[@id='note']"
Then I click on element with xpath "//select[@name='employee_id']"
Then I wait for 2 sec
Then I click on element with xpath "//option[@value='fa8b73e2-05f3-4d0e-a2df-920ae0fc4c9f']"
When I type "07/16/2024" into element with xpath "//input[@id='date']"
Then I wait for 2 sec
Then I click on element with xpath "//button[contains(text(),'08:00 AM')]"
  Then I wait for 3 sec

  Then I click on element with xpath "//button[contains(text(),'Save')]"
  # Input data are displayed as
  # Monday 15 July 2024, 08:00
  #Annual Exam
  #EMMA EMMA1111"
  Then I wait for 3 sec
  Then element with xpath "//p[contains(text(),'Annual Exam')]" should be displayed
Then element with xpath "//p[contains(text(),'Kim KIm')]" should be displayed
  Then I wait for 3 sec


@predefined1
Scenario: As a patient to cancel an appointment
  Given I open url "https://medicenter-qa2.vercel.app/"
#page title "Medical Center" is displayed
 Then element with xpath "//h1[contains(text(),'Medical Center')]" should be present
  #Login as a Patient
  Then I click on element with xpath "(//button[contains(text(),'Login')])"
  When I type "patient1@gmail.com" into element with xpath "//input[@id='email']"
  When I type "abc123" into element with xpath "//input[@id='password']"
  Then I click on element with xpath "//button[contains(text(),'Sign in')]"
  Then I wait for element with xpath "//h1[contains(text(),'James Johnson')]" to be present
Then I wait for element with xpath "//h2[contains(text(),'Your appointments')]" to be present
Then I click on element with xpath "//span[contains(text(),'update')]"
Then I wait for element with xpath "//h2[contains(text(),'Are you sure you want to cancel appointment?')]" to be present
Then I click on element with xpath "//button[contains(text(),'Cancel appointment')]"
  Then I wait for 3 sec
