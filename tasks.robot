*** Settings ***
Documentation
Library    RPA.Browser.Selenium    auto_close=${True}





*** Test Cases ***
Prueba Flujo
    [Documentation]    Flujo promociones
    [Tags]    Prueba_Control
    Open Browser    https://stake.com.co/es/bienvenida    chrome
    Maximize Browser Window
    Sleep    1
    Click Element    //*[@id="root"]/div/div[1]/div/div[1]
    Sleep    1
    Click Element    //*[@id="root"]/div/div[1]/div/div[1]/a[2]
    Sleep    2
    Click Link    xpath=//a[contains(text(), 'Promociones')]
    Sleep    2
    Click Link    xpath=//a[@href='/es/promociones/apuesta-gratis-de-bienvenida']
    Sleep    1
    Scroll Element Into View    xpath=//h1[contains(text(),'Apuesta Gratis De Bienvenida')]
    Sleep    1
    Element Exist By Text    xpath=//h1[contains(text(),'Apuesta Gratis De Bienvenida')]    Apuesta Gratis De Bienvenida
    


*** Keywords ***
Element Exist By Text
    [Arguments]    ${locator}     ${text}
    Element Should Be Visible    ${locator}
    ${texto_elemento}=    Get Text  ${locator}    
    Should Be Equal    ${texto_elemento}    ${text}


