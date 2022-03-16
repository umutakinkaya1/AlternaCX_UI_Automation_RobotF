*** Settings ***
Library     SeleniumLibrary
Library     BuiltIn
Resource    objectMaps_TopicModelListPage.robot

*** Keywords ***
should see topic models
    wait until element is visible       ${first_topic_model_l}
    element should be visible       ${first_topic_model_l}
    ${first_topic_model}=       get text      ${first_topic_model_l}
    log to console    ${first_topic_model}


