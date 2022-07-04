*** Settings ***
Library     SeleniumLibrary
Resource    objectMaps_SurveyEditPage_Flow.robot

*** Keywords ***
click Questions and Flows
    wait until element is visible       ${flow_l}
    click element       ${flow_l}

click Add new Question
    Execute JavaScript    window.scrollTo(0, document.body.scrollHeight)
    wait until element is visible       ${newq_l}
    click element       ${newq_l}

click random new question type
    [Arguments]     ${randomq}
    click element       (//div[@class='q-item__label'])${randomq}