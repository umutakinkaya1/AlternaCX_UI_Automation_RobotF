*** Settings ***
Documentation   NPS Trend
Library     SeleniumLibrary
Library     BuiltIn
Resource    ../resources/loginPage/keywords_LoginPage.robot
Resource    ../resources/mainPage/keywords_mainPage.robot
Resource    ../resources/reportListPage/keywords_reportListPage.robot
Resource    ../resources/reportWidgetPage/keywords_ReportWidgetPage.robot
Test Setup  open the browser with ALternaWebPage
Test Teardown   close browser session

*** Test Cases ***
NPS Trend
    ${widget_type}      set variable        Nps Trend Widget
    ${random_number}=    Evaluate    random.sample(range(1, 9999), 1)    random
    ${created_report_l}     set variable        //div[contains(text(), 'Automation Report${random_number}')]
    ${created_report_l}     set variable        //div[contains(text(), 'Automation Report${random_number}')]
    set selenium timeout        20
    set selenium speed      1
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
    and click line
    and click nps trend
    and write widget title      ${widget_type}  ${random_number}
    and choose layout       2
    and choose data type
    and choose category type
    and click save
    and click report management
    and click reports
    and search report on report list screen     ${random_number}
    and click delete icon
    and click delete button

