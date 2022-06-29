//package epam.project.bookshop.controller;
//
//import epam.project.bookshop.command.Command;
//import epam.project.bookshop.command.CommandType;
//import epam.project.bookshop.exception.CommandException;
//import jakarta.servlet.ServletException;
//import jakarta.servlet.annotation.MultipartConfig;
//import jakarta.servlet.annotation.WebServlet;
//import jakarta.servlet.http.HttpServlet;
//import jakarta.servlet.http.HttpServletRequest;
//import jakarta.servlet.http.HttpServletResponse;
//
//import java.io.IOException;
//
//@WebServlet(value = {"/fileUpload", "*.do"})
//@MultipartConfig(fileSizeThreshold = 1024 * 1024,
//        maxFileSize = 1024 * 1024 * 5,
//        maxRequestSize = 1024 * 1024 * 5 * 5)
//public class FileUpload extends HttpServlet {
//    @Override
//    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        controllerCommand(req, resp);
//    }
//
//    @Override
//    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        controllerCommand(req, resp);
//    }
//
//    @Override
//    public void init() throws ServletException {
//        super.init();
//    }
//
//    private void controllerCommand(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        resp.setContentType("text/html");
//
//        String command = req.getParameter("command");// input dagi name
//        Command execute = CommandType.castToCommand(command);
//
//        String page;
//        try {
//            page = execute.execute(req);
//
//            req.getRequestDispatcher(page).forward(req, resp);
//
//        } catch (CommandException e) {
//            throw new ServletException(e); // 2
//        }
//    }
//}