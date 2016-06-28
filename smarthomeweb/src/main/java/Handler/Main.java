package Handler;
import org.apache.catalina.startup.Tomcat;

public class Main {
	
	public static final String port = System.getenv("PORT");
	    
    public static void main(String[] args) throws Exception {
        String contextPath = "/";
        String appBase = ".";
        Tomcat tomcat = new Tomcat();
        if(port != null)
        	tomcat.setPort(Integer.valueOf(8080));
        else
        	tomcat.setPort(Integer.valueOf(8080));
        tomcat.getHost().setAppBase(appBase);
        tomcat.addWebapp(contextPath, appBase);
        tomcat.start();
        tomcat.getServer().await();
    }

}
