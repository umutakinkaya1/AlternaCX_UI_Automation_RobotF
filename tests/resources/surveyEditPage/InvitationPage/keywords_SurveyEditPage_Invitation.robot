*** Settings ***
Library     SeleniumLibrary
Resource    objectMaps_SurveyEditPage_Invitation.robot

*** Keywords ***

click delete touchpoint
    Execute JavaScript    window.scrollTo(0, document.body.scrollHeight)
    wait until element is visible       ${delete_touchpoint_l}
    click element       ${delete_touchpoint_l}

click delete
    wait until element is visible       ${delete_l}
    click element       ${delete_l}

click new channel
    Execute JavaScript    window.scrollTo(0, document.body.scrollTop)
    wait until element is visible       ${new_channel_l}
    click element       ${new_channel_l}

click touchpoint
    wait until element is visible       ${touchpoint_l}
    click element               ${touchpoint_l}