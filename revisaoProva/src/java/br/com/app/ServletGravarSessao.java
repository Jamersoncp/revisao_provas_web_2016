/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.app;

import br.com.controller.LoginController;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class ServletGravarSessao extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        if (LoginController.estaLogado(request)) {//verifca se esta logado
            HttpSession sessao = request.getSession();//estancia uma sessao

            Cookie[] cookies = request.getCookies();//pega o cookie gerado
            String usuario = (cookies[1].getValue());//pega usuario
            String senha = (cookies[2].getValue());//pega senha
          
            
            sessao.setAttribute("usuario", usuario);//add na sessao
            sessao.setAttribute("senha", senha);//add na sessao

            RequestDispatcher rd = request.getRequestDispatcher("sessao.jsp");//encaminha pra jsp sessao
            rd.forward(request, response);//retorna com as informações 
        }else{
             response.sendRedirect("index.jsp");
        }

    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
