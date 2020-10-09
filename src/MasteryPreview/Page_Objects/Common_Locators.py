# Select Date Locators
Previous_Month_Button = "xpath=//button[@class='react-datepicker__navigation react-datepicker__navigation--previous']"
Next_Month_Button = "xpath=//button[@class='react-datepicker__navigation react-datepicker__navigation--next']"

# Select value from dropdown
Select_Dropdown_Value = "xpath=//li[contains(.,'ValueToBeSelected')]"

#Sorting
${List_Of_Addresses}    css:div[data-testid='addresses-table'] .css-jclxq
${Sort_Address_By_Type}  css:div[data-testid='addresses-table'] [title='Sort by Type']
${Sort_Address_By_Type_ASC}  css:div[data-testid='addresses-table'] [title='Sort by Type'] .fa-caret-up
${Sort_Address_By_Type_DSC}  css:div[data-testid='addresses-table'] [title='Sort by Type'] .fa-caret-down
${Sort_Address_By_Address}  css:div[data-testid='addresses-table'] [title='Sort by Address']
${Sort_Address_By_Address_ASC}  css:div[data-testid='addresses-table'] [title='Sort by Address'] .fa-caret-up
${Sort_Address_By_Address_DSC}  css:div[data-testid='addresses-table'] [title='Sort by Address'] .fa-caret-down
${Sort_Address_By_Location}  css:div[data-testid='addresses-table'] [title='Sort by Location']
${Sort_Address_By_Location_ASC}  css:div[data-testid='addresses-table'] [title='Sort by Location'] .fa-caret-up
${Sort_Address_By_Location_DSC}  css:div[data-testid='addresses-table'] [title='Sort by Location'] .fa-caret-down
${Sort_Address_By_Main}  css:div[data-testid='addresses-table'] [title='Sort by Main']
${Sort_Address_By_Main_ASC}  css:div[data-testid='addresses-table'] [title='Sort by Main'] .fa-caret-up
${Sort_Address_By_Main_DSC}  css:div[data-testid='addresses-table'] [title='Sort by Main'] .fa-caret-down

${Addresses_Type_Column}  xpath=//div[@data-testid='addresses-table']//div[@data-thid='Type']
${Addresses_Address_Column}  xpath=//div[@data-testid='addresses-table']//div[@data-thid='Address']
${Addresses_Location_Column}  xpath=//div[@data-testid='addresses-table']//div[@data-thid='Location']
${Addresses_Main_Column}  xpath=//div[@data-testid='addresses-table']//div[@data-thid='Main']