package com.hanulso.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/favorite/*")
public class FavoriteCotroller {
	
	@GetMapping("/looked_room.do")
	public void looked_room() {}
}
