package sut.system.web;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import sut.system.domain.LogUser;

@RequestMapping("/logusers")
@Controller
@RooWebScaffold(path = "logusers", formBackingObject = LogUser.class)
public class LogUserController {
}
