<%@page import="model.PerfilDAO"%>
<%@page import="model.Perfil"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta content="width=device-width, initial-scale=1, maximun-scale=1, user-scalable=no" nome="viewport"/>
        <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css"/>
        <link rel="stylesheet" href="bootstrap/css/bootstrap-theme.min.css.css"/>
        <title>Lista de Perfis</title>
    </head>
    <body>
        <div class="container">
            <%@include file="banner.jsp" %>
            <%@include file="menu.jsp" %>
            <h1>Lista de Perfis</h1>
            
            <a href="form_perl.jsp" classbtn btn-primary"> Novo cadastro</a>
            
            <table class="table table-hover">
                <tr>
                    <th>ID</th>
                    <th>Nome Perfil</th>
                    <th>Opções</th>
                </tr>
                
                <%
                    ArrayList<Perfil> lista = new ArrayList<Perfil>();
                    try{
                        PerfilDAO pDAO = new PerfilDAO();
                        lista = pDAO.getLista();
                    }catch(Exception e){
                        out.print(e);
                    }
                    for(Perfil p:lista){
                        
                    
                    
                %>
                <tr>
                    <td><%=p.getIdPerfil()%></td>
                    <td><%=p.getNome()%></td>                    
                    <td>
                        <a class="btn btn-primary" href="#">
                            <i class="glyphicon glyphicon-pencil"></i>
                        </a>
                        <button class="btn btn-danger">
                            <i class="glyphicon glyphicon-trash"></i>
                        </button>
                    </td>
                </tr>
                <% } %>
            </table>
        </div>
    </body>
</html>