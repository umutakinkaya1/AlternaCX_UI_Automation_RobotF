*** Settings ***
Documentation   Survey Invitation
Library     SeleniumLibrary
Library     BuiltIn
Resource    ../resources/loginPage/keywords_LoginPage.robot
Resource    ../resources/mainPage/keywords_mainPage.robot
Resource    ../resources/surveyListPage/keywords_surveyListPage.robot
Resource    ../resources/surveyEditPage/keywords_surveyEditPage.robot
Resource    ../resources/surveyEditPage/InvitationPage/keywords_surveyEditPage_Invitation.robot
Test Setup  open the browser with ALternaWebPage
Test Teardown   close browser session

*** Test Cases ***
Survey Invitation
    set selenium timeout        20
    set selenium speed      0.5
    When fill the login form    umut    Hacettepe2019
    And click login buton
    And click survey management
    And click Surveys
    And click Searchbar And Search Survey and click it      Hic Est Temptare
    And click invitation
    And click delete touchpoint
    And click delete
    And click new channel
    And click touchpoint
    And click Save
