*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${BROWSER}   chrome
${SELSPEED}  0.0s
${FIRSTNAME}   wing
${LASTNAME}    wang
${PASSWORD}    18Janvier
${EMAIL}    wing@wam.fr    


*** Test Cases ***
robotframework-testing_selenium
    [Setup]  Run Keywords  Open Browser  https://magento.softwaretestingboard.com/  ${BROWSER}
    ...              AND   Set Selenium Speed  ${SELSPEED}
    # open    https://magento.softwaretestingboard.com/
    click    link=Create an Account
    click    id=firstname
    type    id=firstname    ${FIRSTNAME} 
    click    id=lastname
    type    id=lastname    ${LASTNAME} 
    click    id=email_address
    click    id=email_address
    click    id=email_address
    click    id=email_address
    type    id=email_address    birds@notreal.fr
    click    id=password
    type    id=password    18Janvier
    type    id=password-confirmation    18Janvier
    click    xpath=//form[@id='form-validate']/div/div/button/span
    Sleep    5s
    
    click    xpath=//a[@id='ui-id-13']/span
    click    id=option-label-color-93-item-49
    click    id=option-label-size-143-item-168
    click    xpath=//main[@id='maincontent']/div[3]/div/div[4]/ol/li/div/div/div[4]/div/div/form/button/span
    click    xpath=//div[@id='narrow-by-list']/div[6]/div
    click    xpath=//div[@id='narrow-by-list']/div[6]/div[2]/ol/li/a
    click    xpath=//a[@id='ui-id-25']/span
    click    xpath=//main[@id='maincontent']/div[3]/div/div[4]/ol/li[2]/div/div/div[3]/div/div/form/button/span
    click    xpath=//a[@id='ui-id-26']/span
    click    xpath=//main[@id='maincontent']/div[3]/div/div[4]/ol/li/div/div/div[2]/div/div/form/button/span
    click    xpath=//a[@id='ui-id-27']/span
    click    xpath=//main[@id='maincontent']/div[3]/div/div[4]/ol/li[9]/div/div/div[3]/div/div/form/button/span
    click    xpath=(.//*[normalize-space(text()) and normalize-space(.)='My Cart'])[1]/following::span[2]
    click    link=Remove
    click    xpath=(.//*[normalize-space(text()) and normalize-space(.)='Cancel'])[1]/following::span[1]
    click    id=btn-minicart-close
    click    xpath=(.//*[normalize-space(text()) and normalize-space(.)='Skip to Content'])[1]/following::ul[1]
    click    xpath=//button[@type='button']
    click    link=Sign Out
    [Teardown]  Close Browser

*** Keywords ***
open
    [Arguments]    ${element}
    Go To          ${element}

clickAndWait
    [Arguments]    ${element}
    Click Element  ${element}

click
    [Arguments]    ${element}
    Click Element  ${element}

sendKeys
    [Arguments]    ${element}    ${value}
    Press Keys     ${element}    ${value}

submit
    [Arguments]    ${element}
    Submit Form    ${element}

type
    [Arguments]    ${element}    ${value}
    Input Text     ${element}    ${value}

selectAndWait
    [Arguments]        ${element}  ${value}
    Select From List   ${element}  ${value}

select
    [Arguments]        ${element}  ${value}
    Select From List   ${element}  ${value}

verifyValue
    [Arguments]                  ${element}  ${value}
    Element Should Contain       ${element}  ${value}

verifyText
    [Arguments]                  ${element}  ${value}
    Element Should Contain       ${element}  ${value}

verifyElementPresent
    [Arguments]                  ${element}
    Page Should Contain Element  ${element}

verifyVisible
    [Arguments]                  ${element}
    Page Should Contain Element  ${element}

verifyTitle
    [Arguments]                  ${title}
    Title Should Be              ${title}

verifyTable
    [Arguments]                  ${element}  ${value}
    Element Should Contain       ${element}  ${value}

assertConfirmation
    [Arguments]                  ${value}
    Alert Should Be Present      ${value}

assertText
    [Arguments]                  ${element}  ${value}
    Element Should Contain       ${element}  ${value}

assertValue
    [Arguments]                  ${element}  ${value}
    Element Should Contain       ${element}  ${value}

assertElementPresent
    [Arguments]                  ${element}
    Page Should Contain Element  ${element}

assertVisible
    [Arguments]                  ${element}
    Page Should Contain Element  ${element}

assertTitle
    [Arguments]                  ${title}
    Title Should Be              ${title}

assertTable
    [Arguments]                  ${element}  ${value}
    Element Should Contain       ${element}  ${value}

waitForText
    [Arguments]                  ${element}  ${value}
    Element Should Contain       ${element}  ${value}

waitForValue
    [Arguments]                  ${element}  ${value}
    Element Should Contain       ${element}  ${value}

waitForElementPresent
    [Arguments]                  ${element}
    Page Should Contain Element  ${element}

waitForVisible
    [Arguments]                  ${element}
    Page Should Contain Element  ${element}

waitForTitle
    [Arguments]                  ${title}
    Title Should Be              ${title}

waitForTable
    [Arguments]                  ${element}  ${value}
    Element Should Contain       ${element}  ${value}

doubleClick
    [Arguments]           ${element}
    Double Click Element  ${element}

doubleClickAndWait
    [Arguments]           ${element}
    Double Click Element  ${element}

goBack
    Go Back

goBackAndWait
    Go Back

runScript
    [Arguments]         ${code}
    Execute Javascript  ${code}

runScriptAndWait
    [Arguments]         ${code}
    Execute Javascript  ${code}

setSpeed
    [Arguments]           ${value}
    Set Selenium Timeout  ${value}

setSpeedAndWait
    [Arguments]           ${value}
    Set Selenium Timeout  ${value}

verifyAlert
    [Arguments]              ${value}
    Alert Should Be Present  ${value}


Wait Until Element Is Visible
    [Arguments]    ${xpath}    ${timeout}
    # TODO: implement keyword "Wait Until Element Is Visible".
    Fail    Not Implemented


Sleep 5s
    # TODO: implement keyword "Sleep 5s".
    Fail    Not Implemented

