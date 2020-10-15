*** Settings ***
Library  SeleniumLibrary
Variables  ../Page_Objects/Edit_Customer.py

*** Keywords ***
Save Customer
    scroll element into view  ${Save_Customer_Button}
    click element  ${Save_Customer_Button}
    wait until page contains element  ${success_toast}
    wait until page does not contain  ${success_toast}

Save Credit
    click element  ${Save_Credit}
    wait until page contains element  ${success_toast}
    wait until page does not contain element  ${success_toast}

Save Cust Button
  wait until element is enabled  ${save_customer}
  click element  ${save_customer}
  wait until page does not contain  ${success_toast}

Save_identifier_Button
    click element  ${Save_Cust_Button}
    wait until page contains element  ${success_toast}
    wait until page does not contain element  ${success_toast}

# Rate quote
Select Next Month
    [Arguments]  ${dayIndex}
    click element  ${Next_Month_Button}
    click element  xpath=//div[@class='react-datepicker__week']//div[${dayIndex}][@aria-disabled='false' and not(contains(@class,'today'))]

Select Date to Next Monday
    ${clickSuccessful}=  run keyword and return status  click element  xpath=//div[@class='react-datepicker__week']//div[2][@aria-disabled='false' and not(contains(@class,'today'))]
    run keyword if  '${clickSuccessful}'=='False'  Select Next Month  2

Select Date to Next Wednesday
    ${clickSuccessful}=  run keyword and return status  click element  xpath=//div[@class='react-datepicker__week']//div[4][@aria-disabled='false' and not(contains(@class,'today'))]
    run keyword if  '${clickSuccessful}'=='False'  Select Next Month  4

Select Date to Next Friday
    ${clickSuccessful}=  run keyword and return status  click element  xpath=//div[@class='react-datepicker__week']//div[6][@aria-disabled='false' and not(contains(@class,'today'))]
    run keyword if  '${clickSuccessful}'=='False'    Select Next Month  6

Verify Total Rate Of Rate Line Items
    ${sumOfTotalRate}=  set variable  0
    ${totalRate}=  get element count  ${total_rate_column}
    : FOR  ${i}  IN RANGE  0  ${totalRate}
    \  ${value}=  get text  //div[@data-testid='customer-rate-quote-line-items-list']//div[@class='css-11usei1'][${i+1}]//div[@data-cellheader='Total Rate']
    \  ${rateValue}=  get substring  ${value}  1
    \  ${sumOfTotalRate}=  evaluate  ${sumOfTotalRate}+${rateValue}

    ${totalRateValue}=  get text  ${total_rate_value}
    ${totalRateValueString}=  get substring  ${totalRateValue}  1
    ${calculatedRateNumber}=  convert to number  ${sumOfTotalRate}  2
    ${totalRateValueNumber}=  convert to number  ${totalRateValueString}  2
    should be equal  ${calculatedRateNumber}  ${totalRateValueNumber}

Clear Origin and Destination
    press keys  ${Origin_Element}  CTRL+a+BACKSPACE
    press keys  ${Destination_Element}  CTRL+a+BACKSPACE

Clear ODH_DDH Origin and Destination
    press keys  ${ODH_Element}  CTRL+a+BACKSPACE
    press keys  ${DDH_Element}  CTRL+a+BACKSPACE

#Edit LineHaul
#    click element  ${linehaul_menu_options}
#    ${menuId}=  get element attribute  ${linehaul_menu_options}  id
#    wait until element is visible  xpath=//reach-portal//div//div[@aria-labelledby='${menuId}']
#    click element  xpath=//reach-portal//div//div[@aria-labelledby='${menuId}']//div[contains(text(),'Edit')]

Delete Quote
    click element  ${delete_quote_menu_button}
    ${menuId}=  get element attribute  ${delete_quote_menu_button}  id
    wait until element is visible   xpath=//reach-portal//div//div[@aria-labelledby='${menuId}']
    click element    xpath=//reach-portal//div//div[@aria-labelledby='${menuId}']//div[contains(text(),'Remove')]
    handle alert  ACCEPT

Verify This Customer Existing List
    [Arguments]  ${QuotedBy}
    wait until element is visible   xpath=//div[@data-testid='customer-rate-quote-existing-quotes-list']//div[@data-cellheader='Origin' and @title='${Origin_Value_Chicago}']//following-sibling::div[@data-cellheader='Destination' and @title='${Destination_Value_Dallas}']//following-sibling::div[@data-cellheader='Quoted By' and @title='${QuotedBy}']

Verify Existing Qoute Populated in Rate Quote Builder
    [Arguments]  ${originvalue}  ${destinationvalue}
    wait until element is visible   xpath=//div[@name='originText']//input[@value='${originvalue}']
    page should contain element  xpath=//div[@name='originText']//input[@value='${originvalue}']
    wait until element is visible   xpath=//div[@name='destinationText']//input[@value='${destinationvalue}']
    page should contain element  xpath=//div[@name='destinationText']//input[@value='${destinationvalue}']