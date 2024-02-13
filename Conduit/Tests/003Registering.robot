*** Settings ***
Documentation                        My combination with Conduit.mate.academy
Library                              SeleniumLibrary
Library                              FakerLibrary
#Run the script
# robot -T -d ../Results 003Registering.robot

*** Variables ***


*** Test Cases ***
The user should be able to create an account and register with valid credentials	
    [Documentation]                This is a learning process contiuation with Conduit page
    [Tags]                         002    Registering    Smoke
    Set Selenium Speed             .0s
    Set Selenium Timeout           5s
# Open the browser
    Log                            The user is able to register a new account with the valid credentials
    Log                            Starting the test case
    Open Browser                   HTTP://Google.com    
    Go To                          https://conduit.mate.academy/
# Resizing window for better observation
   Maximize Browser Window
# Verification of the page
    Page Should Contain            A place to share your knowledge.
# Filling in Sign in form
    Click Link                     Sign up
    Page Should Contain            Sign up
# Filling the form using faker
    ${Username} =                  FakerLibrary.User Name    
    ${Email} =                     FakerLibrary.Email
    ${Password} =                  FakerLibrary.Password
    Input Text                     xpath://input[@placeholder="Username"]    ${Username}
    Input Text                     xpath://input[@placeholder="Email"]       ${Email}
    Input Password                 xpath://input[@placeholder="Password"]    ${Password}
    Click Button                   Sign up
    Sleep                          3s
    Page Should Contain            Global Feed

    Sleep                          3s
    Close Browser

*** Keywords ***
