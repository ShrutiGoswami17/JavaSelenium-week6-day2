Feature: Login functinality for LeafTaps

Background:
Given Open the chrome browser
And  Load the URL

Scenario Outline: Login using positive credential
Given Enter the username as <username>
And Enter the password as <password>
When Click on login button
Then HomePage should be displayed

Examples:
|username|password|
|'Demosalesmanager'|'crmsfa'|
|'DemoCSR'|'crmsfa'|

Scenario: Login using negative credential
Given Enter the username as 'Demo'
And Enter the password as 'crmsfa'
When Click on login button
But Error message should be displayed
