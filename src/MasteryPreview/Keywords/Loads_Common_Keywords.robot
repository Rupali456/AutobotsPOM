*** Settings ***
Library  SeleniumLibrary
Resource  Common_Keywords.robot
Variables  ../Page_Objects/Loads_Common_Locators.py
Variables  ../Page_Objects/Loads_Add_Edit_Locators.py
Variables  ../Page_Objects/Load_Search_Locators.py

*** Keywords ***
Expand Load Details
    [Arguments]  ${Expand_Details}
    select window  NEW
    maximize browser window
    wait until element is visible  ${hide_operational_details_button}
    click element  ${hide_operational_details_button}
    wait until element is visible  ${Expand_Details}
    click element  ${Expand_Details}

Select Search Loads from Header
    wait until element is visible  ${header_loads_element}
    click element  ${header_loads_element}
    page should contain element  ${search_loads_element}
    click element  ${search_loads_element}
    wait until page contains  ${search_loads_text}
    page should contain  ${search_loads_text}

Select Add New Load from Header
    wait until element is visible  ${header_loads_element}
    click element  ${header_loads_element}
    page should contain element  ${add_new_loads_element}
    click element  ${add_new_loads_element}

Search Loads by Shipper Name
    [Arguments]  ${Shipper_Name}
    wait until page contains element  ${shipper_element}
    input and select value from autopopulate dropdown  ${shipper_element}  ${Shipper_Name}
    wait until element is enabled  ${search_loads_button}
    click element  ${search_loads_button}
    wait until element is visible  ${list_of_loads}
    click element  ${load_num_link}

#Clear Textbox
#    [Arguments]  ${Textbox_Element}
#    ${TextboxValue}=  get element attribute  ${Textbox_Element}
#    ${backspaces_count}=    Get Length      ${ordernotes_value}
#    Run Keyword If    """${ordernotes_value}""" != ''
#    ...     Repeat Keyword  ${backspaces_count}  Press Keys  ${ordernotes_element}   BACKSPACE