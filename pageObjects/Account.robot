*** Settings ***
Documentation                           Account related keyword
Variables                               account_locators.yaml

*** Variables ***
${MYACCOUNT_URL}                        http://automationpractice.com/index.php?controller=authentication&back=my-account

*** Keywords ***
Open Browser Chrome
    Open Browser    browser=chrome      url=${MYACCOUNT_URL}

Verify Current Url Is MyAccount Url
    [Documentation]                     Verify Current Url Is MyAccount Url
    Location Should Be                  ${MYACCOUNT_URL}


input email to login
    Input Text                          ${email}                andhjb@gmail.com

input password
    Input Text                          ${password}             12345

click login
    Click Element                       ${klik_login}
    Sleep                               7s

click Order History And Details 
    Click Element                       ${click_order_history}
    Sleep                               5s

Order History And Details Page Appear
    Element Should Be Visible           ${info_order_history}
    Sleep                               2s




