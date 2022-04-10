*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${web_search}  http://127.0.0.1:5000

*** Test Cases ***
Guest User Test
    [Documentation]  This test is for guest
    [Tags]  user
    Open Browser    ${web_search}   chrome
    Maximize Browser Window
    Click Element  xpath=//html/body/div[2]/div/div/div/form/table/tbody/tr[4]/td[2]/a
    sleep  1s
    Click Element  xpath=//html/body/div[2]/div/div/form/table/tbody/tr[5]/td[2]/a
    sleep  1s
    Test 1 Description
    sleep  1s
    Test 1 Remark
    sleep  1s
    Close Browser

User Register Test
    [Documentation]  This test is to register user
    [Tags]  user
    Open Browser  ${web_search}  chrome
    sleep  1s
    Maximize Browser Window
    Click Element  xpath=//html/body/div[2]/div/div/div/form/table/tbody/tr[4]/td[2]/a
    sleep  1s
    Click Element  xpath=//html/body/div[2]/div/div/form/table/tbody/tr[4]/td[2]/a
    sleep  1s
    Test 2 Name
    sleep  1s
    Test 2 Address
    sleep  1s
    Test 2 Email
    sleep  1s
    Test 2 Phone number
    sleep  1s
    Test 2 Password
    sleep  1s
    Close Browser

Registered User Login Test
    [Documentation]  This test is to login
    [Tags]  user
    Open Browser  ${web_search}  chrome
    Maximize Browser Window
    Click Element  xpath=//html/body/div[2]/div/div/div/form/table/tbody/tr[4]/td[2]/a
    sleep  1s
    Test 3 Email
    sleep  1s
    Test 2 Password
    sleep  1s
    Click Element  xpath=//html/body/div[2]/div/div/form/table/tbody/tr[3]/td[2]/button
    sleep  1s
    Close Browser


User Report Crime Test
    [Documentation]  This test is to report crime
    [Tags]  user
    Open Browser  ${web_search}  chrome
    Maximize Browser Window
    click element  xpath=//html/body/div[2]/div/div/div/form/table/tbody/tr[4]/td[2]/a
    sleep  1s
    Test 2 Email
    sleep  1s
    Test 2 Password
    sleep  1s
    Click Element  xpath=//html/body/div[2]/div/div/form/table/tbody/tr[3]/td[2]/button
    sleep  1s
    Test 1 Description
    sleep  1s
    Test 1 Remark
    sleep  1s
    Close Browser

User Checking Test
    [Documentation]  This test is for modification
    [Tags]  user
    Open Browser  ${web_search}  chrome
    sleep  1s
    Maximize Browser Window
    Click Element  xpath=//html/body/div[2]/div/div/div/form/table/tbody/tr[4]/td[2]/a
     sleep  1s
    Test 3 Email
    sleep  1s
    Test 2 Password

    sleep  1s
    Click Element  xpath=//html/body/div[2]/div/div/form/table/tbody/tr[3]/td[2]/button
    sleep  1s
    Click Element  xpath=//html/body/div[1]/div/div/nav/div/div/ul/li[2]/a
    sleep  1s
    Test 5 Name
    sleep  1s
    Click Element  xpath=//html/body/div[2]/div/div/form/table/tbody/tr[2]/td[2]/button
    sleep  1s
    Test 5 New Name
    Test 5 Address
    Test 3 Email
    Test 5 Phone
    Test 5 Password
    sleep  1s
    Click Element  xpath=//html/body/div[2]/div/div/form/table/tbody/tr[6]/td[2]/button
    sleep  1s

User Logout
    [Documentation]  This test is to logout
    [Tags]  user
    Click Element  xpath=//html/body/div[1]/div/div/nav/div/div/ul/li[3]/a
    sleep  2s
    Close Browser

Admin Login Test
    [Documentation]  This test is for admin login
    [Tags]  admin
    Open Browser  ${web_search}  chrome
    sleep  1s
    Maximize Browser Window
    Test 7 User Name
    sleep  1s
    Test 7 Password
    sleep  1s
    Click Element  xpath=//html/body/div[2]/div/div/div/form/table/tbody/tr[3]/td[2]/button
    sleep  1s
    Close Browser

Admin View Test
    [Documentation]  This test is to view report
    [Tags]  admin
    Open Browser  ${web_search}  chrome
    sleep  1s
    Maximize Browser Window
    Click Element  xpath=//html/body/div[1]/div/div/nav/div/div/ul/li[1]/a
    sleep  1s



Admin Search Report Test
    [Documentation]  This test is to admin  search
    [Tags]  admin
    Click Element  xpath=//html/body/div[1]/div/div/nav/div/div/ul/li[2]/a
    sleep  1s
    Test 9 Date
    sleep  1s


Admin Logout
    [Documentation]  This test to logout
    [Tags]  admin
    Click Element  xpath=//html/body/div[1]/div/div/nav/div/div/ul/li[3]/a
    sleep  1s
    Close Browser

*** Keywords ***
Test 1 Description
    Input Text  name:description  raod
Test 1 Remark
    Input Text  name:remark  badly hit
Test 2 Name
    Input Text  name:name  nava
Test 2 Address
    Input Text  name:address  siva
Test 2 Email
    Input Text  name:email  kanth11@gmail.com
Test 2 Phone number
    Input Text  name:phone  7539996448
Test 2 Password
    Input Text  name:pass  kanth
Test 3 Email
    Input Text  name:email  kanth11@gmail.com
Test 3 Pass
    Input Text  name:pass  kanth
Test 4 Description
    Input Text  name:description  accident
Test 4 Remark
    Input Text  name:remark  badly hitted

Test 5 Name
    Input Text  name:name  navakanth
Test 5 New Name
    Input Text  name:name  reddy
Test 5 Address
    Input Text  name:address  siva
Test 5 Email
    Input Text  name:email  navakanthreddy1989@gmail.com
Test 5 Phone
    Input Text  name:phone  75399964487
Test 5 Password
    Input Text  name:pass  navakanth@
Test 7 User Name
    Input Text  name:name  admin
Test 7 Password
    Input Text  name:pass  12345
Test 9 Date
    Input Text  name:date  09-04-2022