*** Settings ***
Documentation   Survey Flow
Library     SeleniumLibrary
Library     BuiltIn
Resource    ../resources/loginPage/keywords_LoginPage.robot
Resource    ../resources/mainPage/keywords_mainPage.robot
Resource    ../resources/surveyEditPage/keywords_surveyEditPage.robot
Resource    ../resources/surveyListPage/keywords_surveyListPage.robot
Resource    ../resources/surveyEditPage/FlowPage/keywords_surveyEditPage_Flow.robot
Test Setup  open the browser with ALternaWebPage
Test Teardown   close browser session

*** Test Cases ***
Survey Flow Check
set selenium timeout        20
    set selenium speed      1
    When fill the login form    umut    Hacettepe2019
    And click login buton
    When click Survey Management
    And click Surveys
    And click Searchbar And Search Survey and click it      Hic est Temptare
    And click Questions and Flows
    And click Flow Management
    And click Flow Diagram
    And click save and continue button

Survey Question Types
    ${random_number}=    Evaluate    random.sample(range(4, 10), 1)    random
    set selenium timeout        20
    set selenium speed      1
    When fill the login form    umut    Hacettepe2019
    And click login buton
    When click Survey Management
    And click Surveys
    And click Searchbar And Search Survey and click it      Survey Flow Umut
    And click Questions and Flows
    And click Add new Question
    #And click random new question type      ${random_number}


