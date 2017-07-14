package com.niit.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@Entity
public class Product 
{
@Id
@GeneratedValue(strategy=GenerationType.AUTO)
private int Id;
private String productName;

@ManyToOne

@JoinColumn(name="cid")
private Category category;

public Category getCategory() {
	return category;
}
public void setCategory(Category category) {
	this.category = category;
}
public int getId() {
	return Id;
}
public void setId(int id) {
	Id = id;
}
public String getProductName() {
	return productName;
}
public void setProductName(String productName) {
	this.productName = productName;
}
public int getPrice() {
	return price;
}
public void setPrice(int price) {
	this.price = price;
}
public int getQuantity() {
	return quantity;
}
public void setQuantity(int quantity) {
	this.quantity = quantity;
}
public String getDescription() {
	return description;
}
public void setDescription(String description) {
	this.description = description;
}
private int price;
private int quantity;
private String description;

}
