package com.skilldistillery.boxers.entities;

import java.util.Objects;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Boxer {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;

	@Column(name = "first_name")
	private String firstName;

	@Column(name = "last_name")
	private String lastName;
	
	@Column(name = "height_inches")
	private int height;
	
	@Column(name = "weight_class")
	private String weightClass;
	
	private String nationality;
	
	@Column(name = "reach_inches")
	private double reach;
	
	private int knockouts;
	
	@Column(name = "total_fights")
	private int totalFights;
	
	public Boxer() {
	}

	public Boxer(int id, String firstName, String lastName, int height, String weightClass, String nationality,
			double reach, int knockouts, int totalFights) {
		this.id = id;
		this.firstName = firstName;
		this.lastName = lastName;
		this.height = height;
		this.weightClass = weightClass;
		this.nationality = nationality;
		this.reach = reach;
		this.knockouts = knockouts;
		this.totalFights = totalFights;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	@Override
	public String toString() {
		return "Boxer [id=" + id + ", firstName=" + firstName + ", lastName=" + lastName + ", height=" + height
				+ ", weightClass=" + weightClass + ", nationality=" + nationality + ", reach=" + reach + ", knockouts="
				+ knockouts + ", totalFights=" + totalFights + "]";
	}

	public int getHeight() {
		return height;
	}

	public void setHeight(int height) {
		this.height = height;
	}

	public String getWeightClass() {
		return weightClass;
	}

	public void setWeightClass(String weightClass) {
		this.weightClass = weightClass;
	}

	public String getNationality() {
		return nationality;
	}

	public void setNationality(String nationality) {
		this.nationality = nationality;
	}

	public double getReach() {
		return reach;
	}

	public void setReach(double reach) {
		this.reach = reach;
	}

	public int getKnockouts() {
		return knockouts;
	}

	public void setKnockouts(int knockouts) {
		this.knockouts = knockouts;
	}

	public int getTotalFights() {
		return totalFights;
	}

	public void setTotalFights(int totalFights) {
		this.totalFights = totalFights;
	}
	
	public String getFullName() {
		return firstName + " " + lastName;
	}

	@Override
	public int hashCode() {
		return Objects.hash(firstName, height, id, knockouts, lastName, nationality, reach, totalFights, weightClass);
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Boxer other = (Boxer) obj;
		return Objects.equals(firstName, other.firstName) && height == other.height && id == other.id
				&& knockouts == other.knockouts && Objects.equals(lastName, other.lastName)
				&& Objects.equals(nationality, other.nationality)
				&& Double.doubleToLongBits(reach) == Double.doubleToLongBits(other.reach)
				&& totalFights == other.totalFights && Objects.equals(weightClass, other.weightClass);
	}
	
}
