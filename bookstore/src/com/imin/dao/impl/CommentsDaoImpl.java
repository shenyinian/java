package com.imin.dao.impl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.ResultSetHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import com.imin.dao.ICommentsDao;
import com.imin.domain.Comment;
import com.imin.domain.Customer;
import com.imin.utils.DButil;

public class CommentsDaoImpl implements ICommentsDao {

	
	public List<Comment> selectCommentsByBookId(String bid) throws SQLException {
		String sql = "select c.nickname,c.picurl,cs.content,cs.commenttime,cs.satisdegree"
				+ " from customer c join comments cs on c.cid = cs.cid where cs.bid=?"
				+ " order by str_to_date(commenttime,'%Y-%m-%d %H:%i:%s') desc  limit 0,4";
		QueryRunner qr = new QueryRunner(DButil.getDataSource());
		@SuppressWarnings("unchecked")
		List<Comment> list = (List<Comment>) qr.query(sql, new MyResultSetHandler(),bid);
		return list;
	}
	
	

}
/**
 * @Description: 自定义ResultSetHandler
 * @Version:1.0
 * @author nick
 * @date 2018年9月26日
 */
class MyResultSetHandler implements ResultSetHandler{

	public List<Comment> handle(ResultSet rs) throws SQLException {
		List<Comment> list = new ArrayList<Comment>();
		while (rs.next()) {
			Comment c = new Comment();
			Customer cs = new Customer();
			String nickname = rs.getString("nickname");
			cs.setNickname(nickname);
			String picurl = rs.getString("picurl");
			cs.setPicurl(picurl);
			c.setCustomer(cs);
			c.setContent(rs.getString("content"));
			c.setCommentTime(rs.getString("commenttime"));
			c.setSatisDegree(rs.getInt("satisdegree"));
			list.add(c);
		}
		return list;
	}

	
}