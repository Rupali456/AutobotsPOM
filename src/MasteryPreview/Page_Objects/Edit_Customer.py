# General Info Section :
Customer_Name_Element = "name=name"

Address_Customer_Name = "Test Customer 260820401"
Search_Button = "xpath=//button[@class='css-10rxk89' and @type='submit']"

Select_Cust = "xpath=//button[.='Customer']"
Select_Tab_FromCust = "xpath=//a[.='Search']"

# Search Results Section :
Customer_Searched_By_Name = f"xpath=//h1[.='Customer_Name']"
List_Of_Customers = "css:.css-1wmyism"
Clear_Search_Button = "xpath=//button[@data-testid='customer-search-clear']"
Search_Results_Links = "xpath=//div[@class='css-1wmyism']/div/a"

# Nav Bar:
Header_Customer_Element = "xpath=//nav[@data-testid='base-nav']//button[.='Customer']"
Search_Customer_Element = "xpath=//a[@data-testid='nav-link-search-customer' and .='Search']"
Search_Customer_Text  = "Customer Search Results"

# General Info Section :
Customer_Name = "Coca Cola Bottling of Northern New England"
Submit_Button = "xpath=//button[@class='css-10rxk89' and @type='submit']"

# Customer Search Results Section :
List_Of_Customer = "css:.css-1wtbph2"
Search_Results_Link = "xpath=//div[@class='css-1wtbph2']//a"
Customer_Searched_By_Name_Staging = f"xpath=//h1[.='{Customer_Name}']"

Accounting_and_credit_Tab_Element = "xpath=//a[.='Accounting & Credit']"
Maintainance_tab_element = "xpath=//a[.='Maintenance']"
billing_detail_element = "xpath=//form[@data-testid='customer-accounting-form']"
billing_Address_Element = "xpath=//div[contains(@name, 'billingAddressId')]"
billing_Address_Value = "123 Upper Falls Blvd, Rochester NY 14065"
Select_billing_Address_Value = f"xpath=//li[contains(.,'{billing_Address_Value}')]"
Save_customer_Button= "xpath= //button[.='Save Customer']"

# Customer Account and Credit.robot
# Billing Details:
Payment_Terms_Element = "xpath=//div[@name='customerPaymentTermId']//button"
Net20_Value = "Net 20"
Select_Net20_Value = f"xpath=//li[.='{Net20_Value}']"
Net30_Value = "Net 30"
Select_Net30_Value = f"xpath=//li[.='{Net30_Value}']"
Net45_Value = "Net 45"
Select_Net45_Value = f"xpath=//li[.='{Net45_Value}']"
Net60_Value= "Net 60"
Select_Net60_Value = f"xpath=//li[.='{Net60_Value}']"
Net75_Value = "Net 75"
Select_Net75_Value = f"xpath=//li[.='{Net75_Value}']"
Net90_Value = "Net 90"
Select_Net90_Value = f"xpath=//li[.='{Net90_Value}']"
Quickpay_Value = "Quickpay"
Select_QuickPay_Value = f"xpath=//li[.='{Quickpay_Value}']"
Verify_Net20_Value = f"xpath=//div[@name='customerPaymentTermId']//button[.='{Net20_Value}']"
Verify_Net30_Value = f"xpath=//div[@name='customerPaymentTermId']//button[.='{Net30_Value}']"
Verify_Net45_Value = f"xpath=//div[@name='customerPaymentTermId']//button[.='{Net45_Value}']"
Verify_Net60_Value = f"xpath=//div[@name='customerPaymentTermId']//button[.='{Net60_Value}']"
Verify_Net75_Value = f"xpath=//div[@name='customerPaymentTermId']//button[.='{Net75_Value}']"
Verify_Net90_Value = f"xpath=//div[@name='customerPaymentTermId']//button[.='{Net90_Value}']"
Verify_QuickPay_Value = f"xpath=//div[@name='customerPaymentTermId']//button[.='{Quickpay_Value}']"

