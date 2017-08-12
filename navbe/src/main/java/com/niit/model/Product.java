package com.niit.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Transient;
import javax.validation.constraints.Min;

import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.web.multipart.MultipartFile;

@Entity
public class Product 
{
@Id
@GeneratedValue(strategy=GenerationType.AUTO)
private int id;
@NotEmpty(message="Required field needs to be filled")
private String productName;
@Min(value=50)
private int price;
@Min(value=1)
private int quantity;
@NotEmpty(message="Required field needs to be filled")
private String description;

@Transient
private MultipartFile image;
public MultipartFile getImage() {
	return image;
}
public void setImage(MultipartFile image) {
	this.image = image;
}
@ManyToOne
@JoinColumn(name="cid")
private Category category;

public Category getCategory() {
	return category;
}
public void setCategory(Category category) {
	this.category = category;
}

public String getProductName() {
	return productName;
}
public void setProductName(String productName) {
	this.productName = productName;
}
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
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

}
