
function healthCheck() {
	$.ajax(
			{
				type : "GET",
				url  : "/cs461/ping",
				data : {
				},
				success : function(result) {
					$('#status').text(result);
				},
				error: function (jqXHR, exception) {
					$('#status').text("Failed to get the status");
				}
			});
}

function addRecipe() {

	var title = $('#input_title').val();
	var directions = $('#input_directions').val();
	var ingredients = $('#input_ingredients').val();

	if (title) {
		$.ajax(
				{
					type : "POST",
					url  : "/cs461/recipe/" + title,
					data : {
						"directions" : directions,
						"ingredients" : ingredients
					},
					success : function(result) {
						location.reload();
					},
					error: function (jqXHR, exception) {
						alert("Failed to add the recipe. Please check the inputs.");
					}
				});
	} else {
		alert("Invalid title");
	}
}

function getRecipe(ingredient) {
	var ingredient = $('#query_ingredient').val();
	if (ingredient) {
		$.ajax(
				{
					type : "GET",
					url  : "/cs480/recipe/" + ingredient,
					data : {
					},
					success : function(result) {
						$('#result_title').text(result.title);
						$('#result_directions').text(result.directions);
						$('#result_ingredients').text(result.ingredients);
					},
					error: function (jqXHR, exception) {
						alert("Failed to get the recipe.");
					}
				});
	} else {
		alert("Invalid search");
	}
}