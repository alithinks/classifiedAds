<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>.: Classy Ads :.</title>

    <style>
        .wrapper
        {
            margin-top: 20px;
            margin-left: 50px;
        }
        .page-title
        {
            text: darkgrey;
        }
        .page
        {
        }
    </style>
</head>
<body>

    <header>
        <h1>This is header for the page, design will be focused later on.</h1>
    </header>

    <div id="wrapper" class="wrapper">
        <div id="page-title" class="page-title">
            <h3>Submit New Ad.</h3>
        </div>
        <div id="page" class="page">
            <form action="NewAd" method="post" enctype="multipart/form-data">
                <label for="ad_title">Ad Title</label>
                <input id="ad_title" type="text" name="ad_title">
                <br>
                <label for="ad_category">Category</label>
                <select id="ad_category" name="ad_category">
                    <option value="Mobiles & Tablets">Mobiles & Tablets</option>
                    <option value="Electronics & Computers">Electronics & Computers</option>
                    <option value="Vehicles">Vehicles</option>
                    <option value="Home & Furniture">Home & Furniture</option>
                    <option value="Animals">Animals</option>
                    <option value="Fashion & Beauty">Fashion & Beauty</option>
                    <option value="Kids & Baby Products">Kids & Baby Products</option>
                    <option value="Services">Services</option>
                    <option value="Jobs">Jobs</option>
                    <option value="Real Estate">Real Estate</option>
                </select>
                <br>
                <label for="ad_description">Description</label>
                <br>
                <textarea id="ad_description" name="ad_description" rows="30" cols="60"></textarea>
                <br>
                <div id="ad_image_upload">
                </div>
                <br>
                <button type="button" onclick="addUploader()">Upload image(s).</button>
                <br>
                <label for="ad_location">Location</label>
                <input id="ad_location" name="ad_location" type="text">
                <br>
                <hr>
                <br>
                <input type="submit" value="Submit">
            </form>
        </div>
    </div>

    <footer>
        <h5>This is footer, design will be focused later on.</h5>
    </footer>

    <script>
        var x = 1;
        function addUploader(){

            var ad_image_upload = document.getElementById("ad_image_upload");

            var imgnode = document.createElement("input");
            imgnode.setAttribute("id", "ad_image"+x);
            imgnode.setAttribute("name", "ad_image"+x);
            imgnode.setAttribute("type", "file");
            imgnode.setAttribute("accept", "image/jpeg")

            var brnode = document.createElement("br");

            ad_image_upload.appendChild(imgnode);
            ad_image_upload.appendChild(brnode);
        }
    </script>

</body>
</html>