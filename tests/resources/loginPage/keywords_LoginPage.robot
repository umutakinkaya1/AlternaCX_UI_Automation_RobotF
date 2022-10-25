*** Settings ***
Library     SeleniumLibrary
Resource    objectMaps_LoginPage.robot

*** Keywords ***
open the browser with ALternaWebPage
    create webdriver    Chrome  executable_path=tests/drivers/chromedriver.exe
    go to   https://qastaging.alternacx.com/
    maximize browser window

fill the login form
    [Arguments]     ${username}     ${password}
    wait until element is visible   ${username_l}       timeout=20
    Input Text      ${username_l}     ${username}
    Input Password  ${password_l}     ${password}

click login buton
    click element   ${login_button_l}


close browser session
    close browser