*** Settings ***
Library             SeleniumLibrary
Library             DataDriver          ../Resources/login.csv          sheet_name=Sheet1
Test Setup          Open Browser                                        ${base_url}                     ${browser_type}
Test Teardown       Close Browser
Test Template       I Login with valid email and valid password
Variables           ../Resources/login.yaml

*** Variables ***
${base_url}         http://automationpractice.com/index.php?controller=authentication&back=my-account
${browser_type}     Chrome

*** Keywords ***
I Login with valid email and valid password
    Maximize Browser Window
    [Arguments]                     ${email}                            ${password}
    Input Text                      ${input_email}                      ${email}
    Input Text                      ${input_password}                   ${password}
    Click Element                   ${login_button}
    Element Should Be Visible       ${logo}

*** Test Cases ***
Login with valid username and valid password using CSV File             ${email}                         ${password}