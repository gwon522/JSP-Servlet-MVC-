package org.jingwon.megabox.service;

import org.jingwon.megabox.mapper.MemberMapper;
import org.jingwon.megabox.vo.CustomUser;
import org.jingwon.megabox.vo.MemberVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Log4j
public class UserDetailService implements UserDetailsService{

	@Setter(onMethod_ = @Autowired)
	private MemberMapper memberMapper;
	
	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		log.warn("Load User name : " + username );
		MemberVO vo = memberMapper.read(username);
		log.warn("queried result : " + vo);
		return vo == null ? null: new CustomUser(vo);
	}

}
