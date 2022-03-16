*** Settings ***
Library     SeleniumLibrary
Resource    objectMaps_MainPage.robot

*** Keywords ***
click notification bell
    wait until element is visible   ${notification_bell_icon_l}
    click element   ${notification_bell_icon_l}

click Survey Management
    wait until element is visible   ${survey_management_l}
    click element   ${survey_management_l}

click Surveys
    wait until element is visible   ${surveys_l}
    click element   ${surveys_l}

click Report Management
    wait until element is visible   ${report_management_l}
    click element   ${report_management_l}

click Reports
    wait until element is visible   ${reports_l}
    click element   ${reports_l}

click text analytics
    wait until element is visible       ${text_analytics_l}
    click element       ${text_analytics_l}

click topic models
    wait until element is visible       ${topic_models_l}
    click element       ${topic_models_l}