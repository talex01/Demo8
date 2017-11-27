package org.project08;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.project08.model.Goods;
import org.project08.utils.HibernateUtils;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "AllProduct", urlPatterns = "/all")
public class AllProduct extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF8");
        response.setCharacterEncoding("UTF8");

        List<Goods> goodsList = null;
        SessionFactory factory = HibernateUtils.sessionFactory;
        Session session = factory.openSession();
        try {
            goodsList = session.createQuery("from Goods", Goods.class).list();
            goodsList.forEach(System.out::println);
            request.setAttribute("goods", goodsList);
        } catch (Exception ex) {
            ex.printStackTrace();
        }

        request.getRequestDispatcher("all-product.jsp").forward(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
