<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
	
<html> 
	<style>
		
                .topnav {
                		overflow: hidden;
                		background-color: #333;
                }

                .topnav a {
                			float: right;
               			    color: white;
                			text-align: center;
                			padding: 14px 16px;
                			text-decoration: none;
                			font-size: 25px;
							font-family: "Architects Daughter";
                }
		
		 		.topnav a.active {
                					background-color: #4CAF50;
                }

                .topnav a:hover {
               					 background-color: #ddd;
                				 color: black;
                }

               
                section{
						background-image: url("background1.jpg");
						background-position: center; 
 						background-size:cover; 
  						background-repeat: no-repeat; 
  						height: 100%;
  						position: relative; 
                }

                h2{
					font-weight:bold;
				}

                body{
					background-image: url("texture.jpg");
					background-position: center; 
 					background-size:cover; 
  					background-repeat: no-repeat; 
  					height: 100%;
  					position: relative; 
				}
		
		
				/* Architects Daughter  Font Codes */
				/* latin */
				@font-face {
				  font-family: 'Architects Daughter';
				  font-style: normal;
				  font-weight: 400;
				  src: local('Architects Daughter Regular'), local('ArchitectsDaughter-Regular'), url(https://fonts.gstatic.com/s/architectsdaughter/v9/KtkxAKiDZI_td1Lkx62xHZHDtgO_Y-bvTYlg4w.woff2) format('woff2');
				  unicode-range: U+0000-00FF, U+0131, U+0152-0153, U+02BB-02BC, U+02C6, U+02DA, U+02DC, U+2000-206F, U+2074, U+20AC, U+2122, U+2191, U+2193, U+2212, U+2215, U+FEFF, U+FFFD;
				}
		
            </style>
	
	
	<head>
                <title>Wok N' Roll - Menu List</title>
    </head>
	
	
<body>
	
	
	 <div class="topnav">
                    <a href="index.html">Wok N' Roll Home</a>
                    <a href="menu.xml">Menu List</a>
                    <a href="#main">Main Course</a>
                    <a href="#dessert">Desserts</a>
                    <a href="#salad">Salads</a>
                    <a href="#drink">Drinks</a>
	 </div>
	
	
	
	 <section id="main">
		 
                <h2 style="text-align:center; font-family: Avant Garde,Avantgarde,Century Gothic,CenturyGothic,AppleGothic,sans-serif;">Main Course</h2>
		 
                <h3 style="text-align:center; font-family: Avant Garde,Avantgarde,Century Gothic,CenturyGothic,AppleGothic,sans-serif;">Choose your meal!</h3>
		 
                <xsl:for-each select="restaurant_menu/main_course/item">
					
                <div style="background-color:#FF0000;color:white;padding:4px; text-align:center">
                    <span style="font-weight:bold; font-family: Avant Garde,Avantgarde,Century Gothic,CenturyGothic,AppleGothic,sans-serif;"><xsl:value-of select="main_course_name"/> - </span>
                    <xsl:value-of select="main_course_price"/>
                </div>
					
                <div style="margin-left:20px;margin-bottom:1em;font-size:10pt">
                    <p style="font-style:italic; font-weight:bold; text-align:center; font-family: Avant Garde,Avantgarde,Century Gothic,CenturyGothic,AppleGothic,sans-serif;">
                        <xsl:value-of select="main_course_description"/>
                        
                    </p>
                </div>
					
					 </xsl:for-each>
		 
                </section>
	
	<br>
	</br>
	
	 <section id="dessert">
		 
                    <h2 style="text-align:center; font-family: Avant Garde,Avantgarde,Century Gothic,CenturyGothic,AppleGothic,sans-serif;">Desserts</h2>
		 
                    <h3 style="text-align:center; font-family: Avant Garde,Avantgarde,Century Gothic,CenturyGothic,AppleGothic,sans-serif;">Made with love!</h3>
		 
                    <xsl:for-each select="restaurant_menu/desserts/item">
                        <div style="background-color:#C41FDE;color:white;padding:4px; text-align:center">
                            <span style="font-weight:bold; font-family: Avant Garde,Avantgarde,Century Gothic,CenturyGothic,AppleGothic,sans-serif;"><xsl:value-of select="dessert_name"/> - </span>
                            <xsl:value-of select="dessert_price"/>
                        </div>
						
                        <div style="margin-left:20px;margin-bottom:1em;font-size:10pt">
                            <p style="font-style:italic; font-weight:bold; text-align:center; font-family: Avant Garde,Avantgarde,Century Gothic,CenturyGothic,AppleGothic,sans-serif;">
                                <xsl:value-of select="dessert_description"/>
                            </p>
                        </div>
						
                    </xsl:for-each>
		 
                </section>
	
	<br>
	</br>
	
	 <section id="salad">
		 
                <h2 style="text-align:center; font-family: Avant Garde,Avantgarde,Century Gothic,CenturyGothic,AppleGothic,sans-serif;">Salads</h2>
		 
                <h3 style="text-align:center; font-family: Avant Garde,Avantgarde,Century Gothic,CenturyGothic,AppleGothic,sans-serif;">Spice up your salad game!</h3>
		 
                <xsl:for-each select="restaurant_menu/salads/item">
					
                <div style="background-color:#000000;color:white;padding:4px; text-align:center">
                    <span style="font-weight:bold; font-family: Avant Garde,Avantgarde,Century Gothic,CenturyGothic,AppleGothic,sans-serif;"><xsl:value-of select="salads_name"/> - </span>
                    <xsl:value-of select="salads_price"/>
                </div>
					
                <div style="margin-left:20px;margin-bottom:1em;font-size:10pt">
                    <p style="font-style:italic; font-weight:bold; text-align:center; font-family: Avant Garde,Avantgarde,Century Gothic,CenturyGothic,AppleGothic,sans-serif;">
                        <xsl:value-of select="salads_description"/>
                    </p>
                </div>
					
					 </xsl:for-each>
		 
                </section>
	
	
	<br>
	</br>
	
	
	
	 <section id="drink">
		 
                <h2 style="text-align:center; font-family: Avant Garde,Avantgarde,Century Gothic,CenturyGothic,AppleGothic,sans-serif;">Drinks</h2>
		 
                <h3 style="text-align:center; font-family: Avant Garde,Avantgarde,Century Gothic,CenturyGothic,AppleGothic,sans-serif;">Choose your potion!</h3>
		 
                <xsl:for-each select="restaurant_menu/drinks/item">
					
                <div style="background-color:#94090D;color:white;padding:4px; text-align:center;">
                    <span style="font-weight:bold; font-family: Avant Garde,Avantgarde,Century Gothic,CenturyGothic,AppleGothic,sans-serif;"><xsl:value-of select="drinks_name"/> - </span>
                    <xsl:value-of select="drinks_price"/>
                </div>
					
                <div style="margin-left:20px;margin-bottom:1em;font-size:10pt">
                    <p style="font-style:italic; font-weight:bold; text-align:center; font-family: Avant Garde,Avantgarde,Century Gothic,CenturyGothic,AppleGothic,sans-serif;">
                        <xsl:value-of select="drinks_description"/>
                    </p>
                </div>
					
					 </xsl:for-each>
		 
                </section>
	
	<br>
	</br>
	
     
	
</body>
</html>
	
</xsl:template>
</xsl:stylesheet>

