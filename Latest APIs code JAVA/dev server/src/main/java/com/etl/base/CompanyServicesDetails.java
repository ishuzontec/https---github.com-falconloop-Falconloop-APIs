package com.etl.base;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.etl.util.MYSQLConnection;
import com.etl.util.MYSQLHelper;

public class CompanyServicesDetails {

	public int ServicesId;
	public int CompanyId;
	public String ServicesName;
	public String Description;
	public String CreatedDate;
	public boolean IsActive;
	public boolean IsDeleted;
	public String DeletedDate;
	public String Result;
	public String Error;
	public String MultipleServicesId;
	
	
	private void setMultipleServicesId(String MultipleServicesId) {
		this.MultipleServicesId = MultipleServicesId;
	}

	private String getMultipleServicesId() {
		return MultipleServicesId;
	}

	
	private void setServicesId(int ServicesId) {
		this.ServicesId = ServicesId;
	}

	private int getServicesId() {
		return ServicesId;
	}

	private void setCompanyId(int CompanyId) {
		this.CompanyId = CompanyId;
	}

	private int getCompanyId() {
		return CompanyId;
	}

	private void setServicesName(String ServicesName) {
		this.ServicesName = ServicesName;
	}

	private String getServicesName() {
		return ServicesName;
	}

	private void setDescription(String Description) {
		this.Description = Description;
	}

	private String getDescription() {
		return Description;
	}

	private void setCreatedDate(String CreatedDate) {
		this.CreatedDate = CreatedDate;
	}

	private String getCreatedDate() {
		return CreatedDate;
	}

	private void setIsActive(Boolean IsActive) {
		this.IsActive = IsActive;
	}

	private Boolean getIsActive() {
		return IsActive;
	}

	private void setIsDeleted(Boolean IsDeleted) {
		this.IsDeleted = IsDeleted;
	}

	private Boolean getIsDeleted() {
		return IsDeleted;
	}

	private void setDeletedDate(String DeletedDate) {
		this.DeletedDate = DeletedDate;
	}

	private String getDeletedDate() {
		return DeletedDate;
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

	public static ArrayList<CompanyServicesDetails> getCompanyServicesDetails() {

		MYSQLHelper _MYSQLHelper = new MYSQLHelper();
		ArrayList<CompanyServicesDetails> _CompanyServicesDetailsDetaillist = new ArrayList<CompanyServicesDetails>();
		Connection _Connection = MYSQLConnection.GetConnection();
		try {
			ResultSet _ResultSet = _MYSQLHelper.GetResultSet("SELECT * FROM services where isActive=1 ", _Connection);
			while (_ResultSet.next()) {
				CompanyServicesDetails _CompanyServicesDetails = new CompanyServicesDetails();

				_CompanyServicesDetails.setServicesId(_ResultSet.getInt("servicesId"));
				_CompanyServicesDetails.setServicesName(_ResultSet.getString("serviceName"));
				_CompanyServicesDetails.setDescription(_ResultSet.getString("desc"));
				_CompanyServicesDetails.setCreatedDate(_ResultSet.getString("createdDate"));
				_CompanyServicesDetails.setIsActive(_ResultSet.getBoolean("isActive"));
				_CompanyServicesDetails.setIsDeleted(_ResultSet.getBoolean("isDeleted"));
				_CompanyServicesDetails.setDeletedDate(_ResultSet.getString("deleteDate"));
				_CompanyServicesDetails.setResult("Success");
				_CompanyServicesDetailsDetaillist.add(_CompanyServicesDetails);
			}
			_ResultSet.close();
		} catch (Exception e) {
			// TODO: handle exception
		}

		return _CompanyServicesDetailsDetaillist;
	}

	public static ArrayList<CompanyServicesDetails> getCompanyServicesDetailId(int CompanyId,String ServicesId) {

		MYSQLHelper _MYSQLHelper = new MYSQLHelper();
		ArrayList<CompanyServicesDetails> _CompanyServicesDetailsDetaillist = new ArrayList<CompanyServicesDetails>();
		Connection _Connection = MYSQLConnection.GetConnection();
		try {

			String[] arrOfServicesId = ServicesId.split(",");
			for (int i = 0; i < arrOfServicesId.length; i++) {
				
				
				String _queryRoleModule = "SELECT * FROM services where servicesId='" + arrOfServicesId[i] + "'";
				ResultSet _ResultSet = _MYSQLHelper.GetResultSet(_queryRoleModule, _Connection);
				if (_ResultSet.next()) {
				CompanyServicesDetails _CompanyServicesDetails = new CompanyServicesDetails();

				_CompanyServicesDetails.setServicesId(_ResultSet.getInt("servicesId"));
				_CompanyServicesDetails.setServicesName(_ResultSet.getString("serviceName"));
				_CompanyServicesDetails.setDescription(_ResultSet.getString("desc"));
				_CompanyServicesDetails.setCreatedDate(_ResultSet.getString("createdDate"));
				_CompanyServicesDetails.setIsActive(_ResultSet.getBoolean("isActive"));
				_CompanyServicesDetails.setIsDeleted(_ResultSet.getBoolean("isDeleted"));
				_CompanyServicesDetails.setDeletedDate(_ResultSet.getString("deleteDate"));
				_CompanyServicesDetails.setCompanyId(CompanyId);
				_CompanyServicesDetails.setResult("Success");
				_CompanyServicesDetailsDetaillist.add(_CompanyServicesDetails);
				}
			}
		} catch (Exception e) {
			
		}

		return _CompanyServicesDetailsDetaillist;
	}

}
