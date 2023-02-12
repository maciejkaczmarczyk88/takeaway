package pl.takeaway.takeaway.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import pl.takeaway.takeaway.item.Item;
import pl.takeaway.takeaway.item.ItemRepository;

import java.util.List;

@Controller
public class HomeControler {

    private ItemRepository itemRepository;

    public HomeControler(ItemRepository itemRepository) {
        this.itemRepository = itemRepository;
    }

    @GetMapping("/")
    public String home(Model model){
        List<Item> items = itemRepository.findAll();
        model.addAttribute("items", items);
        return "index";
    }
}
