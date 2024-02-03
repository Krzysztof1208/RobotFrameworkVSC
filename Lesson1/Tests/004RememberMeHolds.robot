# Run the Script
# robot -d ../Results 004RememberMeHolds.robot

*** Settings ***
Documentation                                        Automationplayground learning page
Library                                              SeleniumLibrary
*** Settings ***
*** Test Cases ***
Checked Remember Me checkbox holds credentials
    [Documentation]                                  When checkbox Remember Me is checked the next login remembers the credentials
    [Tags]                                           004    Login    Functional

# Initializing Selenium

    Set Selenium Speed                               .1s
    Set Selenium Timeout                             5s

# Navigate to the main page                          

    Open Browser                                     https://automationplayground.com/crm/index.html    Edge

# Maximize Browser Window

    Maximize Browser Window

# Clicking the Sign In link

    Click Link                                       id=SignIn
    Wait Until Page Contains                         Email address

# Filling the credentials

    Input Text                                       id=email-id    test@gmail.com
    Input Password                                   id=password    abcd

# Checking the checkbox

    Select Checkbox                                  id=remember

# Clicking Submit Button

    Click Button                                     id=submit-id
    Wait Until Page Contains                         Our Happy Customers

# Singing Out

    Click Link                                       Sign Out
    Wait Until Page Contains                         Signed Out

# Validating if the Remember Me checkbox works

    Click Link                                       Sign In
    Element Should Contain                           id=email-id   test@gmail.com 

# Closing the Browser

    Close Browser
*** Keywords ***