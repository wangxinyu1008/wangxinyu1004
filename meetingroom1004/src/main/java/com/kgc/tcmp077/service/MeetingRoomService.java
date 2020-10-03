package com.kgc.tcmp077.service;

import com.kgc.tcmp077.pojo.MeetingRoom;

import java.util.List;

/**
 * @author shkstart
 * @create 2020-10-03 19:41
 */
public interface MeetingRoomService {
    List<MeetingRoom> meetList();
    void addMeet(MeetingRoom meetingRoom);
}
