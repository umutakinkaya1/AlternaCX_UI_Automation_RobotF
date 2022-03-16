*** Settings ***
Documentation   Survey Activation, Invitation , Preview On Survey Activation Page
Library     SeleniumLibrary
Library     BuiltIn
Resource    ../resources/loginPage/keywords_LoginPage.robot
Resource    ../resources/mainPage/keywords_mainPage.robot
Resource    ../resources/surveyListPage/keywords_surveyListPage.robot
Test Setup  open the browser with ALternaWebPage
Test Teardown   close browser session

*** Test Cases ***
SurveyList Ordering, Status Activate-Deactivate,
    set selenium timeout        20
    set selenium speed      0.5
    When fill the login form    umut    Hacettepe2019
    And click login buton
    And click survey management
    And click Surveys
    And click title on table
    And click Searchbar And Search Temp Survey
    And click survey activate toggle
    And click survey activate toggle

