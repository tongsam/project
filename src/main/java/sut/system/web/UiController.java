package sut.system.web;
import sut.system.domain.Electricity;
import sut.system.domain.LogUser;
import sut.system.domain.LogUserRole;

import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.tostring.RooToString;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import static sut.system.domain.Electricity.findAllElectricitys;



@RooJavaBean
@RooToString
@RequestMapping("/mainui")
@Controller
public class UiController {
	@RequestMapping(value = "/payment", produces = "text/html")
    public String viewPayment(Model uiModel) {
		List<Electricity> listElectricity = findAllElectricitys();
		uiModel.addAttribute("listElectricity",listElectricity);
        return "mainui/payment";
        
	}
        @RequestMapping(value = "/member", produces = "text/html")
        public String viewMember(Model uiModel) {
            
            return "mainui/member";
    }
        
        @RequestMapping(value = "/createUser",method = RequestMethod.POST, produces = "text/html")
        public String createUser(@Valid LogUser user, Model uiModel, HttpServletRequest request){
    		LogUser u = new LogUser();
    		LogUserRole r = new LogUserRole();
    		if(LogUserRole.findAllLogUserRoles().isEmpty()){
    			r.setRoleName("ROLE_USER");
    			r.persist();
    			Set<LogUserRole> roles = new HashSet<LogUserRole>();
    			roles.add(LogUserRole.findLogUserRole(Long.valueOf(1)));
    			u.setRoles(roles);
    		}
    		else{
    			r = LogUserRole.findLogUserRole(Long.valueOf(1));
    			Set<LogUserRole> roles = new HashSet<LogUserRole>();
    			roles.add(r);
    			u.setRoles(roles);
    		}
    		
    		u.setEnable(true);
    		u.setUsername(user.getUsername());
    		u.setPassword(user.getPassword());
    		
    		u.persist();
    		
    		
    		
    		return "mainui/member";
    	}
        
        
        @RequestMapping(value = "/manage", produces = "text/html")
        public String viewManage(Model uiModel) {
            
            return "mainui/manage";
    }
        
        @RequestMapping(value = "/createElec",method = RequestMethod.POST, produces = "text/html")
        public String createElec(@Valid Electricity elec,Model uiModel, HttpServletRequest Request){
    		Electricity e = new Electricity();
    		
    		e.setYears("2559");
    		e.setMonths(elec.getMonths());
    		e.setPrice(elec.getPrice());
    		
    		e.persist();
    		
    		
    		
    		return "mainui/manage";
    	}
}
