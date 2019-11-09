package com.cherish.controller;

import com.cherish.domain.Education;
import com.cherish.service.ProEducationService;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * @author huangmingyang
 */
public class EducationServlet extends HttpServlet {
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        req.setCharacterEncoding("UTF-8");

        String school = req.getParameter("school");
        String graduate = req.getParameter("graduate");
        String major = req.getParameter("major");
        String enrollment_year=req.getParameter("enrollment_year");
        String graduate_year=req.getParameter("graduate_year");

        Education education = new Education(school,enrollment_year,graduate_year, graduate, major);
        new ProEducationService().getInsert(education);
    }
}
