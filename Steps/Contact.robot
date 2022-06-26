

*** Settings ***
Library                                 SeleniumLibrary
Test Setup                              Open Browser                ${base_url}         ${browser_setup}
Test Teardown                           Close Browser

*** Variables ***
${base_url}                             http://automationpractice.com/index.php?controller=contact
${browser_setup}                        Chrome


*** Test Cases ***
I input with valid email
    Maximize Browser Window
    Select From List By Index           //select[@id="id_contact"]                   1
    Input Text                          //input[@id="email"]                         andhjb@gmail.com
    Input Text                          //textarea[@id="message"]                    Test Hallo
    Click Element                       //button[@id="submitMessage"]
    Element Should Be Visible           //p[@class="alert alert-success"]

I input with invalid email
    Maximize Browser Window
    Select From List By Index           //select[@id="id_contact"]                   1
    Input Text                          //input[@id="email"]                         andhjb@gmail
    Input Text                          //textarea[@id="message"]                    Test Hallo
    Click Element                       //button[@id="submitMessage"]
    Element Should Be Visible           //div[@class="alert alert-danger"]

I input with blank massage
    Maximize Browser Window
    Select From List By Index           //select[@id="id_contact"]                   1
    Input Text                          //input[@id="email"]                         andhjb@gmail.com
    Input Text                          //textarea[@id="message"]                    \
    Click Element                       //button[@id="submitMessage"]
    Element Should Be Visible           //div[@class="alert alert-danger"]
    

