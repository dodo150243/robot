*** Settings ***
Library    Selenium2Library

*** Variables ***
# ${browser}    chrome
${browser}    edge
${url}    https://www.youtube.com/
${expected_result}     ฉันคือดวงจันทร์ - MONICA

*** Keywords ***
เปิดเว็บ google.com
    Open Browser     ${url}     ${browser}
ค้นหาตาม keywords
    Input Text    name=search_query    ${expected_result}
    Submit Form  
รอผลลัพธ์
    Wait Until Page Contains    ${expected_result}

*** Test Cases ***
Search case
   เปิดเว็บ google.com
   ค้นหาตาม keywords
   รอผลลัพธ์