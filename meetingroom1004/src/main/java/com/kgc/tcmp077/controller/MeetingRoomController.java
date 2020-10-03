package com.kgc.tcmp077.controller;

import com.kgc.tcmp077.pojo.MeetingRoom;
import com.kgc.tcmp077.service.MeetingRoomService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import java.util.List;

/**
 * @author shkstart
 * @create 2020-10-03 19:45
 */
@Controller
public class MeetingRoomController {
    @Resource
    MeetingRoomService meetingRoomService;
    @RequestMapping("/")
    public String index(Model model){
        List<MeetingRoom> meetingRooms = meetingRoomService.meetList();
        model.addAttribute("meetingRooms",meetingRooms);
        return "index";
    }
    @RequestMapping("/toadd")
    public String toadd(){
        return "add";
    }
    @RequestMapping("/doadd")
    public String doadd(MeetingRoom meetingRoom){
        meetingRoomService.addMeet(meetingRoom);
        return "redirect:/";
    }
}
