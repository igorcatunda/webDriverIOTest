# All the functions are stored in here, they are going to be called out by main

*** Settings ***
Library    AppiumLibrary
Library    OperatingSystem


# Utils
Resource    base.resource
Resource    custom.resource

*** Keywords ***
Iniciar Aplicativo
    
    Open Application
    ...    remote_url=${IPTARGET}
    ...    automationName=${AUTOMATION_NAME}
    ...    deviceName=${DEVICE_NAME}
    ...    appPackage=${PKG}
    ...    appActivity=${ATV}
    ...    noReset=${True}
    ...    app=${CURDIR}${/}..${/}app${/}android.wdio.native.app.v1.0.8.apk/
    ...    platformName=${PLATFORM_NAME}   

    Sleep    3
Registrar Conta
    Click Element   android=UiSelector().text("Login").instance(0)
    Wait Until Element Is Visible    xPath=//android.widget.TextView[@text="Login / Sign up Form"]
    Sleep    1
    Click Element    xPath=//android.widget.TextView[@text="Sign up"]
    Sleep    1
    Click Element    xPath=//android.widget.EditText[@content-desc="input-email"]
    Sleep    1
    Input Text    accessibility_id=input-email    igorc94@hotmail.com
    Sleep    1
    Input Password    accessibility_id=input-password    Test1234
    Sleep    1
    Input Password    accessibility_id=input-repeat-password    Test1234
    Click Element    android=UiSelector().className("android.view.ViewGroup").instance(17)
    Wait Until Element Is Visible     id=android:id/button1
    Click Element    id=android:id/button1
    Sleep    2
    Click Element   android=UiSelector().text("Login").instance(0)
    Hide Keyboard
    Sleep    3
    
Formulario
    Click Element    android=UiSelector().description("Forms")
    Wait Until Element Is Visible    android=UiSelector().text("Form components")
    Click Element    android=UiSelector().resourceId("RNE__Input__text-input")
    Input Text    accessibility_id=text-input    Hey, are you there?
    Hide Keyboard
    Click Element    accessibility_id=switch
    Sleep    2
    Click Element    xPath=//android.widget.EditText[@resource-id="text_input"]
    Wait Until Element Is Visible    android=UiSelector().text("Appium is awesome")
    Click Element    android=new UiSelector().text("Appium is awesome")
    Sleep    1
    Click Element    android=new UiSelector().className("android.view.ViewGroup").instance(17)
    Wait Until Element Is Visible    android=UiSelector().resourceId("android:id/alertTitle")
    Click Element    android=UiSelector().resourceId("android:id/button3")
    Sleep    3


Deslizar
    Click Element    android=new UiSelector().description("Swipe")
    Wait Until Element Is Visible    android=new UiSelector().text("Swipe horizontal")
    Swipe Until Element Is Visible    android=new UiSelector().text("WebdriverIO works in combination with most of the TDD and BDD test frameworks in the JavaScript world")

Easter Egg
    Click Element    android=new UiSelector().text("Login")
    Click Element    android=new UiSelector().description("Swipe")
    Wait Until Element Is Visible    android=new UiSelector().text("Swipe horizontal")
    Swipe Vertically Until Element Is Visible    android=new UiSelector().description("WebdriverIO logo")