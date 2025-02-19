package in.foodlink.FoodLink.repository;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.PreparedStatementSetter;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import in.foodlink.FoodLink.model.Register;
@Repository
public class RegisterRepo {

	
	@Autowired
	JdbcTemplate jTemplate; 
	//-------------------------------Add Data-------------------------------------------------
	public boolean isRegister(Register register){
	    int v = jTemplate.update("INSERT INTO users (fullname, email, username, password) VALUES (?,?,?,?)", 
		    new PreparedStatementSetter() {
		        @Override
		        public void setValues(PreparedStatement ps) throws SQLException {
		            ps.setString(1, register.getFullname());
		            ps.setString(2, register.getEmail());
		            ps.setString(3, register.getUsername());
		            ps.setString(4, register.getPassword());
		        }
		    });

		return v > 0;
	}
	
	//-------------------------------Get Data-------------------------------------------------
	
	
	List<Register> list;
	
	public List<Register> getRegisters()
	{
		
		list=jTemplate.query("select * from users",new RowMapper<Register>() {

			@Override
			public Register mapRow(ResultSet rs, int rowNum) throws SQLException {
					Register r = new Register();
					r.setRid(rs.getInt(1));
					r.setFullname(rs.getString(2));
					r.setEmail(rs.getString(3));
					r.setUsername(rs.getString(4));
					r.setPassword(rs.getString(5));
				return r;
			}
		});
		
		return list.size()>0?list:null;
	}

	public Register getRegister(Register r)
	{
		
		list= jTemplate.query("select * from users where username=? and password=?",new PreparedStatementSetter() {
			
			@Override
			public void setValues(PreparedStatement ps) throws SQLException {	
				ps.setString(1,r.getUsername());
				ps.setString(2,r.getPassword());
			}
		},new RowMapper<Register>() {

			@Override
			public Register mapRow(ResultSet rs, int rowNum) throws SQLException {
				Register row = new Register();
				row.setRid(rs.getInt(1));
				row.setFullname(rs.getString(2));
				row.setEmail(rs.getString(3));
				return row;
			}
		});
		
		
		return list.size()>0?list.get(0):null;
	}
	

}
