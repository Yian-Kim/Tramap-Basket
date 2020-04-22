package com.project.home.member.kds;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;

import com.project.home.DBUtil;
public class FreeDAO {

	private Connection conn;
	private PreparedStatement stat;
	private ResultSet rs;

	public FreeDAO() {

		DBUtil util = new DBUtil();
		conn = util.connect("211.63.89.56","test35","java1234");
	}
	public void close() {
		try {
			conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	

	//--------------------------------------------------------------------
	public int getTotalCount(HashMap<String, String> map) {
		
		try {
			//검색 쿼리
			String where = "";
			
			if(map.get("isSearch").equals("true")) {
				where = String.format("where %s like '%%%s%%'" , map.get("column")
															   , map.get("word"));
			
			}//if
			
			//전체 카운트 쿼리
			String sql = String.format("select count(*) as allcnt from vwfreeb %s", where);
			
			stat = conn.prepareStatement(sql);
			rs = stat.executeQuery();
			
			if(rs.next()) {
				return rs.getInt("allcnt");
			}
			
			
		} catch (Exception e) {
			
			System.out.println("FreeDAO.getTotalCount : " + e.toString());
			
		}
				
		
		return 0;
	}

	//--------------------------------------------------------------------
	public ArrayList<FreeDTO> list(HashMap<String, String> map) {
		
		
		try {
			
			
			//검색 쿼리
			String where = "";
			
			if (map.get("isSearch").equals("true")) {
				where = String.format("and %s like '%%%s%%'"
														, map.get("column")					                                                                                                                                                                         
														, map.get("word"));
			}
						
			//String tag = "";
			
			//공지사항 맨위로 쿼리
			String sql = String.format("select 0, a.* from vwfreeb a where notice = 1 union select * from" + 
					"(select rownum as rnum, a.* from" + 
					"(select * from vwfreeb where notice = 0 %s order by freeseq desc) a)" + 
					"where rnum between %s and %s" 		, where
											
					, map.get("begin")
														, map.get("end")
														);
			//System.out.println(sql);
			
			stat = conn.prepareStatement(sql);
			
			rs = stat.executeQuery();
			
			ArrayList<FreeDTO> list = new ArrayList<FreeDTO>();
			
			//System.out.println(list.size());
									
			//불러오기
			while (rs.next()) {
				
				FreeDTO dto = new FreeDTO();
				
				dto.setFreeSeq(rs.getString("freeseq")); //글번호
				dto.setSubject(rs.getString("subject")); //제목
				dto.setId(rs.getString("id")); //id
				dto.setContent(rs.getString("content")); //내용
				dto.setRegdate(rs.getString("regdate")); //작성시간
				dto.setCnt(rs.getInt("cnt")); //조회수
				dto.setNotice(rs.getString("notice")); //공지사항
				dto.setFilename(rs.getString("filename")); 
				dto.setGap(rs.getInt("gap")); //최신글
				dto.setName(rs.getString("name")); //이름
				dto.setCommentcount(rs.getInt("commentcount")); //댓글수
				
				
				list.add(dto);
			}
			
			return list;			
			
			
		} catch (Exception e) {
			
			System.out.println("FreeDAO.list : " + e.toString());
			
		}
		
		
		
		return null;
	}
	//-----------------------------------------------------------------------------------------------------
	public int add(FreeDTO dto) {
		try {
			
			
			String sql="INSERT INTO tblFreeBoard (freeSeq, id, subject, content, regdate, cnt, notice,filename, orgfilename) values (freeboard_seq.nextval, ?, ?, ?, default, default, ?,?,?)";
			
			stat = conn.prepareStatement(sql);
			
			
			stat.setString(1, dto.getId());
			stat.setString(2, dto.getSubject());
			stat.setString(3, dto.getContent());
			stat.setString(4, dto.getNotice());
			stat.setString(5, dto.getFilename());
			stat.setString(6, dto.getOrgfilename());
						
			return stat.executeUpdate();
			
			
		} catch (Exception e) {
			
			System.out.println("FreeDAO.add : " + e.toString());
			
		}
		
		return 0;
	}
	//-----------------------------------------------------------------------------------------------------
	public void addCnt(String freeseq) {
		try {
			
			String sql="UPDATE tblFreeBoard set cnt = cnt + 1 where freeseq = ?";
			stat = conn.prepareStatement(sql);
		
			stat.setString(1, freeseq);
			
			stat.executeUpdate();
			
		} catch (Exception e) {
			
			System.out.println("FreeDAO.addCnt : " + e.toString());
			
		}
		
		
	}
	//-----------------------------------------------------------------------------------------------------
	public FreeDTO get(String freeSeq) {
		
		
		try {
			
			String sql="select b.*, (select name from tblMemberr where id = b.id)" + 
					"as name from tblFreeboard b where freeseq = ?";
			
			stat = conn.prepareStatement(sql);
			stat.setString(1, freeSeq);
			
			rs = stat.executeQuery();
			
			FreeDTO dto = new FreeDTO();
			
			if (rs.next()) {
				
				dto.setFreeSeq(rs.getString("freeseq")); //글번호
				dto.setSubject(rs.getString("subject")); //제목
				dto.setId(rs.getString("id")); //id
				dto.setContent(rs.getString("content")); //내용
				dto.setRegdate(rs.getString("regdate")); //작성시간
				dto.setCnt(rs.getInt("cnt")); //조회수
				dto.setName(rs.getString("name"));
				dto.setFilename(rs.getString("filename"));
				dto.setOrgfilename(rs.getString("orgfilename"));
				
				//dto.setGap(rs.getInt("gap"));
												
				
				
				
				return dto;
				
			}
			
		} catch (Exception e) {
			
			System.out.println("FreeDAO.get : " + e.toString());
			
		}
		
		return null;
	}
	//-----------------------------------------------------------------------------------------------------
	public int del(String freeSeq) {
		try {			
			
			String sql1 = "DELETE FROM tblFreeComment where pfreeSeq = ?";
			String sql2 = "DELETE FROM tblFreeBoard where freeSeq = ?";
			
			stat = conn.prepareStatement(sql1);
			stat.setString(1, freeSeq);
			
			stat.executeUpdate();
			
			stat = conn.prepareStatement(sql2);
			stat.setString(1, freeSeq);		
			
			
			
			return stat.executeUpdate();
			
		} catch (Exception e) {
			System.out.println("FreeDAO.del : " + e.toString());			
		}		
		return 0;
	}
	//-----------------------------------------------------------------------------------------------------
	public int edit(FreeDTO dto) {
		try {
			
			String sql="UPDATE tblFreeBoard set subject = ?, content = ?, filename = ?, orgfilename = ? where freeSeq = ?";
			
			stat = conn.prepareStatement(sql);
			
			stat.setString(1, dto.getSubject());
			stat.setString(2, dto.getContent());
			stat.setString(3, dto.getFilename());
			stat.setString(4, dto.getOrgfilename());
			stat.setString(5, dto.getFreeSeq());
			
			return stat.executeUpdate();
						
			
		} catch (Exception e) {
			
			System.out.println("FreeDAO.edit : " + e.toString());
			
		}
		return 0;
	}
	//-----------------------------------------------------------------------------------------------------

	public int addComment(FreeCommentDTO cdto) {
		try {
			
			String sql="INSERT INTO tblFreeComment (fcseq, content, regdate, pfreeSeq, id) values (freecomment_seq.nextval, ? , default, ?, ?)";
		
			stat = conn.prepareStatement(sql);
			
			stat.setString(1, cdto.getContent());
			stat.setString(2, cdto.getPfreeSeq());
			stat.setString(3, cdto.getId());
			
			
			return stat.executeUpdate();
			
			
		} catch (Exception e) {
			
			System.out.println("FreeDAO.addComment : " + e.toString());
			
		}
		
		return 0;
	}
	
	//-----------------------------------------------------------------------------------------------------
	
	public ArrayList<FreeCommentDTO> listComment(String freeseq) {
		
		try {
			
			String sql="select c.*, (select name from tblMemberr where id = c.id) as name from tblfreecomment c where pfreeSeq = ? order by fcseq desc";
			
			stat = conn.prepareStatement(sql);
			stat.setString(1, freeseq);
			
			ArrayList<FreeCommentDTO> clist = new ArrayList<FreeCommentDTO>();
			rs = stat.executeQuery();
			
			while (rs.next()) {
				
				FreeCommentDTO cdto = new FreeCommentDTO();
				
				cdto.setFcSeq(rs.getString("fcseq"));
				cdto.setContent(rs.getString("content"));
				cdto.setName(rs.getString("name"));
				cdto.setId(rs.getString("id"));
				cdto.setPfreeSeq(rs.getString("pfreeseq"));
				
				clist.add(cdto);
				
			}
			
			return clist;
			
		} catch (Exception e) {
			
			System.out.println("FreeDAO.listComment : " + e.toString());
			
		}
		return null;
	}
	public int editComment(FreeCommentDTO cdto) {
		
		try {
			
			String sql="UPDATE tblFreeComment set content = ? where fcSeq = ?";
			stat = conn.prepareStatement(sql);
			
			stat.setString(1, cdto.getContent());
			stat.setString(2, cdto.getFcseq());
			
			return stat.executeUpdate();
			
			
		} catch (Exception e) {
			
			System.out.println("FreeDAO.editComment : " + e.toString());
			
		}
		
		
		
		
		
		return 0;
	}
	public int delComment(String fcseq) {
		
		try {
			
			String sql="DELETE FROM tblFreeComment WHERE fcseq = ?";
			stat = conn.prepareStatement(sql);
			
			stat.setString(1, fcseq);
			
			return stat.executeUpdate();		
			
			
		} catch (Exception e) {
			
			System.out.println("FreeDAO.delComment : " + e.toString());
			
		}
		
		return 0;
	}
	public void updateDownloadCount(String freeSeq) {
try {
			
			String sql = "update tblFreeBoard set downloadcount = downloadcount + 1 where freeSeq = ?";

			stat = conn.prepareStatement(sql);
			stat.setString(1, freeSeq);
			stat.executeUpdate();
			
		} catch (Exception e) {
			
			System.out.println("FreeDAO.updateDownloadCount : " + e.toString());
		}
		
	}
		
	}//class
