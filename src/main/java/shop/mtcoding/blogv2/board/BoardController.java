package shop.mtcoding.blogv2.board;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class BoardController {

    @GetMapping("/board/saveForm")
    public String save() {
        return "board/saveForm";
    }

    @GetMapping("/board/1")
    public String detail() {
        return "board/detail";
    }

    @GetMapping("/board/2")
    public String detail2() {
        return "board/detail";
    }
}
