*** Settings ***
Documentation   Alert List Check
Library     SeleniumLibrary
Resource    ../resources/loginPage/keywords_LoginPage.robot
Resource    ../resources/alertListPage/keywords_AlertListPage.robot
Resource    ../resources/mainPage/keywords_MainPage.robot
Test Setup  open the browser with ALternaWebPage
Test Teardown   close browser session

*** Test Cases ***
Alert List Check
    set selenium timeout        20
    set selenium speed      2
    When fill the login form    umut    Hacettepe2019
    And click login buton
    set selenium speed      1
    When click notification bell
    Then i should see alert list






