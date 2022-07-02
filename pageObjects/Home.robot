*** Settings ***
Documentation                           Home related keyword
Variables                               home_locators.yaml

*** Variables ***
${HOMEPAGE_URL}                         http://automationpractice.com/index.php

*** Keywords ***
Open Browser Chrome
    Open Browser                        browser=chrome          url=${HOMEPAGE_URL}

Verify Current Url Is Homepage Url
    [Documentation]                     Verify current url is homepage url
    Location Should Be                  ${HOMEPAGE_URL}

Input product to search
    Input Text                          ${kolom_search}                         Dress
    Sleep                               5s

Click search button
    Click Element                       ${submit_search}
    Sleep                               5s

List of product be visible
    Element Should Be Visible           ${dress}
    Sleep                               3s

I click button "Call Us"
    Click Element                       ${call_us}
    Sleep                               2s

info appear
    Element Should Be Visible           ${info_call_us}
    Sleep                               2s

input email
    [Arguments]                         ${email}
    Input Text                          ${email_newsletter}                     ${email}

click submit newsletter
    Click Element                       ${submit_newsletter}
    Sleep                               2s

Success sent to email
    Element Should Be Visible           ${success_newsletter}
    Sleep                               2s

Not Success sent to email 
    Element Should Be Visible           ${alert_newsletter}
    Sleep                               2s




