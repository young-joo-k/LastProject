package org.project.mapper;

import org.project.domain.MemberVO;

public interface MemberMapper {
	
	public MemberVO getUserInfo(String id);
	
	public void insert(MemberVO member);
	
	public String selectLogin(String id);

	public int IsIdValid(String id);

}