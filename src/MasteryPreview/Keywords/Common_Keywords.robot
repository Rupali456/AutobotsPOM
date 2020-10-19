*** Settings ***
Library  SeleniumLibrary
Library  String
Library  robot.libraries.DateTime
Variables  ../Page_Objects/Common_Locators.py

*** Keywords ***
Select Next Month
    [Arguments]     ${Expected_Year}  ${Current_Year}  ${Expected_Month}  ${Current_Month}
    ${Years_Diff}=  evaluate  ${Expected_Year} - ${Current_Year}
    ${Month}=  convert to integer  ${Expected_Month}
    ${Cur_Month}=  convert to integer  ${Current_Month}
    ${Total_Years_Diff}=  convert to integer  ${Years_Diff}
    ${Total_Months}=  evaluate  ${Month} + 12 - ${Cur_Month} + (12 * (${Total_Years_Diff} - 1))
    : FOR  ${i}  IN RANGE  0  ${Total_Months}
    \   click element  ${Next_Month_Button}

Select Previous Month
    [Arguments]     ${Expected_Year}  ${Current_Year}  ${Expected_Month}  ${Current_Month}
    ${Years_Diff}=  evaluate  ${Current_Year} - ${Expected_Year}
    ${Month}=  convert to integer  ${Expected_Month}
    ${Cur_Month}=  convert to integer  ${Current_Month}
    ${Total_Years_Diff}=  convert to integer  ${Years_Diff}
    ${Total_Months}=  evaluate  ${Cur_Month} + 12 - ${Month} + (12 * (${Total_Years_Diff} - 1))
    : FOR  ${i}  IN RANGE  0  ${Total_Months}
    \   click element  ${Previous_Month_Button}

Input and Select Value from Autopopulate Dropdown
    [Arguments]  ${Input_Element}  ${Dropdown_Value_TBS}
    wait until page contains element  ${Input_Element}
    input text  ${Input_Element}  ${Dropdown_Value_TBS}
    ${Select_Value_From_Dropdown}=  replace string  ${Select_Dropdown_Value}  ValueToBeSelected  ${Dropdown_Value_TBS}
    wait until element is visible  ${Select_Value_From_Dropdown}
    click element  ${Select_Value_From_Dropdown}

Select a date from date picker
    [Arguments]     ${Expected_Date}  ${Expected_Month}  ${Expected_Year}
    ${current_date}=  get current date  result_format=datetime
    run keyword if  ${current_date.year} < ${Expected_Year}  Select Next Month  ${Expected_Year}  ${current_date.year}  ${Expected_Month}  ${current_date.month}
    ...  ELSE IF  ${current_date.year} > ${Expected_Year}  Select Previous Month  ${Expected_Year}  ${current_date.year}  ${Expected_Month}  ${current_date.month}
    ...  ELSE IF  ${current_date.month} > ${Expected_Month}  Select Previous Month  ${Expected_Year}  ${current_date.year}  ${Expected_Month}  ${current_date.month}
    ...  ELSE IF  ${current_date.month} < ${Expected_Month}  Select Next Month  ${Expected_Year}  ${current_date.year}  ${Expected_Month}  ${current_date.month}
    click element  css:div.react-datepicker__day--0${Expected_Date}

Select Value from Dropdown
    [Arguments]  ${Dropdown_Element}  ${Dropdown_Value_TBS}
    wait until page contains element  ${Dropdown_Element}
    click element  ${Dropdown_Element}
    ${Select_Value_From_Dropdown}=  replace string  ${Select_Dropdown_Value}  ValueToBeSelected  ${Dropdown_Value_TBS}
    wait until element is visible  ${Select_Value_From_Dropdown}
    click element  ${Select_Value_From_Dropdown}

Select Value From Dropdown If Checkbox is unchecked
    [Arguments]  ${Checkbox_Element}  ${Select_Checkbox_Value}
    ${checkboxValue}=  get element attribute  ${Checkbox_Element}  value
    run keyword if  "${checkboxValue}"=="false"  click element  ${Select_Checkbox_Value}

