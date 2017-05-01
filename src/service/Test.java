package service;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.FileSystemXmlApplicationContext;

import dao.FreeBoardDao;
import model.FreeBoard;

public class Test {
	public static void main(String[] args) {
		
		ApplicationContext context = new FileSystemXmlApplicationContext("WebContent/WEB-INF/applicationContext.xml");
		
		FreeBoardDao dao = context.getBean("freeBoardDao",FreeBoardDao.class);
		
		FreeBoard f = new FreeBoard();
		
		for(int i=0; i<100; i++){
			f.setTitle("라면좋아 "+i);
			f.setCreateName("MPMManager"+i);
			f.setConValue("라면 맛이 참~좋은데 "+i);
			dao.insertFreeBoard(f);
		}
		
		for(int i=0; i<100; i++){
			f.setTitle("우동좋아 "+i);
			f.setCreateName("Manager"+i);
			f.setConValue("우동 맛이 참~좋은데 "+i);
			dao.insertFreeBoard(f);
		}
		
		
	}
}
