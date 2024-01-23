package dao;

import java.io.UnsupportedEncodingException;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import model.Amem;
import model.Auction;
import model.Report;
import mybatis.AMemberAnno;
import mybatis.AReportAnno;

@Repository
public class AdminMybatisDao {

	
	@Autowired
	SqlSessionTemplate sqlSession;
	
	

	public int insertReport(Report rep) throws UnsupportedEncodingException, SQLException {
	   
		

		return sqlSession.getMapper(AReportAnno.class).insertReport(rep);
	}


	/*
	 * public int oneBoardByOtherUser(int pnum) {
	 * 
	 * return sqlSession.getMapper(AReportAnno.class).oneBoardByOtherUser(pnum); }
	 */

	public Auction oneReport(int pnum) throws SQLException {
        System.out.println(pnum);
		
		return sqlSession.getMapper(AReportAnno.class).oneReport(pnum);

	}
	
	public List<Report> selectReportList() {
        
		
		return sqlSession.getMapper(AReportAnno.class).selectReportList();

	}
	
	public List<Report> contentReport(int reportpnum, String amemid) {
		
		Map map = new HashMap();
		map.put("reportpnum", reportpnum);
		map.put("amemid", amemid);
	    return sqlSession.getMapper(AReportAnno.class).contentReport(map);
	
	
	
}
}