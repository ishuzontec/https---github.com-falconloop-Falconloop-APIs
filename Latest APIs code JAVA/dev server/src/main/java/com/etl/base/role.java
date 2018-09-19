package com.etl.base;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.etl.util.MYSQLConnection;
import com.etl.util.MYSQLHelper;

public class role {

	public int RoleId;
	public String Role;
	public String RolePermission;
	public String CreatedDate;
	public String Result;
	public String Error;

	
	
	private void setRolePer(String RolePermission)
	{
		this.RolePermission = RolePermission;
	}
	
	private String getRolePermission() {
		return RolePermission;
	}
	
	
	private void setRoleId(int RoleId) {
		this.RoleId = RoleId;
	}

	private int getRoleId() {
		return RoleId;
	}

	private void setRole(String Role) {
		this.Role = Role;
	}

	private String getRole() {
		return Role;
	}

	private void setCreatedDate(String CreatedDate) {
		this.CreatedDate = CreatedDate;
	}

	private String getCreatedDate() {
		return CreatedDate;
	}

	private void setResult(String Result) {
		this.Result = Result;
	}

	private String getResult() {
		return Result;
	}

	private void setError(String Error) {
		this.Error = Error;
	}

	private String getError() {
		return Error;
	}

	public static ArrayList<role> getroleDetails() {
		Connection _Connection = MYSQLConnection.GetConnection();

		ArrayList<role> _roleDetaillist = new ArrayList<role>();

		MYSQLHelper _MYSQLHelper = new MYSQLHelper();
		try {
			ResultSet _ResultSet = _MYSQLHelper.GetResultSet("SELECT * FROM roles ", _Connection);			
			while (_ResultSet.next()) {
				role _role = new role();
				_role.setRoleId(_ResultSet.getInt("roleId"));
				_role.setRole(_ResultSet.getString("role"));
				_role.setRolePer(_ResultSet.getString("permissions"));
				_role.setCreatedDate(_ResultSet.getString("createdDate"));
				_role.setResult("Success");
				_roleDetaillist.add(_role);
			}
			_ResultSet.close();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {

			if (_Connection != null) {
				try {
					_Connection.close();
				} catch (SQLException e) {
					// logger.error(e.getMessage() + " Stack Trace: " +
					// e.getStackTrace());
				}
			}
		}

		return _roleDetaillist;
	}
	
	
public role getroleDetailById(int roleId) {
		
	role _role=new role();
		Connection _Connection = MYSQLConnection.GetConnection();
		
		 try
			{
				
				if(_Connection!=null)
				{
				
					MYSQLHelper _MYSQLHelper = new MYSQLHelper();
					ResultSet _ResultSet = _MYSQLHelper.GetResultSet("SELECT * FROM roles where roleId='"+roleId+"'",_Connection);
					if (_ResultSet.next())
					{
						_role.setRoleId(_ResultSet.getInt("roleId"));
						_role.setRole(_ResultSet.getString("role"));
						_role.setRolePer(_ResultSet.getString("permissions"));
						_role.setCreatedDate(_ResultSet.getString("createdDate"));
						_role.setResult("Success");	
						_role.setRoleId(roleId);
						
						
					}
					else{
						_role.setResult("Failed");
						_role.setError("Invalid Role Id!");
						
			    	}
					
				}
				else{
					_role.setResult("Failed");
					_role.setError("Error in api backend connectivity !");
					
		    	}
			}
		 catch(Exception e)
		 {
			 
		 }
			finally {
				if (_Connection != null) {
					try {
						_Connection.close();
					} catch (SQLException e) {
						
					}
				}
			}	
		 return _role; 
	  }


}
