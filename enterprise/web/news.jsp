<%--
  Created by IntelliJ IDEA.
  User: binur
  Date: 9/23/2020
  Time: 10:44 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>News</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link href="css/style.css" rel="stylesheet" type="text/css" media="all"/>
    <script type="text/javascript" src="js/jquery-1.7.2.min.js"></script>
    <script type="text/javascript" src="js/move-top.js"></script>
    <script type="text/javascript" src="js/easing.js"></script>
</head>
<body>
<jsp:useBean id="news" class="newpackage.News" ></jsp:useBean>
<jsp:setProperty property="*" name="news"/>

<%@page import="newpackage.mongoDb"%>
<%@ page import="com.mongodb.client.MongoCursor" %>
<%@ page import="com.mongodb.MongoClientURI" %>
<%@ page import="com.mongodb.MongoClient" %>
<%@ page import="com.mongodb.client.MongoDatabase" %>
<%@ page import="org.bson.Document" %>
<%@ page import="com.mongodb.client.MongoCollection" %>
<%@ page import="newpackage.userController" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.Iterator" %>
<%@ page import="com.mongodb.client.FindIterable" %>


<%--<%--%>
<%--    try {--%>

<%--        ArrayList<Document> al = new ArrayList<Document>();--%>
<%--        MongoClientURI uri = new MongoClientURI(--%>
<%--                "mongodb+srv://Admin:admin@cluster0-eedvx.mongodb.net/testDataBase?retryWrites=true&w=majority");--%>

<%--        MongoClient mongoClient = new MongoClient(uri);--%>
<%--        MongoDatabase database = mongoClient.getDatabase("testDataBase");--%>

<%--        // Retrieving a collection--%>
<%--        MongoCollection<Document> collection = database.getCollection("news");--%>


<%--        int i = 1;--%>
<%--        // Getting the iterator--%>
<%--        FindIterable<Document> iterDoc = collection.find();--%>
<%--        Iterator it = iterDoc.iterator();--%>
<%--        while (it.hasNext()) {--%>
<%--            System.out.println(it.next());--%>
<%--            al.add((Document) it.next());--%>
<%--        }--%>
<%--        MongoCursor<Document> cursor = collection.find().iterator();--%>

<%--        while (cursor.hasNext()) {--%>
<%--            System.out.println(cursor.next().toJson());--%>
<%--//            al.add(cursor.next());--%>
<%--%>--%>

<%--<%--%>
<%--%>--%>
<%--<div class="grid_1_of_4 images_1_of_4">--%>
<%--    <a href="other/preview.html"><img src="images/new-pic3.jpg" alt="" /></a>--%>
<%--    <h2><%=cursor.next().get("name") %> </h2>--%>
<%--    <div class="price-details">--%>
<%--        <div class="price-number">--%>
<%--            <p><span class="rupees">&nbsp;</span></p>--%>
<%--        </div>--%>
<%--        <div class="add-cart">--%>
<%--            <h4><a href="">View more &nbsp;</a></h4>--%>
<%--        </div>--%>
<%--        <div class="clear"></div>--%>
<%--    </div>--%>
<%--</div>--%>


<%--<%--%>
<%--        }--%>


<%--    }catch (Exception e){--%>
<%--        e.printStackTrace();--%>
<%--    }--%>
<%--%>--%>
<div class="wrap">
    <div class="header">
        <div class="headertop_desc">
            <div class="call">
                <p><span>Need help?</span> call us <span class="number">1-22-3456789</span></p>
            </div>
            <div class="account_desc">
                <ul>
                    <li><a href="#">Register</a></li>
                    <li><a href="#">Login</a></li>
                    <li><a href="#">Delivery</a></li>
                    <li><a href="#">Checkout</a></li>
                    <li><a href="#">My Account</a></li>
                </ul>
            </div>
            <div class="clear"></div>
        </div>
        <div class="header_top">
            <div class="logo">
                <a href="../home.jsp"><img src="../images/logo.png" alt="" /></a>
            </div>
            <script type="text/javascript">
                function DropDown(el) {
                    this.dd = el;
                    this.initEvents();
                }
                DropDown.prototype = {
                    initEvents : function() {
                        var obj = this;

                        obj.dd.on('click', function(event){
                            $(this).toggleClass('active');
                            event.stopPropagation();
                        });
                    }
                }

                $(function() {

                    var dd = new DropDown( $('#dd') );

                    $(document).click(function() {
                        // all dropdowns
                        $('.wrapper-dropdown-2').removeClass('active');
                    });

                });

            </script>
            <div class="clear"></div>
        </div>
        <div class="header_bottom">
            <div class="menu">
                <ul>
                    <li><a href="../home.jsp">Home</a></li>
                    <li><a href="about.html">About</a></li>
                    <li><a href="delivery.html">Delivery</a></li>
                    <li  class="active"><a href="news.html">News</a></li>
                    <li><a href="contact.html">Contact</a></li>
                    <div class="clear"></div>
                </ul>
            </div>
            <div class="search_box">
                <form>
                    <input type="text" value="Search" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Search';}"><input type="submit" value="">
                </form>
            </div>
            <div class="clear"></div>
        </div>
    </div>
    <div class="main">
        <div class="content">



            <%
                try {

                    ArrayList<Document> arrayList = new ArrayList<Document>();
//


                    MongoClientURI uri = new MongoClientURI(
                            "mongodb+srv://Admin:admin@cluster0-eedvx.mongodb.net/testDataBase?retryWrites=true&w=majority");

                    MongoClient mongoClient = new MongoClient(uri);
                    MongoDatabase database = mongoClient.getDatabase("testDataBase");

                    // Retrieving a collection
                    MongoCollection<Document> collection = database.getCollection("news");


                    int i = 0;
                    // Getting the iterator

                    MongoCursor<Document> cursor = collection.find().iterator();

                    while (cursor.hasNext()) {

arrayList.add(cursor.next());

//                        al.add(cursor.next());
            %>

            <%
            %>

            <div class="image group">
                <div class="grid images_3_of_1">
                    <img src="images/newsimg1.jpg" alt="" />
                </div>

                <div class="grid news_desc">
<%--                    <h3>Welcome to ikman</h3>--%>

<%--                    <p>As founder of iknam, I believe it is important to explain my history, how this idea came about and what I intend to achieve with it. More than a declaration of principles, this article is about being open and establishing a precedent of transparency which will guide both the project and myself..--%>

<%--                        My name is Binura owin. I have a degree in Marketing and I have a postgraduate degree in Digital Marketing. In the professional field I have worked several jobs in the offline world before beginning my career in Digital Marketing in 2012. For more than 6 years I remained with the same company, Link to Media, the company I decided to leave to open Trustiu.During these 6 years I had the opportunity to lead several teams and help them grow in various markets. Link to Media projects now have more than 1 million visits per day and accumulate around 50 Million visits per month.--%>

<%--                        The fact that I've been connected to Link to Media since its inception has given me the chance to live and breathe almost every stage of a startup and this is where ikman comes in.--%>

<%--                        A few years ago Link to Media began to buy and sell some digital properties, from projects valued at one thousand euros to properties valued at several hundred thousand euros.--%>

<%--                        One of the main problems we consistently faced was the fact that there was no platform where these kind of assets --%>
<%--                        could be bought and sold. This task required many hours of manual work based on our network of contacts. --%>
<%--                        In addition, there were sometimes interactions with businesses where the help of an intermediary was critical,--%>
<%--                        both to us and to the other parties involved. This need was not unique LTM. As I talked to other people in the --%>
<%--                        market to sell Internet properties, I realized this was a more comprehensive problem. </p>--%>


                    <h3><%=arrayList.get(i).get("title")%> </h3>

                    <p><%=arrayList.get(i).get("description") %></p>

                </div>
            </div>

            <%
                        i++;
                    }


                }catch (Exception e){
                    e.printStackTrace();
                }
            %>


