package com.kgc.tcmp077.mapper;

import com.kgc.tcmp077.pojo.MeetingRoom;
import com.kgc.tcmp077.pojo.MeetingRoomExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface MeetingRoomMapper {
    int countByExample(MeetingRoomExample example);

    int deleteByExample(MeetingRoomExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(MeetingRoom record);

    int insertSelective(MeetingRoom record);

    List<MeetingRoom> selectByExample(MeetingRoomExample example);

    MeetingRoom selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") MeetingRoom record, @Param("example") MeetingRoomExample example);

    int updateByExample(@Param("record") MeetingRoom record, @Param("example") MeetingRoomExample example);

    int updateByPrimaryKeySelective(MeetingRoom record);

    int updateByPrimaryKey(MeetingRoom record);
}