package com.studymeet.user.mapper;

import java.util.HashMap;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.studymeet.user.dto.UserDto;

@Repository("com.studymeet.user.mapper.UserMapper")
public interface UserMapper {
	
	public void insertMember(UserDto userDto) throws Exception;
	
	public void updateMember(UserDto userDto) throws Exception;
	
	public int hasMember(UserDto userDto) throws Exception;
	
	public String findMemberId(HashMap<String, Object> params) throws Exception;
	
	public List<UserDto> allMemberList();
	
}
