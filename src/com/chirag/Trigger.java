package com.chirag;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.Statement;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

public class Trigger implements ServletContextListener{

	public void contextInitialized(ServletContextEvent arg0) {
		
		Connection con=null;
	try{
	
		Class.forName("org.h2.Driver");
		con=DriverManager.getConnection("jdbc:h2:tcp://localhost/~/Comapre","system","oracle");
		
		//PreparedStatement ps= con.prepareStatement("CREATE TRIGGER  BI_CITY1 before insert on CITY1_DETAILS for each row begin select CITY1_DETAILS_SEQ.nextval into :NEW.ID from dual;end");
		//ps.executeUpdate();
		Statement stmt=con.createStatement();
		
		stmt.executeUpdate("CREATE TRIGGER BI_CITY_CLASSIFIED before insert on CITY_CLASSIFIED for each row begin select CITY_CLASSIFIED_SEQ.nextval into :NEW.ID from dual;end");
		stmt.executeUpdate("CREATE TRIGGER  BI_CITY1 before insert on CITY1_DETAILS for each row begin select CITY1_DETAILS_SEQ.nextval into :NEW.ID from dual;end");
		stmt.executeUpdate("CREATE TRIGGER BI_CITY1_USER before insert on CITY1_USER for each row begin select CITY1_USER_SEQ.nextval into :NEW.ID from dual;end");
		
		
	}
		
	    catch(Exception e){
	    	e.printStackTrace();
	    	
	    }
	    finally{
	    	try{
	    	con.close();
	    	}catch (Exception e) {e.printStackTrace();			}
	    }
	    
	}
	    public void contextDestroyed(ServletContextEvent arg0) {
		System.out.println("project undeployed");
		
	}



}
