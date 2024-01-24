package dao;


import java.io.UnsupportedEncodingException;
import java.sql.SQLException;
import java.util.List;
import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import model.Cart;
import mybatis.MybatisConnection;


@Repository
public class CartMybatisDao {

	@Autowired
	SqlSessionTemplate sqlSession; 
	private static final String ns = "cart.";
	
	
	public int addToAproducts(Cart cart) throws SQLException {
	  	
		
		return sqlSession.insert(ns+"addToAproducts", cart);
	}

	public List<Cart> jumunList(String userid) throws SQLException {
		
	return sqlSession.selectList(ns+"jumunList", userid);

	}
	public List<Cart> myList(String userid) throws SQLException {
		
	return sqlSession.selectList(ns+"myList", userid);

	}
	
	public int jumunDelete(int num) throws UnsupportedEncodingException, SQLException {


	      return sqlSession.update(ns + "jumunDelete", num);

	   } 
	}

