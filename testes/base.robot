***Settings***
Library         SeleniumLibrary

***Variables***
${url}          https://training-wheels-protocol.herokuapp.com/

***Keywords***
Iniciar sessão (Abrir navegador)
    Open browser                  ${url}    chrome  

Encerrar sessão (Fechar navegador) 
    Capture Page Screenshot
    Close browser