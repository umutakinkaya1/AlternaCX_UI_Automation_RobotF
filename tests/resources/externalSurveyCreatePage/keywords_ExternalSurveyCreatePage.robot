*** Settings ***
Library     SeleniumLibrary
Library     BuiltIn
Resource    objectMaps_ExternalSurveyCreatePage.robot

*** Keywords ***
write external survey title
    [Arguments]     ${random_number}
    wait until element is visible       ${external_survey_title_l}
    input text     ${external_survey_title_l}    Automation External Survey${random_number}

choose journey stage
    wait until element is visible       ${journey_stage_l}
    click element       ${journey_stage_l}
    press keys      None        RETURN

choose question type
    wait until element is visible       ${question_type_l}
    click element       ${question_type_l}
    press keys      None        RETURN

choose experience type
    wait until element is visible       ${exp_type_l}
    click element       ${exp_type_l}
    press keys      None        RETURN

write external survey question title
    [Arguments]     ${random_number}
    wait until element is visible       ${external_survey_q_title_l}
    input text     ${external_survey_q_title_l}    Automation External Survey Question${random_number}

click save and return to list
    wait until element is visible   ${save_and_return_but_l}
    Execute JavaScript    window.scrollTo(0, document.body.scrollHeight)
    click element       ${save_and_return_but_l}
    wait until element is visible       //div[@class='q-img__content absolute-full']
