package webagency.mongo;

import org.bson.types.ObjectId;

public class Datac {

	private int id;
	private String name;
	private int price;
	private String desc;
	public Datac() {

	}

	public Datac(int id, String name, String auna, int price, String desc) {
		super();
		this.id = id;
		this.name = name;
		this.price = price;
		this.desc = desc;
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

	
	public String getDesc() {
		return desc;
	}

	public void setDesc(String desc) {
		this.desc = desc;
	}
	
	public String getName() {
		return name;
	}
	
	public void setName(String name) {
		this.name = name;
	}
}
