package com.cybersoft.controller;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "homepage", urlPatterns = {"/home-page"})
public class HomePage extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int fixNumber = 50;
        String errorMess = "empty";
        int number = Integer.parseInt(req.getParameter("number"));
        if (number<1 || number>1000){
            errorMess = "Please enter the number from 1 to 1000";
        }
        else {
            if (number == fixNumber){
                errorMess = "Match number!";
            } else if (number > fixNumber) {
                errorMess = "Input number greater than secret number! Play again";

//            System.out.println("Bạn đang nhập một số lớn hơn số bí mật");
            } else {
                errorMess = "Input number less than secret number! Play again";
//            System.out.println("Bạn đang nhập một số nhỏ hơn số bí mật");
            }
        }
        req.setAttribute("errormess", errorMess);
        req.getRequestDispatcher("/webapp/home_page.jsp").forward(req,resp);

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    }
}
