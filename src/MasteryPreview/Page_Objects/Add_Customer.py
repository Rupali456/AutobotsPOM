
# Select Add New cust
Select_Cust = "xpath=//button[.='Customer']"
Select_Tab_FromCust = "xpath=//a[.='Add New']"

#Add Customer Section:
Name_Element= "name=name"
Website_Element = "name=website"
Code_Element = "name=code"
Phone_Element = "name=phoneNumber"

#Address Section:
Add_Address_Button = "xpath=//div[@data-testid='addresses-table']//button[@class='css-1y4ltxc']"
List_of_Address = "xpath=//div[@data-testid='addresses-table']//div[@class='css-jclxq']"
Address_Modal = "xpath=//div[.='Add New Address']"
Address_Type_Element = "xpath=//div[@name='addressTypeId']//button"
Address_Type_DD = "css:.css-tc5f3h"
Street_Address_Element = "xpath=//input[@name='street1']"
Street_Address2_Element = "xpath=//input[@name='street2']"
City_Element = "xpath=//div[@name='cityState']//input[@class='css-hfrvt9']"
City_DD = "xpath=//li[@class='css-1lumcud']"
PostCode_element = "name=postalCode"
Country_Element = "xpath=//div[@name='country']//button"
Country_DD = "xpath=//div[@name='country']//ul[@class='css-1oulf20']"
Save_Address_Button = "xpath=//button[@class='css-1p16kem' and .='Save Address']"
Address_Button = "xpath=//button[@class='css-1p16kem' and .='Add Address']"
Country_Value = "USA"
Country_Value_TBS = f"xpath=//li[contains(.,'{Country_Value}')]"
Address_Type_Value = "Billing"
Address_Type_Value_TBS = f"xpath=//li[contains(.,'{Address_Type_Value}')]"

Save_Customer = "xpath=//button[.='Save Customer']"
Success_Toast = "xpath=//div[@class='Toastify__toast Toastify__toast--success']"

#Notes Section:
Notes_Element = "xpath=//textarea[@name='notes']"

#Customer Standing:
Status_Element = "xpath=//div[@name='customerStatusTypeId']//button"
Status_DD =  "xpath=//div[@name='customerStatusTypeId']//ul[@class='css-tc5f3h']"
Level_Element = "xpath=//div[@name='customerLevelTypeId']//button"
Level_DD = "xpath=//div[@name='customerLevelTypeId']//ul[@class='css-tc5f3h']"
Opportunity_Element = "xpath=//div[@name='customerOpportunityTypeId']//button"
Opportunity_DD = "xpath=//div[@name='customerOpportunityTypeId']//ul[@class='css-tc5f3h']"
Status_Value = "New"
Level_Value = "Bronze"
Opportunity_Value = "Bronze"
Status_Value_TBS = f"xpath=//li[contains(.,'{Status_Value}')]"
Level_Value_TBS = f"xpath=//li[contains(.,'{Level_Value}')]"
Opportunity_Value_TBS =  f"xpath=//li[contains(.,'{Opportunity_Value}')]"

#Contact Section:
Add_Contact_Button = "xpath=//div[@data-testid='contacts-table']//button[@class='css-1y4ltxc']"
List_of_Contact =   "xpath=//div[@data-testid='contacts-table']//div[@class='css-1ti4inv']"
Contact_Modal = "xpath=//div[.='Add New Contact']"
Contact_Name_Element = "xpath=//div[.='Add New Contact']//parent::div//input[@name='name']"
Contact_Type_Element = "xpath=//div[@name='contactTypeId']//button"
Contact_Type_DD = "css:.css-tc5f3h"
Contact_Phone_Element = "xpath=//div[.='Add New Contact']//parent::div//input[@name='phoneNumber']"
Extension_Element = "xpath=//div[.='Add New Contact']//parent::div//input[@name='extension']"
FaxNumber_Element = "xpath=//div[.='Add New Contact']//parent::div//input[@name='faxNumber']"
Email_Element = "xpath=//div[.='Add New Contact']//parent::div//input[@name='emailAddress']"
IM_Service_Element = "xpath=//div[@name='chatTypeId']//button"
IM_Service_DD = "css:.css-tc5f3h"
IM_User_element = "xpath=//div[.='Add New Contact']//parent::div//input[@name='chatUsername']"
Contact_Main_Checkbox = "css:.css-d3mwxx"
Save_Contact_Button = "xpath=//button[@class='css-1p16kem' and .='Add Contact']"

Contact_Type_Value = "Billing"
Contact_Type_Value_TBS = f"xpath=//li[contains(.,'{Contact_Type_Value}')]"
IM_Service_Value  = "Skype"
IM_Service_Value_TBS = f"xpath=//li[contains(.,'{IM_Service_Value}')]"

#Identifiers section:
Add_Identifier_Button =  "xpath=//div[@data-testid='identifiers-table']//button[@class='css-1y4ltxc']"
Identifier_Modal = "xpath=//div[.='Add New Identifier']"
List_of_Identifiers = "xpath=//div[@data-testid='identifiers-table']//div[@class='css-1wt5hjw']"
System_Element =  "xpath=//div[@name='identifierTypeId']//button"
System_DD = "name=identifierTypeId"
System_Value = "Revenova"
System_Value_TBS = f"xpath=//li[contains(.,'{System_Value}')]"
ID_Element = "xpath=//div[.='Add New Identifier']//parent::div//input[@name='code']"
Save_Identifier_Button = "xpath=//button[@class='css-1p16kem' and .='Add Identifier']"

#Insurance Requirements:
Cargo_Element  = "xpath=//input[@name='insuranceCargo']"
Liability_Element = "xpath=//input[@name='insuranceLiability']"
General_Element = "xpath=//input[@name='insuranceGeneral']"

# Reps Section:
Add_Reps_Button = "xpath=//div[@data-testid='reps-table']//button[@class='css-1y4ltxc']"
List_of_Reps = "xpath=//div[@data-testid='reps-table']//div[@class='css-hun3g']"
Reps_Modal = "xpath=//div[.='Add New Rep']"
Rep_Element = "xpath=//input[@name='employee.name']"
Rep_Value = "Sagar Yadav"
Rep_DD = "css:.css-15btzpj"
Rep_Value_TBS = f"xpath=//li[contains(.,'{Rep_Value}')]"
Reps_Type_Element = "xpath=//div[@name='repType.id']//button"
Reps_Type_DD = "xpath=//ul[@class='css-tc5f3h']"
Reps_Type_Value = "Customer Ops"
Reps_Type_Value_TBS = f"xpath=//li[contains(.,'{Reps_Type_Value}')]"
Main_Element = "xpath=//label[contains(text(),'Main')]//parent::div//div//label"
Save_Reps_Button = "xpath=//button[@class='css-1p16kem' and .='Add Rep']"

