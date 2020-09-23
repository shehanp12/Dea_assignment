/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package newpackage;
import com.mongodb.*;
import com.mongodb.client.FindIterable;
import com.mongodb.client.MongoCollection;
import com.mongodb.client.MongoCursor;
import com.mongodb.client.MongoDatabase;
import org.bson.BSONObject;
import org.bson.Document;
import org.bson.types.ObjectId;

import javax.json.JsonObject;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/**
 *
 * @author binura
 */
public class mongoDb{

    private DBCollection col;
    public static int save(Ad u) {

        MongoClientURI uri = new MongoClientURI(
                "mongodb+srv://Admin:admin@cluster0-eedvx.mongodb.net/testDataBase?retryWrites=true&w=majority");

        MongoClient mongoClient = new MongoClient(uri);
        MongoDatabase database = mongoClient.getDatabase("testDataBase");

        // Retrieving a collection
        MongoCollection<Document> collection = database.getCollection("testCollection");

//        newpackage.userController userController1 = new userController();

//            DBObject doc = userController.toDBObject(u);

//            ObjectId id = (ObjectId) doc.get("_id");
//            u.setId(Integer.parseInt(id.toString()));

        System.out.println("Document inserted successfully");

        System.out.println("Collection sampleCollection selected successfully");
//        collection.insertOne((Document) userController.toDBObject(user));
        // Sample document.
        Document emp1 = new Document();
        emp1.put("name", ad.getName());
        emp1.put("phone", ad.getMobile());
        emp1.put("email", ad.getEmail());
        emp1.put("file", ad.getFile());
        emp1.put("title", ad.getTitle());
        emp1.put("description", ad.getDescription());
        emp1.put("sCategory", ad.getCategory());

        collection.insertOne(emp1);
      //  DBObject doc = userController.toDBObject(user);
//        this.col.insert(doc);
//        ObjectId id = (ObjectId) doc.get("_id");
//        p.setId(id.toString());

//        collection.insertOne((Document) doc);
        // Getting the iterable object
//        FindIterable<Document> iterDoc = collection.find();
//        int i = 1;
//        // Getting the iterator
//        Iterator it = iterDoc.iterator();
//        while (it.hasNext()) {
//            System.out.println(it.next());
//            i++;
//        }



        return 200;
    }
    public static Ad retive(){
        Ad ad1 = new Ad();
        MongoClientURI uri = new MongoClientURI(
                "mongodb+srv://Admin:admin@cluster0-eedvx.mongodb.net/testDataBase?retryWrites=true&w=majority");

        MongoClient mongoClient = new MongoClient(uri);
        MongoDatabase database = mongoClient.getDatabase("testDataBase");

        // Retrieving a collection
        MongoCollection<Document> collection = database.getCollection("testCollection");


        int i = 1;
        // Getting the iterator

        MongoCursor<Document> cursor = collection.find().iterator();
        try {
            while (cursor.hasNext()) {
                System.out.println(cursor.next().toJson());

userController.toPerson(cursor.next());



            }
        } finally {
            cursor.close();
        }



        return ad1;
    }
    public static int news(News u) throws UnsupportedEncodingException {
        MongoClientURI uri = new MongoClientURI(
                "mongodb+srv://Admin:admin@cluster0-eedvx.mongodb.net/testDataBase?retryWrites=true&w=majority");

        MongoClient mongoClient = new MongoClient(uri);
        MongoDatabase database = mongoClient.getDatabase("testDataBase");

        // Retrieving a collection
        MongoCollection<Document> collection = database.getCollection("news");



//            DBObject doc = userController.toDBObject(u);

//            ObjectId id = (ObjectId) doc.get("_id");
//            u.setId(Integer.parseInt(id.toString()));

        System.out.println("Document inserted successfully");

        System.out.println("Collection sampleCollection selected successfully");
//        collection.insertOne((Document) userController.toDBObject(user));
        // Sample document.
        Document emp2 = new Document();
        emp2.put("title", u.getTitle());
        emp2.put("description", u.getDescription());

//        byte[] encodedBytes = Base64.getEncoder().encode((byte[]) u.getFile());
////        byte[] encodeBase64 = Base64.encodeBase64(u.getFile());
//        String base64DataString = new String(encodedBytes , "UTF-8");
//        emp1.put("photo",base64DataString);

        collection.insertOne(emp2);
        return 200;
    }


}
