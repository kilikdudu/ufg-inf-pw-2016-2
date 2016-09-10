<!DOCTYPE html>
<html lang="en">
<head>
<%@ include file="header.html" %>
<title>Cálculo Menor/Maior</title>
</head>
<body>
  <div class="container">
    <form class="form-horizontal">
      <fieldset>
        <legend>Maior/Menor</legend>
        <div class="form-group">
          <label class="col-md-4 control-label" for="textinput1">Sua altura</label>
          <div class="col-md-6">
            <input id="textinput1" name="altura" type="text" placeholder="Coloque aqui sua altura." class="form-control input-md" value="${param.altura}"> <span class="help-block">A altura utilizada para calcular o IMC.</span>
          </div>
        </div>
        <div class="form-group">
          <label class="col-md-4 control-label" for="textinput2">Seu peso</label>
          <div class="col-md-6">
            <input id="textinput2" name="peso" type="text" placeholder="Coloque aqui seu peso." class="form-control input-md" value="${param.peso}"> <span class="help-block">O peso utilizado para calcular o IMC.</span>
          </div>
        </div>
        <div class="form-group">
            <label class="col-md-4 control-label" for="sel1">Selecione o sexo:</label>
            <div class="col-md-6">
                <select class="form-control input-md" id="sel1" name="sexo" type="number" >
                    <option value="0" ${param.sexo==0?"selected=\"selected\"":""} >Masculino</option>
                    <option value="1" ${param.sexo==1?"selected=\"selected\"":""} >Feminino</option>
                </select>
                <span class="help-block">O sexo utilizado para calcular o IMC.</span>
            </div>
        </div>
        <div class="form-group">
          <label class="col-md-4 control-label" for=""></label>
          <div class="col-md-4">
            <button id="" name="" class="btn btn-primary">Calcular</button>
          </div>
        </div>
      </fieldset>
    </form>
    <%
      float peso = 0;
      float altura = 0;
      int sexo = -1;
      float imc = 0;
      
      try{
          peso = Float.parseFloat(request.getParameter("peso"));
      } catch(Exception e){
          %><div class="alert alert-danger" role="alert">Informe um peso válido.</div><%
      }
      try{
          altura = Float.parseFloat(request.getParameter("altura"));
      } catch(Exception e){
          %><div class="alert alert-danger" role="alert">Informe um peso válido.</div><%
      }
      try{
          sexo = Integer.parseInt(request.getParameter("sexo"));
      } catch(Exception e){
          %><div class="alert alert-danger" role="alert">Informe um peso válido.</div><%
      }
      
      //Se o campo "idade" não foi informado, atribui "0", senão fica como está.
      

      if (sexo == -1) { } 
    else if ((sexo == 0 && imc < 20.7) || (sexo == 1 && imc < 19.1)) {
    %><div class="alert alert-success" role="alert">Abaixo do peso.</div><%
      } else if ((sexo == 0 && imc < 26.4) || (sexo == 1 && imc < 27.8)){
    %><div class="alert alert-success" role="alert">Maior de idade.</div><%
      }
    %>
  </div>
</body>
</html>
