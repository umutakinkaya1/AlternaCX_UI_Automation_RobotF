*** Settings ***
Documentation   Survey Activation, Invitation , Preview On Survey Activation Page
Library     SeleniumLibrary
Library     BuiltIn
Resource    ../resources/loginPage/keywords_LoginPage.robot
Resource    ../resources/mainPage/keywords_mainPage.robot
Resource    ../resources/surveyListPage/keywords_surveyListPage.robot
Resource    ../resources/surveyEditPage/keywords_surveyEditPage.robot
Resource    ../resources/surveyEditPage/generalPage/keywords_surveyEditPage_General.robot
Test Setup  open the browser with ALternaWebPage
Test Teardown   close browser session

*** Test Cases ***
Survey Edit Title , Execution Title , Language
    set selenium timeout        20
    set selenium speed      0.5
    When fill the login form    umut    Hacettepe2019
    And click login buton
    And click survey management
    And click Surveys
    And click Searchbar And Search Temp Survey and click it
    And click general
    And change title to temp title
    And change survey language to english
    And click same execution title toggle
    And write execution title
    And click opening message
    And change opening message to temp message
    And click closing message
    And change closing message to temp message
    And click save and continue button
    And click general
    And change title to original title
    And change survey language to turkish
    And click same execution title toggle
    And click opening message
    And change opening message to original message
    And click closing message
    And change closing message to original message
    And click save and continue button