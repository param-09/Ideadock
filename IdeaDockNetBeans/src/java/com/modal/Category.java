package com.modal;
import java.util.*;
public class Category {
	int category_id;
	String category_name;
	Set<SubCategory>categories=new HashSet<SubCategory>(0);
	public Set<SubCategory> getCategories() {
		return categories;
	}
	public void setCategories(Set<SubCategory> categories) {
		this.categories = categories;
	}
	public int getCategory_id() {
		return category_id;
	}
	public void setCategory_id(int category_id) {
		this.category_id = category_id;
	}
	public String getCategory_name() {
		return category_name;
	}
	public void setCategory_name(String category_name) {
		this.category_name = category_name;
	}
	
}
