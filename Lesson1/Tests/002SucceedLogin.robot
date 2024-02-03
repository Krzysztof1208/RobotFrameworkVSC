# Run the script
# robot -d ../Results 002SucceedLogin.robot
*** Settings ***
Documentation                                        Automationplayground learning page
Library                                              SeleniumLibrary                                    
*** Variables ***
*** Test Cases ****
The user should be able to log in

    [Documentation]                                  The user can log in using the valid credentials
    [Tags]             
    ...                                  002    Login    Smoke
# Initializing Selenium

    Set Selenium Speed                               .1s
    Set Selenium Timeout                             10s

# Opening the Browser

    Open Browser                                     https://automationplayground.com/crm/index.html    Chrome

 # Resizing window for better observation

    Set Window Position                                    x=341    y=0
    Set Window Size                                        width=1900    height=1900   
    Wait Until Page Contains                         Customers Are Priority One!

# Clicking Sign In

    Click Link                                       id = SignIn
    Wait Until Page Contains                         Login

# Filling the form

    Input Text                                       id = email-id    testowy@gmail.com
    Input Text                                       id = password    abc

# Clicking Submit Button

    Click Button                                     id = submit-id
    Wait Until Page Contains                         Our Happy Customers

# Closing the Browser

    Sleep                                            3s
    Close Browser
*** Keywords ***

