*** Settings ***
Library         Browser
Resource        Data_and_Config/Configuration.robot
Resource        Data_and_Config/TestData.robot

Test Setup      Before test set
Test Teardown   After test set

*** Test Cases ***
Registration - successful
    Click           ${SEL_CookiesBtn}
    Sleep           2
    Click           ${SEL_Registration}
    Type Text       ${SEL_Fname}            ${TEXT_Fname}
    Type Text       ${SEL_Lname}            ${TEXT_Lname}
    Type Text       ${SEL_EmailAdd}         ${TEXT_Email}
    Type Text       ${SEL_Password}         ${TEXT_Pass}
    Type Text       ${SEL_PasswordCon}      ${TEXT_Pass}
    Click           ${SEL_RegistBtn}
    Take Screenshot

Registration - unsuccessful
    Click           ${SEL_CookiesBtn}
    Sleep           2
    Click           ${SEL_Registration}
    Type Text       ${SEL_Fname}            ${TEXT_Fname}
    Type Text       ${SEL_Lname}            ${TEXT_Lname}
    Type Text       ${SEL_EmailAdd}         ${TEXT_Email}
    Type Text       ${SEL_Password}         ${TEXT_Pass}
    Click           ${SEL_RegistBtn}
    Get Text        ${SEL_RegistrationError}      ==       ${TEXT_RequiredError}
    Take Screenshot

Login - successful
    Set Strict Mode    off
    Click           ${SEL_CookiesBtn}
    Sleep           2
    Click           ${SEL_Login}
    Type Text       ${SEL_LoginEmail}       ${TEXT_Email}
    Type Text       ${SEL_LoginPAss}        ${TEXT_Pass}
    Click           ${SEL_LoginBtn}
    Click           ${SEL_CustomerBtn}
    Click           ${SEL_LogoutBtn}
    Take Screenshot

Login - unsuccessful
    Set Strict Mode     off
    Click               ${SEL_CookiesBtn}
    Sleep               2
    Click               ${SEL_Login}
    Type Text           ${SEL_LoginEmail}             ${TEXT_Email}
    Click               ${SEL_LoginBtn}
    Get Text            ${SEL_LoginError}     ==      ${TEXT_RequiredError}
    Take Screenshot

*** Keywords ***
Before test set
    New Browser     headless=false
    New Page        ${URL}

After test set
    Close Browser