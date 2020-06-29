***Settings***
Resource        base.robot
Test Setup      Iniciar sessão (Abrir navegador)
Test Teardown   Encerrar sessão (Fechar navegador) 

***Variables***
${check_thor}           id:thor
${check_ironman}        css:input[value='iron-man']
${check_panteranegra}   xpath://*[@id='checkboxes']/input[7]

***Test Cases***
Validar a marcação de Checkbox da página com id
    Go To                         ${url}/checkboxes
    Select checkbox               ${check_thor}
    Checkbox Should Be Selected   ${check_thor}

Marcando opção do checkbox com CSS Selector

    Go To                         ${url}/checkboxes
    Select checkbox               ${check_ironman}
    Checkbox Should Be Selected   ${check_ironman}

Marcando opção do checkbox com Xpath
    [Tags]                        panteranegra
    Go To                         ${url}/checkboxes
    Select checkbox               ${check_panteranegra}
    Checkbox Should Be Selected   ${check_panteranegra}
  




