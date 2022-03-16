*** Settings ***
Library     SeleniumLibrary
Resource    objectMaps_ReportWidgetPage.robot

*** Keywords ***
add widget
    wait until element is visible       ${add_widget_l}
    click element       ${add_widget_l}

click TextAnalytics Tab
    wait until element is visible       ${text_analytics_tab_l}
    click element       ${text_analytics_tab_l}

click ai Chart
    wait until element is visible       ${ai_chart_l}
    click element       ${ai_chart_l}

click Text Bubble Chart Widget
    wait until element is visible       ${text_bubble_widget_l}
    click element       ${text_bubble_widget_l}

write Widget Title
    [Arguments]     ${widget_type}      ${random_number}
    wait until element is visible       ${widget_title_l}
    input text     ${widget_title_l}    AutoWidget ${widget_Type} ${random_number}

choose Data Type
    wait until element is visible       ${data_type_l}
    click element       ${data_type_l}
    press keys  ${data_type_l}    ARROW_DOWN
    press keys  ${data_type_l}    RETURN

choose Layout
    [Arguments]     ${layout}
    IF      ${layout}==1
        click element       ${layout_type1_l}
    ELSE IF     ${layout}==2
        click element       ${layout_type2_l}
    ELSE IF     ${layout}==3
        click element       ${layout_type3_l}
    END

choose Topic Model
    [Arguments]     ${topic_model_count}
    wait until element is visible       ${topic_model_l}
    IF      ${topic_model_count}==1
        click element       ${topic_model_l}
        press keys      None        ARROW_DOWN
        press keys      None        RETURN
    ELSE IF     ${topic_model_count}==2
        click element       ${topic_model_l}
        press keys      None        ARROW_DOWN
        press keys      None        RETURN
        press keys      None        ARROW_DOWN
        press keys      None        ARROW_DOWN
        press keys      None        RETURN
    END

click Emotion Analysis Toggle
    wait until element is visible       ${emotion_toggle_l}
    click element       ${emotion_toggle_l}

click text analytics widget
    wait until element is visible       ${text_analytics_widget_l}
    click element       ${text_analytics_widget_l}

click Impact Butterfly
    wait until element is visible       ${impact_butterfly_l}
    click element       ${impact_butterfly_l}

choose impact Type
    wait until element is visible       ${impact_type_l}
    click element       ${impact_type_l}
    press keys      None        RETURN

choose Topic Model for impact butterfly
    [Arguments]     ${topic_model_count}
    wait until element is visible       ${topic_model2_l}
    IF      ${topic_model_count}==1
        click element       ${topic_model2_l}
        press keys      None        ARROW_DOWN
        press keys      None        RETURN
    ELSE IF     ${topic_model_count}==2
        click element       ${topic_model2_l}
        press keys      None        ARROW_DOWN
        press keys      None        RETURN
        press keys      None        ARROW_DOWN
        press keys      None        ARROW_DOWN
        press keys      None        RETURN
    END

click column & bar
    wait until element is visible       ${column_bar_l}
    click element       ${column_bar_l}

click nps channel performance
    wait until element is visible       ${nps_channel_perf_l}
    click element       ${nps_channel_perf_l}

choose transaction channel
    wait until element is visible       ${trans_chan_l}
    click element       ${trans_chan_l}
    press keys      None        RETURN

click Gauge
    wait until element is visible       ${gauge_l}
    click element       ${gauge_l}

click NPS Gauge
    wait until element is visible       ${nps_gauge_l}
    click element       ${nps_gauge_l}

click Line
    wait until element is visible       ${line_l}
    click element       ${line_l}

click nps trend
    wait until element is visible       ${nps_trend_l}
    click element       ${nps_trend_l}

choose category type
    wait until element is visible       ${category_type_l}
    click element       ${category_type_l}
    press keys      None        RETURN

click table
    wait until element is visible       ${table_l}
    click element       ${table_l}

click open end text nps
    wait until element is visible       ${oetx_l}
    click element       ${oetx_l}

choose survey flow
    wait until element is visible       ${survey_flow_l}
    click element       ${survey_flow_l}
    press keys      None        CTRL+A
    press keys      None        oetxtest1
    press keys      None        RETURN

choose question
    wait until element is visible       ${question_l}
    click element       ${question_l}
    press keys      None        RETURN

choose nps question
    wait until element is visible       ${nps_question_l}
    click element       ${nps_question_l}
    press keys      None        RETURN

