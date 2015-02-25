<html>

<head>
    <title>CS480 Demo Web Service</title>
    <script src="//code.jquery.com/jquery-1.11.0.min.js"></script>    
    <script src="/js/home-control.js"></script>
</head>

<body>    
    
    <div>
        This is a simple page to demonstrate the web UI development. 
        The key tools and techniques used include:
        <ul>
            <li>HTML - Obviously</li>
            <li><a href="http://freemarker.org/">FreeMarker</a></li>
            <li><a href="http://jquery.com/">JQuery</a></li>
            <li><a href="http://api.jquery.com/jquery.ajax/">JQuery - AJAX</a></li>
        </ul>
    </div>

    <hr>

    <div>
        <div>
            <label>Recipe List</label>
            <table border="1">            
                <tr>
                    <td>title</td>
                    <td>directions</td> 
                    <td>ingredients</td>
                </tr>
                <#list recipes as recipe>
                        <tr>
                            <td>${recipe.title}</td>
                            <td>${recipe.directions}</td>
                            <td>${recipe.ingredients}</td>
                        </tr>
                </#list>
            </table>
        </div>
        
        <hr>
        
        <div>
            <label>Add Recipe</label>
            <table border="1">
                <tr>
                    <td>title</td>
                    <td>directions</td> 
                    <td>ingredients</td>                     
                    <td>Add</td>
                </tr>                
                <tr>
                    <td><input type="text" id="input_title"></td>
                    <td><input type="text" id="input_directions"></td>
                    <td><input type="text" id="input_ingredients"></td>                    
                    <td><button onclick="addUser()">Add</button></td>
                </tr>
            </table>
        </div>

        <hr>

        <div>
            <label>Query Recipe</label>
            <input type="text" id="query_id"><button onclick="getUser()">Get</button>
            <table border="1">
                <tr>
                    <td>title</td>
                    <td>directions</td>
                    <td>ingredients</td>
                </tr>
                <tr>
                    <td><label id="result_title"></td>
                    <td><label id="result_directions"></td>
                    <td><label id="result_ingredients"></td>
                </tr>
            </table>
        </div>
    </div>
    
    
</body>

</html>