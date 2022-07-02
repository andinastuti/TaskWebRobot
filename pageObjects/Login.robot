*** Settings ***
Documentation                           Login related keyword
Variables                               login_locators.yaml

*** Variables ***
${LOGIN_URL}     http://automationpractice.com/index.php?controller=authentication&back=my-account

*** Keywords ***
Open Browser Chrome
    Open Browser                        browser=chrome          url=${LOGIN_URL}

Verify Current Url Is Login Url
    [Documentation]                     Verify Current Url Is Login Url
    Location Should Be                  ${LOGIN_URL}

input email
    [Arguments]                         ${email}                
    Input Text                          ${input_email}         ${email}
input password
    [Arguments]                         ${password}
    Input Text                          ${input_password}      ${password}

Klik Button Login Sign In
    Click Element                       ${login_button}
    Sleep                               5s

Login Success
    Element Should Be Visible           ${logo}

Login Alert
    Element Should Be Visible           ${alert} 

Klik Forgot Password
    Input Text                          ${input_email}

Klik retrieve password
    Click Element                       ${retrieve}

Success sent to email address
    Element Should Be Visible           ${notif_success}

