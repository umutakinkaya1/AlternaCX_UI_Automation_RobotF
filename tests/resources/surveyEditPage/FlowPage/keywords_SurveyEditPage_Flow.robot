*** Settings ***
Library     SeleniumLibrary
Library     BuiltIn
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
    ${question_type}       set variable     get text    (//div[@class='vue-treeselect__single-value'])[1]
    IF  ${question_type}==Multiple Choice - Multiple Selection



click Flow Management
    wait until element is visible       ${flow_man_l}
    click element       ${flow_man_l}

click Flow Diagram
    wait until element is visible       ${flow_diag_l}
    click element       ${flow_diag_l}