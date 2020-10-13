*** Settings ***
Test Teardown     Close Browser
Library           SeleniumLibrary
Library           String
Library           Collections
Resource  ../../Keywords/Login_Keywords.robot
Resource  ../../Keywords/Common_Keywords.robot
Resource  ../../Keywords/Edit_Customer_Keywords.robot
Variables    ../../Page_Objects/Edit_Customer.py
Variables    ../../Data/Customer_Data.py

*** Variables ***
*** Test Cases ***
#Customer_Maintenance : TA 92
Add Edit and Delete Contact from Contacts Table for customer
  [Documentation]  As a user I can update contact for customer
  [Tags]  Regression Test Suite
  Login_Test

  #Below line added only to view the Test case Flow properly. As per your requirement you can add time to wait after each step.set selenium speed
  #set selenium speed  0.1 seconds

  wait until element is visible  ${select_cust}
  click element       ${select_cust}
  click element       ${Select_Tab_FromCust}

  #Customer Search by Name
  input text    ${Customer_name_element}   ${Address_Customer_Name}
  wait until element is enabled  ${submit_button}
  click element  ${Submit_Button}
  wait until element is visible  ${list_of_Customer}
  click element  ${search_results_link}

  #Add contact
  click element  ${add_contact_button}
  page should contain element  ${contact_modal}
  input text  ${contact_name_element}  ${contact_name}
  click element  ${contact_type_element}
  wait until element is visible  ${contact_type_dd}
  click element  ${contact_type_value_tbs}
  input text  ${contact_phone_element}  ${contact_phone}
  input text  ${extension_element}  ${extension}
  input text  ${faxnumber_element}  ${faxnumber_value}
  input text  ${email_element}  ${contact_email_value}
  click element  ${im_service_element}
  wait until element is visible  ${im_service_dd}
  click element  ${im_service_value_tbs}
  input text  ${im_user_element}  ${im_user_value}
  wait until element is enabled  ${save_contact_button}
  click element  ${save_contact_button}
  page should contain element  ${list_of_contact}
  Save Cust Button

  #Edit contact
  Edit Menu Item  ${edit_contact_menu_button}

  ${ContactNameValue}=  get element attribute  ${contact_name_element}  value
  ${ContactName_value_backspaces_count}=    Get Length      ${ContactNameValue}
  Run Keyword If    """${ContactNameValue}""" != ''
  ...     Repeat Keyword  ${ContactName_value_backspaces_count}  Press Keys  ${contact_name_element}   \ue003

  input text  ${contact_name_element}  ${Edit_Contact_Value}
  click element  ${contact_type_element}
  click element  ${Edit_Contact_Type_TBS}

  input text  ${contact_phone_element}  ${Edit_Phone_Number_Value}
  input text  ${extension_element}  ${Edit_Extension_Value}
  input text  ${faxnumber_element}  ${Edit_Fax_Number_Value}
  input text  ${email_element}  ${Edit_Email_Address_Value}
  click element  ${im_service_element}
  click element  ${Edit_IM_Service_TBS}
  input text  ${im_user_element}  ${Edit_IM_UserName_Value}
  click element  ${save_contact_button}
  execute javascript  window.scrollTo(0,2000)
  Save Cust Button

  #Delete contact
  Delete Menu Item   ${delete_contact_menu_button}
  wait until element is not visible  ${success_toast}

  #Sort contact by Type
  execute javascript  window.scrollTo(0,2000)
  ${TypeList}=  Get List Before Sorting  ${Type_Column}
  click element  ${Sort_Contact_By_Type}
  wait until element is visible  ${List_Of_Contacts}
  wait until element is visible  ${Sort_Contact_By_Type_ASC}
  page should contain element  ${Sort_Contact_By_Type_ASC}
  Verify Sorted Column is in Ascending Order  ${TypeList}  ${Type_Column}
  click element  ${Sort_Contact_By_Type}
  wait until element is visible  ${List_Of_Contacts}
  wait until element is visible  ${Sort_Contact_By_Type_DSC}
  page should contain element  ${Sort_Contact_By_Type_DSC}
  Verify Sorted Column is in Descending Order  ${TypeList}  ${Type_Column}

  #Sort contact by Main
  ${MainList}=  Get List Before Sorting  ${Main_Column}
  click element  ${Sort_Contact_By_Main}
  wait until element is visible  ${List_Of_Contacts}
  wait until element is visible  ${Sort_Contact_By_Main_ASC}
  page should contain element  ${Sort_Contact_By_Main_ASC}
  Verify Sorted Column is in Ascending Order  ${MainList}  ${Main_Column}
  click element  ${Sort_Contact_By_Main}
  wait until element is visible  ${List_Of_Contacts}
  wait until element is visible  ${Sort_Contact_By_Main_DSC}
  page should contain element  ${Sort_Contact_By_Main_DSC}
  Verify Sorted Column is in Descending Order  ${MainList}  ${Main_Column}

  #Sort contact by Name
  ${NameList}=  Get List Before Sorting  ${Name_Column}
  click element  ${Sort_Contact_By_Name}
  wait until element is visible  ${List_Of_Contacts}
  wait until element is visible  ${Sort_Contact_By_Name_ASC}
  page should contain element  ${Sort_Contact_By_Name_ASC}
  Verify Sorted Column is in Ascending Order  ${NameList}  ${Name_Column}
  click element  ${Sort_Contact_By_Name}
  wait until element is visible  ${List_Of_Contacts}
  wait until element is visible  ${Sort_Contact_By_Name_DSC}
  page should contain element  ${Sort_Contact_By_Name_DSC}
  Verify Sorted Column is in Descending Order  ${NameList}  ${Name_Column}

  #Sort contact by Phone
    ${PhnList}=  Get List Before Sorting  ${Phone_Column}
    click element  ${Sort_Contact_By_Phone}
    wait until element is visible  ${List_Of_Contacts}
    wait until element is visible  ${Sort_Contact_By_Phone_ASC}
    page should contain element  ${Sort_Contact_By_Phone_ASC}
    Verify Sorted Column is in Ascending Order  ${PhnList}  ${Phone_Column}
    click element  ${Sort_Contact_By_Phone}
    wait until element is visible  ${List_Of_Contacts}
    wait until element is visible  ${Sort_Contact_By_Phone_DSC}
    page should contain element  ${Sort_Contact_By_Phone_DSC}
    Verify Sorted Column is in Descending Order  ${PhnList}  ${Phone_Column}

    #Sort contact by Ext
    ${ExtList}=  Get List Before Sorting  ${ext_Column}
    click element  ${Sort_Contact_By_Ext}
    wait until element is visible  ${List_Of_Contacts}
    wait until element is visible  ${Sort_Contact_By_Ext_ASC}
    page should contain element  ${Sort_Contact_By_Ext_ASC}
    Verify Sorted Column is in Ascending Order  ${ExtList}  ${ext_Column}
    click element  ${Sort_Contact_By_Ext}
    wait until element is visible  ${List_Of_Contacts}
    wait until element is visible  ${Sort_Contact_By_Ext_DSC}
    page should contain element  ${Sort_Contact_By_Ext_DSC}
    Verify Sorted Column is in Descending Order  ${ExtList}  ${ext_Column}

    #Sort contact by Email
    ${EmailList}=  Get List Before Sorting  ${Email_Column}
    click element  ${Sort_Contact_By_Email}
    wait until element is visible  ${List_Of_Contacts}
    wait until element is visible  ${Sort_Contact_By_Email_ASC}
    page should contain element  ${Sort_Contact_By_Email_ASC}
    Verify Sorted Column is in Ascending Order  ${EmailList}  ${Email_Column}
    click element  ${Sort_Contact_By_Email}
    wait until element is visible  ${List_Of_Contacts}
    wait until element is visible  ${Sort_Contact_By_Email_DSC}
    page should contain element  ${Sort_Contact_By_Email_DSC}
    Verify Sorted Column is in Descending Order  ${EmailList}  ${Email_Column}

    #Sort contact by IM
    ${IMList}=  Get List Before Sorting  ${IM_Column}
    click element  ${Sort_Contact_By_IM}
    wait until element is visible  ${List_Of_Contacts}
    wait until element is visible  ${Sort_Contact_By_IM_ASC}
    page should contain element  ${Sort_Contact_By_IM_ASC}
    Verify Sorted Column is in Ascending Order  ${IMList}  ${IM_Column}
    click element  ${Sort_Contact_By_IM}
    wait until element is visible  ${List_Of_Contacts}
    wait until element is visible  ${Sort_Contact_By_IM_DSC}
    page should contain element  ${Sort_Contact_By_IM_DSC}
    Verify Sorted Column is in Descending Order  ${IMList}  ${IM_Column}

    #Sort contact by Fax
    ${FaxList}=  Get List Before Sorting  ${Fax_Column}
    click element  ${Sort_Contact_By_Fax}
    wait until element is visible  ${List_Of_Contacts}
    wait until element is visible  ${Sort_Contact_By_Fax_ASC}
    page should contain element  ${Sort_Contact_By_Fax_ASC}
    Verify Sorted Column is in Ascending Order  ${FaxList}  ${Fax_Column}
    click element  ${Sort_Contact_By_Fax}
    wait until element is visible  ${List_Of_Contacts}
    wait until element is visible  ${Sort_Contact_By_Fax_DSC}
    page should contain element  ${Sort_Contact_By_Fax_DSC}
    Verify Sorted Column is in Descending Order  ${FaxList}  ${Fax_Column}
