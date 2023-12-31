package br.com.alura.gerenciador.acao;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.alura.gerenciador.modelo.Banco;
import br.com.alura.gerenciador.modelo.Usuario;

public class Login implements Acao {

	@Override
	public String executa(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String login = request.getParameter("login");
		String senha = request.getParameter("senha");
		
		Banco banco = new Banco();
		
		Usuario usuario = banco.existeUsuario(login,senha);
		
		if(usuario != null) {
			System.out.println("Usuario Existe");
			request.getSession().setAttribute("usuarioLogado", usuario);
			return "forward:AjaxTest.jsp";
//			return "redirect:entrada?acao=PlantaoDBA";
			}
		else {
			return "redirect:entrada?acao=LoginForm";
		}
		
		
		
	}

}
