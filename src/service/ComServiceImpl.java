package service;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.HashMap;
import java.util.List;

import org.apache.catalina.filters.CsrfPreventionFilter;
import org.aspectj.lang.annotation.Aspect;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import dao.ComBoardDao;
import dao.NomalDao;
import model.ComBoard;
import model.ComDay;
import model.ComM;
import model.ComUser;
import model.InComBoard;
import model.InComBoardRe;
import model.NomalBoard;
import model.NomalUser;
@Service
@Aspect
public class ComServiceImpl implements ComService{
	@Autowired(required = false)
	private ComBoardDao cdao;
	@Autowired(required = false)
	private NomalDao nDao;
	@Override
	public List<NomalBoard> selectNomalBoardDesc() {
		List<NomalBoard> list = cdao.selectNomalBoardDesc(); 
		return list;
	}
	
	public int insertComBoard(ComBoard comboard) {
		HashMap<String, Object> select = new HashMap<>();
		HashMap<String, Object> selectCnum = new HashMap<>();
		select.put("id", comboard.getComId());
		ComUser user = cdao.selectOne(select);
		comboard.setCarea(comboard.getCarea()+comboard.getCarea2());
		if(comboard.getAddr2().length() >10){
			comboard.setCarea(comboard.getAddr2());
		}
		comboard.setCtitle(comboard.getCtitle());
		comboard.setComPhone(user.getComPhone());
		comboard.setComEmail(user.getComEmail());
		cdao.insertComBoard(comboard);
		selectCnum.put("comId", comboard.getComId());
		int cnum = cdao.selectCnum(selectCnum);
		ComDay comday = new ComDay();
		comday.setCnum(cnum);
		comday.setCstartDay(comboard.getCstartDay());
		comday.setCendDay(comboard.getCendDay());
		comday.setDeadline(false);
		
		int re = cdao.insertComDay(comday);
		return 0;
	}
	@Override
	public HashMap<String, Object> comBoardList(int page, String id, int boardsPerPage) {
		HashMap<String, Object> result = new HashMap<>();
		HashMap<String, Object> resultid = new HashMap<>();
		resultid.put("id", id);
		result.put("current", page);
		result.put("start", getStartPage(page));
		result.put("end", getEndPage(page));
		result.put("last", getLastPage(cdao.getCount(resultid), boardsPerPage));
		result.put("totalPage", cdao.getCount(resultid));
		
		Calendar cal = Calendar.getInstance();
		SimpleDateFormat sf=new SimpleDateFormat("yyyy-MM-dd");
		HashMap<String, Object> params = new HashMap<>();
		params.put("TimeCom", sf.format(cal.getTime()));
		params.put("TimeNomal", sf.format(cal.getTime()));
		result.put("todayTimeCom", nDao.listComNum(params));
		result.put("todayTimeNomal", nDao.listNomalNum(params));
		
		params.put("offset", getOffset(page, boardsPerPage));
		params.put("boardsPerPage", boardsPerPage);
		params.put("id", id);
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
	public int getLastPage(int numOfBoards, int boardsPerPage) {
		// TODO Auto-generated method stub
		return (numOfBoards-1)/boardsPerPage + 1;
	}
	@Override
	public int getOffset(int page, int boardsPerPage) {
		// TODO Auto-generated method stub
		return (page - 1)*boardsPerPage;
	}
	@Override
	public ComBoard comView(int cnum) {
		// TODO Auto-generated method stub
		HashMap<String, Integer> n = new HashMap<>();
		n.put("cnum", cnum);
		ComBoard cb = cdao.comView(n);
		ComDay cd = cdao.selectComDayOne(n);

		System.out.println(cb.getCstartDay());
		System.out.println(cd.getCstartDay());
		
		cb.setCstartDay(cd.getCstartDay());
		
		

		cb.setCendDay(cd.getCendDay());
		if(cb !=null){
			n.put("ccount",cb.getCcount()+1);
			cdao.comCountUpdate(n);
		}
		return cb;
	}
	
	public HashMap<String, Object> getLogin(String id, String pass) {
		HashMap<String, Object> map = new HashMap<>();
		HashMap<String, Object> map2 = new HashMap<>();
		map.put("id", id);
		ComUser user = cdao.selectOne(map);
		if(user != null){
			if(user.getComPass().equals(pass)){
				map2.put("name", user.getComName());
				map2.put("id",user.getComId());
				String[] userarea= user.getComAddr().split(" ");
				System.out.println(userarea[1]);
				map2.put("comarea", userarea[1]);
				return map2;
			}else{
				return null;
			}
		}else{
			return null;
		}
	}

	@Override
	public ComBoard selectComBoardOne(String id, int cnum) {
		HashMap<String, Integer> params = new HashMap<>();
		params.put("cnum", cnum);
		ComBoard comBoard = cdao.comView(params);
		ComDay cday = cdao.selectComDayOne(params);
		if(comBoard.getComId().equals(id)){
			comBoard.setCstartDay(cday.getCstartDay());
			comBoard.setCendDay(cday.getCendDay());
		}
		return comBoard;
	}

	@Override
	public int updateComBoard(ComBoard comboard) {

		int cb = cdao.updateComBoard(comboard);
		System.out.println(comboard.getCtitle());
		ComDay comday = new ComDay();
		comday.setCnum(comboard.getCnum());
		comday.setCstartDay(comboard.getCstartDay());
		comday.setCendDay(comboard.getCendDay());
		int cd = cdao.updateComDay(comday);
		return 0;
	}

	@Override
	public int deleteComBoard(int cnum, String id) {
		HashMap<String, Integer>n = new HashMap<>();
		int cd = 0;
		n.put("cnum", cnum);
		ComBoard cb = cdao.comView(n);
		if(cb.getComId().equals(id)){
			cdao.deleteComDay(n);
		cd =cdao.deleteComBoard(n);
		}
		return cd;
	}

	@Override
	public File getAttachedFile(String id) {
		HashMap<String, Object> params = new HashMap<>();
		params.put("id", id);
		ComUser com = cdao.selectOne(params);
		String fileName = com.getComPhto();  //DB에 저장된 파일 이름 얻어내기
		String path = "/ComRogo/attach/";
		return new File(path + fileName);
	}

	@Override
	public int insertComUser(ComUser comUser,  MultipartFile file) {
		String path = "/ComRogo/attach/";
		File dir = new File(path);
		if(!dir.exists()){
			dir.mkdirs();
		}
		String fileName = file.getOriginalFilename();
		File attachedFile = new File(path, fileName);
		
		try{
			file.transferTo(attachedFile);
			comUser.setComPhto(fileName);
		}catch(IllegalStateException | IOException e){
			e.printStackTrace();
		}
		int re = cdao.insertComUser(comUser);
		return re;
	}
	@Override
	public String idCheck(String id) {
		String msg;
		HashMap<String, Object> map = new HashMap<>();
		map.put("id", id);
		ComUser nu = cdao.selectIdCheck(map);
		if(nu == null){
			msg = "사용 가능한 아이디 입니다";
		}else{
			msg = "존재하는 아이디 입니다. 재 입력해 주세요";
		}
		return msg;
	}

	@Override
	public List<InComBoard> selectIncomBoard(int cnum) {
		HashMap<String, Integer> map = new HashMap<>();
		map.put("cnum", cnum);
		List<InComBoard> ico = cdao.selectIncomBoard(map);
		return ico;
	}

	@Override
	public int deleteInComBoard(int cnum, String nomalId) {
		HashMap<String, Object> map = new HashMap<>();
		map.put("cnum", cnum);
		map.put("nomalId", nomalId);
		int re = cdao.deleteInComBoard(map);
		return 0;
	}

	@Override
	public int InComBoardCount(int cnum) {
		HashMap<String, Integer> map = new HashMap<>();
		map.put("cnum", cnum);
		int re = cdao.InComBoardCount(map);
		return re;
	}

	@Override
	public List<InComBoardRe> inComBoardCount() {
		List<InComBoardRe> icbr = cdao.inComBoardCount();
		return icbr;
	}

	@Override
	public int comarea(HashMap<String, Object> comarea) {

		return nDao.userarea(comarea);
	}

	public int insertInComBoard(int cnum, NomalUser nuser) {
		HashMap<String, Object> map = new HashMap<>();
		map.put("cnum", cnum);
		map.put("nomalId", nuser.getNomalId());
		map.put("phone", nuser.getPhone());
		int re = cdao.insertInComBoard(map);
		return re;
	}
	@Override
	public int insertComM(int cnum, String id, int userInfo) {
		HashMap<String, Integer> map = new HashMap<>();
		ComM comm = new ComM();
		map.put("cnum", cnum);
		ComBoard cb = cdao.selectComBoardOneM(map);
		comm.setCnum(cnum);
		comm.setNomalId(id);
		if(userInfo == 1){
			comm.setCmtext("신청");
		}else{
			comm.setCmtext("거절");
		}
		comm.setComId(cb.getComId());
		int re = cdao.insertComM(comm);
		return re;
	}

	@Override
	public List<Integer> comMcounts(String id) {
		List<Integer> counts = new ArrayList();
		HashMap<String, Object> map = new HashMap<>();
		map.put("id", id);
		counts.add(cdao.comMcountAll(map));
		counts.add(cdao.comMcountNew(map));
		return counts;
	}

	@Override
	public HashMap<String, Object> selectComM(int page, String id) {
		HashMap<String, Object> results = new HashMap<>();	
		HashMap<String, Object> result = new HashMap<>();
		HashMap<String, Object> re = new HashMap<>();
		re.put("id", id);
		result.put("current", page);
		result.put("start", getStartPage(page));
		result.put("end", getEndPage(page));
		result.put("last", getLastPage(cdao.getCountM(re), 5));
		result.put("totalPage", cdao.getCountM(re));
		
		results.put("offset", getOffset(page, 5));
		results.put("boardsPerPage", 5);
		results.put("id", id);
		
		result.put("mBoard", cdao.selectComM(results));
		
		return result;
	}

	@Override
	public int deleteMesege(int cmnum) {
		HashMap<String, Object> map = new HashMap<>();
		map.put("cmnum", cmnum);
		int re = cdao.deleteComM(map);
		return re;
	}
	
	@Override
	public HashMap<String, Object> getComBoardListByCondition(int page, 
			//@RequestParam(required=false) HashMap<String, Object> cb, 
			@RequestParam(required=false) List cb, 
			@RequestParam(required=false) String rb,
			@RequestParam(required=false) String ar,
			@RequestParam(required=false) String keyword) {
		// TODO Auto-generated method stub
		HashMap<String, Object> params = new HashMap<>();
		HashMap<String, Object> result = new HashMap<>();
		params.put("cb", cb);
		params.put("rb", rb);
		params.put("ar", ar);
		int n = (page - 1)*10;
		params.put("offset", n);
		params.put("boardsPerPage", 10);
		Calendar cal = Calendar.getInstance();
		SimpleDateFormat sf=new SimpleDateFormat("yyyy-MM-dd");
		params.put("todayTime", sf.format(cal.getTime()));
		result.put("comBoard", cdao.selectSearchByKeyword(params));
		result.put("current", page);
		result.put("start", getStartPage(page));
		result.put("end", getEndPage(page));
		int c = (nDao.getCountSearchByKeyword(params)-1)/10 + 1;
		result.put("last", c);

		return result;
	}

	@Override
	public ComBoard comVie(int cnum) {
		// TODO Auto-generated method stub
		HashMap<String, Integer> n = new HashMap<>();
		n.put("cnum", cnum);
		ComBoard cb = cdao.comView(n);
		return cb;
	}

	@Override
	public int changeComM(HashMap<String, Object> ctu) {
		// TODO Auto-generated method stub
		cdao.changeComM(ctu);
		return 0;
	}

	@Override
	public ComDay selectComDay(int cnum) {
		HashMap<String, Integer> map = new HashMap<>();
		map.put("cnum", cnum);
		ComDay  cday = cdao.selectComDayOne(map);
		return cday;
	}

	@Override
	public int getCount(String comId) {
		HashMap<String, Object> map = new HashMap<>();
		map.put("id", comId);
		int re = cdao.getCount(map);
		System.out.println(re);
		return re;
	}

}
