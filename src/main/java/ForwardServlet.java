import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.util.Map;

import static utils.HttpParameterUtils.decodeQueryStrings;

/**
 * @author - wally55077@gmail.com
 */
public class ForwardServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        req.setCharacterEncoding(StandardCharsets.UTF_8.name());
        res.setCharacterEncoding(StandardCharsets.UTF_8.name());

        Map<String, String> queryStrings = decodeQueryStrings(req.getQueryString());
        String type = queryStrings.get("type");
        if ("register".equals(type)) {
            RequestDispatcher requestDispatcher = req.getRequestDispatcher("./register.html");
            requestDispatcher.forward(req, res);
        } else if ("login".equals(type)) {
            RequestDispatcher requestDispatcher = req.getRequestDispatcher("./login.html");
            requestDispatcher.forward(req, res);
        } else {
            res.setStatus(400);
        }
    }
}
