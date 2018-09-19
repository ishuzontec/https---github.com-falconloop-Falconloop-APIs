package com.etl.base;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;

import com.etl.util.MYSQLConnection;
import com.etl.util.MYSQLHelper;

public class RoleModules {

	public int RolesModuleId;
	public int RoleId;
	public String ModuelId;
	public boolean IsActive;
	public String CreatedDate;
	public boolean IsDeleted;
	public String DeletedDate;
	public String Result;
	public String Error;

	private void setrolesModuleId(int RolesModuleId) {
		this.RolesModuleId = RolesModuleId;
	}

	private int getrolesModuleId() {
		return RolesModuleId;
	}

	private void setroleId(int roleId) {
		this.RoleId = roleId;
	}

	private int getroleId() {
		return RoleId;
	}

	private void setmoduelId(String moduelId) {
		this.ModuelId = moduelId;
	}

	private String getmoduelId() {
		return ModuelId;
	}

	private void setcreatedDate(String createdDate) {
		this.CreatedDate = createdDate;
	}

	private String getcreatedDate() {
		return CreatedDate;
	}

	private void setIsActive(boolean IsActive) {
		this.IsActive = IsActive;
	}

	private boolean getIsActive() {
		return IsActive;
	}

	private void setIsDeleted(boolean IsDeleted) {
		this.IsDeleted = IsDeleted;
	}

	private boolean getIsDeleted() {
		return IsDeleted;
	}

	private void setDeletedDate(String createdDate) {
		this.DeletedDate = createdDate;
	}

	private String getDeletedDate() {
		return DeletedDate;
	}

	private void setResult(String UserResult) {
		this.Result = UserResult;
	}

	private String getResult() {
		return Result;
	}

	private void setError(String UserError) {
		this.Error = UserError;
	}

	private String getError() {
		return Error;
	}

	public RoleModules addRoleModules(int RoleId, String ModulesId) {
		RoleModules _RoleModules = new RoleModules();
		Connection _Connection = MYSQLConnection.GetConnection();
		
		MYSQLHelper _MYSQLHelper = new MYSQLHelper();
		if (_Connection != null) {
			try {
				String _queryRole = "SELECT * FROM roles where roleId='" + RoleId + "'";
				ResultSet _ResultSetRole = _MYSQLHelper.GetResultSet(_queryRole, _Connection);
				if (_ResultSetRole.next()) {

					String _queryrolesmodules = "SELECT * FROM rolesmodules where roleId='" + RoleId + "'";
					ResultSet _ResultSetRolemodules = _MYSQLHelper.GetResultSet(_queryrolesmodules, _Connection);
					if (!_ResultSetRolemodules.next()) {

						String[] arrOfStrModules = ModulesId.split(",");
						boolean ictr = true;

						for (int i = 0; i < arrOfStrModules.length; i++) {
							String _queryRoleModule = "SELECT * FROM modules where moduelId='" + arrOfStrModules[i]
									+ "'";
							ResultSet _ResultSetModule = _MYSQLHelper.GetResultSet(_queryRoleModule, _Connection);
							if (!_ResultSetModule.next()) {
								ictr = false;
							}
						}
						if (ictr) {
							int _lResultId = addModulesRole(RoleId, ModulesId);
							_RoleModules.setrolesModuleId(_lResultId);
							_RoleModules.setResult("Success");
						} else {
							_RoleModules.setResult("Failed");
							_RoleModules.setError("Invalid Module id, Please sent correct Modules Ids!");
						}
					}
					else{
						//_RoleModules.updateRoleModules(RoleId,ModulesId);
						int _lResultId = updateModulesRole(RoleId, ModulesId);
						if (_lResultId > 0) {
							_RoleModules.setroleId(RoleId);
							_RoleModules.setResult("Success");
						} else {
							_RoleModules.setResult("Failed");
							_RoleModules.setError("an error occured, please contact to system administrator!");
						}
					}
				} else {
					_RoleModules.setResult("Failed");
					_RoleModules.setError("Invalid Role-Id!");
				}
			} catch (Exception e) {
				_RoleModules.setResult("Failed");
				_RoleModules.setError(e.getMessage());
			}
		} else {
			_RoleModules.setResult("Failed");
			_RoleModules.setError("Error in api backend connectivity !");
		}
		return _RoleModules;
	}

