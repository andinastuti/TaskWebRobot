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
    # Sleep                               2s


    

    


