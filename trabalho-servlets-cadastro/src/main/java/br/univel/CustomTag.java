package br.univel;

import java.io.IOException;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.SimpleTagSupport;

public class CustomTag extends SimpleTagSupport {
	@Override
	public void doTag() throws JspException, IOException {
		StringBuilder sb = new StringBuilder();
		sb.append("<button type=\"submit\" class=\"md-button\">").append("Salvar").append("</button>");
		getJspContext().getOut().write(sb.toString());
	}
}
