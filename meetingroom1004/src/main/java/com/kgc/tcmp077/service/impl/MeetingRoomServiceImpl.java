package com.kgc.tcmp077.service.impl;

import com.kgc.tcmp077.mapper.MeetingRoomMapper;
import com.kgc.tcmp077.pojo.MeetingRoom;
import com.kgc.tcmp077.pojo.MeetingRoomExample;
import com.kgc.tcmp077.service.MeetingRoomService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * @author shkstart
 * @create 2020-10-03 19:42
 */
@Service("meetingRoomService")
public class MeetingRoomServiceImpl implements MeetingRoomService {
    @Resource
    MeetingRoomMapper meetingRoomMapper;
    @Override
    public List<MeetingRoom> meetList() {
        MeetingRoomExample meetingRoomExample=new MeetingRoomExample();
        meetingRoomExample.setOrderByClause("meeting_order desc");
        return meetingRoomMapper.selectByExample(meetingRoomExample);
    }

    @Override
    public void addMeet(MeetingRoom meetingRoom) {
        meetingRoomMapper.insertSelective(meetingRoom);
    }
}
