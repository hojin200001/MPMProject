package controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.OutputStream;
import java.net.URLEncoder;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.util.FileCopyUtils;
import org.springframework.web.servlet.view.AbstractView;

//첨부파일을 다운로드 받기위한 커스텀 View 만들기

public class DownloadView extends AbstractView {
	
	//파일 객체를 필드로
	private File file;
	
	public DownloadView(File file) {
		// TODO Auto-generated constructor stub
		setContentType("application/download; utf-8");
		this.file = file;
	}
	
	@Override
	protected void renderMergedOutputModel(Map<String, Object> arg0, 
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		// TODO Auto-generated method stub
		
		response.setContentType(getContentType()); //컨텐츠 타입 설정
		response.setContentLength((int)file.length()); //다운로드 되는 파일의 크기
		
		String userAgent = request.getHeader("User-Agent");
		
		boolean ie = userAgent.indexOf("MSIE") > -1;//브라우저가 IE인지 판별
		
		String fileName = null;
		
		if(ie){//브라이주별 인코딩
			fileName = URLEncoder.encode(file.getName(), "utf-8");			
		}
		else{
			fileName = new String(file.getName().getBytes("utf-8"));
		}
		
		response.setHeader("Content-Disposition", "attachment; filename=\""
				+ fileName + "\";");
		response.setHeader("Content-Transfer-Encoding", "binary");//전송 데이터의 바이너리 인코딩 형식
		
		OutputStream out = response.getOutputStream();
		
		FileInputStream fis = null;
		
		try{			
			fis = new FileInputStream(file);
			FileCopyUtils.copy(fis, out);
		}
		catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		finally{
			if(fis != null){
				try{fis.close();}
				catch(Exception e){
					
				}
			}
		}
		out.flush();	
	}
}
