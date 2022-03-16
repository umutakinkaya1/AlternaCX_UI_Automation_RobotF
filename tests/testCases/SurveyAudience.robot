*** Settings ***
Documentation   Survey Audience
Library     SeleniumLibrary
Resource    ../resources/loginPage/keywords_LoginPage.robot
Resource    ../resources/mainPage/keywords_mainPage.robot
Resource    ../resources/surveyListPage/keywords_surveyListPage.robot
Resource    ../resources/surveyEditPage/keywords_surveyEditPage.robot
Test Setup  open the browser with ALternaWebPage
Test Teardown   close browser session

*** Test Cases ***
Survey Audience Criteria Check
    set selenium timeout        20
    When fill the login form    umut    Hacettepe2019
    And click login buton
    And click survey management
    And click Surveys
    And click Searchbar And Search Temp Survey and click it
    And click Audience
    And click Audience criteria arrow
    And click Add button
   # And add audience criteria segment
   # And add audience criteria operand type
   # And add audience criteria
    And add criteria for 1st item
    And click save and continue button

Survey Audience And/Or
    set selenium timeout        20
    set selenium speed      2
    When fill the login form    umut    Hacettepe2019
    And click login buton
    And click survey management
    And click Surveys
    And click Searchbar And Search Temp Survey and click it
    And click Audience
    And click Audience criteria arrow
    And click Add button
    And add criteria for 2st item
    And click save and continue button

Survey Audience Delete All Criteria
    set selenium timeout        20
    When fill the login form    umut    Hacettepe2019
    And click login buton
    And click survey management
    And click Surveys
    And click Searchbar And Search Temp Survey and click it
    And click Audience
    And click Audience criteria arrow
    And click Delete criteria button
    And click Delete criteria button
    And click save and continue button




