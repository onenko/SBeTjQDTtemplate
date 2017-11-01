package net.nenko.web.ctrl;

import java.util.Date;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import net.nenko.data.EnumData;
import net.nenko.data.WebTableRecord;

@Controller
public class SBeTjQDTController {

    @Value("${application.name:Hello World}")
    private String message = "Hello World";

    @GetMapping("/")
    public String homePage(Map<String, Object> model) {
        model.put("time", new Date());
        model.put("message", this.message);
        return "index";
    }

    @RequestMapping("/fail")
        public String fail() {
        throw new IllegalStateException();
    }

    @GetMapping("/table")
    public String table(Map<String, Object> model) {
        model.put("time", new Date());
        model.put("message", this.message);
        return "table";
    }

    @ResponseBody
    @RequestMapping("/ajaxForTable")
    public AjaxResponse ajaxForTable() {
        AjaxResponse response = new AjaxResponse();
        response.data = new LinkedList<>();

        long ms = System.currentTimeMillis();

        WebTableRecord record = new WebTableRecord();
        record.numId = 12345;
        record.strId = "S12345";
        record.date = (int)(ms / (3600 * 24000));
        record.dateTimeMs = ms;
        record.realNum = 4.677;
        record.enumData = EnumData.ENUM_ONE;
        response.data.add(record);

        record = new WebTableRecord();
        record.numId = 67890;
        record.strId = "S67890";
        record.date = (int)(ms / (3600 * 24000)) - 10;
        record.dateTimeMs = ms;
        record.realNum = 9.88;
        record.enumData = EnumData.ENUM_TWO;

        response.data.add(record);

        return response;
    }

    /**
     * JSON field 'data' - default for jQuery DataTables
     */
    private static class AjaxResponse {
        public List<WebTableRecord> data;
    }
}
