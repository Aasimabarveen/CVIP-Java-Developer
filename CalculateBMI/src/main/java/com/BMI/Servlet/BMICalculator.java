package com.BMI.Servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.DecimalFormat;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/BMICalculator")
public class BMICalculator extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String height1Str = request.getParameter("height1");
        String height2Str = request.getParameter("height2");
        String weightLbsStr = request.getParameter("weight");
        String unitType=request.getParameter("metricbtn");

        
        double height1 = Double.parseDouble(height1Str != null ? height1Str : "0");
        double weight = Double.parseDouble(weightLbsStr != null ? weightLbsStr : "0");
        double height2 = 0.0;
        double bmi;
       

        if ("metric".equals(unitType)) {

             height2 = Double.parseDouble("0."+height2Str != null ? height2Str : "0");
        	 height1=height1+height2;
            bmi = weight / (height1 * height1);
        } else {
        	 height2 = Double.parseDouble(height2Str != null ? height2Str : "0");
        	 height1=(height1*12)+height2;
            bmi = (weight / (height1 * height1)) * 703;
        }

        DecimalFormat df = new DecimalFormat("#.##");
        String formattedBMI = df.format(bmi);
        String color="";        
        if(bmi<=18.5)
        	color="Underweight";
        else if(bmi>18.5&& bmi<=24.99)
        	color="Normal";
        else if(bmi>25&& bmi<=29.99)
        	color="Overweight";
        else if(bmi>30&& bmi<=39.99)
        	color="Obesity";
        else if(bmi>=40)
        	color="Morbid Obesity";
        
        response.setContentType("text/plain");
        PrintWriter out = response.getWriter();
        out.println(formattedBMI+" "+color);

	}

}
