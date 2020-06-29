***Settings***
Resource        base.robot
Test Setup      Iniciar sessão (Abrir navegador)
Test Teardown   Encerrar sessão (Fechar navegador) 

***Test Cases***
Validar select por texto e validar pelo valor 
    Go To                       ${url}/dropdown
    Select From List By Label   class:avenger-list              Loki 
    ${selecionado}=             Get Selected List Value         class:avenger-list   
    Should Be Equal             ${selecionado}                  6

Validar select por valor e validar pelo texto 
    Go To                       ${url}/dropdown
    Select From List By Value   id:dropdown                     6
    ${selecionado}=             Get Selected List Label         id:dropdown
    Should Be Equal             ${selecionado}                  Loki