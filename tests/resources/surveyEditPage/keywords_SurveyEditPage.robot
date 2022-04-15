*** Settings ***
Library     SeleniumLibrary
Resource    objectMaps_SurveyEditPage.robot

*** Keywords ***
click Quota Management
    wait until element is visible   ${quota_management_l}
    click element   ${quota_management_l}

click new quota
    wait until element is visible   ${new_quota_l}
    click element   ${new_quota_l}

click Actions
    wait until element is visible   ${actions_l}
    click element   ${actions_l}

set active the Refresh quota periodically
    wait until element is visible   ${refresh_quota_period_toggle_l}
    click element   ${refresh_quota_period_toggle_l}

click Audience
    Execute JavaScript    window.scrollTo(document.body.scrollHeight,0)
    wait until element is visible   ${audience_l}
    click element       ${audience_l}

click Audience criteria arrow
    wait until element is visible   ${audience_criteria_arrow_l}
    click element       ${audience_criteria_arrow_l}

click Add button
    wait until element is visible   ${add_button_l}
    click element       ${add_button_l}

add audience criteria segment
    wait until element is visible   ${audience_criteria_text_l}
    click element       ${audience_criteria_text_l}
    press keys  None    RETURN

add audience criteria operand type
    wait until element is visible   ${audience_operand_text_l}
    click element       ${audience_operand_text_l}
    press keys  None    RETURN

add audience criteria
    wait until element is visible   ${audience_criteria_l}
    click element       ${audience_criteria_l}
    press keys  None    RETURN

add criteria for 1st item

    FOR     ${i}    IN RANGE    1   4
        wait until element is visible   xpath:(//input[@type='text'])[${i}]
        click element       xpath:(//input[@type='text'])[${i}]
        press keys  None    RETURN
        Log     xpath:(//input[@type='text'])[${i}]
    END

add criteria for 2st item

    FOR     ${i}    IN RANGE    4   7
        wait until element is visible   xpath:(//input[@type='text'])[${i}]
        click element       xpath:(//input[@type='text'])[${i}]
        press keys  None    RETURN
        Log     xpath:(//input[@type='text'])[${i}]
    END

click delete criteria button
    set selenium speed      2
    mouse over      ${delete_creteria_but_l}
    wait until element is enabled   ${delete_creteria_but_l}        10
    click element       ${delete_creteria_but_l}


click save and continue button
    set selenium speed      1
    wait until element is visible   ${save_and_continue_but_l}
    Execute JavaScript    window.scrollTo(0, document.body.scrollHeight)
    click element       ${save_and_continue_but_l}
    wait until element is visible   ${save_and_continue_but_l}

click invitation
    wait until element is visible       ${invitation_l}
    click element       ${invitation_l}

click Other Preferences
    Execute JavaScript    window.scrollTo(0, document.body.scrollHeight)
    wait until element is visible       ${other_pref_l}
    click element       ${other_pref_l}

switch toggle of If invitee does not respond the invitation, send another invitation
    Execute JavaScript    window.scrollTo(0, document.body.scrollHeight)
    wait until element is visible       ${resend_toggle_l}
    click element       ${resend_toggle_l}

switch toggle of If invitee does not finish the survey, send a reminder
    Execute JavaScript    window.scrollTo(0, document.body.scrollHeight)
    wait until element is visible       ${reminder_toggle_l}
    click element       ${reminder_toggle_l}

switch toggle of Use Alternative Invitation Channels
    Execute JavaScript    window.scrollTo(0, document.body.scrollHeight)
    wait until element is visible       ${alternative_ch_l}
    click element       ${alternative_ch_l}

click activate
    wait until element is visible       ${activate_l}
    click element       ${activate_l}

click preview start button
    wait until element is visible       ${preview_start_but_l}
    click element       ${preview_start_but_l}

assert survey title
    wait until element is visible       ${card_title_l}
    element text should be      ${card_title_l}     Hic est temptare Quaestionario

close survey preview
    wait until element is visible       ${preview_close_l}
    click element       ${preview_close_l}

click activate survey toggle
    wait until element is visible       ${activate_toggle_l}
    click element       ${activate_toggle_l}

click yes
    wait until element is visible       ${yes_but_l}
    click element       ${yes_but_l}

choose users to send invitation
    wait until element is visible       ${user_inv_l}
    Execute JavaScript    window.scrollTo(0, document.body.scrollHeight)
    click element      ${user_inv_l}
    press keys      None        UMUT
    press keys      None        RETURN
    press keys      None        ESC

send to test users
    wait until element is visible     ${send_users_but_l}
    click element       ${send_users_but_l}
    set selenium speed      3
    wait until element is visible       //div[@class='q-img__content absolute-full']

click Save
     Execute JavaScript    window.scrollTo(0, document.body.scrollHeight)
     scroll element into view       ${save_l}
     wait until element is visible       ${save_l}
     click element   ${save_l}
     set selenium speed      3
     wait until element is visible       //div[@class='q-img__content absolute-full']

