package service;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import org.codehaus.jackson.map.ObjectMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestParam;

import dao.NomalDao;
import model.ComBoard;
import model.ComDay;
import model.ComUser;
import model.NomalBoard;
import model.NomalM;
import model.NomalUser;
@Service
public class NomalServiceImpl implements NomalService{
	@Autowired(required = false)
	private NomalDao nDao;

	public NomalUser selectOne(String id) {
		HashMap<String, Object> map = new HashMap<>();
		map.put("id", id);
		NomalUser user = nDao.selectOne(map);
		return user;
	}
	
	public HashMap<String, Object> getLogin(String id, String pass){
		HashMap<String, Object> map = new HashMap<>();
		HashMap<String, Object> map2 = new HashMap<>();
		map.put("id", id);
		NomalUser user = nDao.selectOne(map);
		if(user != null){
			if(user.getNomalPass().equals(pass)){
				map2.put("name", user.getName());
				map2.put("id",user.getNomalId());
				map2.put("email", user.getEmail());
				String[] userarea= user.getAddress().split(" ");
				System.out.println(userarea[1]);
				map2.put("userarea", userarea[1]);
				return map2;
			}else{
				return null;
			}
		}else{
			return null;
		}
	}

	@Override
	public List<ComBoard> selectLimitDesc() {
		List<ComBoard> list = nDao.selectLimitDesc();
		return list;
	}

	@Override
	public HashMap<String, Object> areaJobNum(String json){
		ObjectMapper mapper = new ObjectMapper();
		HashMap<String, Object> map = null;
		try {
			map = (HashMap)mapper.readValue(new File(json), HashMap.class);
			for ( String key : map.keySet() ){
				for (Iterator localIterator = ((List)map.get(key)).iterator(); localIterator.hasNext(); ){
					Object obj = localIterator.next();
					HashMap<String, Object> iw = new HashMap<>();
					iw.put("kiring", ((HashMap)obj).get("value").toString());
					((HashMap)obj).put("num", nDao.areaJobNum(iw));
				}
			}
		}
		
		catch(Exception e){
			System.out.println(e.toString());
		}
		return map;
	}

