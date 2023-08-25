package shop.mtcoding.blogv2.user;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class UserController {
    @GetMapping("/login")
    public String login() {
        return "redirect:/";
    }

    @GetMapping("/updateForm")
    public String update() {
        return "updateForm";
    }


    @PostMapping("/join")
    public String join() {
        return "join";
    }

}
