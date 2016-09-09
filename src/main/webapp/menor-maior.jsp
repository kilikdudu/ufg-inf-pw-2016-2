<!DOCTYPE html>
<html lang="en">
<head>
<%@ include file="header.html" %>
<title>C�lculo Menor/Maior</title>
</head>
<body>
  <div class="container">
    <form class="form-horizontal">
      <fieldset>
        <legend>Maior/Menor</legend>
        <div class="form-group">
          <label class="col-md-4 control-label" for="textinput">Idade</label>
          <div class="col-md-6">
            <input id="textinput" name="idade" type="text" placeholder="Coloque aqui a idade do indiv�duo." class="form-control input-md" value="${param.idade}"> <span class="help-block">A idade utilizada para fazer o c�lculo.</span>
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
      String idadeStr = request.getParameter("idade");
      //Se o campo "idade" n�o foi informado, atribui "0", sen�o fica como est�.
      idadeStr = (idadeStr == null ? "0" : idadeStr);

      int idade = 0;
      try {
        idade = Integer.parseInt(idadeStr);
      } catch (Exception e) {
      }

      if (idade == 0) {
    %><div class="alert alert-danger" role="alert">Informe uma idade v�lida.</div><%
      } else if (idade < 18) {
    %><div class="alert alert-success" role="alert">Menor de idade.</div><%
      } else {
    %><div class="alert alert-success" role="alert">Maior de idade.</div><%
      }
    %>
  </div>
</body>
</html>
