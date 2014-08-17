package app;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * @author imon
 * @since 8/13/14 8:33 PM
 */
@Controller
public class IndexController {

    @RequestMapping(value = "/index.html", method = RequestMethod.GET)
    public String index() {
        System.out.println("a");
        return "index.html";
    }

    @RequestMapping(value = "/data", method = RequestMethod.GET)
    public @ResponseBody Treatment getData() {
        return new Treatment();
    }

    @RequestMapping(value = "/save", method = RequestMethod.POST)
    public @ResponseBody String save(@RequestBody Treatment treatment) {
        System.out.println(treatment.toString());
        return "success";
    }
}
