*** Settings ***
Library     SeleniumLibrary
Resource    objectMaps_SurveyEditPage_General.robot

*** Keywords ***
click general
    Execute JavaScript    window.scrollTo(0, document.body.scrollTop)
    wait until element is visible       ${general_l}
    click element       ${general_l}

change title to temp title
    wait until element is visible       ${title_text_l}
    input text      ${title_text_l}     TEMPTEMP

change title to original title
    wait until element is visible       ${title_text_l}
    click element       ${title_text_l}
    press keys      None        CTRL+A
    press keys      None        Hic est temptare Quaestionario


click same execution title toggle
    wait until element is visible       ${same_exec_title_toggle_l}
    click element       ${same_exec_title_toggle_l}

write execution title
    wait until element is visible       ${exec_title_text_l}
    input text      ${exec_title_text_l}        temporarium supplicium titulumç

change survey language to english
    wait until element is visible       ${language_text_l}
    input text      ${language_text_l}      english

change survey language to turkish
    wait until element is visible       ${language_text_l}
    input text      ${language_text_l}      turkish

click opening message
    wait until element is visible       ${opening_message_l}
    click element       ${opening_message_l}

change opening message to temp message
    wait until element is visible       ${opening_message_text_l}
    click element       ${opening_message_text_l}
    press keys      None        CTRL+A
    press keys      None        Automation Test Opening TEMP Message

change opening message to original message
    wait until element is visible       ${opening_message_text_l}
    click element       ${opening_message_text_l}
    press keys      None        CTRL+A
    press keys      None        Automation Test Opening Message
    click element       ${variable_l}
    click element       ${invitee_fullname_l}

click closing message
    Execute JavaScript    window.scrollTo(0, document.body.scrollHeight)
    wait until element is visible       ${closing_message_l}
    click element       ${closing_message_l}

change closing message to temp message
    wait until element is visible       ${closing_message_text_l}
    click element       ${closing_message_text_l}
    press keys      None        CTRL+A
    press keys      None        Automation Test Closing TEMP Message

change closing message to original message
    wait until element is visible       ${closing_message_text_l}
    click element       ${closing_message_text_l}
    press keys      None        CTRL+A
    press keys      None        Automation Test Closing Message
    click element       ${variable_c_l}
    click element       ${invitee_fullname_l}