# Payment Method Details
Payment_Method_Element = "xpath=//div[@name='paymentMethodId']//button"
Check_Value = "Check"
Select_Check_Value = f"xpath=//li[.='{Check_Value}']"
MoneyOrder_Value = "Money Order"
Select_MoneyOrder_Value = f"xpath=//li[.='{MoneyOrder_Value}']"
CreditCard_Value = "Credit Card"
Select_CreditCard_Value = f"xpath=//li[.='{CreditCard_Value}']"
Cash_Value = "Cash"
Select_Cash_Value = f"xpath=//li[.='{Cash_Value}']"
ACH_Value = "ACH"
Select_ACH_Value = f"xpath=//li[.='{ACH_Value}']"
Wire_Value = "Wire"
Select_Wire_Value = f"xpath=//li[.='{Wire_Value}']"
Verify_Check_Value = f"xpath=//div[@name='paymentMethodId']//button[.='{Check_Value}']"
Verify_MoneyOrder_Value = f"xpath=//div[@name='paymentMethodId']//button[.='{MoneyOrder_Value}']"
Verify_CreditCard_Value = f"xpath=//div[@name='paymentMethodId']//button[.='{CreditCard_Value}']"
Verify_Cash_Value = f"xpath=//div[@name='paymentMethodId']//button[.='{Cash_Value}']"
Verify_ACH_Value = f"xpath=//div[@name='paymentMethodId']//button[.='{ACH_Value}']"
Verify_Wire_Value = f"xpath=//div[@name='paymentMethodId']//button[.='{Wire_Value}']"

# Currency Details
Currency_Element = f"xpath=//div[@name='currencyId']//button"
USD_Value = "USD"
Select_USD_Value = f"xpath=//li[.='{USD_Value}']"
CAD_Value = "CAD"
Select_CAD_Value = f"xpath=//li[.='{CAD_Value}']"
MXN_Value = "MXN"
Select_MXN_Value = f"xpath=//li[.='{MXN_Value}']"
Verify_USD_Value = f"xpath=//div[@name='currencyId']//button[.='{USD_Value}']"
Verify_CAD_Value = f"xpath=//div[@name='currencyId']//button[.='{CAD_Value}']"
Verify_MXN_Value = f"xpath=//div[@name='currencyId']//button[.='{MXN_Value}']"

# invoice Method details
invoice_Method_Element = "xpath=//div[@name='invoiceDistributionMethodId']//button"
Print_Value = "Print"
Select_Print_Value = f"xpath=//li[.='{Print_Value}']"
Email_Value = "Email"
Select_Email_Value = f"xpath=//li[.='{Email_Value}']"
EDI_Value = "EDI"
Select_EDI_Value = f"xpath=//li[.='{EDI_Value}']"
Verify_Print_Value = f"xpath=//div[@name='invoiceDistributionMethodId']//button[.='{Print_Value}']"
Verify_Email_Value = f"xpath=//div[@name='invoiceDistributionMethodId']//button[.='{Email_Value}']"
Verify_EDI_Value = f"xpath=//div[@name='invoiceDistributionMethodId']//button[.='{EDI_Value}']"

# Billing Mail Details
billing_email_element = "name=billingEmail"
billing_email_value = "test@test.com"
Verify_billing_email_value = f"xpath=//input[@name='billingEmail' and contains(@value,'{billing_email_value}')]"

# Invoice_Group Details
Invoice_Group_Element = "name=invoiceGrouping"
order_value = "Order"
Select_order_value = f"xpath=//li[.='{order_value}']"
Verify_order_Value = f"xpath=//div[@name='invoiceGrouping']//button[.='{order_value}']"
Combined_value = "Combined"
Select_Combined_value = f"xpath=//li[.='{Combined_value}']"
Verify_Combined_value = f"xpath=//div[@name='invoiceGrouping']//button[.='{Combined_value}']"

# Parent Element Details
Parent_Element = "name=parent"
Parent_Value = "Coca Cola of Austin"
Select_Parent_Value = f"xpath=//li[contains(.,'{Parent_Value}')]"
select_parent_credit = f"xpath=//label[@class='checkbox css-1uep8w5']"
Verify_Parent_Value = f"xpath=//input[@name='parent' and contains(@value,'{Parent_Value}')]"

# Customer Accounting Notes detail
Customer_Accounting_Note_element = "name=accountingNote.text"
Customer_Accounting_Note_value = "Note"
Verify_Customer_Accounting_Note_value = f"xpath=//textarea[@name='accountingNote.text'  and  contains(.,'{Customer_Accounting_Note_value}')]"

