package com.etl.base;

import java.sql.Connection;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.etl.util.MYSQLConnection;
import com.etl.util.MYSQLHelper;

public class EuropeanCountry {

	public int CountryId;
	public int EuropeancountryId;
	public String CountryName;
	public String iso;
	public int phonecode;
	public String CurrencyName;
	public String CurrencySymbol;
	public String CurrencyCode;
	public boolean CountryStatus;
	public String Result;
	public String Error;

	private void setcountry_id(int CountryId) {
		this.CountryId = CountryId;
	}

	private int getcountry_id() {
		return CountryId;
	}

	private void setEuropeancountryId(int EuropeancountryId) {
		this.EuropeancountryId = EuropeancountryId;
	}

	private int getEuropeancountryId() {
		return EuropeancountryId;
	}

	private void setiso(String iso) {
		this.iso = iso;
	}

	private String getiso() {
		return iso;
	}

	private void setcountry_name(String CountryName) {
		this.CountryName = CountryName;
	}

	private String getcountry_name() {
		return CountryName;
	}

	private void setphonecode(int phonecode) {
		this.phonecode = phonecode;
	}

	private int getphonecode() {
		return phonecode;
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

	private void setCurrencyCode(String CurrencyCode) {
		this.CurrencyCode = CurrencyCode;
	}

	private String getCurrencyCoder() {
		return CurrencyCode;
	}

	private void setCurrencySymbol(String CurrencySymbol) {
		this.CurrencySymbol = CurrencySymbol;
	}

	private String getCurrencySymbol() {
		return CurrencySymbol;
	}

	private void setCurrencyName(String CurrencyName) {
		this.CurrencyName = CurrencyName;
	}

	private String getCurrencyName() {
		return CurrencyName;
	}

	private void setCountryStatus(Boolean CountryStatus){
		this.CountryStatus = CountryStatus;
	}	
	private boolean getCountryStatus(){
		return CountryStatus;
	}
	public static ArrayList<EuropeanCountry> getEuropeanCountryDetails(int CountryId) {
		Connection _Connection = MYSQLConnection.GetConnection();

		ArrayList<EuropeanCountry> _EuropeanCountryDetaillist = new ArrayList<EuropeanCountry>();

		MYSQLHelper _MYSQLHelper = new MYSQLHelper();
		ResultSet _ResultSet = _MYSQLHelper
				.GetResultSet("SELECT * FROM  europeancountry where country_id='" + CountryId + "'", _Connection);

		try {
			while (_ResultSet.next()) {
				EuropeanCountry _EuropeanCountryDeatils = new EuropeanCountry();
				_EuropeanCountryDeatils.setcountry_id(_ResultSet.getInt("country_id"));
				_EuropeanCountryDeatils.setEuropeancountryId(_ResultSet.getInt("europeancountryId"));
				_EuropeanCountryDeatils.setCurrencyName(_ResultSet.getString("currency_name"));
				_EuropeanCountryDeatils.setcountry_name(_ResultSet.getString("country_name"));				
				_EuropeanCountryDeatils.setiso(_ResultSet.getString("iso"));
				_EuropeanCountryDeatils.setCountryStatus(_ResultSet.getBoolean("CountryStatus"));
				_EuropeanCountryDeatils.setphonecode(_ResultSet.getInt("phonecode"));
				_EuropeanCountryDeatils.setCurrencyCode(_ResultSet.getString("currency_code"));
				_EuropeanCountryDeatils.setCurrencySymbol(_ResultSet.getString("currency_symbol"));
				_EuropeanCountryDeatils.setResult("Success");
				_EuropeanCountryDetaillist.add(_EuropeanCountryDeatils);
			}
			_ResultSet.close();

		} catch (Exception e) {

		}

		return _EuropeanCountryDetaillist;
	}
}
