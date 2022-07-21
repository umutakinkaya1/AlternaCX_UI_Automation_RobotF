*** Settings ***
Documentation   Survey Activation, Invitation , Preview On Survey Activation Page
Library     SeleniumLibrary
Library     BuiltIn
Resource    ../resources/loginPage/keywords_LoginPage.robot
Resource    ../resources/mainPage/keywords_mainPage.robot
Resource    ../resources/topicModelListPage/keywords_TopicModelListPage.robot
Test Setup  open the browser with ALternaWebPage
Test Teardown   close browser session

*** Test Cases ***
Topic Model List Existence Check
    set selenium timeout        20
    set selenium speed      0.5
    When fill the login form    system      Aa3456
    And click login buton
    And click text analytics
    And click topic models
    Then should see topic models