	@Override
	public NomalBoard boardView(int nnum) {
		// TODO Auto-generated method stub
		HashMap<String, Integer> n = new HashMap<>();
		n.put("nnum", nnum);
		NomalBoard nb = nDao.nomalView(n);
		if(nb !=null){
			nb.setNcount(nb.getNcount()+1);
			nDao.nomalUpdate(nb);
		}
		
		return nb;
	}

	
	
	
	
	
	@Override
	public HashMap<String, Object> nomalBoardList(int page, String id) {
		HashMap<String, Object> result = new HashMap<>();
		HashMap<String, Object> userid = new HashMap<>();
		userid.put("id", id);
		result.put("current", page);
		result.put("start", getStartPage(page));
		result.put("end", getEndPage(page));
		result.put("last", getLastPage(nDao.getCountBoardList(userid)));
		result.put("totalPage", nDao.getCountBoardList(userid));
		Calendar cal = Calendar.getInstance();
		SimpleDateFormat sf=new SimpleDateFormat("yyyy-MM-dd");
		HashMap<String, Object> params = new HashMap<>();
		params.put("TimeCom", sf.format(cal.getTime()));
		params.put("TimeNomal", sf.format(cal.getTime()));
		params.put("id", id);
		result.put("todayTimeCom", nDao.listComNum(params));
		result.put("todayTimeNomal", nDao.listNomalNum(params));
		params.put("offset", getOffset(page));
		params.put("boardsPerPage", 10);
		result.put("nomalBoard", nDao.selectBoardPage(params));
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
	//일반 회원가입
	@Override
	public int insertNomalUser(NomalUser nomaluser) {
		int re  = nDao.insertNomalUser(nomaluser);
		return re;
	}

	@Override
	public String idCheck(String id) {
		String msg;
		HashMap<String, Object> map = new HashMap<>();
		map.put("id", id);
		NomalUser nu = nDao.selectIdCheck(map);
		if(nu == null){
			msg = "사용 가능한 아이디 입니다";
		}else{
			msg = "존재하는 아이디 입니다. 재 입력해 주세요";
		}
		return msg;
	}
	
	@Override
	public HashMap<String, Object> getNomalBoardListByCondition(int page, 
			//@RequestParam(required=false) HashMap<String, Object> cb, 
			@RequestParam(required=false) List cb, 
			@RequestParam(required=false) String rb,
			@RequestParam(required=false) String ar) {
		// TODO Auto-generated method stub
		HashMap<String, Object> params = new HashMap<>();
		HashMap<String, Object> result = new HashMap<>();
		params.put("cb", cb);
		params.put("rb", rb);
		params.put("ar", ar);
		params.put("offset", getOffset(page));
		params.put("boardsPerPage", 5);
		Calendar cal = Calendar.getInstance();
		SimpleDateFormat sf=new SimpleDateFormat("yyyy-MM-dd");
		params.put("todayTime", sf.format(cal.getTime()));
		
		result.put("nomalBoard", nDao.selectSearchByKeyword(params));
		result.put("current", page);
		result.put("start", getStartPage(page));
		result.put("end", getEndPage(page));
		result.put("last", getLastPage(nDao.getCountSearchByKeyword(params)));

		return result;
	}

	@Override
	public int insertNomalBoard(NomalBoard nomalBoard) {
		nomalBoard.setNphone(nDao.getPhoneNum(nomalBoard));
		nDao.insertNomalBoard(nomalBoard);
		return 0;
	}

	@Override
	public int userarea(HashMap<String, Object> userarea){
		return nDao.userarea(userarea);
	}
	
	
	
	@Override
	public HashMap<String, Object> userbasic(HashMap<String, Object> userbasic){
		
		Calendar cal = Calendar.getInstance();
		SimpleDateFormat sf=new SimpleDateFormat("yyyy-MM-dd");
		HashMap<String, Object> result = new HashMap<>();
		HashMap<String, Object> params = new HashMap<>();
		HashMap<String, Object> id = new HashMap<>();
		id.put("id", userbasic.get("id"));
		System.out.println(id);
		if(userbasic.get("code").equals(1)){
			result.put("totalPage", nDao.getCountBoardList(id));
		}
		else{
			result.put("totalPage", nDao.getCountBoardListCom(id));
		}
		params.put("TimeCom", sf.format(cal.getTime()));
		params.put("TimeNomal", sf.format(cal.getTime()));
		result.put("todayTimeCom", nDao.listComNum(params));
		result.put("todayTimeNomal", nDao.listNomalNum(params));
		
		
		return result;
		
	}

	
	
	
	@Override
	public int nomalBoardModify(NomalBoard nomal){
		// TODO Auto-generated method stub
		nDao.nomalBoardModify(nomal);
		return nomal.getNnum();
	}

	public int insertNomalM(int cnum, String id, int userInfo) {
		NomalM nomalm = new NomalM();
		nomalm.setCnum(cnum);
		nomalm.setNomalId(id);
		if(userInfo == 1){
			nomalm.setNmtext("신청");
		}else{
			nomalm.setNmtext("거절");
		}
		nDao.insertNomalM(nomalm);
		return 0;
	}

	@Override
	public List<Integer> nomalMcounts(String id) {
		List<Integer> counts = new ArrayList();
		HashMap<String, Object> map = new HashMap<>();
		map.put("id", id);
		counts.add(nDao.nomalMcountAll(map));
		counts.add(nDao.nomalMcountNew(map));
		return counts;
	}
	public int deleteMesege(int mnum) {
		HashMap<String, Object> map = new HashMap<>();
		map.put("nmnum", mnum);
		int re = nDao.deleteNomalM(map);
		return 0;
	}

	@Override
	public HashMap<String, Object> selectNomalM(int page, String id) {
		HashMap<String, Object> results = new HashMap<>();	
		HashMap<String, Object> result = new HashMap<>();
		HashMap<String, Object> re = new HashMap<>();
		re.put("id", id);
		result.put("current", page);
		result.put("start", getStartPage(page));
		result.put("end", getEndPage(page));
		result.put("last", getLastPage(nDao.getCountM(re)));
		result.put("totalPage", nDao.getCountM(re));
		
		results.put("offset", getOffset(page));
		results.put("boardsPerPage", 5);
		results.put("id", id);
		
		result.put("mBoard", nDao.selectNomalM(results));
		
		return result;
	}

	@Override
	public int changeNomalM(HashMap<String, Object> user) {
		// TODO Auto-generated method stub
		nDao.changeNomalM(user);
		return 0;
	}


	//---------------좌표로 거리 구하는 함수
	@Override
	public double distance(double lat1, double lon1, double lat2, double lon2, String unit) {

        double theta = lon1 - lon2;
        double dist = Math.sin(deg2rad(lat1)) * Math.sin(deg2rad(lat2)) + Math.cos(deg2rad(lat1)) * Math.cos(deg2rad(lat2)) * Math.cos(deg2rad(theta));

        dist = Math.acos(dist);
        dist = rad2deg(dist);
        dist = dist * 60 * 1.1515;
         
        if (unit == "kilometer") {
            dist = dist * 1.609344;
        } else if(unit == "meter"){
            dist = dist * 1609.344;
        }
 
        return (dist);
    }


	
    private double deg2rad(double deg) {
        return (deg * Math.PI / 180.0);
    }
     
    private double rad2deg(double rad) {
        return (rad * 180 / Math.PI);
    }

	@Override
	public String amguna() {
		// TODO Auto-generated method stub
		return nDao.amguna();
	}

	@Override
	public String amguna2() {
		// TODO Auto-generated method stub
		return nDao.amguna2();
	}

}
