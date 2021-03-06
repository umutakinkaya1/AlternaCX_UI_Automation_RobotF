*** Variables ***
${new_report_l}             //span[contains(text(),'Add New Report')]
${report_title_l}           //span/label/div/div/div/input
${report_category_l}        //div[2]/input
${report_save_l}            //span[contains(text(),'Save')]
${search_bar_l}             //input[@placeholder='Search']
${my_reports_l}             //div[normalize-space()='My Reports']
${delete_icon_l}            (//i[@role='img'][normalize-space()='delete'])[1]
${delete_button_l}          (//span[contains(text(),'Delete')])[1]
