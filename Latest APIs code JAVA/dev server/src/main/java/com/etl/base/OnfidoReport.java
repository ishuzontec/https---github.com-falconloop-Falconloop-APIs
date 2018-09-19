package com.etl.base;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.List;

import com.etl.util.MYSQLConnection;
import com.etl.util.MYSQLHelper;
import com.onfido.ApiClient;
import com.onfido.Configuration;
import com.onfido.api.DefaultApi;
import com.onfido.auth.ApiKeyAuth;

import com.onfido.models.*;
public class OnfidoReport {

	
	
	public String ApplicantCheckId;
	public String Status;
	public String Breakdown;
	public String Result;
	public String Error;
	
	
	
	private void setApplicantCheckId(String ApplicantCheckId) {
		this.ApplicantCheckId = ApplicantCheckId;
	}

	private String getApplicantCheckId() {
		return ApplicantCheckId;
	}
	
	private void setStatus(String Status) {
		this.Status = Status;
	}

	private String getStatus() {
		return Status;
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
	private void setBreakdown(String Breakdown) {
		this.Breakdown = Breakdown;
	}

	private String getBreakdown() {
		return Breakdown;
	}
	
	
	public OnfidoReport getCheckreport(String _checkId) {
		OnfidoReport _OnfidoReport = new OnfidoReport();
		try {

			Connection _Connection = MYSQLConnection.GetConnection();
			MYSQLHelper _MYSQLHelper = new MYSQLHelper();
			PreparedStatement _PreparedStatement = null;
			ResultSet _ResultSetapplicantId = _MYSQLHelper.GetResultSet(
					"SELECT * FROM customer_applicant_kyc where ApplicantCheckId='" + _checkId + "'", _Connection);
			if (_ResultSetapplicantId.next()) {
				
				 ApiClient defaultClient = Configuration.getDefaultApiClient();
				 ApiKeyAuth Token = (ApiKeyAuth) defaultClient.getAuthentication("Token");
				 Token.setApiKey("token=" + "live_EB6w_NeGO6_h8Oz6IaDGnVJTOzlbypwn");
				 Token.setApiKeyPrefix("Token");
				 
				

					DefaultApi apiInstance = new DefaultApi();	
					
				String checkId = _checkId; // String |
				//Report result =	apiInstance.findReport(_checkId, reportId);
				
				 ReportsList result = apiInstance.listReports(_checkId);
				
				_OnfidoReport.setStatus(_ResultSetapplicantId.getString("Status"));
				_OnfidoReport.setApplicantCheckId(checkId);
				//_OnfidoReport.setApplicantReportId(checkId);
				//_OnfidoReport.setApplicantReportId(reportId);
				if(result!=null)
				{
					_OnfidoReport.setBreakdown("");
				}
				else{
					_OnfidoReport.setBreakdown("");
				}
				
				_OnfidoReport.setResult("Success");
			}
			else{
				_OnfidoReport.setResult("Failed!");
				_OnfidoReport.setError("Invalid Applicant Checkid!");
			}
		} catch (Exception e) {

		}
		return _OnfidoReport;
	}
}
