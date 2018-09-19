package com.etl.base;

import java.sql.Connection;
import java.sql.ResultSet;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;

import com.etl.util.MYSQLConnection;
import com.etl.util.MYSQLHelper;

import sun.misc.BASE64Decoder;

public class Authentication {
	public String Token;
	public String Result;

	private void setToken(String Token) {
		this.Token = Token;
	}

	private String getToken() {
		return Token;
	}

	private void setResult(String Result) {
		this.Result = Result;
	}

	private String getResult() {
		return Result;
	}


	
public Authentication getAuthentication(String authString) {
		
		Authentication _Authentication=new Authentication();
		String decodedAuth = authString;
		String tokenExpiry = "";
		SimpleDateFormat formatC = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		Calendar calC = Calendar.getInstance();
		String dateC = formatC.format(calC.getTime());
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		
		
		Connection _Connection = MYSQLConnection.GetConnection();
		MYSQLHelper _MYSQLHelper = new MYSQLHelper();
		String _data="";
		if(authString.contains("test"))
		{
			 _data="where TestToken=";
		}
		else{
			 _data="where LiveToken=";
		}
		
		String dd="SELECT * FROM merchantkey"+" "+_data +"'"+ decodedAuth + "'";
		try {
			//ResultSet _ResultSet = _MYSQLHelper.GetResultSet("SELECT * FROM users where Token='" + decodedAuth + "'",
			_Authentication.setResult("Not Authenticated");
			ResultSet _ResultSet = _MYSQLHelper.GetResultSet("SELECT * FROM merchantkey"+" "+_data +"'"+ decodedAuth + "'",
					_Connection);
			if (_ResultSet.next()) {	
				
				_Authentication.setResult("Authenticated");
				
				/*tokenExpiry=_ResultSet.getString("ExpiryDate");		
				
				Date dateCurrent = sdf.parse(dateC);
				Date date1ExpiryToken = sdf.parse(tokenExpiry);				
				if(date1ExpiryToken.before(dateCurrent))
				{
					_Authentication.setResult("Not Authenticated");
				}
				else
				{
					_Authentication.setResult("Authenticated");
				}
				*/
				
				
			}
			
		} catch (Exception e) {
			_Authentication.setResult("Not Authenticated");
		}
		return _Authentication;
	}
	
	
	
	
	///

	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	public Authentication getAuthenticationTest(String Username) {
		Authentication _Authentication = new Authentication();

		String name = Username;
		//String password = Password;
		//String authString = name + ":" + password;

		// String gg=Username;
		// isUserAuthenticated(gg);

		// String authStringEnc = new
		// BASE64Encoder().encode(authString.getBytes());
		// System.out.println("Base64 encoded auth string: " + authStringEnc);
		_Authentication.setToken("ishu");
		return _Authentication;
	}

	

	public boolean isUserAuthenticated(String authString) {

		String decodedAuth = "";
		String tokenExpiry = "";
		
		Connection _Connection = MYSQLConnection.GetConnection();
		MYSQLHelper _MYSQLHelper = new MYSQLHelper();
		String authInfo = authString;
		// Decode the data back to original string
		byte[] bytes = null;
		try {
			bytes = new BASE64Decoder().decodeBuffer(authInfo);

		} catch (Exception e) {

			e.printStackTrace();
		}
		decodedAuth = new String(bytes);
		System.out.println(decodedAuth);
		try {
			ResultSet _ResultSet = _MYSQLHelper.GetResultSet("SELECT * FROM users where Token='" + decodedAuth + "'",
					_Connection);
			if (_ResultSet.next()) {
				SimpleDateFormat formatC = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
				Calendar calC = Calendar.getInstance();
			
				String dateC = formatC.format(calC.getTime());
				
				tokenExpiry=_ResultSet.getString("ExpiryDate");
				
				
				SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
				Date dateCurrent = sdf.parse(dateC);
				Date date1ExpiryToken = sdf.parse(tokenExpiry);
				
				if(date1ExpiryToken.before(dateCurrent))
				{
					System.out.print("Bdi");
				}
				else
				{
					System.out.print("choti");
				}
			}
		} catch (Exception e) {

		}
		return true;
	}
}
