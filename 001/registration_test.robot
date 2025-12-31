*** Settings ***
Library    SeleniumLibrary
Suite Setup    Open Browser    http://localhost:7272/Lab4/Registration.html    chrome
Suite Teardown    Close Browser

*** Test Cases ***
Open Workshop Registration Page1
    Title Should Be    Registration
    Capture Page Screenshot

Register Success
    Input Text    id=firstname       Somyod
    Input Text    id=lastname        Sodsai
    Input Text    id=organization    CS KKU
    Input Text    id=email           somyod@kkumail.com
    Input Text    id=phone           091-001-1234
    Click Button  id=registerButton
    Title Should Be    Success
    Capture Page Screenshot

Open Workshop Registration Page2
    Go To    http://localhost:7272/Lab4/Registration.html
    Title Should Be    Registration
    Capture Page Screenshot

Register Success No Organization
    Input Text    id=firstname       Somyod
    Input Text    id=lastname        Sodsai
    Input Text    id=email           somyod@kkumail.com
    Input Text    id=phone           091-001-1234
    Click Button  id=registerButton
    Title Should Be    Success
    Capture Page Screenshot
