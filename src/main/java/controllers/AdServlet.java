package controllers;

import dao.Ads;
import dao.DaoFactory;
import dao.ListAdsDao;
import models.Ad;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet(name = "AdServlet", urlPatterns = "/ads")
public class AdServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        Ads adsDao = null;

        adsDao = DaoFactory.getAdsDao();

        assert adsDao != null;
        List<Ad> ads = adsDao.all();
        req.setAttribute("ads", ads);
        req.getRequestDispatcher("ads/index.jsp").forward(req, resp);
    }
}
