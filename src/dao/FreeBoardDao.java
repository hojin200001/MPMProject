package dao;

import java.util.List;

import model.FreeBoard;

public interface FreeBoardDao {
	public List<FreeBoard> selectLimitDesc();
}
