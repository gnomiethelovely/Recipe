package edu.cpp.cs.seniorproject.Recipe.data;

import java.util.List;

/*
 * This class will define what a recipe is.
 * - ingredients 
 * - title
 * - directions
 */

public class Recipe {
	private String title;
	private List<String> directions;
	private List<String> ingredients;
	
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public List<String> getDirections() {
		return directions;
	}
	public void setDirections(List<String> directions) {
		this.directions = directions;
	}
	
	//maybe make ingredients a list? 
	public List<String> getIngredients() {
		return ingredients;
	}
	public void setIngredients(List<String> ingredients) {
		this.ingredients = ingredients;
	}
}
