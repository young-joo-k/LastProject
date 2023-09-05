package org.project.service;

import org.project.domain.MemberVO;

public interface MemberService {
	
	public void register(MemberVO member);
	
	public String login(String id, String pw, int checked);
	
	public boolean registerIdCheck(String id);
	
	public MemberVO getUserInfo(String id);
	
}