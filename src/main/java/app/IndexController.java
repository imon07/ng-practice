package app;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.Map;

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
    public Treatment getData(@RequestParam(value = "formId", defaultValue = "") String formId) throws InterruptedException {
        Thread.sleep(1000 * 5);
        System.out.println(formId);
        Treatment treatment = new Treatment();
        treatment.setProblemName(formId);
        return treatment;
    }

    @RequestMapping(value = "/save", method = RequestMethod.POST)
    @ResponseBody
    public Map<String, String> save(@RequestBody Treatment treatment) throws InterruptedException {
        Thread.sleep(1000 * 5);
        System.out.println(treatment.toString());
        Map<String, String> errorMap = new HashMap<String, String>();
        errorMap.put("errorProblemName", "Invalid Problem name");
        errorMap.put("errorLongTermGoal", "Invalid Long Term Goal");
        return errorMap;
    }
}
