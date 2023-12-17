package ProductCrud.Controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.view.RedirectView;

import ProductCrud.Dao.ProductDao;
import ProductCrud.Model.Product;
import net.bytebuddy.matcher.ModifierMatcher.Mode;

@Controller
public class MainController {
	@Autowired
	private ProductDao productDao;

	@RequestMapping("/addproduct")
	public String addproduct(Model m) {
		m.addAttribute("title", "Add Product");
		return "addproduct";
	}

	@RequestMapping("/home")
	public String home(Model m) {

		m.addAttribute("products", productDao.showall());
		return "home";
	}

	@RequestMapping("/handle-form")
	public RedirectView handleform(@ModelAttribute Product product, HttpServletRequest request) {
		System.out.println(product);
		productDao.create(product);
		RedirectView redirectView = new RedirectView();
		redirectView.setUrl(request.getContextPath() + "/home");
		return redirectView;
	}

	@RequestMapping("/delete/{productid}")
	public RedirectView delete(@PathVariable("productid") int id,HttpServletRequest request) {
		productDao.delete(id);
		RedirectView redirectView = new RedirectView();
		redirectView.setUrl(request.getContextPath() + "/home");
		return redirectView;
	}
	
	@RequestMapping("/update/{productid}")
	public String update(@PathVariable("productid") int id,Model m) {
		Product product = productDao.updateproduct(id);
		m.addAttribute("product", product);
		return "update";
	}
	


}
