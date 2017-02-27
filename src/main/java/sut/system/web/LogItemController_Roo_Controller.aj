// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package sut.system.web;

import java.io.UnsupportedEncodingException;
import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import org.joda.time.format.DateTimeFormat;
import org.springframework.context.i18n.LocaleContextHolder;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.util.UriUtils;
import org.springframework.web.util.WebUtils;
import sut.system.domain.LogItem;
import sut.system.domain.LogUser;
import sut.system.web.LogItemController;

privileged aspect LogItemController_Roo_Controller {
    
    @RequestMapping(method = RequestMethod.POST, produces = "text/html")
    public String LogItemController.create(@Valid LogItem logItem, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, logItem);
            return "logitems/create";
        }
        uiModel.asMap().clear();
        logItem.persist();
        return "redirect:/logitems/" + encodeUrlPathSegment(logItem.getId().toString(), httpServletRequest);
    }
    
    @RequestMapping(params = "form", produces = "text/html")
    public String LogItemController.createForm(Model uiModel) {
        populateEditForm(uiModel, new LogItem());
        return "logitems/create";
    }
    
    @RequestMapping(value = "/{id}", produces = "text/html")
    public String LogItemController.show(@PathVariable("id") Long id, Model uiModel) {
        addDateTimeFormatPatterns(uiModel);
        uiModel.addAttribute("logitem", LogItem.findLogItem(id));
        uiModel.addAttribute("itemId", id);
        return "logitems/show";
    }
    
    @RequestMapping(produces = "text/html")
    public String LogItemController.list(@RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, @RequestParam(value = "sortFieldName", required = false) String sortFieldName, @RequestParam(value = "sortOrder", required = false) String sortOrder, Model uiModel) {
        if (page != null || size != null) {
            int sizeNo = size == null ? 10 : size.intValue();
            final int firstResult = page == null ? 0 : (page.intValue() - 1) * sizeNo;
            uiModel.addAttribute("logitems", LogItem.findLogItemEntries(firstResult, sizeNo, sortFieldName, sortOrder));
            float nrOfPages = (float) LogItem.countLogItems() / sizeNo;
            uiModel.addAttribute("maxPages", (int) ((nrOfPages > (int) nrOfPages || nrOfPages == 0.0) ? nrOfPages + 1 : nrOfPages));
        } else {
            uiModel.addAttribute("logitems", LogItem.findAllLogItems(sortFieldName, sortOrder));
        }
        addDateTimeFormatPatterns(uiModel);
        return "logitems/list";
    }
    
    @RequestMapping(method = RequestMethod.PUT, produces = "text/html")
    public String LogItemController.update(@Valid LogItem logItem, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, logItem);
            return "logitems/update";
        }
        uiModel.asMap().clear();
        logItem.merge();
        return "redirect:/logitems/" + encodeUrlPathSegment(logItem.getId().toString(), httpServletRequest);
    }
    
    @RequestMapping(value = "/{id}", params = "form", produces = "text/html")
    public String LogItemController.updateForm(@PathVariable("id") Long id, Model uiModel) {
        populateEditForm(uiModel, LogItem.findLogItem(id));
        return "logitems/update";
    }
    
    @RequestMapping(value = "/{id}", method = RequestMethod.DELETE, produces = "text/html")
    public String LogItemController.delete(@PathVariable("id") Long id, @RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        LogItem logItem = LogItem.findLogItem(id);
        logItem.remove();
        uiModel.asMap().clear();
        uiModel.addAttribute("page", (page == null) ? "1" : page.toString());
        uiModel.addAttribute("size", (size == null) ? "10" : size.toString());
        return "redirect:/logitems";
    }
    
    void LogItemController.addDateTimeFormatPatterns(Model uiModel) {
        uiModel.addAttribute("logItem_createdate_date_format", DateTimeFormat.patternForStyle("M-", LocaleContextHolder.getLocale()));
    }
    
    void LogItemController.populateEditForm(Model uiModel, LogItem logItem) {
        uiModel.addAttribute("logItem", logItem);
        addDateTimeFormatPatterns(uiModel);
        uiModel.addAttribute("logusers", LogUser.findAllLogUsers());
    }
    
    String LogItemController.encodeUrlPathSegment(String pathSegment, HttpServletRequest httpServletRequest) {
        String enc = httpServletRequest.getCharacterEncoding();
        if (enc == null) {
            enc = WebUtils.DEFAULT_CHARACTER_ENCODING;
        }
        try {
            pathSegment = UriUtils.encodePathSegment(pathSegment, enc);
        } catch (UnsupportedEncodingException uee) {}
        return pathSegment;
    }
    
}
