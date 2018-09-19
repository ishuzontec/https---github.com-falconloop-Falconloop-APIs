package com.etl.base;

import com.onfido.*;
import com.onfido.auth.*;


public class Test {

	public String ApplicantId;
	public String ImageString;
	public String ImageName;
	public String ImageExt;
	public String Type;
	public String Side;

	private void setApplicantId(String ApplicantId) {
		this.ApplicantId = ApplicantId;
	}

	private String getApplicantId() {
		return ApplicantId;
	}

	private void setImageString(String ImageString) {
		this.ImageString = ImageString;
	}

	private String getImageString() {
		return ImageString;
	}

	private void setImageName(String ImageName) {
		this.ImageName = ImageName;
	}

	private String getImageName() {
		return ImageName;
	}

	private void setImageExt(String ImageExt) {
		this.ImageExt = ImageExt;
	}

	private String getImageExt() {
		return ImageExt;
	}

	private void setType(String Type) {
		this.Type = Type;
	}

	private String getType() {
		return Type;
	}

	private void setSide(String Side) {
		this.Side = Side;
	}

	private String getSide() {
		return Side;
	}

	public Test name() {
		Test _Test = new Test();

		try {
		
			    ApiClient defaultClient = Configuration.getDefaultApiClient();
		        
		        // Configure API key authorization: Token
		        ApiKeyAuth Token = (ApiKeyAuth) defaultClient.getAuthentication("Token");
		        Token.setApiKey("token=" + "YOUR API KEY");
		        Token.setApiKeyPrefix("Token");
			

		} catch (Exception e) {
			_Test.setSide(e.getMessage());
		}

		return _Test;
	}
}
