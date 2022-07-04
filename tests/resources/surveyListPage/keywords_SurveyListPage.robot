*** Settings ***
Library     SeleniumLibrary
Library     BuiltIn
Resource    objectMaps_SurveyListPage.robot

*** Keywords ***
click Searchbar And Search Temp Survey
    wait until element is visible   ${search_bar_l}
    input text      ${search_bar_l}    Hic est temptare
    wait until element is visible   ${temp_survey_l}

click Searchbar And Search Survey and click it
    [Arguments]     ${surveyTitle}
    wait until element is visible   ${search_bar_l}
    input text      ${search_bar_l}    ${surveyTitle}
    wait until element is visible   (//a[@class='acx-list-link'])[2]
    click element   (//a[@class='acx-list-link'])[2]

click title on table
    wait until element is visible       ${title_l}
    click element       ${title_l}

click survey activate toggle
    ${status1}=      get element attribute       ${activate_toggle_l}        aria-checked
    log to console      ${status1}
    wait until element is visible       ${activate_toggle_l}
    click element       ${activate_toggle_l}
    wait until element is visible       ${activate_toggle_l}
    ${status2}=      get element attribute       ${activate_toggle_l}        aria-checked
    IF      '${status1}' == '${status2}'
        log to console      failure!!!
        fail    failure!!!!!!1111
    ELSE
        log to console      success!!!
    END

click create survey
    wait until element is visible       ${create_survey_l}
    click element       ${create_survey_l}

click external survey
    wait until element is visible       ${external_survey_l}
    click element           ${external_survey_l}




