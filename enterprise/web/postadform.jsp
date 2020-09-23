<%--
  Created by IntelliJ IDEA.
  User: binur
  Date: 9/23/2020
  Time: 1:52 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>postad</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

    <link href="css/slider.css" rel="stylesheet" type="text/css" media="all"/>
    <script type="text/javascript" src="js/jquery-1.7.2.min.js"></script>
    <script type="text/javascript" src="js/move-top.js"></script>
    <script type="text/javascript" src="js/easing.js"></script>
    <script type="text/javascript" src="js/startstop-slider.js"></script>
    <link href="css/post.css" rel="stylesheet" type="text/css" media="all"/>
</head>
<body>
<div class="wrap">
    <div class="header">
        <div class="headertop_desc">
            <div class="call">
                <p><span>Need help?</span> call us <span class="number">+94778342720&nbsp;</span></p>
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
                <a href="index.html"><img src="images/logo.png" alt="" />		  </a>



            </div>
            <script type="text/javascript">




            </script>
            <div class="clear"></div>
        </div>
        <div class="header_bottom">
            <div class="menu">
                <ul>
                    <li class="active"><a href="index.html">Home</a></li>
                    <li><a href="about.html">About</a></li>
                    <li><a href="delivery.html">Delivery</a></li>
                    <li><a href="news.html">News</a></li>
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
        <div class="col-md-6">
            <div class="header_slide">
                <div class="submit-ad main-grid-border">
                    <div class="container">
                        <h2 class="w3-head" style="color:#0099CC;" >Post an Ad</h2>
                        <div class="post-ad-form">
                            <form action="postad.jsp" method="POST">
                                <label>Select Category <span>*</span></label>
                                <select class="" id="category" name="sCategory">
                                    <option>Select Category</option>
                                    <option>Mobiles</option>
                                    <option>Electronics and Appliances</option>
                                    <option>Cars</option>
                                    <option>Bikes</option>
                                    <option>Furniture</option>
                                    <option>Pets</option>
                                    <option>Books, Sports and hobbies</option>
                                    <option>Fashion</option>
                                    <option>Kids</option>
                                    <option>Services</option>
                                    <option>Real, Estate</option>
                                </select>
                                <div class="clearfix"></div>
                                <label>Ad Title <span>*</span></label>
                                <input type="text" class="phone" placeholder="" name="title">
                                <div class="clearfix"></div>
                                <label>Ad Description <span>*</span></label>
                                <textarea class="mess" placeholder="Write few lines about your product" name="description"></textarea>
                                <div class="clearfix"></div>
                                <div class="upload-ad-photos">
                                    <label>Photos for your ad :</label>








                                    <input style="color: #B30D10;" id="file-input" type="file" multiple name="photo">

                                    <div id="preview"></div>

                                    <br>
                                </div>
                                <div class="personal-details">

                                    <label>Your Name <span>*</span></label>
                                    <input type="text" class="name" placeholder="" name="name">

                                    <label>Your Mobile No <span>*</span></label>
                                    <input type="text" class="phone" placeholder="" name="phone">

                                    <label>Your Email Address<span>*</span></label>
                                    <input type="text" class="email" placeholder="" name="email">

                                    <input type="submit" value="Post">
                                </div>
                            </form>
                        </div>






                        <!-- // Submit Ad -->


                        <div class="clear"></div>
                    </div>
                </div><br><br>

                <div class="clear"></div>
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
                        <h4>ABout us</h4>
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
                            <li><a href="index.html">View Cart</a></li>
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
                                <li><a href="#" target="_blank"><img src="images/facebook.png" alt="" /></a></li>
                                <li><a href="#" target="_blank"><img src="images/twitter.png" alt="" /></a></li>
                                <li><a href="#" target="_blank"><img src="images/skype.png" alt="" /> </a></li>
                                <li><a href="#" target="_blank"> <img src="images/dribbble.png" alt="" /></a></li>
                                <li><a href="#" target="_blank"> <img src="images/linkedin.png" alt="" /></a></li>
                                <div class="clear"></div>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <div class="copy_right">
                <p>&copy; 2020 home_shoppe. All rights reserved | Design by Codeboys&nbsp; <a href="">&nbsp;</a></p>
            </div>
        </div>
        <script type="text/javascript">
            $(document).ready(function() {
                $().UItoTop({ easingType: 'easeOutQuart' });

            });

            function previewImages() {

                var preview = document.querySelector('#preview');

                if (this.files) {
                    [].forEach.call(this.files, readAndPreview);
                }

                function readAndPreview(file) {

                    // Make sure `file.name` matches our extensions criteria
                    if (!/\.(jpe?g|png|gif)$/i.test(file.name)) {
                        return alert(file.name + " is not an image");
                    } // else...

                    var reader = new FileReader();

                    reader.addEventListener("load", function() {
                        var image = new Image();
                        image.height = 100;
                        image.title  = file.name;
                        image.src    = this.result;
                        preview.appendChild(image);
                    });

                    reader.readAsDataURL(file);

                }

            }

            document.querySelector('#file-input').addEventListener("change", previewImages);
        </script>
        <a href="#" id="toTop"><span id="toTopHover"> </span></a>
    </div>
</div>
</body>
</html>
