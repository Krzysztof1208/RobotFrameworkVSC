# Run the Script
# robot -d ../Results 003FailedLoginMissingCredentials.robot

*** Settings ***
Documentation                                        Automationplayground learning page
Library                                              SeleniumLibrary

*** Variables ***
*** Test Cases ***
Login should fail when there is no credentials
    [Documentation]                                  The user can NOT log in without the credentials
    [Tags]                                           003    Login    Functional

# Initializin Selenium

    Set Selenium Speed                               .1s
    Set Selenium Timeout                             10s

# Opening the Browser

    Open Browser                                     https://automationplayground.com/crm/index.html    Chrome
    Maximize Browser Window

# Positioning and Resizing the Browser

#    Set Window Position                              x=341    y=0
#   Set Window Size                                  width=1900    height=1900
   Wait Until Page Contains                         Customers Are Priority One!

# Clicking Sign In                                   

    Click Link                                       id = SignIn
    Wait Until Page Contains                         Login

# Do NOT fill the credentials

# Clicking Submit Button

    Click Button                                     id = submit-id


# Verification of the alert

#    Alert Should Be Present     
    Page Should Contain                              Submit
    Sleep                                            2s
    Close Browser
    



*** Keywords ***