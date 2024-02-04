# Run the script
# robot -d ../Results 005UserLogOut.robot

*** Settings ***
Documentation                                        Automationplayground learning page
Library                                              SeleniumLibrary
*** Variables ***
*** Test Cases ***
Successful log Out

    [Documentation]                                  The user is able to log out successfully
    [Tags]                                           005    Login    Functional

# Initializing Selenium

    Set Selenium Speed                               .1s
    Set Selenium Timeout                             3s

# Navigate to the home page

    Open Browser                                     https://automationplayground.com/crm/index.html    Chrome
    Wait Until Page Contains                         Customers Are Priority One!

# Maximizing the Browser

    Maximize Browser Window

# Log in procedure

    Click Link                                       id=SignIn
    Wait Until Page Contains                         Login
    Input Text                                       id=email-id    edek@gmail.com
    Input Text                                       id=password    abc
    Click Button                                     id=submit-id
    Wait Until Page Contains                         Sign Out

# Logging out procedure

    Click Link                                       Sign Out
    Wait Until Page Contains                         Signed Out

# Closing the browser

    Sleep                                            3s
    Close Browser

*** Keywords ***