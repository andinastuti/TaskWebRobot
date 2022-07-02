*** Settings ***
Documentation         Register related keyword
Variables             register_locators.yaml

*** Variables ***
${REGISTER_URL}     http://automationpractice.com/index.php?controller=authentication&back=history#account-creation

*** Keywords ***
Open Browser Chrome
    Open Browser                        browser=chrome          url=${REGISTER_URL}

Verify Current Url Is Homepage Url
#    [Documentation]             Verify current url is register url
    Location Should Be                  ${REGISTER_URL}

input email
    [Arguments]                         ${email}                
    Input Text                          ${create_email}         ${email}
    Click Element                       ${klik_create}
    Sleep                               12s

Verify register page
    Element Should Be Visible           ${first_name}
    Sleep                               3s

choose title
    Click Element                       ${gender}

input first name    
    Input Text					        ${first_name}           andi

input last name
    Input Text                          ${last_name}            andina

input password
    Input Text					        ${create_password}      12345        

choose date
    Select From List By Index           ${ttl_hari}             2                 

choose month
    Select From List By Index           ${ttl_bulan}            2          

choose year
    Select From List By Value           ${ttl_tahun}            2000


input company
    Input Text                          ${company}              PT Maju Jaya                     

input adress1
    Input Text                          ${address1}             Kemang                    

input address2
    Input Text                          ${address2}             -   

input city
    Input Text                          ${city}                 Jakarta                      

input state
    Select From List By Index           ${state}                2                   

input postal code
    Input Text                          ${postal_code}          11111               

select country
    Select From List By Value           ${country}              21               

input additional information
    Input Text                          ${info}                 0987654321                         

input home phone
    Input Text                          ${phone}                \                     

input mobile phone
    Input Text                          ${hp}                   0987654321             

input alias
    Input Text                          ${alias}                MyAddress
    Sleep                               3s

klik Register
    Click Element                       ${click_register}
    Sleep                               3s

Notification appear
    Element Should Be Visible           ${alert}

