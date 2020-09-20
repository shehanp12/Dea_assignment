import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "Post_ad")
@MultipartConfig(maxFileSize = 16177215)
public class Post_ad extends HttpServlet {
    //database connection
    private String url = "jdbc:mysql://localhost:3306/DB";
    private String user = "root";
    private String pass = "";
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            //get values
            String pcategory = request.getParameter("category");
            String ptitle = request.getParameter("title");
            String pdescription = request.getParameter("discription");
            String pname = request.getParameter("name");
            int pphone = Integer.parseInt(request.getParameter("phone"));
            String pemail = request.getParameter("email");
            //photo
            InputStream inputStream = null;
            Part filePart = request.getPart("photo");
            //obtain input stream of the photo
            inputStream = filePart.getInputStream();
            // connection to the Db
            Connection conn = null;
            DriverManager.registerDriver(new com.mysql.jdbc.Driver());
            conn = DriverManager.getConnection(url,user,pass);
            //sql statments
            String sql = "INSERT INTO ad_details (category, title, description, photo, name, phone, email) values (? , ? , ? , ? , ? , ? , ?)";
            PreparedStatement statement = conn.prepareStatement(sql);
            statement.setString(1, pcategory);
            statement.setString(2, ptitle);
            statement.setString(3, pdescription);
            statement.setString(5, pname);
            statement.setInt(6, pphone);
            statement.setString(7, pemail);

            if(inputStream != null)
            {
                statement.setBlob(4, inputStream);
            }
            statement.executeUpdate();
            statement.close();
            conn.close();
        } catch (SQLException ex) {
            Logger.getLogger(Post_ad.class.getName()).log(Level.SEVERE, null, ex);
        }
        }



    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
