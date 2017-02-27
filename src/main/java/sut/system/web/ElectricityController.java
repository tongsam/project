package sut.system.web;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import sut.system.domain.Electricity;

@RequestMapping("/electricitys")
@Controller
@RooWebScaffold(path = "electricitys", formBackingObject = Electricity.class)
public class ElectricityController {
}
