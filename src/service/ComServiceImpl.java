package service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.ComBoardDao;
import model.ComBoard;
import model.NomalBoard;
@Service
public class ComServiceImpl implements ComService{
	@Autowired(required = false)
	private ComBoardDao cdao;
	@Override
	public List<NomalBoard> selectNomalBoardDesc() {
		List<NomalBoard> list = cdao.selectNomalBoardDesc(); 
		return list;
	}
	@Override
	public HashMap<String, Object> comBoardList(int page) {
		HashMap<String, Object> result = new HashMap<>();
		result.put("current", page);
		result.put("start", getStartPage(page));
		result.put("end", getEndPage(page));
		result.put("last", getLastPage(cdao.getCount()));
		result.put("totalPage", cdao.getCount());
		
		HashMap<String, Object> params = new HashMap<>();
		params.put("offset", getOffset(page));
		params.put("boardsPerPage", 10);
		result.put("comBoard", cdao.selectBoardPage(params));
		
		return result;
	}
	@Override
	public int getStartPage(int page) {
		// TODO Auto-generated method stub
		return page - ((page-1)%10);
	}
	@Override
	public int getEndPage(int page) {
		// TODO Auto-generated method stub
		return page - ((page-1)%10) + (10-1);
	}
	@Override
	public int getLastPage(int numOfBoards) {
		// TODO Auto-generated method stub
		return (numOfBoards-1)/10 + 1;
	}
	@Override
	public int getOffset(int page) {
		// TODO Auto-generated method stub
		return (page - 1)*10;
	}
	@Override
	public ComBoard boardView(int cnum) {
		// TODO Auto-generated method stub
		HashMap<String, Integer> n = new HashMap<>();
		n.put("cnum", cnum);
		ComBoard cb = cdao.comView(n);
		if(cb !=null){
			cb.setCcount(cb.getCcount()+1);
			cdao.comUpdate(cb);
		}
		return cb;
	}

}
