package br.com.boxiot.controller;


import java.util.Collection;
import java.util.Map;

import javax.transaction.Transactional;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import br.com.boxiot.dao.ItemDAO;
import br.com.boxiot.dao.ItemModoDAO;
import br.com.boxiot.dao.LocalDAO;
import br.com.boxiot.dao.ModoDAO;
import br.com.boxiot.model.ItemModo;
import br.com.boxiot.model.Modo;

@Controller
@Transactional
@RequestMapping("/modo")
public class ModoController {

	@Autowired
	private ModoDAO modoDAO;
	
	@Autowired
	private ItemModoDAO itmoDAO;
	
	@Autowired
	private LocalDAO localDAO;
	
	@Autowired
	private ItemDAO itemDAO;

	@RequestMapping("/cadastro")
	public ModelAndView form(Modo modo) {
		ModelAndView modelAndView = new ModelAndView("modo/cadastro");
		modelAndView.addObject("locais", localDAO.list());
		modelAndView.addObject("itens", itemDAO.list());
		return modelAndView;
	}

	@RequestMapping(value="/salvar", method = RequestMethod.POST, consumes = "application/json")
	@ResponseBody
	public String save(@RequestBody String json, BindingResult bindingResult,
			RedirectAttributes redirectAttributes) throws JSONException {
		json = json.replace("[\"", "[").replace("\"]", "]").replace("\\","");
		JSONObject obj = new JSONObject(json);
		JSONArray itens = obj.getJSONArray("itens");
		
		Modo modo = new Modo();
		modo.setDescricao(obj.getString("descricao"));
		
		int idModo = obj.getString("idModo") != null && !(obj.getString("idModo").isEmpty()) ? obj.getInt("idModo") : 0;
		
		if(idModo > 0) {
			modo.setId(idModo);
			modoDAO.save(modo);
		}
		else
			idModo = modoDAO.save(modo);
		
		
		
		int n = itens.length();
		itmoDAO.excluirPorModo(idModo);
	    for (int i = 0; i < n; ++i) {
	    	JSONObject item = itens.getJSONObject(i);
	    	itmoDAO.save(new ItemModo(item.getInt("id"), idModo, item.getInt("porcentagem")));
	    }
	    
	    //modoDAO.save(modo, listItemModo);
	    
	    redirectAttributes.addAttribute("msg", "Cadastro efetuado com sucesso!");
	    
		return "ok";
	}
	

	@RequestMapping(method = RequestMethod.GET)
	public ModelAndView list() {
		ModelAndView modelAndView = new ModelAndView("modo/consulta");
		modelAndView.addObject("modos", modoDAO.list());
		return modelAndView;
	}
	
	@RequestMapping("/alteracao/{id}")
	public ModelAndView alterar(@PathVariable("id") int id, Modo modo){
		ModelAndView modelAndView = new ModelAndView("modo/alteracao");
		Modo modoAlteracao = modoDAO.obterModo(id);
		modelAndView.addObject("modo", modoAlteracao);
		modelAndView.addObject("itensModo", itmoDAO.obterPorModo(modoAlteracao.getId()));
		modelAndView.addObject("locais", localDAO.list());
		modelAndView.addObject("itens", itemDAO.list());
		
		return modelAndView;
}
	@RequestMapping("/excluir/{id}")
	public ModelAndView excluir(@PathVariable("id") int id){
		Modo modo = modoDAO.obterModo(id);
		modo.setExcluido(true);
		modoDAO.save(modo);
		return new ModelAndView("redirect:/modo");
	}
	

}
