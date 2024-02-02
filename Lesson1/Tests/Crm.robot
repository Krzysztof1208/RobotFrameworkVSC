*** Settings ***
Documentation                                                This is some basic information about whole suite
Library                                                      SeleniumLibrary

#Run the script
# robot -d Results  Tests/Crm.robot

*** Variables ***


*** Test Cases ***
The user should be able to add a new customer	
    [Documentation]                                        This is a description of the Test
    [Tags]                                                 007    Contacts    Smoke
    # Initializing Selenium
    Set Selenium Speed                                     .1s
    Set Selenium Timeout                                   10s
    # Open the browser
    Log                                                    Starting the test case
    Open Browser                                           https://automationplayground.com/crm/index.html    Chrome
    # Resizing window for better observation
    Set Window Position                                    x=341    y=0
    Set Window Size                                        width=1900    height=1900
    # Verification of the page
    Page Should Contain                                    Customers Are Priority One!

    Click Link                                             id=SignIn
    Page Should Contain                                     Login
    Input Text                                             id=email-id        tester@gmail.com
    Input Text                                             id=password        haslo
    Click Button                                           id=submit-id
    Page Should Contain                                    Our Happy Customers

    # Adding a new customer

    Click Element                                          id=new-customer
    Page Should Contain                                    Add Customer
    Input Text                                             id=EmailAddress     tester1@test.com
    Input Text                                             id=FirstName        Edek1
    Input Text                                             id=LastName         Edkiewicz
    Input Text                                             id=City             Dallas
    Select From List By Value                              id=StateOrRegion    TX
    Select Radio Button                                    gender              male
    Select Checkbox                                        promos-name
    Click Button                                           Submit
    Wait Until Page Contains                               Success! New customer added.

    Sleep                                                  3s
    Close Browser

*** Keywords ***
 
   
    

