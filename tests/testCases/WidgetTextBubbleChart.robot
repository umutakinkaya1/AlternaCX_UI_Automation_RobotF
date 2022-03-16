*** Settings ***
Documentation   Text Bubble Chart Widget
Library     SeleniumLibrary
Library     BuiltIn
Resource    ../resources/loginPage/keywords_LoginPage.robot
Resource    ../resources/mainPage/keywords_mainPage.robot
Resource    ../resources/reportListPage/keywords_reportListPage.robot
Resource    ../resources/reportWidgetPage/keywords_ReportWidgetPage.robot
Test Setup  open the browser with ALternaWebPage
Test Teardown   close browser session



*** Test Cases ***
Adding New Text Bubble Chart Widget to Report
    ${widget_type}      set variable        Text Bubble Chart
    ${random_number}=    Evaluate    random.sample(range(1, 9999), 1)    random
    ${created_report_l}     set variable        //div[contains(text(), 'Automation Report${random_number}')]
    ${created_report_l}     set variable        //div[contains(text(), 'Automation Report${random_number}')]
    set selenium timeout        20
    set selenium speed      2
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
    And click TextAnalytics Tab
    and click ai chart
    And click Text Bubble Chart Widget
    And write Widget Title      ${widget_type}  ${random_number}
    And choose Data Type
    And choose Layout       2
    And choose Topic Model      1
    And click Save
    And add widget
    And click TextAnalytics Tab
    and click ai chart
    And click Text Bubble Chart Widget
    And write Widget Title      ${widget_type}  ${random_number}Multi
    And choose Data Type
    And choose Layout       2
    And choose Topic Model      2
    And click Save
    And add widget
    And click TextAnalytics Tab
    and click ai chart
    And click Text Bubble Chart Widget
    And write Widget Title      ${widget_type}  ${random_number}EmotionEnabled
    And choose Data Type
    And choose Layout       2
    And choose Topic Model      1
    And click Emotion Analysis Toggle
    And click Save
    set selenium speed      2
    wait until element is visible     //div[@class='q-img__content absolute-full']






