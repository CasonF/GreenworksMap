<html>
    <head>
        <!--
            Filename: OrlandoEcoMap.com
            Date of Creation: 27 Sep 2021
            Editor: Kashai Bingham
            Edited: 5 Nov 2021
            Version: 2.5.1
        -->
        
        <meta charset="utf-8" />
        <title>Eco-map - City of Orlando</title>

        <link href="stylesheets/ecomap_stylesheet.css" rel="stylesheet" />
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script>
            function Filter_Open() {
                document.getElementById("filter").style.display = "block";
            }
            function Filter_Close() {
                document.getElementById("filter").style.display = "none";
            }
        </script>
    </head>

    <body>
        <header>
            <a id="menu" href="">&#9776; Menu</a>
            <a id="logo" href="https://www.orlando.gov"><img src="icons/CityOfOrlando_logo.png" alt="City of Orlando logo"></a>
            <input id="search" type="text" placeholder="Find almost anything on our website">
            <input id="search_button" type="button" value="Search">
            <a id="mobile_search" href=""><img src="icons/search_icon.png"></a>
        </header>
        <!-- adds the mock header for the page including the CoO logo, a search field, and a menu -->

        <section>
            <div>
                <ul class="breadcrumb">
                    <li><a href="https://www.orlando.gov/Home">Home</a></li>
                    <li>Eco-map</li>
                </ul>
            </div>
            <!-- adds a static breadcrumb navigation to show the user the URL path taken to the current page -->

            <h1>Eco-map</h1>
            <a id="filter_settings" href="javascript:void(0);" onclick="Filter_Open();"><img src="icons/filter_icon.png" alt="Filter"></a>
            <!--solution found on StackOverflow: https://stackoverflow.com/questions/5003867/how-to-call-javascript-function-instead-of-href-in-html/5003904-->
        </section>
        <div id="filter">
                <form action="showFilter" name="filter" method="post">
                    <h2>Filter</h2><hr>
                    <div class="pillars">
                        <div class="options">
                            <input class="check" type="checkbox" name="pillar_name" value="CE"></input><label class="label">Clean Energy</label>
                        </div>
                        <div class="options">
                            <input class="check" type="checkbox" name="pillar_name" value="GB"></input><label class="label">Green Buildings</label>
                        </div>
                        <div class="options">
                            <input class="check" type="checkbox" name="pillar_name" value="LF"></input><label class="label">Local Food Systems</label>
                        </div>
                        <div class="options">
                            <input class="check" type="checkbox" name="pillar_name" value="LV"></input><label class="label">Livability</label>
                        </div>
                        <div class="options">
                            <input class="check" type="checkbox" name="pillar_name" value="ZW"></input><label class="label">Zero Waste</label>
                        </div>
                        <div class="options">
                            <input class="check" type="checkbox" name="pillar_name" value="CW"></input><label class="label">Clean Water</label>
                        </div>
                        <div class="options">
                            <input class="check" type="checkbox" name="pillar_name" value="EA"></input><label class="label">Electic & Alt. Transportation</label>
                        </div>
                    </div>
                    <hr>
                    <div class="action_controls">
                        <button id="uncheck" type="reset" onclick="Filter_Close()">Close</button>
                        <input type="submit" value="Save"></input>
                    </div>
        
                </form>
        </div>
        <div id="map"></div> 
        <!--sets the parameters for the Google Maps API embed -->

        <script	async defer
            src="https://maps.googleapis.com/maps/api/js?key=AIzaSyD9nc7U6UPDjbOZUwgTn1pdDxBqX49zjI4&callback=init"
        ></script>
        <!--script renders the map under the breadcrumb nav --> 
        <script src="scripts/mapEmbed.js"></script> <!--references the init callback to the mapEmbed js file -->
        
        
        
        <div>
            <footer>
                <div id="left">
                  <a href="https://www.orlando.gov/System-pages/Website-Legal-Notices">Website Legal Notice</a>  | 
                  <a href="https://www.orlando.gov/General-Pages/Sitemap">Sitemap</a> | 
                  <a href="https://www.orlando.gov/Our-Government/News-and-Information/City-Official-Assets">The City Beautiful</a>
                </div>
                <div id="right">
                 &copy; 2021 City of Orlando | 
                Powered by <a href="http://www.opencities.com/">OpenCities</a>
                </div>                           
              </footer>
        </div>
        <!-- simulates the footer as shown on the real CoO site -->
    </body>
</html>