***Settings***
Resource        base.robot
Test Setup      Iniciar sessão (Abrir navegador)
Test Teardown   Encerrar sessão (Fechar navegador) 

***Test Cases***
Login com Sucesso! 
    Go To               ${url}/login
    Login com           stark  jarvis!
    Page should Contain  Olá, Tony Stark. Você acessou a área logada!

Senha Inválida
    [Tags]               Logininvalido
    Go To                ${url}/login
    Login com            stark  123456   
    ${mensagem}=         Get WebElement              id:flash
    should Contain       ${mensagem.text}            Senha é invalida!

Usuario invalido!
     [Tags]              Logininvalido404
    Go To                ${url}/login
    Login com            Tamires  123456
    ${mensagem}=         Get WebElement              id:flash
    should Contain       ${mensagem.text}            O usuário informado não está cadastrado!


***Keywords***
Login com
    [Arguments]     ${username}    ${password}

    Input Text           css:input[name=username]    ${username}
    Input Text           css:input[name=password]    ${password}
    Click Element        class:btn-login
    


