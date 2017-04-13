package com.ligou4.action;

import java.util.Map;
import javax.servlet.ServletContext;
import org.apache.struts2.interceptor.RequestAware;
import org.apache.struts2.interceptor.SessionAware;
import org.apache.struts2.util.ServletContextAware;

public class BaseAction
  implements SessionAware, RequestAware, ServletContextAware
{
	protected Integer label;

	public Integer getLabel() {
		return label;
	}

	public void setLabel(Integer label) {
		this.label = label;
	}
	
  protected Map<String, Object> session;
  protected Map<String, Object> request;
  protected ServletContext application;

  public void setRequest(Map<String, Object> request)
  {
    this.request = request;
  }
  
  public void setSession(Map<String, Object> session) {
    this.session = session;
  }

  public void setServletContext(ServletContext application) {
    this.application = application;
  }
  public String getRealPath(String path) {
    return this.application.getRealPath(path);
  }

}