<%--            <div class="image group">--%>
<%--                <div class="grid images_3_of_1">--%>
<%--                    <img src="../images/newsimg2.jpg" alt="" />--%>
<%--                </div>--%>
<%--                <div class="grid news_desc">--%>
<%--                    <h3>Lorem Ipsum is simply dummy text </h3>--%>
<%--                    <h4>Posted on Aug 8th, 2013 by <span><a href="#">Finibus Bonorum</a></span></h4>--%>
<%--                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>--%>
<%--                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur <a href="#" title="more">[....]</a></p>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--            <div class="image group">--%>
<%--                <div class="grid images_3_of_1">--%>
<%--                    <img src="../images/newsimg3.jpg" alt="" />--%>
<%--                </div>--%>
<%--                <div class="grid news_desc">--%>
<%--                    <h3>Lorem Ipsum is simply dummy text </h3>--%>
<%--                    <h4>Posted on Aug 1st, 2013 by <span><a href="#">Finibus Bonorum</a></span></h4>--%>
<%--                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>--%>
<%--                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur <a href="#" title="more">[....]</a></p>--%>
<%--                </div>--%>
<%--            </div>--%>
            <div class="content-pagenation">
                <li><a href="#">Frist</a></li>
                <li class="active"><a href="#">1</a></li>
                <li><a href="#">2</a></li>
                <li><a href="#">3</a></li>
                <li><span>....</span></li>
                <li><a href="#">Last</a></li>
                <div class="clear"> </div>
            </div>
        </div>
    </div>
