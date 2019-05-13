<%-- 
    Document   : About
    Created on : May 30, 2017, 12:34:32 PM
    Author     : Gopani Mukesh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>PLACEMENT MANAGEMENT</title>
        <!--css-->
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all"/>
        <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
        <link href="css/font-awesome.css" rel="stylesheet">
        <!--css-->
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="keywords" content="New Shop Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
              Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
        <script src="js/jquery.min.js"></script>
        <link href='//fonts.googleapis.com/css?family=Cagliostro' rel='stylesheet' type='text/css'>
        <link href='//fonts.googleapis.com/css?family=Open+Sans:400,800italic,800,700italic,700,600italic,600,400italic,300italic,300' rel='stylesheet' type='text/css'>

        <!--mycart-->
        <script type="text/javascript" src="js/bootstrap-3.1.1.min.js"></script>
        <!-- cart -->
        <script src="js/simpleCart.min.js"></script>
        <!-- cart -->
        <!--start-rate-->
        <script src="js/jstarbox.js"></script>
        <link rel="stylesheet" href="css/jstarbox.css" type="text/css" media="screen" charset="utf-8" />
        <script type="text/javascript">

        </script>

        <style>
            h1 {
                text-align:center;
                font-size: 28px;
                font-family: 'Lobster', cursive;
            }

            body
            {
                font-family: 'Open Sans', sans-serif;
            }

            .fb-profile img.fb-image-lg{
                z-index: 0;
                width: 100%;  
                margin-bottom: 10px;
            }

            .fb-image-profile
            {
                margin: -90px 10px 20px 80px;
                z-index: 9;
                width: 20%; 
            }
            /* Tabs panel */
            .tabbable-panel {
                border:1px solid #eee;
                padding: 10px;
            }

            /* Default mode */
            .tabbable-line > .nav-tabs {
                border: none;
                margin: 0px;
            }
            .tabbable-line > .nav-tabs > li {
                margin-right: 2px;
            }
            .tabbable-line > .nav-tabs > li > a {
                border: 0;
                margin-right: 0;
                color: #737373;
            }
            .tabbable-line > .nav-tabs > li > a > i {
                color: #a6a6a6;
            }
            .tabbable-line > .nav-tabs > li.open, .tabbable-line > .nav-tabs > li:hover {
                border-bottom: 4px solid #fbcdcf;
            }
            .tabbable-line > .nav-tabs > li.open > a, .tabbable-line > .nav-tabs > li:hover > a {
                border: 0;
                background: none !important;
                color: #333333;
            }
            .tabbable-line > .nav-tabs > li.open > a > i, .tabbable-line > .nav-tabs > li:hover > a > i {
                color: #a6a6a6;
            }
            .tabbable-line > .nav-tabs > li.open .dropdown-menu, .tabbable-line > .nav-tabs > li:hover .dropdown-menu {
                margin-top: 0px;
            }
            .tabbable-line > .nav-tabs > li.active {
                border-bottom: 4px solid #f3565d;
                position: relative;
            }
            .tabbable-line > .nav-tabs > li.active > a {
                border: 0 !important;
                color: #333333;
            }
            .tabbable-line > .nav-tabs > li.active > a > i {
                color: #404040;
            }
            .tabbable-line > .tab-content {
                margin-top: -3px;
                background-color: #fff;
                border: 0;
                border-top: 1px solid #eee;
                padding: 15px 0;
            }
            .portlet .tabbable-line > .tab-content {
                padding-bottom: 0;
            }

            /* Below tabs mode */

            .tabbable-line.tabs-below > .nav-tabs > li {
                border-top: 4px solid transparent;
            }
            .tabbable-line.tabs-below > .nav-tabs > li > a {
                margin-top: 0;
            }
            .tabbable-line.tabs-below > .nav-tabs > li:hover {
                border-bottom: 0;
                border-top: 4px solid #fbcdcf;
            }
            .tabbable-line.tabs-below > .nav-tabs > li.active {
                margin-bottom: -2px;
                border-bottom: 0;
                border-top: 4px solid #f3565d;
            }
            .tabbable-line.tabs-below > .tab-content {
                margin-top: -10px;
                border-top: 0;
                border-bottom: 1px solid #eee;
                padding-bottom: 15px;
            }

            .menu_title {
                padding: 15px 10px;
                border-bottom: 1px solid #eee;
                margin: 0 5px;
            }


            @media (max-width:768px){

                .fb-profile-text>h1{
                    font-weight: 700;
                    font-size:16px;
                }

                .fb-image-profile
                {
                    margin: -45px 10px 0px 25px;
                    z-index: 9;
                    width: 20%; 
                }
            }

        </style>


    <body>
        <!--header-->
        <div class="heder-bottom">
            <div class="container">
                <div class="logo-nav">
                    <div class="logo-nav-left">
                        <h1><a href="index.html">Gujarat vidhyapith <span>Computer Department</span></a></h1>
                    </div>
                    <div class="logo-nav-left1">
                        <nav class="navbar navbar-default">
                            <div class="collapse navbar-collapse" id="bs-megadropdown-tabs">
                                <ul class="nav navbar-nav">
                                    <li class="active"><a href="index.html" class="act">Home</a></li>	
                                    <li class="dropdown">
                                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Registration<b class="caret"></b></a>
                                        <ul class="dropdown-menu multi-column columns-2">
                                            <div class="cols">
                                                <div class="col-sm-12  multi-gd-img">
                                                    <ul class="multi-column-dropdown">
                                                        <h6>Registration Form</h6>
                                                        <li><a href="StudentRegi.jsp">Student</a></li>
                                                        <li><a href="CompanyRegi.jsp">Compnay</a></li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </ul>
                                    </li>
                                    <li><a href="Contact.jsp">Contact</a></li>
                                    <li><a href="About.jsp">About Us</a></li>
                                    <li><a href="Login.jsp">Login</a></li>
                                </ul>
                            </div>
                        </nav>
                    </div>
                    <div class="clearfix"> </div>
                </div>
            </div>
        </div>

        <div class="container-fluid">
            <div class="row">
                <div class="fb-profile">
                    <img align="left" class="fb-image-lg" src="Img/GujaratVidhyapith.jpg" alt="GujaratVidhyapith.jpg">
                    <img align="left" class="fb-image-profile thumbnail" src="Img/Gvplogo.png" alt="Profile image example"/>
                    <div class="fb-profile-text">
                        <h1>Gujarat Vidhyapith<br>Ahmedabad</h1><br>
                        <h5>  
                            Nr. Income Tax Office, Ashram Road,<br>
                            Ahmedabad - 380 014<br>
                            Phone: 079-27541148, 079-27540746<br>
                            Fax: 279-27542547<br>
                        </h5>

                    </div>
                </div>
            </div>
        </div> <!-- /container fluid-->  
        <div class="container">
            <div class="col-sm-8">

                <div data-spy="scroll" class="tabbable-panel">
                    <div class="tabbable-line">
                        <ul class="nav nav-tabs ">
                            <li class="active">
                                <a href="#tab_default_1" data-toggle="tab">
                                    History </a>
                            </li>
                            <li>
                                <a href="#tab_default_2" data-toggle="tab">
                                    Colleges</a>
                            </li>
                            <li>
                                <a href="#tab_default_3" data-toggle="tab">
                                    Department</a>
                            </li>
                        </ul>
                        <div class="tab-content">
                            <div class="tab-pane active" id="tab_default_1">

                                <br><p>
                                    The university was founded on Octomber 18, 1920 as a 'Rashtriya Vidyapith' ('National University') by Mahatma Gandhi, who would serve throughout his life as the kulpati (chancellor).<br>                                    
                                </p><br>
                                <p>
                                    The Gujarat Vidyapith became a 'deemed university' in 1963. It is funded and governed by the University Grants Commission, under the Union Ministry for Human Resources Development in New Delhi. Although considerably modernized in its structure and curriculum, the university maintains its commitment to Gandhian ideals, human studies, social service and development work.
                                </p><br>
                            </div>

                            <div class="tab-pane" id="tab_default_2"><br>
                                <p>The colleges and institutions affiliated with the university are</p><br>
                                <p>1. Veer Orphanage (internationally reputed)</p><br>
                                <p>2. Shikshan Mahavidyalaya (College of Education), Ahmedabad</p><br>
                                <p>3. Hindi Teacher Training College, Ahmedabad</p><br>
                                <p>4. Mahadevbhai Desai Gramseva Mahavidyalaya, Radheja</p><br>
                                <p>5. Mahadevbhai Desai Gramseva Mahavidyalaya (College), Sadara</p><br>
                                <p>7. Mahadevbhai Desai Sharirik Shikshan Mahavidyalaya (College of Physical Education), Sadara</p><br>
                                <p>8. Center for Rural Management, Randheja</p>
                            </div>


                            <div class="tab-pane" id="tab_default_3"><br>
                                <p>1. Department of History and Culture (offers full-time courses: M.A., M. Phil and Ph.D.)</p><br>
                                <p>2. Tribal Research & Training Institute (TRTI)</p><br>
                                <p>3. Hindi Prachar Samiti (Hindi Bhavan)</p><br>
                                <p>4. Bharatiya Bhasha Sanskruti Kendra</p><br>
                                <p>5. Jamnalal Bajaj Institute of Studies in Ahimsa (Peace Research Institute)</p><br>
                                <p>7. Department of Adult and Continuing Education & Extension Work including Population Education</p><br>
                                <p>8. State Resource Centre (SRC) for Adult & Continuing Education including Population Education</p><br>
                                <p>9. Gujarat Vidyapith Library (Gandhi Bhavan)</p><br>
                                <p>10. Publication Department</p><br>
                                <p>11. Rural Service Extension Centre</p><br>
                                <p>12. Krishi Vigyan Kendras</p><br>
                                <p>13. P.G. Center for Studies in Rural Management at village Randheja</p><br>
                                <p>14. Centre for Bio-gas Research Education & Extension at Sadra</p><br>
                                <p>15. Instrumentation Centre at village Sadra (Level-I) and Mobile Vocational Training Centre</p><br>
                                <p>16. Late Jankidevi Bajaj Centre for Naturopathy, Randheja</p><br>
                                <p>17. Bio Gas Research Center, Sadra [offers M.Phil., M.Sc. (2 years), B.Sc. (3 years) in Microbiology]</p><br>
                                <p>18. Panchayati Raj Talim Kendra</p><br>
                                <p>19. Computer Science Department [offers two full-time courses: MCA (3 years) and PGDCA (1 year)]</p><br>


                            </div>
                        </div>
                    </div>
                </div>

            </div>
            <div class="col-sm-4">
                <div class="panel panel-default">
                    <div class="menu_title">
                        Gujarat Vidhyapith
                    </div>
                    <div class="panel-body">
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="form-group">
                                    <label for="email">Place:</label>
                                    <p> Ahmedabad</p>
                                </div>
                                <div class="form-group">
                                    <label for="email">University Founded:</label>
                                    <p> October 18, 1920 </p>
                                </div>
                                <div class="form-group">
                                    <label for="email">First kulpati (chancellor):</label>
                                    <p>  Mahatma Gandhi</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
