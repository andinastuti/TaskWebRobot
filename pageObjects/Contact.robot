*** Settings ***
Documentation                           Contact related keyword
Variables                               contact_locators.yaml

*** Variables ***
${CONTACT_URL}                          http://automationpractice.com/index.php?controller=contact

*** Keywords ***
Open Browser Chrome
    Open Browser        browser=chrome    url=${CONTACT_URL}

Verify Current Url Is Contact Url
    [Documentation]                     Verify current url is contact url
    Location Should Be                  ${CONTACT_URL}

Choose Subject heading
    Select From List By Index           ${subject}                   1

input email
    [Arguments]                         ${email}                
    Input Text                          ${input_email}         ${email}

input massage
    Input Text                          ${massage}              I complain to this product

Click send
    Click Element                       ${button_send}              

Success send email
    Element Should Be Visible           ${success}
    Sleep                               3s

Not success send email
    Element Should Be Visible           ${not_success}
    Sleep                               3s


    

