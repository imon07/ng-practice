package app;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

/**
 * @author imon
 * @since 8/13/14 8:33 PM
 */
@Controller
public class IndexController {

    @RequestMapping(value = "/index", method = RequestMethod.GET)
    public String index(ModelMap model, @RequestParam(value = "formId", defaultValue = "") String formId) {
        model.put("formId", formId);
        System.out.println("a");
        return "/WEB-INF/index.jsp";
    }

    @RequestMapping(value = "/data", method = RequestMethod.GET)
    @ResponseBody
    public Treatment getData(@RequestParam(value = "formId", defaultValue = "") String formId) {
        System.out.println(formId);
        Treatment treatment = new Treatment();
        treatment.setProblemName(formId);
        return  treatment;
    }

    @RequestMapping(value = "/save", method = RequestMethod.POST)
    @ResponseBody
    public String save(@RequestBody Treatment treatment) {
        System.out.println(treatment.toString());
        return "success";
    }
}
