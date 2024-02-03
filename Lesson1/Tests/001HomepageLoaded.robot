#Run the script
# robot -d ../Results 001HomepageLoaded.robot
*** Settings ***
Documentation                                                Automationplayground learning page
Library                                                      SeleniumLibrary
*** Variables ***
*** Test Cases ***
The user should be able to add a new customer	
    [Documentation]                                        The main page should be loaded
    [Tags]                                                 001    Contacts    Smoke
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
    Sleep                                                  3s
    Close Browser
*** Keywords ***


