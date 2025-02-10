*** Settings ***
Documentation    Cenário de testes do cadastro de usuários  

Library    Browser

*** Test Cases ***
Deve ser possível cadastrar um novo usuário

    ## Visita
    New Browser    browser=chromium    headless=${False}
    New Page    https://automationexercise.com/signup
    Set Viewport Size    1920    1080

    ## Checkpoint (Validação)
    Wait For Elements State    div[class="signup-form"]    visible
    Get Text    div[class="signup-form"] h2    equal    New User Signup!

    ## Preenchimento do formulário
    Fill Text    input[type="text"]    Usuário Teste de cadastro
    Fill Text    input[data-qa="signup-email"]    usuario-de-cadastro@qa.com.br 

    ## Click no botão
    Click    button[data-qa="signup-button"]

    ## Preenchimento do formulário
    Click    css=#id_gender1
    Fill Text    css=#password    senhadeteste
    Select Options By     css=#days    value    21
    Select Options By    css=#months    label    March
    Select Options By    css=#years    value    2002 
    Click    css=#newsletter
    Click    css=#optin
    Fill Text    css=#first_name    Usuário
    Fill Text    css=#last_name    Teste de Cadastro 
    Fill Text    css=#company    Empresa de Teste LTDA
    Fill Text    css=#address1    Avenida dos Testes, 1001, Cidade dos Testes. Teste/QA
    Fill Text    css=#address2    Avenida dos Testes, 1001, Cidade dos Testes. Teste/QA
    Select Options By    css=#country    label    New Zealand
    Fill Text    css=#state    Estados dos Testes
    Fill Text    css=#city    Cidade dos Testes
    Fill Text    css=#zipcode    12345678
    Fill Text    css=#mobile_number    12345678901
    
    ## Click no botão
    Click    button[data-qa="create-account"]

    ## Checkpoint (Validação)
    Get Text    div[class="col-sm-9 col-sm-offset-1"] b    equal    ACCOUNT CREATED!

    ## Click botão continuar
    Click    div[class="pull-right"]

     ## Click botão delete account
    Click    a[href="/delete_account"]

    Sleep    5