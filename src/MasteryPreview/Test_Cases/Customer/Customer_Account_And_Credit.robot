*** Settings ***
Test Teardown     Close Browser
Library           SeleniumLibrary
Library    robot.libraries.DateTime
Resource  ../../Keywords/Login_Keywords.robot
Resource  ../../Keywords/Common_Keywords.robot
Resource  ../../Keywords/Search_Customer_Keywords.robot
Variables    ../../Page_Objects/Search_Customer.py
Variables    ../../Data/Search_Customer_Data.py

*** Variables ***
*** Keywords ***
*** Test Cases ***
#Customer Accounting: TA-418
Customer's Accounting & Credit information
    [Documentation]  As a user I can enter Customer's Accounting & Credit information
    [Tags]  Regression Automation Suite
    Login_Test

    #Below line added only to view the Test case Flow properly. As per your requirement you can change time to wait after each step.set selenium speed
    set selenium speed  0.1 seconds

    #Customer Search by Name
    Search customer
    Search with customer name

    wait until element is visible  ${customer_searched_by_name_staging}
    wait until element is visible  ${accounting_and_credit_tab_element}
    click element  ${accounting_and_credit_tab_element}
    wait until element is visible   ${billing_address_element}
    wait until page contains element    ${billing_detail_element}
    click element  ${billing_address_element}
    wait until element is visible  ${select_billing_address_value}
    click element  ${select_billing_address_value}
    Save Customer

    #Select Payment Terms:
    click element  ${payment_terms_element}
    wait until element is visible  ${select_net20_value}
    click element  ${select_net20_value}
    Save Customer
    page should contain element  ${verify_net20_value}

    click element  ${payment_terms_element}
    wait until element is visible  ${select_net30_value}
    click element  ${select_net30_value}
    Save Customer
    page should contain element  ${verify_net30_value}

    click element  ${payment_terms_element}
    wait until element is visible  ${select_net45_value}
    click element  ${select_net45_value}
    Save Customer
    page should contain element  ${verify_net45_value}

    click element  ${payment_terms_element}
    wait until element is visible  ${select_net60_value}
    click element  ${select_net60_value}
    Save Customer
    page should contain element  ${verify_net60_value}

    click element  ${payment_terms_element}
    wait until element is visible  ${select_net75_value}
    click element  ${select_net75_value}
    Save Customer
    page should contain element  ${verify_net75_value}

    click element  ${payment_terms_element}
    wait until element is visible  ${select_net90_value}
    click element  ${select_net90_value}
    Save Customer
    page should contain element  ${verify_net90_value}

    click element  ${payment_terms_element}
    wait until element is visible  ${select_quickpay_value}
    click element  ${select_quickpay_value}
    Save Customer
    page should contain element  ${verify_quickpay_value}

    #Select Payment Methods:
    click element  ${payment_method_element}
    wait until element is visible  ${select_check_value}
    click element  ${select_check_value}
    Save Customer
    page should contain element  ${verify_check_value}

    click element  ${payment_method_element}
    wait until element is visible  ${select_moneyorder_value}
    click element  ${select_moneyorder_value}
    Save Customer
    page should contain element  ${verify_moneyorder_value}

    click element  ${payment_method_element}
    wait until element is visible  ${select_creditcard_value}
    click element  ${select_creditcard_value}
    Save Customer
    page should contain element  ${verify_creditcard_value}

    click element  ${payment_method_element}
    wait until element is visible  ${select_cash_value}
    click element  ${select_cash_value}
    Save Customer
    page should contain element  ${verify_cash_value}

    click element  ${payment_method_element}
    wait until element is visible  ${select_ach_value}
    click element  ${select_ach_value}
    Save Customer
    page should contain element  ${verify_ach_value}

    click element  ${payment_method_element}
    wait until element is visible  ${Select_Wire_Value}
    click element  ${select_wire_value}
    Save Customer
    page should contain element  ${verify_wire_value}

    #Select Currency:
    click element  ${currency_element}
    wait until element is visible  ${Select_USD_Value}
    click element  ${Select_USD_Value}
    Save Customer
    page should contain element  ${Verify_USD_Value}

    click element  ${currency_element}
    wait until element is visible  ${Select_CAD_Value}
    click element  ${Select_CAD_Value}
    Save Customer
    page should contain element  ${Verify_CAD_Value}

    click element  ${currency_element}
    wait until element is visible  ${Select_MXN_Value}
    click element  ${Select_MXN_Value}
    Save Customer
    page should contain element  ${Verify_MXN_Value}

    #Select invoice Method:
    click element  ${invoice_method_element}
    wait until element is visible  ${Select_Print_Value}
    click element  ${Select_Print_Value}
    Save Customer
    page should contain element  ${Verify_Print_Value}

    click element  ${invoice_method_element}
    wait until element is visible  ${Select_Email_Value}
    click element  ${Select_Email_Value}
    Save Customer
    page should contain element  ${Verify_Email_Value}

    click element  ${invoice_method_element}
    wait until element is visible  ${Select_EDI_Value}
    click element  ${Select_EDI_Value}
    Save Customer
    page should contain element  ${Verify_EDI_Value}

    #Billing Email details
    input text  ${billing_email_element}   ${billing_email_value}
    Save Customer
    page should contain element  ${Verify_billing_email_value}

    #Invoice_Grouping Details
    click element  ${invoice_group_element}
    wait until element is visible  ${Select_order_Value}
    click element  ${Select_order_Value}
    Save Customer
    page should contain element  ${Verify_order_Value}

    click element  ${invoice_group_element}
    wait until element is visible  ${Select_combined_Value}
    click element  ${Select_combined_Value}
    Save Customer
    page should contain element  ${Verify_combined_Value}

    #Credit_status_details: Approved
    click element   ${Select_credit_status_element}
    click element   ${Select_credit_status}
    wait until element is visible  ${Select_Approved_value}
    click element  ${Select_Approved_value}
    click element   ${Select_Limit_Element}
    Input text   ${Select_Limit_Element}  ${Limit_Value}
    click element  ${select_calender}
    Select a date from date picker    ${ins_exp_day}  ${ins_exp_month}    ${ins_exp_year}
    Press Keys  ${select_calender}  ENTER
    Click element  ${Enter_Note}
    Input text  ${Enter_Note}  ${Note_Value}
    Save Credit
    page should contain element  ${Verify_Approved_Value}

    #Credit_status_details: Denied
    click element   ${Select_credit_status_element}
    click element   ${Select_credit_status}
    wait until element is visible  ${Select_denied_value}
    click element  ${Select_denied_value}
    click element   ${Select_Limit_Element}
    Input text   ${Select_Limit_Element}  ${Limit_Value}
    click element  ${select_calender}
    Select a date from date picker    ${ins_exp_day}  ${ins_exp_month}    ${ins_exp_year}
    Press Keys  ${select_calender}  ENTER
    Click element  ${Enter_Note}
    Input text  ${Enter_Note}  ${Note_Value}
    Save Credit
    page should contain element  ${Verify_denied_Value}

    #Credit_status_details: Hold
    click element   ${Select_credit_status_element}
    click element   ${Select_credit_status}
    wait until element is visible  ${Select_hold_value}
    click element  ${Select_hold_value}
    click element   ${Select_Limit_Element}
    Input text   ${Select_Limit_Element}  ${Limit_Value}
    click element  ${select_calender}
    Select a date from date picker    ${ins_exp_day}  ${ins_exp_month}    ${ins_exp_year}
    Press Keys  ${select_calender}  ENTER
    Click element  ${Enter_Note}
    Input text  ${Enter_Note}  ${Note_Value}
    Save Credit
    page should contain element  ${Verify_hold_Value}

    #credit provider details
    click element   ${Select_credit_provider_element}
    click element   ${Select_credit_provider}
    wait until element is visible  ${Select_credit_provider_value}
    click element  ${Select_credit_provider_value}
    click element   ${Select_Credit_score_Element}
    Input text   ${Select_Credit_score_Element}  ${Credit_score_Value}
    click element   ${Select_Covarage_Ammount_Element}
    Input text   ${Select_Covarage_Ammount_Element}  ${Credit_Covarage_Value}
    click element  ${select_effective_date}
    Select a date from date picker    ${effective_day}  ${effective_month}    ${effective_year}
    Press Keys  ${select_effective_date}  ENTER
    click element  ${select_exp_date}
    Select a date from date picker    ${exp_day}  ${exp_month}    ${exp_year}
    Press Keys  ${select_exp_date}  ENTER
    Click element  ${Enter_Notes}
    Input text  ${Enter_Notes}  ${Note_Value}
    click element  ${Save_Credit_provider}
    Save Customer
    page should contain element  ${Verify_credit_provider_Value}

    #Customer_accounting_note_details
    input text  ${customer_accounting_note_element}   ${customer_accounting_note_value}
    Save Customer
    page should contain element  ${Verify_customer_accounting_note_value}

    #Enter Parent Value:
    input text  ${parent_element}   ${parent_value}
    wait until element is visible  ${select_parent_value}
    click element  ${select_parent_value}
    Click Element  ${select_parent_credit}
    wait until element is enabled  ${customer_Save_button}
    Save Customer
    page should contain element   ${verify_parent_value}

    click element   ${maintainance_tab_element}
    click element   ${accounting_and_credit_tab_element}

    #To clear the parent field
    press keys  ${parent_element}  ESCAPE
    Click Element  ${select_parent_credit}
    page should not contain element  ${Parent_Value}

    #Clear Billing mail field
    ${emailValue}=  get element attribute  ${billing_email_element}  value
    ${email_backspaces_count}=  get length  ${emailValue}
    Run Keyword If    """${emailValue}""" != ''
    ...     Repeat Keyword  ${email_backspaces_count}  Press Keys  ${billing_email_element}   \ue003
    page should not contain element  ${billing_email_value}

    #Remove note
    press keys  ${customer_accounting_note_element}  CONTROL+A+BACKSPACE
    Save Customer
    page should not contain element  ${Customer_Accounting_Note_value}

