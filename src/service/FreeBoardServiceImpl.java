package service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.FreeBoardDao;
import model.FreeBoard;
@Service
public class FreeBoardServiceImpl implements FreeBoardService{
	@Autowired
	private FreeBoardDao fdao;
/*	@Autowired
	private NomalDao nDao;*/
	@Override
	public List<FreeBoard> selectLimitDesc() {
		List<FreeBoard> list = fdao.selectLimitDesc();
		return list;
	}

}
