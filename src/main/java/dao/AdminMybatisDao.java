package dao;

import java.io.UnsupportedEncodingException;
import java.sql.SQLException;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

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
	
	
}
