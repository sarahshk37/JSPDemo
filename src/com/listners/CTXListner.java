package com.listners;

import java.sql.*;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

import com.ltil.utilities.ConnectionManager;


@WebListener
public class CTXListner implements ServletContextListener {
	private Connection connection;
	

    public CTXListner() {
     
    }

	
    public void contextDestroyed(ServletContextEvent arg0)  { 
       System.out.println("JSP Demo Context Destoyed");
    }

	
    public void contextInitialized(ServletContextEvent event)  { 
    	
    	connection= ConnectionManager.getConnection();
    	event.getServletContext().setAttribute("conn", connection);
    	
    	
       
    }
	
}