# credit status
Select_credit_status_element = "xpath=//button[.='Adjust Credit']"
Select_credit_status = "name=status"
Approved_value = "Approved"
Select_Approved_value = f"xpath=//li[.='{Approved_value}']"
Verify_Approved_Value = f"xpath=//div[@class='css-2yxt04']//div[.='{Approved_value}']"
Denied_value = "Denied"
Select_Denied_value = f"xpath=//li[.='{Denied_value}']"
Verify_Denied_Value = f"xpath=//div[@class='css-2yxt04']//div[.='{Denied_value}']"
Hold_value = "Hold"
Select_hold_value = f"xpath=//li[.='{Hold_value}']"
Verify_Hold_value = f"xpath=//div[@class='css-2yxt04']//div[.='{Hold_value}']"
Select_Limit_Element = "name=limit"
select_calender = "name=expiration"
Enter_note = "name=note"

Previous_Month_Button = "xpath=//button[@class='react-datepicker__navigation react-datepicker__navigation--previous']"
Next_Month_Button = "xpath=//button[@class='react-datepicker__navigation react-datepicker__navigation--next']"
Save_Credit = "xpath=//button[.='Save Credit']"

# credit_provider_details
Select_credit_provider_element = "xpath=//button[@data-testid='table-add-new']"
Select_credit_provider = "name=creditProvider.id"
credit_provider_value = "Experian"
Select_credit_provider_value = f"xpath=//li[.='{credit_provider_value}']"
Select_Credit_score_Element = "name=creditScore"
select_effective_date = "name=effectiveDate"
Select_Covarage_Ammount_Element = "name=coverageAmount"
select_exp_date = "name=expirationDate"
Enter_Notes = "name=notes"
Save_Credit_provider = "xpath=//button[.='Add Credit Provider']"
Verify_credit_provider_Value = "xpath=//div[@data-testid='table-card-body']//div[1]/div[.='Experian']"

# Save
Save_Customer = "xpath=//button[.='Save Customer']"
Success_Toast = "xpath=//div[@class='Toastify__toast Toastify__toast--success']"

# Add Address Table.robot
# Address Section
Add_Address_Button = "xpath=//div[@data-testid='addresses-table']//button[@data-testid='table-add-new']"
Edit_Address_Type = "Shipping"
Delete_Address_Type = "Office"
Edit_Address_Menu_Button = f"xpath=//div[@title='{Edit_Address_Type}']//parent::div/div[@data-cellheader='Menu']/button"
Delete_Address_Menu_Button = f"xpath=//div[@title='{Delete_Address_Type}']//parent::div/div[@data-cellheader='Menu']/button"

Address_Type_Element = "xpath=//div[@name='addressTypeId']//button"
Address_Type_DD = "css:.css-tc5f3h"
Street_Address_Element = "xpath=//input[@name='street1']"
Street_Address2_Element = "xpath=//input[@name='street2']"
City_Element = "xpath=//div[@name='cityState']//input[@class='css-hfrvt9']"
City_DD = "xpath=//li[@class='css-1lumcud']"
PostCode_element = "name=postalCode"
Country_Element = "xpath=//div[@name='country']//button"
Country_DD = "xpath=//div[@name='country']//ul[@class='css-1oulf20']"
Main_Checkbox = "xpath=//input[@name='main']//following-sibling::span"
Save_Address_Element = "css:.css-1p16kem"
Save_Customer_Button = "xpath=//button[@class='css-1p16kem' and .='Save Address']"
Add_Customer_Button = "xpath=//button[@class='css-1p16kem' and .='Add Address']"

Address_Type_Value = "Shipping"
Address_Type_Value_TBS = f"xpath=//li[.='{Address_Type_Value}']"
City = "Niles, IL"
City_TBS = f"xpath=//li[.='{City}']"
Country_Value = "USA"
Country_Value_TBS = f"xpath=//li[.='{Country_Value}']"

Edit_Address_Type_Value = "Office"
Edit_Address_Type_Value_TBS = f"xpath=//li[.='{Edit_Address_Type_Value}']"
Edit_City = "Chicago, IL"
Edit_City_TBS = f"xpath=//li[.='{Edit_City}']"
Edit_Country_Value = "USA"
Edit_Country_Value_TBS = f"xpath=//li[.='{Edit_Country_Value}']"

