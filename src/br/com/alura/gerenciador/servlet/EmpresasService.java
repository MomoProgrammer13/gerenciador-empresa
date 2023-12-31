package br.com.alura.gerenciador.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.thoughtworks.xstream.XStream;

import br.com.alura.gerenciador.modelo.Banco;
import br.com.alura.gerenciador.modelo.Empresa;

/**
 * Servlet implementation class ListaEmpresasService
 */
@WebServlet("/empresas")
public class EmpresasService extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List <Empresa> empresas = new Banco().getEmpresas();
		
		String saida = request.getParameter("dataAbertura");
		System.out.println(saida);
		String json = new Gson().toJson(empresas);
	    response.setContentType("application/json");
	    response.setCharacterEncoding("UTF-8");
	    response.getWriter().write(json);
		
//		String valor = request.getHeader("Accept");
//		
//		System.out.println(valor);
//		
//		if(valor.contains("xml")) {
//			XStream xstream = new XStream();
//			xstream.alias("empresa", Empresa.class);
//			String xml = xstream.toXML(empresas);
//			
//			response.setContentType("application/xml");
//			response.getWriter().print(xml);
//		} else if(valor.endsWith("json")) {
//			String json = new Gson().toJson(empresas);
//		    response.setContentType("application/json");
//		    response.setCharacterEncoding("UTF-8");
//		    response.getWriter().write(json);
//		} else {
//			response.setContentType("application/json");
//			response.getWriter().print("{'message':'no content'}");
//		}
		
	}

}
