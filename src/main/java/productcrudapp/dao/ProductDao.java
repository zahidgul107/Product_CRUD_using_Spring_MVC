package productcrudapp.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;

import productcrudapp.model.Product;

@Component
public class ProductDao {

	@Autowired
	private HibernateTemplate hibernateTemplate;

//	create(save) products in database	
	@Transactional
	public void createProduct(Product product) {

		
		
		this.hibernateTemplate.saveOrUpdate(product);

	}

//	get all products
	public List<Product> getProducts() {
		List<Product> products = this.hibernateTemplate.loadAll(Product.class);
		return products;
	}

//	delete the single product
	@Transactional
	public void deleteProduct(int id) {
		Product p = this.hibernateTemplate.load(Product.class, id);
		this.hibernateTemplate.delete(p);
	}

//	get the single product
	public Product getProduct(int id) {
		return this.hibernateTemplate.load(Product.class, id);
	}

}
