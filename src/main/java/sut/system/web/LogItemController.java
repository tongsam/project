package sut.system.web;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import sut.system.domain.LogItem;

@RequestMapping("/logitems")
@Controller
@RooWebScaffold(path = "logitems", formBackingObject = LogItem.class)
public class LogItemController {
}
