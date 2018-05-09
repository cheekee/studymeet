package com.studymeet.user.mapper;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.studymeet.user.dto.UserDto;

@Repository("com.studymeet.user.mapper.UserMapper")
public interface UserMapper {
	
	public void insertMember() throws Exception;
	
	public int hasMember(UserDto userDto) throws Exception;
	
}
