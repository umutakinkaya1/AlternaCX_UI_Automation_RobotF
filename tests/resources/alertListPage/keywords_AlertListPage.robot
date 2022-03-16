*** Settings ***
Library     SeleniumLibrary
Resource    objectMaps_AlertListPage.robot

*** Keywords ***
i should see alert list
    set selenium speed  1
    wait until element is visible   ${notification_bell_l}
    ${alert_no}=    get text   ${notification_bell_l}
    wait until element is visible   ${alert_list_count_l}
    element should contain  ${alert_list_count_l}   ${alert_no}