package com.project.home.member.kds;

import java.io.FileInputStream;
import java.io.IOException;
import java.net.URLEncoder;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/member/board/free/download.do")
public class Download extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		// Download.java
		// download.do?filename=a.png&orgfilename=a.png&seq=10

		// �ٿ�ε� Ƚ�� ����(DB)
		String freeSeq = request.getParameter("freeSeq");

		FreeDAO dao = new FreeDAO();
		dao.updateDownloadCount(freeSeq);

		// ���� �ٿ�ε� ó��
		String fileName = request.getParameter("filename");
		String orgfileName = request.getParameter("orgfilename");

		String savePath = "/files";
		ServletContext context = getServletContext();
		String sDownloadPath = context.getRealPath(savePath);

		String sFilePath = sDownloadPath + "/" + fileName;
		byte b[] = new byte[4096];
		FileInputStream in = new FileInputStream(sFilePath);
		String sMimeType = getServletContext().getMimeType(sFilePath);
		System.out.println("sMimeType>>>" + sMimeType);

		if (sMimeType == null)
			sMimeType = "application/octet-stream";// MIME. ���������� �ؼ��� �� ���� �����Ͷ�� Ÿ���� �ӿ��� ������ �۾� �� �ϳ�

		response.setContentType(sMimeType);
		String agent = request.getHeader("User-Agent");
		boolean ieBrowser = (agent.indexOf("MSIE") > -1) || (agent.indexOf("Trident") > -1);

		if (ieBrowser) {
			orgfileName = URLEncoder.encode(orgfileName, "UTF-8").replaceAll("/+", "%20");
		} else {
			orgfileName = new String(orgfileName.getBytes("UTF-8"), "iso-8859-1");
		}

		response.setHeader("Content-Disposition", "attachment; filename= " + orgfileName); // a1.png -> a.png

		ServletOutputStream out2 = response.getOutputStream();
		int numRead;

		while ((numRead = in.read(b, 0, b.length)) != -1) {
			out2.write(b, 0, numRead);
		}

		out2.flush();
		out2.close();
		in.close();

	}

}
