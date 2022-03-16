*** Settings ***
Documentation   External Survey
Library     SeleniumLibrary
Resource    ../resources/loginPage/keywords_LoginPage.robot
Resource    ../resources/mainPage/keywords_MainPage.robot
Resource    ../resources/surveyListPage/keywords_surveyListPage.robot
Resource    ../resources/surveyEditPage/keywords_surveyEditPage.robot
Resource    ../resources/externalSurveyCreatePage/keywords_ExternalSurveyCreatePage.robot
Test Setup  open the browser with ALternaWebPage
Test Teardown   close browser session

*** Test Cases ***
External Survey Create
    ${random_number}=    Evaluate    random.sample(range(1, 9999), 1)    random
    set selenium timeout        20
    set selenium speed      0.5
    When fill the login form    umut    Hacettepe2019
    And click login buton
    And click Survey Management
    And click Surveys
    And click create survey
    And click external survey
    And write external survey title      ${random_number}
    and choose journey stage
    And click save and continue button
    And choose question type
    and choose experience type
    and write external survey question title        ${random_number}
    And click save and return to list


