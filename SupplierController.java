/*package com;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.dao.CategoryDAO;
import com.model.Category;


@Controller
public class CategoryController {
	
	
	@Autowired
	CategoryDAO categoryDAO;

	@RequestMapping(value="/category")
	public String showCategoryPage()
	{
		return "Category";
	}	
	
	@RequestMapping(value="category",method=RequestMethod.GET)
	public String showProduct(Model m)
	{
		Category category = new Category();
		m.addAttribute(category);
		
		return "Category";
	}
	
	
	
	@RequestMapping(value="AddCategory",method=RequestMethod.POST)
	public String addCategory(@ModelAttribute("category")Category category,Model m)
	{
		
		categoryDAO.addCategory(category);
		
		return "Category";
	}
	
}*/



package com;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.dao.SupplierDAO;
import com.model.Supplier;



@Controller
public class SupplierController 
{
	@Autowired
	SupplierDAO supplierDAO;

	
	
	@RequestMapping(value="AddSupplier",method=RequestMethod.POST)
	public String addSupplier(@ModelAttribute("supplier")Supplier supplier,Model m)
	{
		supplierDAO.addSupplier(supplier);
		
		List<Supplier> listSupplier=supplierDAO.retrieveSupplier();
		m.addAttribute("supplierList",listSupplier);
		
		return "Supplier";
	}
	
	@RequestMapping(value="supplier",method=RequestMethod.GET)
	public String showCategory(Model m)
	{
		Supplier supplier=new Supplier();
		m.addAttribute(supplier);
		
		List<Supplier> listSupplier=supplierDAO.retrieveSupplier();
		m.addAttribute("supplierList",listSupplier);
		return "Supplier";
	}
	
    @RequestMapping(value="updateSupplier/{supplierId}",method=RequestMethod.GET)
	public String updateSupplier(@PathVariable("supplierId") int supplierId,Model m)
	{
		Supplier supplier=supplierDAO.getSupplier(supplierId);
		m.addAttribute(supplier);
		
		List<Supplier> listSupplier=supplierDAO.retrieveSupplier();
		m.addAttribute("supplierList",listSupplier);
		return "UpdateSupplier";
	}
    
	@RequestMapping(value="UpdateSupplier",method=RequestMethod.POST)
	public String updateMySupplier(@ModelAttribute("category")Supplier supplier,Model m)
	{
		supplierDAO.updateSupplier(supplier);
		Supplier supplier1= new Supplier();
		m.addAttribute(supplier1);
		
		List<Supplier> listSupplier=supplierDAO.retrieveSupplier();
		m.addAttribute("supplierList",listSupplier);
		return "Supplier";
	}
	@RequestMapping(value="deleteSupplier/{supplierId}",method=RequestMethod.GET)
	public String deleteSupplier(@PathVariable("supplierId")int supplierId,Model m)
	{
		Supplier supplier=supplierDAO.getSupplier(supplierId);
		supplierDAO.deleteSupplier(supplier);
		List<Supplier> listSupplier=supplierDAO.retrieveSupplier();
		m.addAttribute("supplierList",listSupplier);
		return "Supplier";
	}
}
