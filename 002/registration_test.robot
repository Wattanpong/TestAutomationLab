*** Settings ***
Library    SeleniumLibrary
Suite Setup    Open Browser    http://localhost:7272/Lab4/Registration.html    chrome
Suite Teardown    Close Browser

*** Test Cases ***
Open Workshop Registration Page
    Title Should Be    Registration
    Capture Page Screenshot

Empty First Name
    Input Text    id=lastname        Sodyod
    Input Text    id=organization    CS KKU
    Input Text    id=email           somyod@kkumail.com
    Input Text    id=phone           091-001-1234
    Click Button  id=registerButton
    Page Should Contain    Please enter your first name!!
    Capture Page Screenshot

Empty Last Name
    Go To    http://localhost:7272/Lab4/Registration.html
    Input Text    id=firstname       Somyod
    Input Text    id=organization    CS KKU
    Input Text    id=email           somyod@kkumail.com
    Input Text    id=phone           091-001-1234
    Click Button  id=registerButton
    Page Should Contain    Please enter your last name!!
    Capture Page Screenshot

Empty First Name And Last Name
    Go To    http://localhost:7272/Lab4/Registration.html
    Input Text    id=organization    CS KKU
    Input Text    id=email           somyod@kkumail.com
    Input Text    id=phone           091-001-1234
    Click Button  id=registerButton
    Page Should Contain    Please enter your name!!
    Capture Page Screenshot

Empty Email
    Go To    http://localhost:7272/Lab4/Registration.html
    Input Text    id=firstname       Somyod
    Input Text    id=lastname        Sodsai
    Input Text    id=organization    CS KKU
    Input Text    id=phone           091-001-1234
    Click Button  id=registerButton
    Page Should Contain    Please enter your email!!
    Capture Page Screenshot

Empty Phone Number
    Go To    http://localhost:7272/Lab4/Registration.html
    Input Text    id=firstname       Somyod
    Input Text    id=lastname        Sodsai
    Input Text    id=organization    CS KKU
    Input Text    id=email           somyod@kkumail.com
    Click Button  id=registerButton
    Page Should Contain    Please enter your phone number!!
    Capture Page Screenshot

Invalid Phone Number
    Open Browser    http://localhost:7272/Lab4/Registration.html    chrome
    Title Should Be    Registration
    Input Text    id=firstname       Somyod
    Input Text    id=lastname        Sodsai
    Input Text    id=organization    CS KKU
    Input Text    id=email           somyod@kkumail.com
    Input Text    id=phone           1234
    Click Button  id=registerButton
    Page Should Contain    Please enter a valid phone number, e.g., 081-234-5678, 081 234 5678, or 081.234.5678)
    Capture Page Screenshot
