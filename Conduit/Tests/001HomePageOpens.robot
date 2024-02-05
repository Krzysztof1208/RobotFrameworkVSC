*** Settings ***
Documentation                        My combination with Conduit.mate.academy
Library                              SeleniumLibrary

#Run the script
# robot -d ../Results 001HomePageOpens.robot

*** Variables ***


*** Test Cases ***
The user should be able to open the home page Conduit	
    [Documentation]                This is a learning process contiuation with Conduit page
    [Tags]                         001    Login    Smoke
    Set Selenium Speed             .1s
    Set Selenium Timeout           10s
# Open the browser
    Log                            Starting the test case
    Open Browser                   https://conduit.mate.academy/    Chrome
# Resizing window for better observation
    Set Window Position            x=341    y=0
    Set Window Size                width=1900    height=1900
# Verification of the page
    Page Should Contain            A place to share your knowledge.

# Closing the Browser

    Sleep                          3s
    Close Browser

*** Keywords ***