package br.com.controller;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;

public class LoginController {

    public static Boolean login(String usuario, String senha) {
        return (usuario != null && senha != null && LoginController.existe(usuario, senha));
    }

    public static Cookie getCookie(String nome, String valor) {
        Cookie cookie = new Cookie(nome, valor);
        return cookie;
    }

    public static Boolean estaLogado(HttpServletRequest request) {
        Cookie[] cookies = request.getCookies();
        return cookies[1].getName().equals("usuario") && cookies[2].getName().equals("senha");
    }

    public static Boolean existe(String usuario, String senha) {

        if (usuario.equalsIgnoreCase("admin") || senha.equalsIgnoreCase("123")) {
            return true;//valida login
        }

        return false;
    }

    public static Cookie getCookie(String erro, boolean b) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
}
