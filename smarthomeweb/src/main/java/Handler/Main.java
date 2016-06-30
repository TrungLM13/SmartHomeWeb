package Handler;
import org.apache.catalina.startup.Tomcat;

import Connector.*;
import Controller.DeviceManager;

public class Main {
	
	private HiveConnector m_conn;
	
	public Main(){
	}
	
	public static final String port = System.getenv("PORT");
	    
    public static void main(String[] args) throws Exception {
        String contextPath = "/";
        String appBase = ".";
        
        //app.m_conn.CreateConnection();
        
        DeviceManager devicemng = new DeviceManager();
        
        devicemng.GetListDevice();
        devicemng.GetPowerConsumptionByDeviceType();
        devicemng.GetSumPowerConsumptionPerMonth("2016");
        
//        //Start Tomcat
//        Tomcat tomcat = new Tomcat();
//        if(port != null)
//        	tomcat.setPort(Integer.valueOf(8080));
//        else
//        	tomcat.setPort(Integer.valueOf(8080));
//        tomcat.getHost().setAppBase(appBase);
//        tomcat.addWebapp(contextPath, appBase);
//        tomcat.start();
//        tomcat.getServer().await();
    }

}
