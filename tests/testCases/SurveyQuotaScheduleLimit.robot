*** Settings ***
Documentation   Quota Schedule Limit Check
Library     SeleniumLibrary
Resource    ../resources/loginPage/keywords_LoginPage.robot
Resource    ../resources/mainPage/keywords_mainPage.robot
Resource    ../resources/surveyListPage/keywords_surveyListPage.robot
Resource    ../resources/surveyEditPage/keywords_surveyEditPage.robot
Test Setup  open the browser with ALternaWebPage
Test Teardown   close browser session

*** Test Cases ***
Quota Scheduole Limit Check
    set selenium timeout        20
    set selenium speed      1
    When fill the login form    system      Aa3456
    And click login buton
    When click Survey Management
    And click Surveys
    And click Searchbar And Search Survey and click it      Hic Est Temptare
    And click Quota Management
    And click new quota
    And click Actions
    And set active the Refresh quota periodically








