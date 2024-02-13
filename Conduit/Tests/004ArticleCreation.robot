*** Settings ***
Documentation                        My combination with Conduit.mate.academy
Library                              SeleniumLibrary

#Run the script
# robot -T -d ../Results 004ArticleCreation.robot

*** Variables ***


*** Test Cases ***
The user is able to create a new article	
    [Documentation]                This is a learning process contiuation with Conduit page
    [Tags]                         004    Article    Smoke
    Set Selenium Timeout           5s
# Open the browser
    Log                            The user is able to create a new article
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
    Input Text                     xpath://fieldset[@class="form-group"]/input[@type="email"]    user13a@interia.pl
    Input Text                     xpath://fieldset[@class="form-group"]/input[@type="password"]    nokia5000
    Click Button                   Sign in
    Wait Until Page Contains       testerowiec
# Clicking the New Article Link
    Click Link                     xpath://*[@id="__next"]/nav/div/ul/li[2]/a   
    Wait Until Page Contains       Publish
# Filling the New Article form
    Input Text                     xpath://*[@id="__next"]/div/div/div/div/form/fieldset/fieldset[1]/input        New Article
    Input Text                     xpath://*[@id="__next"]/div/div/div/div/form/fieldset/fieldset[2]/input        about the new article
    Input Text                     xpath://*[@id="__next"]/div/div/div/div/form/fieldset/fieldset[3]/textarea     Proper article text
    Click Button                   xpath://*[@id="__next"]/div/div/div/div/form/fieldset/button
    Wait Until Page Contains       Proper article text
    Sleep                          3s
    Close Browser

*** Keywords ***