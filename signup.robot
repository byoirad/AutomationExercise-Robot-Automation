*** Settings ***
Documentation    Cenário de testes do cadastro de usuários  

Library    Browser

*** Test Cases ***
Deve ser possível cadastrar um novo usuário

    ## Visita
    New Browser    browser=chromium    headless=${False}
    New Page    https://automationexercise.com/signup

    ## Checkpoint (Validação)
    Wait For Elements State    div[class="signup-form"]    visible
    Get Text    div[class="signup-form"] h2    equal    New User Signup! 
    
    Sleep    5