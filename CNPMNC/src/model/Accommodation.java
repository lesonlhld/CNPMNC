package model;

import java.io.Serializable;
import java.util.List;
public class Accommodation implements Serializable{
	private int id;
	private String address;
	private int cost;
	private String description_acc;
	private String contact;
	private String status_acc;
	private String type_acc;
	private String image;

	public Accommodation() {
		super();
	}
	public Accommodation(int id, String address, int cost, String description_acc, String contact, String status_acc, String type_acc) {
		super();
		this.id = id;
		this.address = address;
		this.cost = cost;
		this.description_acc = description_acc;
		this.contact = contact;
		this.status_acc = status_acc;
		this.type_acc = type_acc;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getCost() {
		return cost;
	}
	public void setCost(int cost) {
		this.cost = cost;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getAddress() {
		return address;
	}
	public String getDescription_acc() {
		return description_acc;
	}
	public void setDescription_acc(String description_acc) {
		this.description_acc = description_acc;
	}
	public String getContact() {
		return contact;
	}
	public void setContact(String contact) {
		this.contact = contact;
	}
	public String getStatus_acc() {
		return status_acc;
	}
	public void setStatus_acc(String status_acc) {
		this.status_acc = status_acc;
	}
	public String getType_acc() {
		return type_acc;
	}
	public void setType_acc(String type_acc) {
		this.type_acc = type_acc;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
}
