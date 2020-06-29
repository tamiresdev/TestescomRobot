***Settings***
Resource        base.robot
Test Setup      Iniciar sessão (Abrir navegador)
Test Teardown   Encerrar sessão (Fechar navegador) 


***Test Cases***
Validar id (Radio Button)   
    Go To                           ${url}/radios
    Select Radio Button             movies  cap
    Radio Button Should Be Set To   movies  cap

Validar por value (Radio Button)
    Go To                           ${url}/radios
    Select Radio Button             movies  thor
    Radio Button Should Be Set To   movies  thor