</div>
<div class="footer">
    <div class="wrap">
        <div class="section group">
            <div class="col_1_of_4 span_1_of_4">
                <h4>Information</h4>
                <ul>
                    <li><a href="about.html">About Us</a></li>
                    <li><a href="contact.html">Customer Service</a></li>
                    <li><a href="#">Advanced Search</a></li>
                    <li><a href="delivery.html">Orders and Returns</a></li>
                    <li><a href="contact.html">Contact Us</a></li>
                </ul>
            </div>
            <div class="col_1_of_4 span_1_of_4">
                <h4>Why buy from us</h4>
                <ul>
                    <li><a href="about.html">About Us</a></li>
                    <li><a href="contact.html">Customer Service</a></li>
                    <li><a href="#">Privacy Policy</a></li>
                    <li><a href="contact.html">Site Map</a></li>
                    <li><a href="#">Search Terms</a></li>
                </ul>
            </div>
            <div class="col_1_of_4 span_1_of_4">
                <h4>My account</h4>
                <ul>
                    <li><a href="contact.html">Sign In</a></li>
                    <li><a href="../home.jsp">View Cart</a></li>
                    <li><a href="#">My Wishlist</a></li>
                    <li><a href="#">Track My Order</a></li>
                    <li><a href="contact.html">Help</a></li>
                </ul>
            </div>
            <div class="col_1_of_4 span_1_of_4">
                <h4>Contact</h4>
                <ul>
                    <li><span>+91-123-456789</span></li>
                    <li><span>+00-123-000000</span></li>
                </ul>
                <div class="social-icons">
                    <h4>Follow Us</h4>
                    <ul>
                        <li><a href="#" target="_blank"><img src="../images/facebook.png" alt="" /></a></li>
                        <li><a href="#" target="_blank"><img src="../images/twitter.png" alt="" /></a></li>
                        <li><a href="#" target="_blank"><img src="../images/skype.png" alt="" /> </a></li>
                        <li><a href="#" target="_blank"> <img src="../images/dribbble.png" alt="" /></a></li>
                        <li><a href="#" target="_blank"> <img src="../images/linkedin.png" alt="" /></a></li>
                        <div class="clear"></div>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <div class="copy_right">
        <p>&copy; 2013 home_shoppe. All rights reserved | Design by <a href="http://w3layouts.com/">W3layouts</a></p>
    </div>
</div>
<script type="text/javascript">
    $(document).ready(function() {
        $().UItoTop({ easingType: 'easeOutQuart' });

    });
</script>
<a href="#" id="toTop"><span id="toTopHover"> </span></a>
</body>
</html>
