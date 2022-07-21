*** Settings ***
Documentation   Login AlternaWebPage
Library     SeleniumLibrary
Resource    ../resources/loginPage/keywords_LoginPage.robot
Test Setup  open the browser with ALternaWebPage
Test Teardown   close browser session

*** Test Cases ***
Invalid Username
  #  set selenium speed  1
    #set selenium speed      2
    When fill the login form    systemm      Aa3456
    And click login buton
    wait until element is visible   ${notification_message_l}
    ${notification_message} =   get text    ${notification_message_l}
 #   element text should be     ${notification_message_l}      ${invalid_user_pass_message}

Invalid Password
   # set selenium speed  1
    set selenium timeout        20
    When fill the login form    system      Aa34567
    And click login buton
    wait until element is visible   ${notification_message_l}
    ${notification_message} =   get text    ${notification_message_l}
 #   element text should be     ${notification_message_l}      ${invalid_user_pass_message}


