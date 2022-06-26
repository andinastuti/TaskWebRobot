*** Settings ***
Library                                 SeleniumLibrary
Test Setup                              Open Browser                ${base_url}         ${browser_setup}
Test Teardown                           Close Browser

*** Variables ***
${base_url}                             http://automationpractice.com/index.php
${browser_setup}                        Chrome

*** Test Cases ***
I order one product
    Maximize Browser Window
    #Click Element                          //a[contains(@href,'href="http://automationpractice.com/index.php?controller=cart&add=1&id_product=1&token=62836caa40f1beb6f0025f04f067953d"')]
    
    # Click Element                       //a[@data-id-product="1"]
    # Element Should Be Visible           //a[@class="btn btn-default button button-medium"]
    # Click Element                       //a[@class="btn btn-default button button-medium"]
    # Element Should Be Visible           //span[@class="address_name"] 
    # Click Element                       //a[@title="Proceed to checkout"]
    # Element Should Be Visible           //div[@class="delivery_option_price"]
    # Click Element                       //input[@id="cgv"]
    # Click Element                       //button[@class="button btn btn-default standard-checkout button-medium"]
    # Element Should Be Visible           //span[@id="total_price"]

