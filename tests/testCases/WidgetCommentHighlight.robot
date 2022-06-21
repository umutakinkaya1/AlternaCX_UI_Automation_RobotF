*** Settings ***
Documentation   Impact Buuterfly Widget
Library     SeleniumLibrary
Library     BuiltIn
Resource    ../resources/loginPage/keywords_LoginPage.robot
Resource    ../resources/mainPage/keywords_mainPage.robot
Resource    ../resources/reportListPage/keywords_reportListPage.robot
Resource    ../resources/reportWidgetPage/keywords_reportWidgetPage.robot
Test Setup  open the browser with ALternaWebPage
Test Teardown   close browser session

*** Test Cases ***
Adding New Comment Highlight Widget to Report
    ${widget_type}      set variable        Comment Highlight
    ${random_number}=    Evaluate    random.sample(range(1, 9999), 1)    random
    ${created_report_l}     set variable        //div[contains(text(), 'Automation Report${random_number}')]
    ${created_report_l}     set variable        //div[contains(text(), 'Automation Report${random_number}')]
    set selenium timeout        20
    set selenium speed      0.5
    When fill the login form    umut    Hacettepe2019
    And click login buton
    And click Report Management
    And click Reports
    And click New Report
    And write Report Title      ${random_number}
    And choose Category
    And click Save
    And search report on report list screen     ${random_number}
    reload page
    And click My Reports
    And click Report that created       ${created_report_l}
    And add widget
    and click text analytics widget
    and click ai chart
    and click comment highlight chart
    And write Widget Title          ${widget_type}  ${random_number}
    And choose Layout       2
    and choose data type
    and choose topic model      1
    and click save
    and click report management
    and click reports
    and search report on report list screen     ${random_number}
    and click delete icon
    and click delete button