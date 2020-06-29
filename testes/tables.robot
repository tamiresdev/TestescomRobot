***Settings***
Resource        base.robot
Test Setup      Iniciar sessão (Abrir navegador)
Test Teardown   Encerrar sessão (Fechar navegador) 

***Test Cases***
Verificar o valor ao informar o numero da linha 
    Go To                          ${url}/tables
    Table Row Should Contain       id:actors        1   @robertdowneyjr	   

Descobre a linha pelo texto chave e valida os demais valores
    Go To                          ${url}/tables
    ${target}=                     Get WebElement       xpath:.//tr[contains(., '@vindiesel')]
    Should contain                 ${target.text}       $ 10.000.000
    Should contain                 ${target.text}       Domic Toreto		