*** Settings ***
Documentation                        My combination with Conduit.mate.academy
Library                              SeleniumLibrary

#Run the script
# robot -T -d ../Results 005The user is able to edit the article.robot

*** Variables ***


*** Test Cases ***
The user is able to edit the article	
    [Documentation]                This is a learning process contiuation with Conduit page
    [Tags]                         005    Article    Smoke
    Set Selenium Timeout           3s
# Open the browser
    Log                            The user is able to edit the article
    Log                            Starting the test case
    Open Browser                   HTTP://Google.com    
    Go To                          https://conduit.mate.academy/
# Resizing window for better observation
   Maximize Browser Window
# Verification of the page
    Page Should Contain            A place to share your knowledge.
# Login process
     Click Link                    Sign in
    Page Should Contain            Sign in
    Input Text                     xpath://input[@placeholder="Email"]       user13a@interia.pl
    Input Text                     xpath://input[@placeholder="password"]    nokia5000
    Click Button                   Sign in
    Wait Until Page Contains       testerowiec
# Clicking the New Article Link
    Click Link                     xpath://div[@class="container"]/a[@class="nav-link"]    
    Wait Until Page Contains       Publish
# Filling the New Article form
   
    Sleep                          3s
    Close Browser

*** Keywords ***