package com.etl.base;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.etl.util.MYSQLConnection;
import com.etl.util.MYSQLHelper;

public class modules {

	
	public int ModuelId;
	public String ModuelName;
	public String ModuelDescription;
	public String CreatedDate;
	public String Result;
	public String Error;
	
	private void setModuelId(int ModuelId) {
		this.ModuelId = ModuelId;
	}

	private int getModuelId() {
		return ModuelId;
	}

	private void setModuelName(String ModuelName) {
		this.ModuelName = ModuelName;
	}

	private String getModuelName() {
		return ModuelName;
	}
	private void setModuelDescription(String ModuelDescription) {
		this.ModuelDescription = ModuelDescription;
	}

	private String getModuelDescription() {
		return ModuelDescription;
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
	
	
	
	
	public static ArrayList<modules> getmodulesDetails() {
		Connection _Connection = MYSQLConnection.GetConnection();
		ArrayList<modules> _modulesDetaillist = new ArrayList<modules>();

		MYSQLHelper _MYSQLHelper = new MYSQLHelper();
		try {
			ResultSet _ResultSet = _MYSQLHelper.GetResultSet("SELECT * FROM modules ", _Connection);			
			while (_ResultSet.next()) {
				modules _modules = new modules();
				_modules.setModuelId(_ResultSet.getInt("moduelId"));
				_modules.setModuelName(_ResultSet.getString("moduelName"));
				_modules.setModuelDescription(_ResultSet.getString("moduelDesc"));
				_modules.setCreatedDate(_ResultSet.getString("createdDate"));
				_modules.setResult("Success");
				_modulesDetaillist.add(_modules);
			}
			_ResultSet.close();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {

			if (_Connection != null) {
				try {
					_Connection.close();
				} catch (SQLException e) {
					
				}
			}
		}

		return _modulesDetaillist;
	}
	
	
	
	public modules getmodulesDetailById(int moduelId) {
		
		modules _modules=new modules();
			Connection _Connection = MYSQLConnection.GetConnection();
			
			 try
				{
					
					if(_Connection!=null)
					{
					
						MYSQLHelper _MYSQLHelper = new MYSQLHelper();
						ResultSet _ResultSet = _MYSQLHelper.GetResultSet("SELECT * FROM modules where moduelId='"+moduelId+"'",_Connection);
						if (_ResultSet.next())
						{
							_modules.setModuelId(_ResultSet.getInt("moduelId"));
							_modules.setModuelName(_ResultSet.getString("moduelName"));
							_modules.setModuelDescription(_ResultSet.getString("moduelDesc"));
							_modules.setCreatedDate(_ResultSet.getString("createdDate"));
							_modules.setResult("Success");			
							
							
						}
						else{
							_modules.setResult("Failed");
							_modules.setError("Invalid ModuleId!");
							
				    	}
						
					}
					else{
						_modules.setResult("Failed");
						_modules.setError("Error in api backend connectivity !");
						
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
			 return _modules; 
		  }

}
