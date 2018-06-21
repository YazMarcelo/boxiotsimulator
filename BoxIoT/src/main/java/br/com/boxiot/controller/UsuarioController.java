package br.com.boxiot.controller;

import javax.transaction.Transactional;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import br.com.boxiot.dao.UsuarioDAO;
import br.com.boxiot.dao.ProdutoDAO;
import br.com.boxiot.model.Item;
import br.com.boxiot.model.Local;
import br.com.boxiot.model.Usuario;
import br.com.boxiot.validation.ProdutoValidator;

@Controller
@Transactional
@RequestMapping("/usuario")
public class UsuarioController {

	@Autowired
	private UsuarioDAO usuarioDAO;
	
	@Autowired
	private ProdutoDAO produtoDAO;

	/*@InitBinder*/
	/*protected void initBinder(WebDataBinder binder) {
		binder.setValidator(new ProdutoValidator());
	}*/

	@RequestMapping("/cadastro")
	public ModelAndView form(Usuario usuario) {
		ModelAndView modelAndView = new ModelAndView("usuario/cadastro");
		return modelAndView;
	}
	
	@RequestMapping("/login")
	public ModelAndView login() {
		ModelAndView modelAndView = new ModelAndView("usuario/login");
		return modelAndView;
	}

	@RequestMapping(method = RequestMethod.POST)
	public ModelAndView save(@Valid Usuario usuario, BindingResult bindingResult,
			RedirectAttributes redirectAttributes) {
		if (bindingResult.hasErrors()) {
			return form(usuario);
		}
		Boolean alteracao = false;
		String msg = "";
		
		if(usuario.getId() != null && usuario.getId() > 0) {alteracao = true;}
		
		usuarioDAO.save(usuario);
		
		msg = alteracao ? "Alteração efetuada com sucesso!" : "Cadastro efetuado com sucesso!";
		
		redirectAttributes.addFlashAttribute("msg", msg);
		return new ModelAndView("redirect:usuario");
	}

	@RequestMapping(method = RequestMethod.GET)
	public ModelAndView list() {
		ModelAndView modelAndView = new ModelAndView("usuario/consulta");
		modelAndView.addObject("usuarios", usuarioDAO.list());
		return modelAndView;
	}
	
	@RequestMapping("/alteracao/{id}")
	public ModelAndView alterar(@PathVariable("id") int id, Usuario usuario){
	ModelAndView modelAndView = new ModelAndView("usuario/alteracao");
	modelAndView.addObject("usuario", usuarioDAO.obterUsuario(id));
	return modelAndView;
}
	
	@RequestMapping("/excluir/{id}")
	public ModelAndView excluir(@PathVariable("id") int id){
		System.out.println("excluir usuario...");
		Usuario usuario = usuarioDAO.obterUsuario(id);
		usuario.setExcluido(true);
		usuarioDAO.save(usuario);
		return new ModelAndView("redirect:/usuario");
	}
	
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
		redirectAttributes.addFlashAttribute("sucesso", "Usuário cadastrado	com	sucesso");
		return new ModelAndView("redirect:usuario");
	}*/

}
