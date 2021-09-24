package dao;

import java.util.ArrayList;

import dto.Product;

public class ProductRepository {

	private ArrayList<Product> listOfProducts = new ArrayList<>();
	// ProductRepository�ν��Ͻ��� �ϳ��� �����ϰԲ� �̱��� ������ �̿��Ѵ�.
	private static ProductRepository instance = new ProductRepository();

	// ProductRepository�ν��Ͻ��� �����ϴ� getter�޼���
	public static ProductRepository getInstance() {
		return instance;
	}

	public ProductRepository() {

		Product phone = new Product("P1234", "Galaxy S20", 1200000);
		phone.setDescription("5.25-inch, 1334*750 HD display, 16-megapixel Camera");
		phone.setCategory("Smart Phone");
		phone.setManufacturer("SAMSUNG");
		phone.setUnitsInStock(1000);
		phone.setCondition("New");
		phone.setFilename("P1234.png");
		
		Product notebook = new Product("P1235", "LG GRAM", 2000000);
		notebook.setDescription("13.3-inch, IPS FULL HD display, Intel Core Processor");
		notebook.setCategory("Notebook");
		notebook.setManufacturer("LG");
		notebook.setUnitsInStock(1000);
		notebook.setCondition("Refurbished");
		notebook.setFilename("P1235.png");
		
		Product tablet = new Product("P1236", "Galaxy Tab", 900000);
		tablet.setDescription("212.8*125.6*6.6mm, Super AMOLED display, Octa-Core Processor");
		tablet.setCategory("Notebook");
		tablet.setManufacturer("SAMSUNG");
		tablet.setUnitsInStock(1000);
		tablet.setCondition("Old");
		tablet.setFilename("P1236.png");

		listOfProducts.add(phone);
		listOfProducts.add(notebook);
		listOfProducts.add(tablet);

	}

	public ArrayList<Product> getAllProducts() {

		return listOfProducts;
	}

	public Product getProductById(String productId) {
		Product productById = null;

		for (int i = 0; i < listOfProducts.size(); i++) {
			Product product = listOfProducts.get(i);
			if (product != null && product.getProductId() != null && product.getProductId().equals(productId)) {
				productById = product;
				break;
			}
		}
		return productById;
	}

	public void addProduct(Product product) {
		listOfProducts.add(product);
	}

}
