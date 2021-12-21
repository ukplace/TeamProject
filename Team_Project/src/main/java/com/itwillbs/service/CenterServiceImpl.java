package com.itwillbs.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.itwillbs.dao.CenterDAO;

@Service
public class CenterServiceImpl implements CenterService {

	@Inject
	private CenterDAO centerDAO;
	
}
