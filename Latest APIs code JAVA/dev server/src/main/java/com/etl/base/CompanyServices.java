package com.etl.base;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.text.SimpleDateFormat;
import java.util.Calendar;

import com.etl.util.MYSQLConnection;
import com.etl.util.MYSQLHelper;

public class CompanyServices {

	public int CompanyServicesId;
	public int CompanyId;
	public String CompanyServices;
	public String CreatedDate;
	public String Result;
	public String Error;

	private void setcompanyServicesId(int companyServicesId) {
		this.CompanyServicesId = companyServicesId;
	}

	private int getcompanyServicesId() {
		return CompanyServicesId;
	}

	private void setcompanyId(int companyId) {
		this.CompanyId = companyId;
	}

	private int getcompanyId() {
		return CompanyId;
	}

	private void setcompanyServices(String companyServices) {
		this.CompanyServices = companyServices;
	}

	private String getcompanyServices() {
		return CompanyServices;
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

	public CompanyServices addCompanyServices(int CompanyId, String CompanyServices) {
		CompanyServices _CompanyServices = new CompanyServices();
		Connection _Connection = MYSQLConnection.GetConnection();
		PreparedStatement _PreparedStatement = null;
		MYSQLHelper _MYSQLHelper = new MYSQLHelper();
		if (_Connection != null) {

			try {

				String _queryRole = "SELECT * FROM company where Company_Id='" + CompanyId + "'";
				ResultSet _ResultSetRole = _MYSQLHelper.GetResultSet(_queryRole, _Connection);
				if (_ResultSetRole.next()) {
					String _querycompanyservices = "SELECT * FROM companyservices where companyId='" + CompanyId + "'";
					ResultSet _ResultSetServices = _MYSQLHelper.GetResultSet(_querycompanyservices, _Connection);
					if (!_ResultSetServices.next()) {

						String[] arrOfStrCompanyServices = CompanyServices.split(",");
						boolean ictr = true;
						for (int i = 0; i < arrOfStrCompanyServices.length; i++) {
							String _queryRoleService = "SELECT * FROM services where servicesId='"
									+ arrOfStrCompanyServices[i] + "'";
							ResultSet _ResultSetService = _MYSQLHelper.GetResultSet(_queryRoleService, _Connection);
							if (!_ResultSetService.next()) {
								ictr = false;
							}
						}
						if (ictr) {

							int _lResultId = _addCompanyService(CompanyId, CompanyServices);
							_CompanyServices.setcompanyServicesId(_lResultId);
							_CompanyServices.setResult("Success");
						} else {
							_CompanyServices.setResult("Failed");
							_CompanyServices.setError("Invalid Service Id, Please sent correct Service Ids!");
						}
					} else {
						int _lResultId = _updateCompanyService(CompanyId, CompanyServices);
						if (_lResultId > 0) {
							_CompanyServices.setcompanyId(CompanyId);
							_CompanyServices.setResult("Success");
						} else {
							_CompanyServices.setResult("Failed");
							_CompanyServices.setError("an error occured, please contact to system administrator!");
						}
					}

				} else {
					_CompanyServices.setResult("Failed");
					_CompanyServices.setError("Invalid Company Id!");
				}

			} catch (Exception e) {

			}
		} else {
			_CompanyServices.setResult("Failed");
			_CompanyServices.setError("Error in api backend connectivity !");
		}

		return _CompanyServices;
	}

	public CompanyServices updateCompanyServices(int CompanyId, String CompanyServices) {
		CompanyServices _CompanyServices = new CompanyServices();

		Connection _Connection = MYSQLConnection.GetConnection();
		PreparedStatement _PreparedStatement = null;
		MYSQLHelper _MYSQLHelper = new MYSQLHelper();
		if (_Connection != null) {
			try {
				String _queryRole = "SELECT * FROM company where Company_Id='" + CompanyId + "'";
				ResultSet _ResultSetRole = _MYSQLHelper.GetResultSet(_queryRole, _Connection);
				if (_ResultSetRole.next()) {

					String[] arrOfStrCompanyServices = CompanyServices.split(",");
					boolean ictr = true;
					for (int i = 0; i < arrOfStrCompanyServices.length; i++) {
						String _queryRoleService = "SELECT * FROM services where servicesId='"
								+ arrOfStrCompanyServices[i] + "'";
						ResultSet _ResultSetService = _MYSQLHelper.GetResultSet(_queryRoleService, _Connection);
						if (!_ResultSetService.next()) {
							ictr = false;
						}
					}

					if (ictr) {

						int _lResultId = _updateCompanyService(CompanyId, CompanyServices);
						if (_lResultId > 0) {
							_CompanyServices.setcompanyId(CompanyId);
							_CompanyServices.setResult("Success");
						} else {
							_CompanyServices.setResult("Failed");
							_CompanyServices.setError("an error occured, please contact to system administrator!");
						}

					} else {
						_CompanyServices.setResult("Failed");
						_CompanyServices.setError("Invalid Service Id, Please sent correct Service Ids!");
					}
				} else {
					_CompanyServices.setResult("Failed");
					_CompanyServices.setError("Invalid Company Id!");
				}
			} catch (Exception e) {

			}

		} else {
			_CompanyServices.setResult("Failed");
			_CompanyServices.setError("Error in api backend connectivity !");
		}
		return _CompanyServices;
	}

	public int _addCompanyService(int CompanyId, String CompanyServices) {
		int _result = 0;

		Connection _Connection = MYSQLConnection.GetConnection();
		PreparedStatement _PreparedStatement = null;
		MYSQLHelper _MYSQLHelper = new MYSQLHelper();
		if (_Connection != null) {
			try {
				String _queryRole = "SELECT * FROM company where Company_Id='" + CompanyId + "'";
				ResultSet _ResultSetRole = _MYSQLHelper.GetResultSet(_queryRole, _Connection);
				if (_ResultSetRole.next()) {
					SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
					Calendar cal = Calendar.getInstance();
					String date = format.format(cal.getTime());

					String sInsertStatement = "INSERT INTO companyservices(companyId,companyServices,createdDate)";
					sInsertStatement = sInsertStatement + " VALUES(?, ?, ?)";

					_PreparedStatement = _Connection.prepareStatement(sInsertStatement);
					_PreparedStatement.setInt(1, CompanyId);
					_PreparedStatement.setString(2, CompanyServices);
					_PreparedStatement.setString(3, date);
					_PreparedStatement.executeUpdate();
					ResultSet _ResultSetld = _MYSQLHelper.GetResultSet(
							"SELECT MAX(companyServicesId) AS companyServicesId FROM companyservices", _Connection);
					if (_ResultSetld.next()) {
						int lastid = _ResultSetld.getInt("companyServicesId");
						_result = lastid;
					}
				}

			} catch (Exception e) {

			}
		}
		return _result;
	}

	public int _updateCompanyService(int CompanyId, String CompanyServices) {
		int _result = 0;

		CompanyServices _CompanyServices = new CompanyServices();
		Connection _Connection = MYSQLConnection.GetConnection();
		PreparedStatement _PreparedStatement = null;
		MYSQLHelper _MYSQLHelper = new MYSQLHelper();

		try {

			String _queryRole = "SELECT * FROM company where Company_Id='" + CompanyId + "'";
			ResultSet _ResultSetRole = _MYSQLHelper.GetResultSet(_queryRole, _Connection);
			if (_ResultSetRole.next()) {

				SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
				Calendar cal = Calendar.getInstance();
				String date = format.format(cal.getTime());

				String sInsertStatement = "UPDATE companyservices SET companyservices = ?,createdDate = ? "
						+ " WHERE companyId = ?";
				_PreparedStatement = _Connection.prepareStatement(sInsertStatement);

				_PreparedStatement.setString(1, CompanyServices);
				_PreparedStatement.setString(2, date);
				_PreparedStatement.setInt(3, CompanyId);
				_PreparedStatement.executeUpdate();
				_result = 1;

			}

		} catch (Exception e) {
			_result = 0;
		}

		return _result;
	}

	public CompanyServices _getCompanyServicedetails(int CompanyId) {
		CompanyServices _CompanyServices = new CompanyServices();

		Connection _Connection = MYSQLConnection.GetConnection();
		MYSQLHelper _MYSQLHelper = new MYSQLHelper();
		if (_Connection != null) {
			try {
				ResultSet _ResultSet = _MYSQLHelper
						.GetResultSet("SELECT * FROM companyservices where CompanyId='" + CompanyId + "'", _Connection);
				if (_ResultSet.next()) {
					_CompanyServices.setcompanyServicesId(_ResultSet.getInt("companyServicesId"));
					_CompanyServices.setcompanyId(_ResultSet.getInt("companyId"));
					_CompanyServices.setcompanyServices(_ResultSet.getString("companyServices"));
					_CompanyServices.setCreatedDate(_ResultSet.getString("createdDate"));
					_CompanyServices.setResult("Success");

				} else {
					_CompanyServices.setResult("Failed");
					_CompanyServices.setError("Invalid Company Id!");
				}
			} 
			catch (Exception e) {
				_CompanyServices.setResult("Failed");
				_CompanyServices.setError("an error occured, please contact to system administrator!");
			}

		} else {
			_CompanyServices.setResult("Failed");
			_CompanyServices.setError("Error in api backend connectivity !");
		}
		return _CompanyServices;
	}

}
