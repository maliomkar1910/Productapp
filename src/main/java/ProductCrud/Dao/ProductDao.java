package ProductCrud.Dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import ProductCrud.Model.Product;

@Component
public class ProductDao {
	@Autowired
	private HibernateTemplate hibernatetemplate;

	public HibernateTemplate getHibernatetemplate() {
		return hibernatetemplate;
	}

	public void setHibernatetemplate(HibernateTemplate hibernatetemplate) {
		this.hibernatetemplate = hibernatetemplate;
	}

	public ProductDao(HibernateTemplate hibernatetemplate) {
		super();
		this.hibernatetemplate = hibernatetemplate;
	}

	public ProductDao() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	
	//adding product in db
	@Transactional
	public void create(Product p) {
		this.hibernatetemplate.save(p);
	}
	
	
	//updating
	@Transactional
	public Product updateproduct(int pid) {
		Product p = this.hibernatetemplate.load(Product.class, pid);
		this.hibernatetemplate.update(p);
		return p;
	}
	
	//deleteing 
	
	@Transactional
	public void delete(int pid) {
		Product load = this.hibernatetemplate.load(Product.class, pid);
		this.hibernatetemplate.delete(load);
	}
	
	//selecting single 
	
	public  Product show(int pid) {
		Product record = this.hibernatetemplate.load(Product.class, pid);
		return record;
	}
	
	//selecting multiple
	
	public List<Product> showall(){
		 
		List<Product> List = this.hibernatetemplate.loadAll(Product.class);
		
		return List;
	}

}