# Sort Address by all parameters
List_Of_Addresses = "css:div[data-testid='addresses-table'] .css-jclxq"
Sort_Address_By_Type = "css:div[data-testid='addresses-table'] [title='Sort by Type']"
Sort_Address_By_Type_ASC = "css:div[data-testid='addresses-table'] [title='Sort by Type'] .fa-caret-up"
Sort_Address_By_Type_DSC = "css:div[data-testid='addresses-table'] [title='Sort by Type'] .fa-caret-down"
Sort_Address_By_Address = "css:div[data-testid='addresses-table'] [title='Sort by Address']"
Sort_Address_By_Address_ASC = "css:div[data-testid='addresses-table'] [title='Sort by Address'] .fa-caret-up"
Sort_Address_By_Address_DSC = "css:div[data-testid='addresses-table'] [title='Sort by Address'] .fa-caret-down"
Sort_Address_By_Location = "css:div[data-testid='addresses-table'] [title='Sort by Location']"
Sort_Address_By_Location_ASC = "css:div[data-testid='addresses-table'] [title='Sort by Location'] .fa-caret-up"
Sort_Address_By_Location_DSC = "css:div[data-testid='addresses-table'] [title='Sort by Location'] .fa-caret-down"
Sort_Address_By_Main = "css:div[data-testid='addresses-table'] [title='Sort by Main']"
Sort_Address_By_Main_ASC = "css:div[data-testid='addresses-table'] [title='Sort by Main'] .fa-caret-up"
Sort_Address_By_Main_DSC = "css:div[data-testid='addresses-table'] [title='Sort by Main'] .fa-caret-down"

Addresses_Type_Column = "xpath=//div[@data-testid='addresses-table']//div[@data-thid='Type']"
Addresses_Address_Column = "xpath=//div[@data-testid='addresses-table']//div[@data-thid='Address']"
Addresses_Location_Column = "xpath=//div[@data-testid='addresses-table']//div[@data-thid='Location']"
Addresses_Main_Column = "xpath=//div[@data-testid='addresses-table']//div[@data-thid='Main']"

# Customer_Contact_Table.robot
# Contact Section:
Add_Contact_Button = "xpath=//div[@data-testid='contacts-table']//button[@class='css-1y4ltxc']"
List_of_Contact = "xpath=//div[@data-testid='contacts-table']//div[@class='css-1ti4inv']"
Contact_Modal = "xpath=//div[.='Add New Contact']"
Contact_Name_Element = "xpath=//div[contains(text(),'Contact')]//parent::div//input[@name='name']"
Contact_Type_Element = "xpath=//div[@name='contactTypeId']//button"
Contact_Type_DD = "css:.css-tc5f3h"
Contact_Phone_Element = "xpath=//div[contains(text(),'Contact')]//parent::div//input[@name='phoneNumber']"
Extension_Element = "xpath=//div[contains(text(),'Contact')]//parent::div//input[@name='extension']"
FaxNumber_Element = "xpath=//div[contains(text(),'Contact')]//parent::div//input[@name='faxNumber']"
Email_Element = "xpath=//div[contains(text(),'Contact')]//parent::div//input[@name='emailAddress']"
IM_Service_Element = "xpath=//div[@name='chatTypeId']//button"
IM_Service_DD = "css:.css-tc5f3h"
IM_User_element = "xpath=//div[contains(text(),'Contact')]//parent::div//input[@name='chatUsername']"
Contact_Main_Checkbox = "css:.css-d3mwxx"
Save_Contact_Button = "xpath=//button[@class='css-1p16kem' and contains(text(),'Contact')]"

Contact_Type_Value = "Billing"
Contact_Type_Value_TBS = f"xpath=//li[.='{Contact_Type_Value}']"
IM_Service_Value = "Skype"
IM_Service_Value_TBS = f"xpath=//li[.='{IM_Service_Value}']"

# Edit Contact Section :
Edit_Contact_Type = "Billing"
Edit_Contact_Menu_Button = f"xpath=//div[@data-testid='contacts-table']//div[@title='{Edit_Contact_Type}']//parent::div/div[@data-cellheader='Menu']/button"
Delete_Contact_Type = "Other"
Delete_Contact_Menu_Button = f"xpath=//div[@data-testid='contacts-table']//div[@title='{Delete_Contact_Type}']//parent::div/div[@data-cellheader='Menu']/button"
Edit_Contact_Type_Value = "Other"
Edit_Contact_Type_TBS = f"xpath=//li[.='{Edit_Contact_Type_Value}']"
Edit_IM_Service_Value = "Skype"
Edit_IM_Service_TBS = f"xpath=//li[.='{Edit_IM_Service_Value}']"

