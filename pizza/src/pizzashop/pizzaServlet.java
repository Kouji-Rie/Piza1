package pizzashop;

import java.io.*;
import java.util.*;
 
import javax.jdo.*;
import javax.servlet.http.*;
 
@SuppressWarnings("serial")
public class pizzaServlet extends HttpServlet {
    public void doGet(HttpServletRequest req,
            HttpServletResponse resp)
            throws IOException {
        PersistenceManagerFactory factory = PMF.get();
        PersistenceManager manager = factory.getPersistenceManager();
        resp.setCharacterEncoding("UTF-8");
        resp.setContentType("text/html");
        req.setCharacterEncoding("utf-8");
        String param1 = req.getParameter("id");
        PrintWriter out = resp.getWriter();
        List<linkData> list = null;
        if (param1 == null || param1 ==""){
            String query = "select from " + linkData.class.getName();
            try {
                list = (List<linkData>)manager.newQuery(query).execute();
            } catch(JDOObjectNotFoundException e){}
        } else {
            try {
                linkData data = (linkData)manager.getObjectById(linkData.class,Long.parseLong(param1));
                list = new ArrayList();
                list.add(data);
            } catch(JDOObjectNotFoundException e){}
        }
        String res = "[";
        if (list != null){
            for(linkData data:list){
                res += "{id:" + data.getId() + ",age:'" + data.getAge() + "',name:'" +
                    data.getName() + "',data:'" + data.getDatetime() +
                    "',pass:'" + data.getPass() + "'},";
            }
        }
        res += "]";
        out.println(res);
        manager.close();
    }
}