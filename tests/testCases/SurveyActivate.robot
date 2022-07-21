*** Settings ***
Documentation   Survey Activation, Preview On Survey Activation Page
Library     SeleniumLibrary
Library     BuiltIn
Resource    ../resources/loginPage/keywords_LoginPage.robot
Resource    ../resources/mainPage/keywords_mainPage.robot
Resource    ../resources/surveyListPage/keywords_surveyListPage.robot
Resource    ../resources/surveyEditPage/keywords_surveyEditPage.robot
Test Setup  open the browser with ALternaWebPage
Test Teardown   close browser session

*** Test Cases ***
Survey Preview
    set selenium timeout        20
    set selenium speed      1
    When fill the login form    system      Aa3456
    And click login buton
    And click survey management
    And click Surveys
    And click Searchbar And Search Survey and click it      Hic Est Temptare
    And click activate
    And click preview start button
    Then assert survey title
    And close survey preview
    And click activate survey toggle
    And click yes
    And click activate survey toggle
    And click yes
    And choose users to send invitation
    And send to test users