	public RoleModules updateRoleModules(int RoleId, String ModulesId) {
		RoleModules _RoleModules = new RoleModules();
		Connection _Connection = MYSQLConnection.GetConnection();
		PreparedStatement _PreparedStatement = null;
		MYSQLHelper _MYSQLHelper = new MYSQLHelper();
		if (_Connection != null) {
			try {

				String _queryRole = "SELECT * FROM roles where roleId='" + RoleId + "'";
				ResultSet _ResultSetRole = _MYSQLHelper.GetResultSet(_queryRole, _Connection);
				if (_ResultSetRole.next()) {

					String[] arrOfStrModules = ModulesId.split(",");
					boolean ictr = true;

					for (int i = 0; i < arrOfStrModules.length; i++) {
						String _queryRoleModule = "SELECT * FROM modules where moduelId='" + arrOfStrModules[i] + "'";
						ResultSet _ResultSetModule = _MYSQLHelper.GetResultSet(_queryRoleModule, _Connection);
						if (!_ResultSetModule.next()) {
							ictr = false;
						}
					}
					if (ictr) {
						int _lResultId = updateModulesRole(RoleId, ModulesId);
						if (_lResultId > 0) {
							_RoleModules.setroleId(RoleId);
							_RoleModules.setResult("Success");
						} else {
							_RoleModules.setResult("Failed");
							_RoleModules.setError("an error occured, please contact to system administrator!");
						}
					} else {
						_RoleModules.setResult("Failed");
						_RoleModules.setError("Invalid Module id, Please sent correct Modules Ids!");
					}

				} else {
					_RoleModules.setResult("Failed");
					_RoleModules.setError("Invalid Role-Id!");
				}

			} catch (Exception e) {
				_RoleModules.setResult("Failed");
				_RoleModules.setError(e.getMessage());
			}
		} else {
			_RoleModules.setResult("Failed");
			_RoleModules.setError("Error in api backend connectivity !");
		}
		return _RoleModules;
	}

	public int addModulesRole(int RoleId, String Modules) {
		int rresult = 0;
		Connection _Connection = MYSQLConnection.GetConnection();
		PreparedStatement _PreparedStatement = null;
		MYSQLHelper _MYSQLHelper = new MYSQLHelper();
		try {
			String _queryRole = "SELECT * FROM roles where roleId='" + RoleId + "'";
			ResultSet _ResultSetRole = _MYSQLHelper.GetResultSet(_queryRole, _Connection);
			if (_ResultSetRole.next()) {
				SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
				Calendar cal = Calendar.getInstance();
				String date = format.format(cal.getTime());

				String sInsertStatement = "INSERT INTO rolesmodules(roleId,moduelId,createdDate)";
				sInsertStatement = sInsertStatement + " VALUES(?, ?, ?)";

				_PreparedStatement = _Connection.prepareStatement(sInsertStatement);
				_PreparedStatement.setInt(1, RoleId);
				_PreparedStatement.setString(2, Modules);
				_PreparedStatement.setString(3, date);
				_PreparedStatement.executeUpdate();
				ResultSet _ResultSetld = _MYSQLHelper
						.GetResultSet("SELECT MAX(rolesModuleId) AS rolesModuleId FROM rolesmodules", _Connection);
				if (_ResultSetld.next()) {
					int lastid = _ResultSetld.getInt("rolesModuleId");
					rresult = lastid;
				}
			}
		} catch (Exception e) {
			rresult = 0;
		}

		return rresult;
	}

