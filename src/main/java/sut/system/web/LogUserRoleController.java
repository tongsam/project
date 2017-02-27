package sut.system.web;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import sut.system.domain.LogUserRole;

@RequestMapping("/loguserroles")
@Controller
@RooWebScaffold(path = "loguserroles", formBackingObject = LogUserRole.class)
public class LogUserRoleController {
}
