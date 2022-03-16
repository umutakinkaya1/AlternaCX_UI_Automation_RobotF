*** Variables ***
${username_l}     xpath://input[@type='text']
${password_l}     xpath://input[@type='password']
${notification_message_l}   //div[@class='q-notification__message col']
${invalid_user_pass_message}     The user name or password is incorrect.
${login_button_l}       xpath://span[contains(text(),'Login')]