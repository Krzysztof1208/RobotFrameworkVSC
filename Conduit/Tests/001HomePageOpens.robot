*** Settings ***
Documentation                        My combination with Conduit.mate.academy
Library                              SeleniumLibrary

#Run the script
# robot -T -d ../Results 001HomePageOpens.robot

*** Variables ***


*** Test Cases ***
The user should be able to open the home page Conduit	
    [Documentation]                This is a learning process contiuation with Conduit page
    [Tags]                         001    Login    Smoke
    Set Selenium Speed             .0s
    Set Selenium Timeout           5s
# Open the browser
    Log                            Starting the test case
    Open Browser                   HTTP://Google.com    
    Go To                          https://conduit.mate.academy/
# Maximizing window for better observation
   Maximize Browser Window
# Verification of the page
    Page Should Contain            A place to share your knowledge.

# Closing the Browser

    Sleep                          3s
    Close Browser

*** Keywords ***