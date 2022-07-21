*** Settings ***
Documentation   Ai Tables Widgets (Branch Sentiments, Branch Topics,Open End Texts & Topics, NPS Impact Analysis)
Library     SeleniumLibrary
Library     BuiltIn
Resource    ../resources/loginPage/keywords_LoginPage.robot
Resource    ../resources/mainPage/keywords_mainPage.robot
Resource    ../resources/reportListPage/keywords_reportListPage.robot
Resource    ../resources/reportWidgetPage/keywords_reportWidgetPage.robot
Test Setup  open the browser with ALternaWebPage
Test Teardown   close browser session

*** Test Cases ***
Adding New Branch Sentiments, Branch Topics,Open End Texts & Topics, NPS Impact Analysis Widgets to Report
    ${widget_type}      set variable        Branch Sentiments
    ${random_number}=    Evaluate    random.sample(range(1, 9999), 1)    random
    ${created_report_l}     set variable        //div[contains(text(), 'Automation Report${random_number}')]
    set selenium timeout        20
    set selenium speed      0.5
    When fill the login form    system      Aa3456
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
    #Branch Sentiment
    And add widget
    And click TextAnalytics Tab
    And click Ai Table
    And click Branch Sentiment Widget
    And write Widget Title          ${widget_type}  ${random_number}
    And choose Layout       2
    And choose Data Type
    And choose Channel Hierarchy Level
    And choose Parent Channel Hierarchy Level
    And click Save
    #Branch Topics
    ${widget_type}      set variable        Branch Topics
    And add widget
    And click TextAnalytics Tab
    And click Ai Table
    And click Branch Topic Widget
    And write Widget Title          ${widget_type}  ${random_number}
    And choose Layout       2
    And choose Data Type
    And choose Channel Hierarchy Level
    And choose Parent Channel Hierarchy Level
    And choose Topic Model for Branch Topics
    And click Save
    #Open End Texts & Topics
     ${widget_type}      set variable        Open End Texts Topics
    And add widget
    And click TextAnalytics Tab
    And click Ai Table
    And click Oetx and Topics
    And write Widget Title          ${widget_type}  ${random_number}
    And choose Layout       2
    And choose Data Type
    And click Save
    #NPS Impact Analysis Widgets
     ${widget_type}      set variable        NPS Impact Analysis Widgets
    And add widget
    And click TextAnalytics Tab
    And click Ai Table
    And click Nps Impact Analysis Widget
    And write Widget Title          ${widget_type}  ${random_number}
    And choose Layout       2
    And choose Data Type
    And choose Topic Model for Nps Impact Analysis
    And click Save
    and click report management
    and click reports
    and search report on report list screen     ${random_number}
    and click delete icon
    and click delete button