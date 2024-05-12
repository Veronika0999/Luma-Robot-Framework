*** Variables ***
#Login and Registration

${TEXT_Fname}        Jane
${TEXT_Lname}     Doe
${TEXT_Email}       wivitin570@acentni.com
${TEXT_Pass}        John123DoeQW?
${TEXT_RequiredError}           This is a required field.

${SEL_CookiesBtn}       xpath=/html/body/div[3]/div[2]/div[1]/div[2]/div[2]/button[1]/p
${SEL_Registration}     xpath=/html/body/div[2]/header/div[1]/div/ul/li[3]/a
${SEL_Login}        xpath=/html/body/div[2]/header/div[1]/div/ul/li[2]/a
${SEL_Fname}         id=firstname
${SEL_Lname}         id=lastname
${SEL_EmailAdd}         id=email_address
${SEL_Password}         id=password
${SEL_PasswordCon}      id=password-confirmation
${SEL_RegistBtn}         css=.action.submit.primary
${SEL_LoginEmail}       id=email
${SEL_LoginPAss}        id=pass
${SEL_LoginBtn}         id=send2
${SEL_CustomerBtn}      xpath=/html/body/div[2]/header/div[1]/div/ul/li[2]/span/button/span
${SEL_LogoutBtn}        xpath=/html/body/div[2]/header/div[1]/div/ul/li[2]/div/ul/li[3]/a
${SEL_RegistrationError}        id=password-confirmation-error
${SEL_LoginError}       id=pass-error