Deselect Value From Dropdown If Checkbox is checked
    [Arguments]  ${Checkbox_Element}  ${Deselect_Checkbox_Value}
    ${checkboxValue}=  get element attribute  ${Checkbox_Element}  value
    run keyword if  "${checkboxValue}"=="true"  click element  ${Deselect_Checkbox_Value}

Edit Menu Item
    [Arguments]  ${Edit_Menu_Button}
    Click Element   ${Edit_Menu_Button}
    ${idValue}=  get element attribute  ${Edit_Menu_Button}  id
    wait until element is visible  xpath=//reach-portal//div//div[@aria-labelledby='${idValue}']
    click element  xpath=//reach-portal//div//div[@aria-labelledby='${idValue}']//div[contains(text(),'Edit')]

Delete Menu Item
    [Arguments]  ${Delete_Menu_Button}
    Click Element   ${Delete_Menu_Button}
    ${idValue}=  get element attribute  ${Delete_Menu_Button}  id
    wait until element is visible  xpath=//reach-portal//div//div[@aria-labelledby='${idValue}']
    click element  xpath=//reach-portal//div//div[@aria-labelledby='${idValue}']//div[contains(text(),'Delete')]
    handle alert  ACCEPT

Sort ASC
     [Arguments]  ${Sort_By_Type}  ${List_tobe_Sort}  ${Sort_ASC}
     click element  ${Sort_By_Type}
     wait until element is visible  ${List_tobe_Sort}
     wait until element is visible  ${Sort_ASC}
     page should contain element  ${Sort_ASC}

Sort DSC
     [Arguments]  ${Sort_By_Type}  ${List_tobe_Sort}  ${Sort_DSC}
     click element  ${Sort_By_Type}
     wait until element is visible  ${List_tobe_Sort}
     wait until element is visible  ${Sort_DSC}
     page should contain element  ${Sort_DSC}

Check checkbox
    [Arguments]  ${Checkbox_Element}
    ${Is_Checkbox_Selected}=    Run Keyword And Return Status    checkbox should not be selected  ${Checkbox_Element}
    ${Actual_Chkbx_Value}=    Run Keyword If    '${Is_Checkbox_Selected}'== 'True'    Set Variable    Yes
    ...    ELSE IF    '${Is_Checkbox_Selected}'== 'False'    Set Variable    No
    Run Keyword If    'Yes'!='${Actual_Chkbx_Value}'    Click Element    ${Checkbox_Element}

Get List Before Sorting
    [Arguments]  ${AddressColumn}
    ${AddressList}=  create list
    @{AddressLocators}  SeleniumLibrary.Get WebElements  ${AddressColumn}
    FOR  ${locator}  IN  @{AddressLocators}
        ${text}=  get text  ${locator}
        Append To List  ${AddressList}  ${text}
    END
    [Return]  ${AddressList}

Verify Sorted Column is in Ascending Order
    [Arguments]  ${AddressList}  ${AddressColumn}
    ${AscAddressList}=  create list
    @{AscAddressLocators}  SeleniumLibrary.Get WebElements  ${AddressColumn}
    FOR  ${locator}  IN     @{AscAddressLocators}
        ${text}=  get text  ${locator}
        Append To List  ${AscAddressList}  ${text}
    END

    ${AddressExpectedList}=   Copy List     ${AddressList}
    Sort List  ${AddressExpectedList}
    Lists Should Be Equal	${AddressExpectedList}	${AscAddressList}	ignore_order=False

Verify Sorted Column is in Descending Order
    [Arguments]  ${AddressList}  ${AddressColumn}
    ${DescAddressList}=  create list
    @{DescAddressLocators}  SeleniumLibrary.Get WebElements  ${AddressColumn}
    FOR  ${locator}  IN     @{DescAddressLocators}
        ${text}=  get text  ${locator}
        Append To List  ${DescAddressList}  ${text}
    END

    ${AddressExpectedList}=   Copy List     ${AddressList}
    Sort List  ${AddressExpectedList}
    Reverse List  ${AddressExpectedList}
    Lists Should Be Equal	${AddressExpectedList}	${DescAddressList}	ignore_order=False
