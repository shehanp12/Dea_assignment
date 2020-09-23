package newpackage;

import com.mongodb.BasicDBObjectBuilder;
import com.mongodb.DBObject;
import org.bson.Document;

import java.util.ArrayList;
import java.util.List;

public class userController {
    public static DBObject toDBObject(Ad ad) {

        BasicDBObjectBuilder builder = BasicDBObjectBuilder.start()
                .append("name", ad.getName())
                .append("mobile", ad.getMobile())
                .append("email",ad.getEmail())
                .append("sCategory",ad.getCategory())

                .append("photo",ad.getFile())
                .append("title",ad.getTitle())
                .append("description", ad.getDescription());


        return builder.get();
    }

    // convert DBObject Object to Person
    // take special note of converting ObjectId to String
    public static List toPerson(Document doc) {
        Ad ad = new Ad();
        ad.setName(String.valueOf(doc.get("name")));
        ad.setCategory(String.valueOf(doc.get("sCategory")));
        ad.setDescription(String.valueOf(doc.get("description")));
        ad.setFile(String.valueOf(doc.get("photo")));
        ad.setMobile(Integer.parseInt(String.valueOf(doc.get("mobile"))));
        ad.setTitle(String.valueOf(doc.get("title")));

        ad.setEmail(String.valueOf(doc.get("email")));

        Object id =  doc.get("id");
        List<Ad> userarray = new ArrayList<Ad>();


        return  userarray;

    }

}
