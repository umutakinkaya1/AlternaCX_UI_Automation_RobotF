*** Settings ***
Documentation   Survey Communication Rule
Library     SeleniumLibrary
Library     BuiltIn
Resource    ../resources/loginPage/keywords_LoginPage.robot
Resource    ../resources/mainPage/keywords_mainPage.robot
Resource    ../resources/surveyEditPage/keywords_surveyEditPage.robot
Resource    ../resources/surveyListPage/keywords_surveyListPage.robot
Test Setup  open the browser with ALternaWebPage
Test Teardown   close browser session

*** Test Cases ***
Define Independent Rules in Survey Communication Rules
    set selenium timeout        20
    set selenium speed      2
    When fill the login form    system      Aa3456
    And click login buton
    And click survey management
    And click Surveys
    And click Searchbar And Search Survey and click it      Hic Est Temptare
    And click invitation
    And click Other Preferences
    And switch toggle of if invitee does not respond the invitation, send another invitation
    And switch toggle of if invitee does not finish the survey, send a reminder
    And switch toggle of use alternative invitation channels
    And click Save
