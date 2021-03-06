package br.com.boxiot.controller;

import java.util.List;

import javax.transaction.Transactional;
import javax.validation.Valid;

import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import br.com.boxiot.dao.ItemDAO;
import br.com.boxiot.dao.ItemModoDAO;
import br.com.boxiot.dao.LocalDAO;
import br.com.boxiot.model.Item;
import br.com.boxiot.model.ItemModo;
import br.com.boxiot.model.Local;

@Controller
@Transactional
@RequestMapping("/simulador")
public class SimuladorController {

	@Autowired
	private LocalDAO localDAO;
	
	@Autowired
	private ItemDAO itemDAO;
	
	@Autowired
	private ItemModoDAO itensModoDAO;

	/*@InitBinder*/
	/*protected void initBinder(WebDataBinder binder) {
		binder.setValidator(new ProdutoValidator());
	}*/

	@RequestMapping(method = RequestMethod.GET)
	public ModelAndView list() {
		ModelAndView modelAndView = new ModelAndView("Simulador/tela");
		modelAndView.addObject("locais", localDAO.list());
		modelAndView.addObject("itens", itemDAO.list());
		return modelAndView;
	}
	
	
	@RequestMapping(value="/recuperar",method = RequestMethod.GET)
	public String getItens(){
		
		List<Item> listItemModos = itemDAO.list();
		String retorno = "";
		for(int i = 0; i < listItemModos.size(); i++){
			if(listItemModos.get(i).getLigado()){
				if(retorno.length() > 0)
					retorno += ";";
				
				retorno += listItemModos.get(i).getId();
			}
			
			
			
		}
		
		return retorno;
	}
	
	@RequestMapping("")
	public ModelAndView alterar(@PathVariable("id") int id, Local local){
	ModelAndView modelAndView = new ModelAndView("local/alteracao");
	modelAndView.addObject("local", localDAO.obterLocal(id));
	return modelAndView;
}
	@RequestMapping("/excluir/{id}")
	public ModelAndView excluir(@PathVariable("id") int id){
		System.out.println("excluir local...");
		Local local = localDAO.obterLocal(id);
		local.setExcluido(true);
		localDAO.save(local);
		return new ModelAndView("redirect:/local");
	}
	
//	public ModelAndView alterar(Item item) {
//		ModelAndView modelAndView = new ModelAndView("item/alteracao");
//		return modelAndView;
//	}

	
//	public ModelAndView alterar(@RequestParam(value="id") int id,Usuario usuario) {
//		ModelAndView modelAndView = new ModelAndView("usuario/alteracao");
//		modelAndView.addObject("usuario", usuarioDAO.obterUsuario(id));
//		return modelAndView;
//	}
	
	/*@RequestMapping("/alteracao/{id}")
	public ModelAndView alterar(@RequestParam(value="id") int id,Usuario usuario) {
		ModelAndView modelAndView = new ModelAndView("usuario/alteracao");
		modelAndView.addObject("usuario", usuarioDAO.obterUsuario(id));
		return modelAndView;
	}
	
	@RequestMapping(method = RequestMethod.POST)
	public ModelAndView update(@Valid Usuario usuario, BindingResult bindingResult,
			RedirectAttributes redirectAttributes) {
		if (bindingResult.hasErrors()) {
			return form(usuario);
		}
		System.out.println("salvar produto...");
		usuarioDAO.save(usuario);
		redirectAttributes.addFlashAttribute("sucesso", "Usu�rio cadastrado	com	sucesso");
		return new ModelAndView("redirect:usuario");
	}*/

}