	public int updateModulesRole(int RoleId, String Modules) {
		int rresult = 0;
		Connection _Connection = MYSQLConnection.GetConnection();
		PreparedStatement _PreparedStatement = null;
		MYSQLHelper _MYSQLHelper = new MYSQLHelper();
		try {
			String _queryRole = "SELECT * FROM roles where roleId='" + RoleId + "'";
			ResultSet _ResultSetRole = _MYSQLHelper.GetResultSet(_queryRole, _Connection);
			if (_ResultSetRole.next()) {
				SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
				Calendar cal = Calendar.getInstance();
				String date = format.format(cal.getTime());

				String sInsertStatement = "UPDATE rolesmodules SET moduelId = ?,createdDate = ? " + " WHERE roleId = ?";
				_PreparedStatement = _Connection.prepareStatement(sInsertStatement);

				_PreparedStatement.setString(1, Modules);
				_PreparedStatement.setString(2, date);
				_PreparedStatement.setInt(3, RoleId);
				_PreparedStatement.executeUpdate();
				rresult = 1;
			}
		} catch (Exception e) {
			rresult = 0;
		}

		return rresult;
	}

	public RoleModules getRoleModulesDetails(int roleIds) {
		RoleModules _RoleModules = new RoleModules();
		Connection _Connection = MYSQLConnection.GetConnection();
		if (_Connection != null) {
			try {
				MYSQLHelper _MYSQLHelper = new MYSQLHelper();
				ResultSet _ResultSet = _MYSQLHelper
						.GetResultSet("SELECT * FROM rolesmodules where roleId='" + roleIds + "' and isActive=1", _Connection);
				if (_ResultSet.next()) {
					_RoleModules.setrolesModuleId(_ResultSet.getInt("rolesModuleId"));
					_RoleModules.setroleId(_ResultSet.getInt("roleId"));
					_RoleModules.setmoduelId(_ResultSet.getString("moduelId"));
					_RoleModules.setcreatedDate(_ResultSet.getString("createdDate"));
					_RoleModules.setIsActive(_ResultSet.getBoolean("isActive"));
					_RoleModules.setIsDeleted(_ResultSet.getBoolean("IsDeleted"));
					_RoleModules.setDeletedDate(_ResultSet.getString("deletedDate"));
					_RoleModules.setResult("Success");
				} else {
					_RoleModules.setResult("failed!");
					_RoleModules.setError("Invalid Role Modules Id!");
				}
			} catch (Exception e) {
				_RoleModules.setError(e.getMessage());
				_RoleModules.setResult("failed!");
			}
		} else {
			_RoleModules.setResult("Failed");
			_RoleModules.setError("Error in api backend connectivity !");
		}

		return _RoleModules;
	}

	public RoleModules deleteRoleModulesDetails(int rolesModuleId) {
		RoleModules _RoleModules = new RoleModules();
		Connection _Connection = MYSQLConnection.GetConnection();
		if (_Connection != null) {
			try {

				PreparedStatement _PreparedStatement = null;
				MYSQLHelper _MYSQLHelper = new MYSQLHelper();
				ResultSet _ResultSet = _MYSQLHelper.GetResultSet(
						"SELECT * FROM rolesmodules where rolesModuleId='" + rolesModuleId + "'", _Connection);
				if (_ResultSet.next()) {
					SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
					Calendar cal = Calendar.getInstance();
					String date = format.format(cal.getTime());

					String sInsertStatement = "UPDATE rolesmodules SET isActive = ?,IsDeleted = ?,deletedDate = ? "
							+ " WHERE rolesModuleId = ?";
					_PreparedStatement = _Connection.prepareStatement(sInsertStatement);

					_PreparedStatement.setBoolean(1, false);
					_PreparedStatement.setBoolean(2, true);
					_PreparedStatement.setString(3, date);
					_PreparedStatement.setInt(4, rolesModuleId);
					_PreparedStatement.executeUpdate();
					_RoleModules.setResult("Success");
					_RoleModules.setrolesModuleId(rolesModuleId);
				} else {
					_RoleModules.setResult("failed!");
					_RoleModules.setError("Invalid Role Modules Id!");
				}
			} catch (Exception e) {
				_RoleModules.setError(e.getMessage());
				_RoleModules.setResult("failed!");
			}
		} else {
			_RoleModules.setResult("Failed");
			_RoleModules.setError("Error in api backend connectivity !");
		}
		return _RoleModules;
	}
}
