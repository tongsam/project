package sut.system.domain;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/payments")
@Controller
@RooWebScaffold(path = "payments", formBackingObject = Payment.class)
public class PaymentController {
}
