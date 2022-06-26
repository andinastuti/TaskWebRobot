*** Settings ***
Library                                 SeleniumLibrary
Test Setup                              Open Browser                ${base_url}         ${browser_setup}
Test Teardown                           Close Browser

*** Variables ***
${base_url}                             http://automationpractice.com/index.php
${browser_setup}                        Chrome


*** Test Cases ***
I searching product
    Maximize Browser Window
    Input Text                          //input[@id="search_query_top"]                         Dress
    Click Element                       //button[@type="submit"]
    Sleep                               2s
    Element Should Be Visible           //img[@class="replace-2x img-responsive"]

I click "Call Us"
    Maximize Browser Window
    Click Element                       //a[@class="btn btn-default"]
    Sleep                               2s
    Element Should Be Visible           //div[@class="dt-fancy-title bg-on"]

I input valid email at newsletter
    Maximize Browser Window
    Input Text                          //input[@id="newsletter-input"]                         andhjb@gmail.com
    Click Element                       //button[@name="submitNewsletter"]
    Sleep                               2s
#    Element Should Be Visible           //p[@class="alert alert-success"]


I input invalid email at newsletter
    Maximize Browser Window
    Input Text                          //input[@id="newsletter-input"]                         andhjb@gmail
    Click Element                       //button[@name="submitNewsletter"]
    Sleep                               2s
    Element Should Be Visible           //p[@class="alert alert-danger"]


