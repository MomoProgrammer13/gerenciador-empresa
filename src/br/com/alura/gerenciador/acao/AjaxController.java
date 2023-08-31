package br.com.alura.gerenciador.acao;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.json.JSONArray;
import org.json.JSONObject;
@WebServlet("/AjaxHandler")
public class AjaxController extends HttpServlet {
    private static final long serialVersionUID = 1L;
       
    public AjaxController() {
        super();
    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
        JSONArray array = new JSONArray();
        
        JSONObject user1 = new JSONObject();
        user1.put("name", "TOM");
        user1.put("age", "26");
        JSONObject user2 = new JSONObject();
        user2.put("name", "ASB");
        user2.put("age", "26");
        JSONObject user3 = new JSONObject();
        user3.put("name", "Ketlyn");
        user3.put("age", "20");
        
        array.put(user1);
        array.put(user2);
        array.put(user3);
        
        response.setContentType("application/json");
        response.getWriter().write(array.toString());
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}