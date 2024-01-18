package dao;


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
	  	
		int num = sqlSession.insert(ns+"addToAproducts", cart);
		sqlSession.commit();
		return num;
	}

	public List<Cart> jumunList(String userid) throws SQLException {
		List<Cart> li = sqlSession.selectList(ns+"jumunList", userid);
	return li;

	}
	public List<Cart> myList(String userid) throws SQLException {
		List<Cart> li = sqlSession.selectList(ns+"myList", userid);
	return li;

	}
	
	}

