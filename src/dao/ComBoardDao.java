package dao;

import java.util.HashMap;
import java.util.List;

import model.ComBoard;
import model.FreeBoard;
import model.NomalBoard;

public interface ComBoardDao {
	public List<NomalBoard> selectNomalBoardDesc();
	public HashMap<String, Object> comBoardList();
	public int getCount();
	public List<ComBoard> selectBoardPage(HashMap<String, Object> params);
	public ComBoard comView(HashMap<String, Integer> n);
	public void comUpdate(ComBoard cb);
}