# Sort Contacts Section:
List_Of_Contacts = "css:div[data-testid='contacts-table'] .css-1ti4inv"
Sort_Contact_By_Type = "css:div[data-testid='contacts-table'] [title='Sort by Type']"
Sort_Contact_By_Type_ASC = "css:div[data-testid='contacts-table'] [title='Sort by Type'] .fa-caret-up"
Sort_Contact_By_Type_DSC =  "css:div[data-testid='contacts-table'] [title='Sort by Type'] .fa-caret-down"

Sort_Contact_By_Main = "css:div[data-testid='contacts-table'] [title='Sort by Main']"
Sort_Contact_By_Main_ASC = "css:div[data-testid='contacts-table'] [title='Sort by Main'] .fa-caret-up"
Sort_Contact_By_Main_DSC = "css:div[data-testid='contacts-table'] [title='Sort by Main'] .fa-caret-down"

Sort_Contact_By_Name = "css:div[data-testid='contacts-table'] [title='Sort by Name']"
Sort_Contact_By_Name_ASC = "css:div[data-testid='contacts-table'] [title='Sort by Name'] .fa-caret-up"
Sort_Contact_By_Name_DSC = "css:div[data-testid='contacts-table'] [title='Sort by Name'] .fa-caret-down"

Sort_Contact_By_Phone = "css:div[data-testid='contacts-table'] [title='Sort by Phone']"
Sort_Contact_By_Phone_ASC = "css:div[data-testid='contacts-table'] [title='Sort by Phone'] .fa-caret-up"
Sort_Contact_By_Phone_DSC = "css:div[data-testid='contacts-table'] [title='Sort by Phone'] .fa-caret-down"

Sort_Contact_By_Ext = "css:div[data-testid='contacts-table'] [title='Sort by Ext']"
Sort_Contact_By_Ext_ASC = "css:div[data-testid='contacts-table'] [title='Sort by Ext'] .fa-caret-up"
Sort_Contact_By_Ext_DSC =  "css:div[data-testid='contacts-table'] [title='Sort by Ext'] .fa-caret-down"

Sort_Contact_By_Email = "css:div[data-testid='contacts-table'] [title='Sort by Email']"
Sort_Contact_By_Email_ASC = "css:div[data-testid='contacts-table'] [title='Sort by Email'] .fa-caret-up"
Sort_Contact_By_Email_DSC = "css:div[data-testid='contacts-table'] [title='Sort by Email'] .fa-caret-down"

Sort_Contact_By_IM = "css:div[data-testid='contacts-table'] [title='Sort by IM']"
Sort_Contact_By_IM_ASC = "css:div[data-testid='contacts-table'] [title='Sort by IM'] .fa-caret-up"
Sort_Contact_By_IM_DSC = "css:div[data-testid='contacts-table'] [title='Sort by IM'] .fa-caret-down"

Sort_Contact_By_Fax = "css:div[data-testid='contacts-table'] [title='Sort by Fax']"
Sort_Contact_By_Fax_ASC = "css:div[data-testid='contacts-table'] [title='Sort by Fax'] .fa-caret-up"
Sort_Contact_By_Fax_DSC = "css:div[data-testid='contacts-table'] [title='Sort by Fax'] .fa-caret-down"

Type_Column = "xpath=//div[@data-testid='contacts-table']//div[@data-thid='Type']"
Main_Column = "xpath=//div[@data-testid='contacts-table']//div[@data-thid='main']"
Name_Column = "xpath=//div[@data-testid='contacts-table']//div[@data-thid='name']"
Phone_Column = "xpath=//div[@data-testid='contacts-table']//div[@data-thid='phoneNumber']"
ext_Column = "xpath=//div[@data-testid='contacts-table']//div[@data-thid='extension']"
Email_Column = "xpath=//div[@data-testid='contacts-table']//div[@data-thid='emailAddress']"
IM_Column = "xpath=//div[@data-testid='contacts-table']//div[@data-thid='chatTypeId']"
Fax_Column = "xpath=//div[@data-testid='contacts-table']//div[@data-thid='faxNumber']"