*** Settings ***
Documentation                           Order related keyword
Variables                               order_locators.yaml

*** Variables ***
${ORDER_URL}                            http://automationpractice.com/index.php?id_product=3&controller=product

*** Keywords ***
Open Browser Chrome
    Open Browser        browser=chrome    url=${ORDER_URL}

Verify Current Url Is Contact Url
    [Documentation]                     Verify current url is order url
    Location Should Be                  ${ORDER_URL}
    sleep                               5s

Klik Add to cart
    Click Element                       ${add_blue}
    sleep                               5s

Success add to shopping cart
    Element Should Be Visible           ${add_green}

Klik checkout
    Click Element                       ${checkout}

Summary page is appear
    Element Should Be Visible           ${summary_page}
    sleep                               5s

Click Checkout Summary
    Click Element                       ${checkout_summary}

Sign in page is appear
    Element Should Be Visible           ${signin_page}
    sleep                               5s

Input Email
    Input Text                          ${email}                    andhjb@gmail.com

Input Password
    Input Text                          ${password}                 12345

Klik Sign in 
    Click Element                       ${sign_in}
    sleep                               5s

Address page is appear
    Element Should Be Visible           ${address_page}
    sleep                               10s

Click Checkout Address
    Click Element                       ${checkout_address}


    

    


