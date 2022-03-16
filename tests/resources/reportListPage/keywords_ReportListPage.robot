*** Settings ***
Library     SeleniumLibrary
Resource    objectMaps_ReportListPage.robot

*** Keywords ***
click New Report
    wait until element is visible       ${new_report_l}
    click element       ${new_report_l}

write Report Title
    [Arguments]     ${random_number}
    wait until element is visible       ${report_title_l}
    input text     ${report_title_l}    Automation Report${random_number}


choose Category
    wait until element is visible       ${report_category_l}
    click element       ${report_category_l}
    press keys  ${report_category_l}    ARROW_DOWN
    press keys  ${report_category_l}    RETURN

click Save
    Execute JavaScript    window.scrollTo(0, document.body.scrollHeight)
    wait until element is visible       ${report_Save_l}
    click element   ${report_Save_l}
    wait until element is visible       //div[@class='q-img__content absolute-full']

search report on report list screen
    [Arguments]     ${random_number}
    wait until element is visible       ${search_bar_l}
    click element       ${search_bar_l}
    input text      ${search_bar_l}   Automation Report${random_number}

click My Reports
    wait until element is visible       ${my_reports_l}     15
    click element   ${my_reports_l}

click Report that created
     [Arguments]     ${created_report_l}
     wait until element is visible      ${created_report_l}
     click element      ${created_report_l}