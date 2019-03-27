<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
    <div id="parent">
        <div id="formularz">
            <div style="margin: 10px;">
                <form action="add" method="get">
                    <div>
                        <h2 style="width: 300px;">Formularz rejestracji na konferencję</h2>
                        <label>Imię:<input type="text" id="name" name="name" /></label><br/>
                        <label>Nazwisko:<input type="text" id="surname" name="surname" /></label><br/>
                        <label>Pracodawca<input type="text" id="employment" name="employment" /></label><br/>
                        <label>Email:<input type="text" id="email" name="email" /></label><br/>
                        <label>Potwierdz adres email:<input type="text" id="email" name="confirmemail" /></label><br/>
                        <label>Skąd się dowiedziałeś o konferencji:</label>                        
                        <label>Ogłoszenie w pracy<input type="radio" name="info" value="work" /></label><br/>
                        <label>Ogłoszenie na uczelni<input type="radio" name="info" value="shool" /></label><br/>
                        <label>Facebook<input type="radio" name="info" value="facebook" /></label><br/>
                       	<label>Znajomi<input type="radio" name="info" value="friends" /></label><br/>
                       
                        <input id="but" type="submit" value="Wyslij" />
                    </div>
                </form>
            </div>    
            <div>

            </div>
        </div>
    </div>
</body>
</html>


<style type="text/css">

    body 
    {
        position: absolute; 
        height: 100%; 
        width: 100%;
    }
    
    div 
    {
        text-align: center;
    }
    
    div#parent
    {
        width: 100%;
        height: 100%;
        display: flex;
        align-items: center; /* horizontal */
        justify-content: center; /* vertical */
    }
    
    div#formularz
    {
        margin: auto;
        justify-content: center; /* vertical */
        background-color: lightskyblue;
    }
    
    h1,h2,h3,h4,h5,h6
    {
        text-align: center;
    }
    input
    {
        text-align: center;
    }
    
    input#but
    {
        background-color: lightcoral;
        border: 1px;
        width: 70%;
        height: 40px;
    }
    
</style>
    