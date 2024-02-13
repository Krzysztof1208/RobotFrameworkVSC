*** Settings ***
Documentation                        My combination with Conduit.mate.academy
Library                              SeleniumLibrary

#Run the script
# robot -T -d ../Results 002Login.robot

*** Variables ***


*** Test Cases ***
The user should be able to Log in with the valid credentials	
    [Documentation]                This is a learning process contiuation with Conduit page
    [Tags]                         003    Login    Smoke
    Set Selenium Speed             .0s
    Set Selenium Timeout           5s
# Open the browser
    Log                            The user is able to log in with the valid credentials
    Log                            Starting the test case
    Open Browser                   HTTP://Google.com    
    Go To                          https://conduit.mate.academy/
# Resizing window for better observation
   Maximize Browser Window
# Verification of the page
    Page Should Contain            A place to share your knowledge.
# Filling in Sign in form
    Click Link                     Sign in
    Page Should Contain            Sign in
    Input Text                     xpath://fieldset[@class="form-group"]/input[@type="email"]       user13a@interia.pl
    Input Text                     xpath://fieldset[@class="form-group"]/input[@type="password"]    nokia5000
    Click Button                   Sign in
    Sleep                          3s
    Page Should Contain            testerowiec

    Sleep                          3s
    Close Browser

*** Keywords ***