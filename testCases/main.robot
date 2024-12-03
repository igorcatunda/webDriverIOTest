*** Settings ***
Resource    ../resource/base.resource
Resource    ../resource/fn.resource

*** Test Cases ***
Test Case 1: Abrir o Aplicativo na tela
    Iniciar Aplicativo

Test Case 2: Registrar uma conta nova
    Registrar Conta

Test Case 3: Explorar formulario
    Formulario

Test Case 4: Testar deslize
    Deslizar

Test Case 5: Descobrir o Easter Egg!!!
    Easter Egg