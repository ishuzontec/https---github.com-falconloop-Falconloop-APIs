
package com.moneytransfer;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.ServletRequest;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.Context;
import javax.ws.rs.core.HttpHeaders;
import javax.xml.ws.spi.http.HttpContext;

import com.etl.base.AgentDetails;
import com.etl.base.ApplicantKYC;
import com.etl.base.Authentication;
import com.etl.base.AuthorizePaymentDetails;
import com.etl.base.AuthrozieTranscation;
import com.etl.base.BeneficiaryDetails;
import com.etl.base.BeneficiaryType;
import com.etl.base.BillPay;
import com.etl.base.CarrierInfoByMobileNumber;
import com.etl.base.CompanyDetail;
import com.etl.base.CompanyServices;
import com.etl.base.CompanyServicesDetails;
import com.etl.base.CountryDeatils;
import com.etl.base.Currency;
import com.etl.base.CurrencyConversion;
import com.etl.base.CustomerDetail;
import com.etl.base.Email;
import com.etl.base.FeesCategory;
import com.etl.base.GiftCard;
import com.etl.base.GlobalExchangeRate;
import com.etl.base.MD5;
import com.etl.base.MagicPay;
import com.etl.base.MagicTest;
import com.etl.base.OnfidoReport;
import com.etl.base.PaymentFees;
import com.etl.base.PaymentMethod;
import com.etl.base.PaymentType;
import com.etl.base.RoleModules;
import com.etl.base.SendEmailTLS;
import com.etl.base.TransactionFeeSharing;
import com.etl.base.TransferToApi;
import com.etl.base.UserDetail;
import com.etl.base.minepay;
import com.etl.base.modules;
import com.etl.base.role;

@Path("/")
public class Services {

	@GET
	@Path("verifyservice")
	@Produces("text/plain")
	public String getIt() {
		return "Welcome to Money Transfer APIs!";
	}

	@POST
	@Path("addcompany")
	@Produces("application/json")
	public CompanyDetail AddCompany(CompanyDetail _companydetails) {
		return new CompanyDetail().addCompany(_companydetails);
	}

	@POST
	@Path("updatecompany")
	@Produces("application/json")
	public CompanyDetail updateCompany(CompanyDetail _companydetails, @Context HttpHeaders headers) {
		Authentication _Authentication = new Authentication();

		if (headers.getRequestHeader("Authorization") != null) {
			String userAgent = headers.getRequestHeader("Authorization").get(0);
			_Authentication = _Authentication.getAuthentication(userAgent);
			if (_Authentication.Result == "Authenticated") {
				return new CompanyDetail().updateCompany(_companydetails);
			} else {

				_companydetails.Result = "Not Authenticated";
				return _companydetails;
			}
		} else {

			_companydetails.Result = "Not Authenticated";
			return _companydetails;

		}
	}

	@POST
	@Path("deletecompany")
	@Produces("application/json")
	public CompanyDetail deleteCompany(CompanyDetail _companydetails, @Context HttpHeaders headers) {
		Authentication _Authentication = new Authentication();
		if (headers.getRequestHeader("Authorization") != null) {
			String userAgent = headers.getRequestHeader("Authorization").get(0);
			_Authentication = _Authentication.getAuthentication(userAgent);
			if (_Authentication.Result == "Authenticated") {
				return new CompanyDetail().deleteCompany(_companydetails);
			} else {

				_companydetails.Result = "Not Authenticated";
				return _companydetails;
			}
		} else {

			_companydetails.Result = "Not Authenticated";
			return _companydetails;

		}
	}

	@POST
	@Path("getcompany")
	@Produces("application/json")
	public ArrayList<CompanyDetail> getUser(CompanyDetail _CompanyDetail, @Context HttpHeaders headers) {
		if (headers.getRequestHeader("Authorization") != null) {
			// System.out.println(headers.getRequestHeader("Authorization"));
			String userAgent = headers.getRequestHeader("Authorization").get(0);
			Authentication _Authentication = new Authentication();
			_Authentication = _Authentication.getAuthentication(userAgent);
			if (_Authentication.Result == "Authenticated") {
				return new CompanyDetail().getCompany(_CompanyDetail.CompanyId);
			} else {
				ArrayList<CompanyDetail> _cCompanyDetail = new ArrayList<CompanyDetail>();

				_CompanyDetail.Result = "Not Authenticated";
				_cCompanyDetail.add(_CompanyDetail);
				return _cCompanyDetail;
			}
		} else {
			ArrayList<CompanyDetail> cCompanyDetail = new ArrayList<CompanyDetail>();

			_CompanyDetail.Result = "Not Authenticated";
			cCompanyDetail.add(_CompanyDetail);
			return cCompanyDetail;
		}
	}

	@GET
	@Path("getcompanydetails")
	@Produces("application/json")
	public ArrayList<CompanyDetail> getCompanyDetails(@Context HttpHeaders headers) {
		if (headers.getRequestHeader("Authorization") != null) {
			// System.out.println(headers.getRequestHeader("Authorization"));
			String userAgent = headers.getRequestHeader("Authorization").get(0);
			Authentication _Authentication = new Authentication();
			_Authentication = _Authentication.getAuthentication(userAgent);
			if (_Authentication.Result == "Authenticated") {
				return CompanyDetail.getCompanyDetails();
			} else {
				ArrayList<CompanyDetail> _cCompanyDetail = new ArrayList<CompanyDetail>();
				CompanyDetail _CompanyDetail = new CompanyDetail();
				_CompanyDetail.Result = "Not Authenticated";
				_cCompanyDetail.add(_CompanyDetail);
				return _cCompanyDetail;
			}
		} else {
			ArrayList<CompanyDetail> cCompanyDetail = new ArrayList<CompanyDetail>();
			CompanyDetail _CompanyDetail = new CompanyDetail();
			_CompanyDetail.Result = "Not Authenticated";
			cCompanyDetail.add(_CompanyDetail);
			return cCompanyDetail;
		}
	}

	@POST
	@Path("adduser")
	@Produces("application/json")
	public UserDetail Addusers(UserDetail _usersdetails, @Context HttpHeaders headers) {
		if (headers.getRequestHeader("Authorization") != null) {
			// System.out.println(headers.getRequestHeader("Authorization"));
			String userAgent = headers.getRequestHeader("Authorization").get(0);
			Authentication _Authentication = new Authentication();
			_Authentication = _Authentication.getAuthentication(userAgent);
			if (_Authentication.Result == "Authenticated") {
				return new UserDetail().addUser(_usersdetails);
			} else {

				_usersdetails.Result = "Not Authenticated";
				return _usersdetails;
			}
		} else {

			_usersdetails.Result = "Not Authenticated";
			return _usersdetails;
		}
	}

	@POST
	@Path("authenticateuser")
	@Produces("application/json")
	public UserDetail loginCompany(UserDetail _usersdetails) {

		return new UserDetail().loginUser(_usersdetails);
	}

	@POST
	@Path("deleteuser")
	@Produces("application/json")
	public UserDetail deleteCompany(UserDetail _usersdetails, @Context HttpHeaders headers) {
		if (headers.getRequestHeader("Authorization") != null) {
			// System.out.println(headers.getRequestHeader("Authorization"));
			String userAgent = headers.getRequestHeader("Authorization").get(0);
			Authentication _Authentication = new Authentication();
			_Authentication = _Authentication.getAuthentication(userAgent);
			if (_Authentication.Result == "Authenticated") {
				return new UserDetail().deleteUser(_usersdetails);

			} else {

				_usersdetails.Result = "Not Authenticated";
				return _usersdetails;
			}
		} else

		{

			_usersdetails.Result = "Not Authenticated";
			return _usersdetails;
		}
	}

	@POST
	@Path("updateuser")
	@Produces("application/json")
	public UserDetail updateuser(UserDetail usersdetails, @Context HttpHeaders headers) {
		if (headers.getRequestHeader("Authorization") != null) {
			// System.out.println(headers.getRequestHeader("Authorization"));
			String userAgent = headers.getRequestHeader("Authorization").get(0);
			Authentication _Authentication = new Authentication();
			_Authentication = _Authentication.getAuthentication(userAgent);
			if (_Authentication.Result == "Authenticated") {
				return new UserDetail().updateUserDetail(usersdetails);
			} else {

				usersdetails.Result = "Not Authenticated";
				return usersdetails;
			}
		} else

		{

			usersdetails.Result = "Not Authenticated";
			return usersdetails;
		}
	}

	@POST
	@Path("getuser")
	@Produces("application/json")
	public UserDetail getUser(UserDetail _UserDetail, @Context HttpHeaders headers) {
		if (headers.getRequestHeader("Authorization") != null) {
			// System.out.println(headers.getRequestHeader("Authorization"));
			String userAgent = headers.getRequestHeader("Authorization").get(0);
			Authentication _Authentication = new Authentication();
			_Authentication = _Authentication.getAuthentication(userAgent);
			if (_Authentication.Result == "Authenticated") {
				return new UserDetail().getUserDetail(_UserDetail);
			} else {

				_UserDetail.Result = "Not Authenticated";
				return _UserDetail;
			}
		} else

		{

			_UserDetail.Result = "Not Authenticated";
			return _UserDetail;
		}
	}

	@POST
	@Path("getuserdetails")
	@Produces("application/json")
	public ArrayList<UserDetail> getUsersDetails(UserDetail _UserDetail, @Context HttpHeaders headers) {
		if (headers.getRequestHeader("Authorization") != null) {
			// System.out.println(headers.getRequestHeader("Authorization"));
			String userAgent = headers.getRequestHeader("Authorization").get(0);
			Authentication _Authentication = new Authentication();
			_Authentication = _Authentication.getAuthentication(userAgent);
			if (_Authentication.Result == "Authenticated") {
				return UserDetail.getUserDetails(_UserDetail.CompanyId);
			} else {
				ArrayList<UserDetail> uUserDetail = new ArrayList<UserDetail>();

				_UserDetail.Result = "Not Authenticated";
				uUserDetail.add(_UserDetail);
				return uUserDetail;
			}
		} else {
			ArrayList<UserDetail> uUserDetail = new ArrayList<UserDetail>();
			_UserDetail.Result = "Not Authenticated";
			uUserDetail.add(_UserDetail);
			return uUserDetail;

		}
	}

	@POST
	@Path("getcountry")
	@Produces("application/json")
	public CountryDeatils getUser(CountryDeatils _CountryDeatils) {
		return new CountryDeatils().getCountry(_CountryDeatils);
	}

	@GET
	@Path("getcountrydetails")
	@Produces("application/json")
	public ArrayList<CountryDeatils> getcountryDetails() {

		return CountryDeatils.getCountryDetails();
	}

	@POST
	@Path("getcountryByPhoneCode")
	@Produces("application/json")
	public CountryDeatils getcountryByIso(CountryDeatils _CountryDeatils) {

		return new CountryDeatils().getCountryDetailsIso(_CountryDeatils.phonecode, _CountryDeatils.CountryName);

	}

	@POST
	@Path("savecustomer")
	@Produces("application/json")
	public CustomerDetail addcustomer(CustomerDetail _CustomerDetail, @Context HttpHeaders headers) {
		if (headers.getRequestHeader("Authorization") != null) {
			// System.out.println(headers.getRequestHeader("Authorization"));
			String userAgent = headers.getRequestHeader("Authorization").get(0);
			Authentication _Authentication = new Authentication();
			_Authentication = _Authentication.getAuthentication(userAgent);
			if (_Authentication.Result == "Authenticated") {
				return new CustomerDetail().addCustomer(_CustomerDetail);
			} else {

				_CustomerDetail.Result = "Not Authenticated";
				return _CustomerDetail;
			}
		} else

		{

			_CustomerDetail.Result = "Not Authenticated";
			return _CustomerDetail;
		}
	}

	@POST
	@Path("getcustomerbycompanyid")
	@Produces("application/json")
	public ArrayList<CustomerDetail> getcustomerDetailsByCompanyId(CustomerDetail _CustomerDetail,
			@Context HttpHeaders headers) {

		if (headers.getRequestHeader("Authorization") != null) {
			// System.out.println(headers.getRequestHeader("Authorization"));
			String userAgent = headers.getRequestHeader("Authorization").get(0);
			Authentication _Authentication = new Authentication();
			_Authentication = _Authentication.getAuthentication(userAgent);
			if (_Authentication.Result == "Authenticated") {
				return CustomerDetail.getCustomerDetails(_CustomerDetail.CompanyId);
			} else {
				ArrayList<CustomerDetail> cCustomerDetail = new ArrayList<CustomerDetail>();

				_CustomerDetail.Result = "Not Authenticated";
				cCustomerDetail.add(_CustomerDetail);
				return cCustomerDetail;
			}
		} else {
			ArrayList<CustomerDetail> cCustomerDetail = new ArrayList<CustomerDetail>();
			_CustomerDetail.Result = "Not Authenticated";
			cCustomerDetail.add(_CustomerDetail);
			return cCustomerDetail;

		}
	}

	@POST
	@Path("authenticatecustomer")
	@Produces("application/json")
	public CustomerDetail authenticatecustomer(CustomerDetail _CustomerDetail) {
		return new CustomerDetail().loginCustomer(_CustomerDetail);
	}

	@POST
	@Path("getcustomerdetails")
	@Produces("application/json")
	public ArrayList<CustomerDetail> getcustomer(CustomerDetail _CustomerDetail, @Context HttpHeaders headers) {
		if (headers.getRequestHeader("Authorization") != null) {
			// System.out.println(headers.getRequestHeader("Authorization"));
			String userAgent = headers.getRequestHeader("Authorization").get(0);
			Authentication _Authentication = new Authentication();
			_Authentication = _Authentication.getAuthentication(userAgent);
			if (_Authentication.Result == "Authenticated") {
				return new CustomerDetail().getCustomerDetail(_CustomerDetail.CustomerId);
			} else {
				ArrayList<CustomerDetail> cCustomerDetail = new ArrayList<CustomerDetail>();

				_CustomerDetail.Result = "Not Authenticated";
				cCustomerDetail.add(_CustomerDetail);
				return cCustomerDetail;
			}
		} else {
			ArrayList<CustomerDetail> cCustomerDetail = new ArrayList<CustomerDetail>();
			_CustomerDetail.Result = "Not Authenticated";
			cCustomerDetail.add(_CustomerDetail);
			return cCustomerDetail;

		}
	}

	@POST
	@Path("deletecustomer")
	@Produces("application/json")
	public CustomerDetail deletecustomer(CustomerDetail _CustomerDetail, @Context HttpHeaders headers) {
		if (headers.getRequestHeader("Authorization") != null) {
			// System.out.println(headers.getRequestHeader("Authorization"));
			String userAgent = headers.getRequestHeader("Authorization").get(0);
			Authentication _Authentication = new Authentication();
			_Authentication = _Authentication.getAuthentication(userAgent);
			if (_Authentication.Result == "Authenticated") {
				return new CustomerDetail().deleteCustomer(_CustomerDetail);
			} else {

				_CustomerDetail.Result = "Not Authenticated";
				return _CustomerDetail;
			}
		} else

		{

			_CustomerDetail.Result = "Not Authenticated";
			return _CustomerDetail;
		}
	}

	@POST
	@Path("aa")
	@Produces("application/json")
	public CustomerDetail email(CustomerDetail _CustomerDetail) {
		return new CustomerDetail().email(_CustomerDetail);
	}

	@POST
	@Path("savepaymenttype")
	@Produces("application/json")
	public PaymentType savePaymentType(PaymentType _PaymentType, @Context HttpHeaders headers) {
		if (headers.getRequestHeader("Authorization") != null) {
			// System.out.println(headers.getRequestHeader("Authorization"));
			String userAgent = headers.getRequestHeader("Authorization").get(0);
			Authentication _Authentication = new Authentication();
			_Authentication = _Authentication.getAuthentication(userAgent);
			if (_Authentication.Result == "Authenticated") {
				return new PaymentType().savepaymenttype(_PaymentType);
			} else {

				_PaymentType.Result = "Not Authenticated";

				return _PaymentType;
			}
		} else {

			_PaymentType.Result = "Not Authenticated";

			return _PaymentType;

		}
	}

	@GET
	@Path("getpaymenttypedetails")
	@Produces("application/json")
	public ArrayList<PaymentType> getPaymentTypeDetails(@Context HttpHeaders headers) {
		PaymentType _PaymentType = new PaymentType();
		if (headers.getRequestHeader("Authorization") != null) {
			// System.out.println(headers.getRequestHeader("Authorization"));
			String userAgent = headers.getRequestHeader("Authorization").get(0);
			Authentication _Authentication = new Authentication();
			_Authentication = _Authentication.getAuthentication(userAgent);
			if (_Authentication.Result == "Authenticated") {
				return PaymentType.getPaymentTypeDetails();
			} else {
				ArrayList<PaymentType> pPaymentType = new ArrayList<PaymentType>();
				_PaymentType.Result = "Not Authenticated";
				pPaymentType.add(_PaymentType);
				return pPaymentType;
			}
		} else {
			ArrayList<PaymentType> pPaymentType = new ArrayList<PaymentType>();
			_PaymentType.Result = "Not Authenticated";
			pPaymentType.add(_PaymentType);
			return pPaymentType;

		}
	}

	@POST
	@Path("savepaymentmethod")
	@Produces("application/json")
	public PaymentMethod savePaymentMethod(PaymentMethod _PaymentMethod, @Context HttpHeaders headers) {
		if (headers.getRequestHeader("Authorization") != null) {
			// System.out.println(headers.getRequestHeader("Authorization"));
			String userAgent = headers.getRequestHeader("Authorization").get(0);
			Authentication _Authentication = new Authentication();
			_Authentication = _Authentication.getAuthentication(userAgent);
			if (_Authentication.Result == "Authenticated") {
				return new PaymentMethod().addPaymentMethod(_PaymentMethod);
			} else {

				_PaymentMethod.Result = "Not Authenticated";

				return _PaymentMethod;
			}
		} else {

			_PaymentMethod.Result = "Not Authenticated";

			return _PaymentMethod;

		}
	}

	@POST
	@Path("getpaymentmethodbycompanyid")
	@Produces("application/json")
	public ArrayList<PaymentMethod> getpaymentMethodByCompanyId(PaymentMethod _PaymentMethod,
			@Context HttpHeaders headers) {
		if (headers.getRequestHeader("Authorization") != null) {
			// System.out.println(headers.getRequestHeader("Authorization"));
			String userAgent = headers.getRequestHeader("Authorization").get(0);
			Authentication _Authentication = new Authentication();
			_Authentication = _Authentication.getAuthentication(userAgent);
			if (_Authentication.Result == "Authenticated") {
				return PaymentMethod.getPaymentMethodDetails(_PaymentMethod.CompanyId);
			} else {
				ArrayList<PaymentMethod> pPaymentMethod = new ArrayList<PaymentMethod>();

				_PaymentMethod.Result = "Not Authenticated";
				pPaymentMethod.add(_PaymentMethod);
				return pPaymentMethod;
			}
		} else {
			ArrayList<PaymentMethod> pPaymentMethod = new ArrayList<PaymentMethod>();
			_PaymentMethod.Result = "Not Authenticated";
			pPaymentMethod.add(_PaymentMethod);
			return pPaymentMethod;

		}
	}

	@POST
	@Path("getpaymentmethodbycompany")
	@Produces("application/json")
	public ArrayList<PaymentMethod> getpaymentmethodbycompany(PaymentMethod _PaymentMethod,
			@Context HttpHeaders headers) {
		if (headers.getRequestHeader("Authorization") != null) {
			// System.out.println(headers.getRequestHeader("Authorization"));
			String userAgent = headers.getRequestHeader("Authorization").get(0);
			Authentication _Authentication = new Authentication();
			_Authentication = _Authentication.getAuthentication(userAgent);
			if (_Authentication.Result == "Authenticated") {
				return PaymentMethod.getPaymentMethodDetailsforAdmin(_PaymentMethod.CompanyId);
			} else {
				ArrayList<PaymentMethod> pPaymentMethod = new ArrayList<PaymentMethod>();

				_PaymentMethod.Result = "Not Authenticated";
				pPaymentMethod.add(_PaymentMethod);
				return pPaymentMethod;
			}
		} else {
			ArrayList<PaymentMethod> pPaymentMethod = new ArrayList<PaymentMethod>();
			_PaymentMethod.Result = "Not Authenticated";
			pPaymentMethod.add(_PaymentMethod);
			return pPaymentMethod;

		}
	}

	@POST
	@Path("getpaymentmethoddetails")
	@Produces("application/json")
	public PaymentMethod getpaymentmethoddetails(PaymentMethod _PaymentMethod, @Context HttpHeaders headers) {
		if (headers.getRequestHeader("Authorization") != null) {
			// System.out.println(headers.getRequestHeader("Authorization"));
			String userAgent = headers.getRequestHeader("Authorization").get(0);
			Authentication _Authentication = new Authentication();
			_Authentication = _Authentication.getAuthentication(userAgent);
			if (_Authentication.Result == "Authenticated") {
				return new PaymentMethod().getPaymentMethodById(_PaymentMethod);
			} else {

				_PaymentMethod.Result = "Not Authenticated";

				return _PaymentMethod;
			}
		} else {

			_PaymentMethod.Result = "Not Authenticated";

			return _PaymentMethod;

		}
	}

	@POST
	@Path("deletepaymentmethod")
	@Produces("application/json")
	public PaymentMethod deletepaymentmethod(PaymentMethod _PaymentMethod, @Context HttpHeaders headers) {
		if (headers.getRequestHeader("Authorization") != null) {
			// System.out.println(headers.getRequestHeader("Authorization"));
			String userAgent = headers.getRequestHeader("Authorization").get(0);
			Authentication _Authentication = new Authentication();
			_Authentication = _Authentication.getAuthentication(userAgent);
			if (_Authentication.Result == "Authenticated") {
				return new PaymentMethod().deletePaymentMethod(_PaymentMethod);
			} else {

				_PaymentMethod.Result = "Not Authenticated";

				return _PaymentMethod;
			}
		} else {

			_PaymentMethod.Result = "Not Authenticated";

			return _PaymentMethod;

		}
	}

	@POST
	@Path("saveauthorizepayment")
	@Produces("application/json")
	public AuthorizePaymentDetails saveauthorizepayment(AuthorizePaymentDetails _AuthorizePaymentDetails,
			@Context HttpHeaders headers) {
		if (headers.getRequestHeader("Authorization") != null) {
			// System.out.println(headers.getRequestHeader("Authorization"));
			String userAgent = headers.getRequestHeader("Authorization").get(0);
			Authentication _Authentication = new Authentication();
			_Authentication = _Authentication.getAuthentication(userAgent);
			if (_Authentication.Result == "Authenticated") {
				return new AuthorizePaymentDetails().addAuthorizePayment(_AuthorizePaymentDetails);
			} else {

				_AuthorizePaymentDetails.Result = "Not Authenticated";

				return _AuthorizePaymentDetails;
			}
		} else {

			_AuthorizePaymentDetails.Result = "Not Authenticated";

			return _AuthorizePaymentDetails;

		}
	}

	@POST
	@Path("getauthorizepaymentdetails")
	@Produces("application/json")
	public AuthorizePaymentDetails getauthorizepaymentdetails(AuthorizePaymentDetails _AuthorizePaymentDetails,
			@Context HttpHeaders headers) {
		if (headers.getRequestHeader("Authorization") != null) {
			// System.out.println(headers.getRequestHeader("Authorization"));
			String userAgent = headers.getRequestHeader("Authorization").get(0);
			Authentication _Authentication = new Authentication();
			_Authentication = _Authentication.getAuthentication(userAgent);
			if (_Authentication.Result == "Authenticated") {
				return new AuthorizePaymentDetails().getAuthorizePaymentById(_AuthorizePaymentDetails);
			} else {

				_AuthorizePaymentDetails.Result = "Not Authenticated";

				return _AuthorizePaymentDetails;
			}
		} else {

			_AuthorizePaymentDetails.Result = "Not Authenticated";

			return _AuthorizePaymentDetails;

		}
	}

	@POST
	@Path("deleteauthorizepaymentdetails")
	@Produces("application/json")
	public AuthorizePaymentDetails deleteauthorizepaymentdetails(AuthorizePaymentDetails _AuthorizePaymentDetails,
			@Context HttpHeaders headers) {

		if (headers.getRequestHeader("Authorization") != null) {
			// System.out.println(headers.getRequestHeader("Authorization"));
			String userAgent = headers.getRequestHeader("Authorization").get(0);
			Authentication _Authentication = new Authentication();
			_Authentication = _Authentication.getAuthentication(userAgent);
			if (_Authentication.Result == "Authenticated") {
				return new AuthorizePaymentDetails().deleteAuthorizePaymentById(_AuthorizePaymentDetails);
			} else {

				_AuthorizePaymentDetails.Result = "Not Authenticated";

				return _AuthorizePaymentDetails;
			}
		} else {

			_AuthorizePaymentDetails.Result = "Not Authenticated";

			return _AuthorizePaymentDetails;

		}

	}

	@POST
	@Path("getauthorizepaymentdsettingsbypaymentmethodid")
	@Produces("application/json")
	public AuthorizePaymentDetails getauthorizepaymentdsettingsbypaymentmethodid(
			AuthorizePaymentDetails _AuthorizePaymentDetails, @Context HttpHeaders headers) {
		if (headers.getRequestHeader("Authorization") != null) {
			// System.out.println(headers.getRequestHeader("Authorization"));
			String userAgent = headers.getRequestHeader("Authorization").get(0);
			Authentication _Authentication = new Authentication();
			_Authentication = _Authentication.getAuthentication(userAgent);
			if (_Authentication.Result == "Authenticated") {
				return new AuthorizePaymentDetails()
						.getAuthorizePaymentDetailsbyPaymentMethodId(_AuthorizePaymentDetails);
			} else {

				_AuthorizePaymentDetails.Result = "Not Authenticated";

				return _AuthorizePaymentDetails;
			}
		} else {

			_AuthorizePaymentDetails.Result = "Not Authenticated";

			return _AuthorizePaymentDetails;

		}
	}

	@GET
	@Path("getcurrencydetails")
	@Produces("application/json")
	public ArrayList<Currency> getCurrencyDetails() {

		return Currency.getCurrencyetails();
	}

	@GET
	@Path("getbeneficiarytypedetails")
	@Produces("application/json")
	public ArrayList<BeneficiaryType> getBeneficiaryTypeDetails(@Context HttpHeaders headers) {
		BeneficiaryType _BeneficiaryType = new BeneficiaryType();
		if (headers.getRequestHeader("Authorization") != null) {
			// System.out.println(headers.getRequestHeader("Authorization"));
			String userAgent = headers.getRequestHeader("Authorization").get(0);
			Authentication _Authentication = new Authentication();
			_Authentication = _Authentication.getAuthentication(userAgent);
			if (_Authentication.Result == "Authenticated") {
				return BeneficiaryType.getBeneficiaryTypeDetails();
			} else {
				ArrayList<BeneficiaryType> bBeneficiaryType = new ArrayList<BeneficiaryType>();
				_BeneficiaryType.Result = "Not Authenticated";
				bBeneficiaryType.add(_BeneficiaryType);
				return bBeneficiaryType;
			}
		} else {

			ArrayList<BeneficiaryType> bBeneficiaryType = new ArrayList<BeneficiaryType>();
			_BeneficiaryType.Result = "Not Authenticated";
			bBeneficiaryType.add(_BeneficiaryType);
			return bBeneficiaryType;

		}
	}

	@POST
	@Path("addbeneficiary")
	@Produces("application/json")
	public BeneficiaryDetails addbeneficiary(BeneficiaryDetails _BeneficiaryDetails, @Context HttpHeaders headers) {
		if (headers.getRequestHeader("Authorization") != null) {
			// System.out.println(headers.getRequestHeader("Authorization"));
			String userAgent = headers.getRequestHeader("Authorization").get(0);
			Authentication _Authentication = new Authentication();
			_Authentication = _Authentication.getAuthentication(userAgent);
			if (_Authentication.Result == "Authenticated") {
				return new BeneficiaryDetails().addBeneficiaryDetails(_BeneficiaryDetails);
			} else {

				_BeneficiaryDetails.Result = "Not Authenticated";
				return _BeneficiaryDetails;
			}
		} else

		{

			_BeneficiaryDetails.Result = "Not Authenticated";
			return _BeneficiaryDetails;
		}

	}

	@POST
	@Path("getbeneficiarydetails")
	@Produces("application/json")
	public ArrayList<BeneficiaryDetails> getBeneficiaryDetailsDetails(BeneficiaryDetails _BeneficiaryDetails,
			@Context HttpHeaders headers) {
		if (headers.getRequestHeader("Authorization") != null) {
			// System.out.println(headers.getRequestHeader("Authorization"));
			String userAgent = headers.getRequestHeader("Authorization").get(0);
			Authentication _Authentication = new Authentication();
			_Authentication = _Authentication.getAuthentication(userAgent);
			if (_Authentication.Result == "Authenticated") {
				return BeneficiaryDetails.getBeneficiaryDetails(_BeneficiaryDetails.CustomerId);
			} else {
				ArrayList<BeneficiaryDetails> bBeneficiaryDetails = new ArrayList<BeneficiaryDetails>();
				_BeneficiaryDetails.Result = "Not Authenticated";
				bBeneficiaryDetails.add(_BeneficiaryDetails);
				return bBeneficiaryDetails;
			}
		} else

		{

			ArrayList<BeneficiaryDetails> bBeneficiaryDetails = new ArrayList<BeneficiaryDetails>();
			_BeneficiaryDetails.Result = "Not Authenticated";
			bBeneficiaryDetails.add(_BeneficiaryDetails);
			return bBeneficiaryDetails;
		}
	}

	@POST
	@Path("getbeneficiarydetailsbyId")
	@Produces("application/json")
	public BeneficiaryDetails getbeneficiarydetailsbyId(BeneficiaryDetails _BeneficiaryDetails,
			@Context HttpHeaders headers) {
		if (headers.getRequestHeader("Authorization") != null) {
			// System.out.println(headers.getRequestHeader("Authorization"));
			String userAgent = headers.getRequestHeader("Authorization").get(0);
			Authentication _Authentication = new Authentication();
			_Authentication = _Authentication.getAuthentication(userAgent);
			if (_Authentication.Result == "Authenticated") {
				return new BeneficiaryDetails().getBeneficiaryDetailsById(_BeneficiaryDetails);
			} else {

				_BeneficiaryDetails.Result = "Not Authenticated";

				return _BeneficiaryDetails;
			}
		} else

		{

			_BeneficiaryDetails.Result = "Not Authenticated";

			return _BeneficiaryDetails;
		}
	}

	@POST
	@Path("deletebeneficiarydetail")
	@Produces("application/json")
	public BeneficiaryDetails deletebeneficiarydetail(BeneficiaryDetails _BeneficiaryDetails,@Context HttpHeaders headers) {
		if (headers.getRequestHeader("Authorization") != null) {
			// System.out.println(headers.getRequestHeader("Authorization"));
			String userAgent = headers.getRequestHeader("Authorization").get(0);
			Authentication _Authentication = new Authentication();
			_Authentication = _Authentication.getAuthentication(userAgent);
			if (_Authentication.Result == "Authenticated") {
		return new BeneficiaryDetails().deleteBeneficiaryDetails(_BeneficiaryDetails);
			} else {

				_BeneficiaryDetails.Result = "Not Authenticated";

				return _BeneficiaryDetails;
			}
		} else

		{

			_BeneficiaryDetails.Result = "Not Authenticated";

			return _BeneficiaryDetails;
		}
	}

	@POST
	@Path("makePayment")
	@Produces("application/json")
	public AuthrozieTranscation addAuthroziepayment(AuthrozieTranscation _AuthrozieTranscation,
			@Context HttpHeaders headers) {
		if (headers.getRequestHeader("Authorization") != null) {
			// System.out.println(headers.getRequestHeader("Authorization"));
			String userAgent = headers.getRequestHeader("Authorization").get(0);
			Authentication _Authentication = new Authentication();
			_Authentication = _Authentication.getAuthentication(userAgent);
			if (_Authentication.Result == "Authenticated") {
				return new AuthrozieTranscation().addTranscation(_AuthrozieTranscation);
			} else {

				_AuthrozieTranscation.Result = "Not Authenticated";
				return _AuthrozieTranscation;
			}
		} else

		{

			_AuthrozieTranscation.Result = "Not Authenticated";
			return _AuthrozieTranscation;
		}

	}

	@POST
	@Path("gettranscationdetails")
	@Produces("application/json")
	public ArrayList<AuthrozieTranscation> getBeneficiaryDetailsDetails(AuthrozieTranscation _AuthrozieTranscation,
			@Context HttpHeaders headers) {
		if (headers.getRequestHeader("Authorization") != null) {
			// System.out.println(headers.getRequestHeader("Authorization"));
			String userAgent = headers.getRequestHeader("Authorization").get(0);
			Authentication _Authentication = new Authentication();
			_Authentication = _Authentication.getAuthentication(userAgent);
			if (_Authentication.Result == "Authenticated") {
				return AuthrozieTranscation.getAuthrozieTranscationDetails(_AuthrozieTranscation.CustomerId);
			} else {
				ArrayList<AuthrozieTranscation> aAuthrozieTranscation = new ArrayList<AuthrozieTranscation>();

				_AuthrozieTranscation.Result = "Not Authenticated";
				aAuthrozieTranscation.add(_AuthrozieTranscation);
				return aAuthrozieTranscation;
			}
		} else {
			ArrayList<AuthrozieTranscation> aAuthrozieTranscation = new ArrayList<AuthrozieTranscation>();
			_AuthrozieTranscation.Result = "Not Authenticated";
			aAuthrozieTranscation.add(_AuthrozieTranscation);
			return aAuthrozieTranscation;

		}
	}

	@POST
	@Path("addPaymentFees")
	@Produces("application/json")
	public PaymentFees getBeneficiaryDetailsDetails(PaymentFees _PaymentFees, @Context HttpHeaders headers) {
		if (headers.getRequestHeader("Authorization") != null) {
			// System.out.println(headers.getRequestHeader("Authorization"));
			String userAgent = headers.getRequestHeader("Authorization").get(0);
			Authentication _Authentication = new Authentication();
			_Authentication = _Authentication.getAuthentication(userAgent);
			if (_Authentication.Result == "Authenticated") {
				return new PaymentFees().addPaymentFees(_PaymentFees);
			} else {

				_PaymentFees.Result = "Not Authenticated";
				return _PaymentFees;
			}
		} else

		{

			_PaymentFees.Result = "Not Authenticated";
			return _PaymentFees;
		}
	}

	@POST
	@Path("getPaymentFeesById")
	@Produces("application/json")
	public PaymentFees getPaymentFeesById(PaymentFees _PaymentFees, @Context HttpHeaders headers) {
		if (headers.getRequestHeader("Authorization") != null) {
			// System.out.println(headers.getRequestHeader("Authorization"));
			String userAgent = headers.getRequestHeader("Authorization").get(0);
			Authentication _Authentication = new Authentication();
			_Authentication = _Authentication.getAuthentication(userAgent);
			if (_Authentication.Result == "Authenticated") {
				return new PaymentFees().getPaymentFeesById(_PaymentFees);
			} else {

				_PaymentFees.Result = "Not Authenticated";
				return _PaymentFees;
			}
		} else

		{

			_PaymentFees.Result = "Not Authenticated";
			return _PaymentFees;
		}

	}

	@POST
	@Path("getPaymentFeesDetails")
	@Produces("application/json")
	public ArrayList<PaymentFees> getPaymentFeesBy(PaymentFees _PaymentFees, @Context HttpHeaders headers) {
		if (headers.getRequestHeader("Authorization") != null) {
			// System.out.println(headers.getRequestHeader("Authorization"));
			String userAgent = headers.getRequestHeader("Authorization").get(0);
			Authentication _Authentication = new Authentication();
			_Authentication = _Authentication.getAuthentication(userAgent);
			if (_Authentication.Result == "Authenticated") {
				return PaymentFees.getPaymentFeesDetailsByCompany(_PaymentFees.CompanyId, _PaymentFees.FeesCategoryId);
			} else {
				ArrayList<PaymentFees> pPaymentFees = new ArrayList<PaymentFees>();

				_PaymentFees.Result = "Not Authenticated";
				pPaymentFees.add(_PaymentFees);
				return pPaymentFees;
			}
		} else {
			ArrayList<PaymentFees> pPaymentFees = new ArrayList<PaymentFees>();
			_PaymentFees.Result = "Not Authenticated";
			pPaymentFees.add(_PaymentFees);
			return pPaymentFees;

		}
	}

	@POST
	@Path("getPaymentFeesByCompanydestinationCountry")
	@Produces("application/json")
	public ArrayList<PaymentFees> getPaymentFeesDetailsByCompanydestinationCountry(PaymentFees _PaymentFees,
			@Context HttpHeaders headers) {
		if (headers.getRequestHeader("Authorization") != null) {
			// System.out.println(headers.getRequestHeader("Authorization"));
			String userAgent = headers.getRequestHeader("Authorization").get(0);
			Authentication _Authentication = new Authentication();
			_Authentication = _Authentication.getAuthentication(userAgent);
			if (_Authentication.Result == "Authenticated") {
				return PaymentFees.getPaymentFeesCompanyDestinationCountryDetails(_PaymentFees.CompanyId,
						_PaymentFees.DestinationCountry);
			} else {
				ArrayList<PaymentFees> pPaymentFees = new ArrayList<PaymentFees>();

				_PaymentFees.Result = "Not Authenticated";
				pPaymentFees.add(_PaymentFees);
				return pPaymentFees;
			}
		} else {
			ArrayList<PaymentFees> pPaymentFees = new ArrayList<PaymentFees>();
			_PaymentFees.Result = "Not Authenticated";
			pPaymentFees.add(_PaymentFees);
			return pPaymentFees;

		}
	}

	@POST
	@Path("deletePaymentFeesById")
	@Produces("application/json")
	public PaymentFees deletePaymentFeesById(PaymentFees _PaymentFees, @Context HttpHeaders headers) {
		if (headers.getRequestHeader("Authorization") != null) {
			// System.out.println(headers.getRequestHeader("Authorization"));
			String userAgent = headers.getRequestHeader("Authorization").get(0);
			Authentication _Authentication = new Authentication();
			_Authentication = _Authentication.getAuthentication(userAgent);
			if (_Authentication.Result == "Authenticated") {
				return new PaymentFees().deletePaymentFeesById(_PaymentFees);
			} else {

				_PaymentFees.Result = "Not Authenticated";
				return _PaymentFees;
			}
		} else

		{

			_PaymentFees.Result = "Not Authenticated";
			return _PaymentFees;
		}
	}

	@POST
	@Path("billPay")
	@Produces("application/json")
	public BillPay billPay(BillPay _BillPay, @Context HttpHeaders headers) {
		if (headers.getRequestHeader("Authorization") != null) {
			// System.out.println(headers.getRequestHeader("Authorization"));
			String userAgent = headers.getRequestHeader("Authorization").get(0);
			Authentication _Authentication = new Authentication();
			_Authentication = _Authentication.getAuthentication(userAgent);
			if (_Authentication.Result == "Authenticated") {
				return new BillPay().billpayment(_BillPay);
			} else {

				_BillPay.Result = "Not Authenticated";
				return _BillPay;
			}
		} else

		{

			_BillPay.Result = "Not Authenticated";
			return _BillPay;
		}
	}

	@POST
	@Path("getBillPayDetails")
	@Produces("application/json")
	public ArrayList<BillPay> getBillPayDetails(BillPay _BillPay, @Context HttpHeaders headers) {
		if (headers.getRequestHeader("Authorization") != null) {
			// System.out.println(headers.getRequestHeader("Authorization"));
			String userAgent = headers.getRequestHeader("Authorization").get(0);
			Authentication _Authentication = new Authentication();
			_Authentication = _Authentication.getAuthentication(userAgent);
			if (_Authentication.Result == "Authenticated") {
				return BillPay.getBillPayDetails(_BillPay.CustomerId);
			} else {
				ArrayList<BillPay> bBillPay = new ArrayList<BillPay>();

				_BillPay.Result = "Not Authenticated";
				bBillPay.add(_BillPay);
				return bBillPay;
			}
		} else {
			ArrayList<BillPay> bBillPay = new ArrayList<BillPay>();
			_BillPay.Result = "Not Authenticated";
			bBillPay.add(_BillPay);
			return bBillPay;

		}
	}

	@POST
	@Path("getCarrierInfoByMobileNumber")
	@Produces("application/json")
	public CarrierInfoByMobileNumber billPay(CarrierInfoByMobileNumber _CarrierInfoByMobileNumber) {
		return new CarrierInfoByMobileNumber().getCarrierInfoByMobileNumber(_CarrierInfoByMobileNumber);
	}

	@POST
	@Path("test")
	@Produces("application/json")
	public CurrencyConversion test(CurrencyConversion _CurrencyConversion) {
		return new CurrencyConversion().getCurrencyConversion(_CurrencyConversion);
	}

	@POST
	@Path("magicPay")
	@Produces("application/json")
	public MagicPay magicPay(MagicPay _MagicPay, @Context HttpHeaders headers) {
		if (headers.getRequestHeader("Authorization") != null) {
			// System.out.println(headers.getRequestHeader("Authorization"));
			String userAgent = headers.getRequestHeader("Authorization").get(0);
			Authentication _Authentication = new Authentication();
			_Authentication = _Authentication.getAuthentication(userAgent);
			if (_Authentication.Result == "Authenticated") {
				return new MagicPay().addMagicPay(_MagicPay);
			} else {

				_MagicPay.Result = "Not Authenticated";
				return _MagicPay;
			}
		} else

		{

			_MagicPay.Result = "Not Authenticated";
			return _MagicPay;
		}
	}

	@POST
	@Path("magicPayDetailsByCustomerId")
	@Produces("application/json")
	public ArrayList<MagicPay> getmagicPayDetailsByCustomerId(MagicPay _MagicPay, @Context HttpHeaders headers) {
		if (headers.getRequestHeader("Authorization") != null) {
			// System.out.println(headers.getRequestHeader("Authorization"));
			String userAgent = headers.getRequestHeader("Authorization").get(0);
			Authentication _Authentication = new Authentication();
			_Authentication = _Authentication.getAuthentication(userAgent);
			if (_Authentication.Result == "Authenticated") {
				return MagicPay.getMagicPayDetails(_MagicPay.CustomerId);
			} else {
				ArrayList<MagicPay> mMagicPay = new ArrayList<MagicPay>();

				_MagicPay.Result = "Not Authenticated";
				mMagicPay.add(_MagicPay);
				return mMagicPay;
			}
		} else {
			ArrayList<MagicPay> mMagicPay = new ArrayList<MagicPay>();
			_MagicPay.Result = "Not Authenticated";
			mMagicPay.add(_MagicPay);
			return mMagicPay;

		}
	}

	@POST
	@Path("magicPayDetailsByCompanyId")
	@Produces("application/json")
	public ArrayList<MagicPay> getmagicPayDetailsByCompanyId(MagicPay _MagicPay, @Context HttpHeaders headers) {
		if (headers.getRequestHeader("Authorization") != null) {
			// System.out.println(headers.getRequestHeader("Authorization"));
			String userAgent = headers.getRequestHeader("Authorization").get(0);
			Authentication _Authentication = new Authentication();
			_Authentication = _Authentication.getAuthentication(userAgent);
			if (_Authentication.Result == "Authenticated") {
				return MagicPay.getMagicPayDetailsByCompanyId(_MagicPay.CompanyId);
			} else {
				ArrayList<MagicPay> mMagicPay = new ArrayList<MagicPay>();

				_MagicPay.Result = "Not Authenticated";
				mMagicPay.add(_MagicPay);
				return mMagicPay;
			}
		} else {
			ArrayList<MagicPay> mMagicPay = new ArrayList<MagicPay>();
			_MagicPay.Result = "Not Authenticated";
			mMagicPay.add(_MagicPay);
			return mMagicPay;

		}
	}

	@POST
	@Path("agent")
	@Produces("application/json")
	public AgentDetails agent(AgentDetails _AgentDetails, @Context HttpHeaders headers) {
		if (headers.getRequestHeader("Authorization") != null) {
			// System.out.println(headers.getRequestHeader("Authorization"));
			String userAgent = headers.getRequestHeader("Authorization").get(0);
			Authentication _Authentication = new Authentication();
			_Authentication = _Authentication.getAuthentication(userAgent);
			if (_Authentication.Result == "Authenticated") {
				return new AgentDetails().addeditAgentDetails(_AgentDetails);
			} else {

				_AgentDetails.Result = "Not Authenticated";
				return _AgentDetails;
			}
		} else

		{

			_AgentDetails.Result = "Not Authenticated";
			return _AgentDetails;
		}

	}

	@POST
	@Path("getAgentdetailsById")
	@Produces("application/json")
	public ArrayList<AgentDetails> getAgentdetailsById(AgentDetails _AgentDetails, @Context HttpHeaders headers) {
		if (headers.getRequestHeader("Authorization") != null) {
			// System.out.println(headers.getRequestHeader("Authorization"));
			String userAgent = headers.getRequestHeader("Authorization").get(0);
			Authentication _Authentication = new Authentication();
			_Authentication = _Authentication.getAuthentication(userAgent);
			if (_Authentication.Result == "Authenticated") {
				return AgentDetails.getAgentDetails(_AgentDetails.AgentId);
			} else {
				ArrayList<AgentDetails> aAgentDetails = new ArrayList<AgentDetails>();

				_AgentDetails.Result = "Not Authenticated";
				aAgentDetails.add(_AgentDetails);
				return aAgentDetails;
			}
		} else {
			ArrayList<AgentDetails> aAgentDetails = new ArrayList<AgentDetails>();
			_AgentDetails.Result = "Not Authenticated";
			aAgentDetails.add(_AgentDetails);
			return aAgentDetails;

		}
	}

	@POST
	@Path("getAgentdetailsByCompanyId")
	@Produces("application/json")
	public ArrayList<AgentDetails> getAgentdetailsByCompanyId(AgentDetails _AgentDetails,
			@Context HttpHeaders headers) {
		if (headers.getRequestHeader("Authorization") != null) {
			// System.out.println(headers.getRequestHeader("Authorization"));
			String userAgent = headers.getRequestHeader("Authorization").get(0);
			Authentication _Authentication = new Authentication();
			_Authentication = _Authentication.getAuthentication(userAgent);
			if (_Authentication.Result == "Authenticated") {
				return AgentDetails.getAgentDetailsByCompanyId(_AgentDetails.CompanyId);
			} else {
				ArrayList<AgentDetails> aAgentDetails = new ArrayList<AgentDetails>();

				_AgentDetails.Result = "Not Authenticated";
				aAgentDetails.add(_AgentDetails);
				return aAgentDetails;
			}
		} else {
			ArrayList<AgentDetails> aAgentDetails = new ArrayList<AgentDetails>();
			_AgentDetails.Result = "Not Authenticated";
			aAgentDetails.add(_AgentDetails);
			return aAgentDetails;

		}
	}

	@POST
	@Path("deleteAgent")
	@Produces("application/json")
	public AgentDetails deleteAgent(AgentDetails _AgentDetails, @Context HttpHeaders headers) {
		if (headers.getRequestHeader("Authorization") != null) {
			// System.out.println(headers.getRequestHeader("Authorization"));
			String userAgent = headers.getRequestHeader("Authorization").get(0);
			Authentication _Authentication = new Authentication();
			_Authentication = _Authentication.getAuthentication(userAgent);
			if (_Authentication.Result == "Authenticated") {
				return new AgentDetails().deleteAgentDetails(_AgentDetails);
			} else {

				_AgentDetails.Result = "Not Authenticated";

				return _AgentDetails;
			}
		} else {

			_AgentDetails.Result = "Not Authenticated";

			return _AgentDetails;

		}
	}

	@POST
	@Path("getTranscationdetailsById")
	@Produces("application/json")
	public ArrayList<AuthrozieTranscation> getAgentdetailsByCompanyId(AuthrozieTranscation _AuthrozieTranscation,
			@Context HttpHeaders headers) {
		if (headers.getRequestHeader("Authorization") != null) {
			// System.out.println(headers.getRequestHeader("Authorization"));
			String userAgent = headers.getRequestHeader("Authorization").get(0);
			Authentication _Authentication = new Authentication();
			_Authentication = _Authentication.getAuthentication(userAgent);
			if (_Authentication.Result == "Authenticated") {
				return AuthrozieTranscation.getAuthrozieTranscationById(_AuthrozieTranscation.TransactionId);
			} else {
				ArrayList<AuthrozieTranscation> aAuthrozieTranscation = new ArrayList<AuthrozieTranscation>();

				_AuthrozieTranscation.Result = "Not Authenticated";
				aAuthrozieTranscation.add(_AuthrozieTranscation);
				return aAuthrozieTranscation;
			}
		} else {
			ArrayList<AuthrozieTranscation> aAuthrozieTranscation = new ArrayList<AuthrozieTranscation>();
			_AuthrozieTranscation.Result = "Not Authenticated";
			aAuthrozieTranscation.add(_AuthrozieTranscation);
			return aAuthrozieTranscation;

		}
	}

	@POST
	@Path("magicTest")
	@Produces("application/json")
	public MagicTest magicPay(MagicTest _MagicPay) {
		return new MagicTest().atest(_MagicPay);
	}

	@POST
	@Path("addTransactionFeeSharing")
	@Produces("application/json")
	public TransactionFeeSharing addTransactionFeeSharing(TransactionFeeSharing _TransactionFeeSharing,
			@Context HttpHeaders headers) {
		if (headers.getRequestHeader("Authorization") != null) {
			// System.out.println(headers.getRequestHeader("Authorization"));
			String userAgent = headers.getRequestHeader("Authorization").get(0);
			Authentication _Authentication = new Authentication();
			_Authentication = _Authentication.getAuthentication(userAgent);
			if (_Authentication.Result == "Authenticated") {
				return new TransactionFeeSharing().addupdateTransactionFeeSharing(_TransactionFeeSharing);
			} else {

				_TransactionFeeSharing.Result = "Not Authenticated";
				return _TransactionFeeSharing;
			}
		} else

		{

			_TransactionFeeSharing.Result = "Not Authenticated";
			return _TransactionFeeSharing;
		}
	}

	@POST
	@Path("getTransactionFeeSharingByComapny")
	@Produces("application/json")
	public ArrayList<TransactionFeeSharing> getTransactionFeeSharingByComapny(
			TransactionFeeSharing _TransactionFeeSharing, @Context HttpHeaders headers) {
		if (headers.getRequestHeader("Authorization") != null) {
			// System.out.println(headers.getRequestHeader("Authorization"));
			String userAgent = headers.getRequestHeader("Authorization").get(0);
			Authentication _Authentication = new Authentication();
			_Authentication = _Authentication.getAuthentication(userAgent);
			if (_Authentication.Result == "Authenticated") {
				return TransactionFeeSharing.getTransactionFeeSharingDetailsByCompany(_TransactionFeeSharing.CompanyId);
			} else {
				ArrayList<TransactionFeeSharing> tTransactionFeeSharing = new ArrayList<TransactionFeeSharing>();

				_TransactionFeeSharing.Result = "Not Authenticated";
				tTransactionFeeSharing.add(_TransactionFeeSharing);
				return tTransactionFeeSharing;
			}
		} else {
			ArrayList<TransactionFeeSharing> tTransactionFeeSharing = new ArrayList<TransactionFeeSharing>();
			_TransactionFeeSharing.Result = "Not Authenticated";
			tTransactionFeeSharing.add(_TransactionFeeSharing);
			return tTransactionFeeSharing;

		}
	}

	@POST
	@Path("getTransactionFeeSharingById")
	@Produces("application/json")
	public TransactionFeeSharing getTransactionFeeSharingById(TransactionFeeSharing _TransactionFeeSharing,
			@Context HttpHeaders headers) {
		if (headers.getRequestHeader("Authorization") != null) {
			// System.out.println(headers.getRequestHeader("Authorization"));
			String userAgent = headers.getRequestHeader("Authorization").get(0);
			Authentication _Authentication = new Authentication();
			_Authentication = _Authentication.getAuthentication(userAgent);
			if (_Authentication.Result == "Authenticated") {
				return new TransactionFeeSharing()
						.gettransactionFeeSharing(_TransactionFeeSharing.TransactionFeeSharingId);
			} else {

				_TransactionFeeSharing.Result = "Not Authenticated";
				return _TransactionFeeSharing;
			}
		} else {

			_TransactionFeeSharing.Result = "Not Authenticated";

			return _TransactionFeeSharing;

		}

	}

	@POST
	@Path("deleteTransactionFeeSharingById")
	@Produces("application/json")
	public TransactionFeeSharing deleteTransactionFeeSharingById(TransactionFeeSharing _TransactionFeeSharing,
			@Context HttpHeaders headers) {
		if (headers.getRequestHeader("Authorization") != null) {
			// System.out.println(headers.getRequestHeader("Authorization"));
			String userAgent = headers.getRequestHeader("Authorization").get(0);
			Authentication _Authentication = new Authentication();
			_Authentication = _Authentication.getAuthentication(userAgent);
			if (_Authentication.Result == "Authenticated") {
				return new TransactionFeeSharing().deletetransactionFeeSharingById(_TransactionFeeSharing);
			} else {

				_TransactionFeeSharing.Result = "Not Authenticated";
				return _TransactionFeeSharing;
			}
		} else {

			_TransactionFeeSharing.Result = "Not Authenticated";

			return _TransactionFeeSharing;

		}
	}

	@POST
	@Path("globalExchangerate")
	@Produces("application/json")
	public GlobalExchangeRate addGlobalExchange(GlobalExchangeRate _GlobalExchangeRate, @Context HttpHeaders headers) {
		if (headers.getRequestHeader("Authorization") != null) {
			// System.out.println(headers.getRequestHeader("Authorization"));
			String userAgent = headers.getRequestHeader("Authorization").get(0);
			Authentication _Authentication = new Authentication();
			_Authentication = _Authentication.getAuthentication(userAgent);
			if (_Authentication.Result == "Authenticated") {
				return new GlobalExchangeRate().addupdateGlobalExchangeRateDetails(_GlobalExchangeRate);
			} else {

				_GlobalExchangeRate.Result = "Not Authenticated";
				return _GlobalExchangeRate;
			}
		} else {

			_GlobalExchangeRate.Result = "Not Authenticated";

			return _GlobalExchangeRate;

		}
	}

	@GET
	@Path("getglobalExchangerateByComapny")
	@Produces("application/json")
	public ArrayList<GlobalExchangeRate> getglobalExchangerateByComapny(@Context HttpHeaders headers) {
		GlobalExchangeRate _GlobalExchangeRate = new GlobalExchangeRate();
		if (headers.getRequestHeader("Authorization") != null) {
			// System.out.println(headers.getRequestHeader("Authorization"));

			String userAgent = headers.getRequestHeader("Authorization").get(0);
			Authentication _Authentication = new Authentication();
			_Authentication = _Authentication.getAuthentication(userAgent);
			if (_Authentication.Result == "Authenticated") {
				return GlobalExchangeRate.getGlobalExchangeRateDetailsByCompany();
			} else {
				ArrayList<GlobalExchangeRate> gGlobalExchangeRate = new ArrayList<GlobalExchangeRate>();
				_GlobalExchangeRate.Result = "Not Authenticated";
				gGlobalExchangeRate.add(_GlobalExchangeRate);
				return gGlobalExchangeRate;
			}
		} else {
			ArrayList<GlobalExchangeRate> gGlobalExchangeRate = new ArrayList<GlobalExchangeRate>();
			_GlobalExchangeRate.Result = "Not Authenticated";
			gGlobalExchangeRate.add(_GlobalExchangeRate);
			return gGlobalExchangeRate;

		}
	}

	@POST
	@Path("globalExchangerateById")
	@Produces("application/json")
	public GlobalExchangeRate globalExchangerateById(GlobalExchangeRate _GlobalExchangeRate,
			@Context HttpHeaders headers) {
		if (headers.getRequestHeader("Authorization") != null) {
			// System.out.println(headers.getRequestHeader("Authorization"));

			String userAgent = headers.getRequestHeader("Authorization").get(0);
			Authentication _Authentication = new Authentication();
			_Authentication = _Authentication.getAuthentication(userAgent);
			if (_Authentication.Result == "Authenticated") {
				return new GlobalExchangeRate().getGlobalExchangeRate(_GlobalExchangeRate.GlobalExchangeId);
			} else {

				_GlobalExchangeRate.Result = "Not Authenticated";

				return _GlobalExchangeRate;
			}
		} else {

			_GlobalExchangeRate.Result = "Not Authenticated";

			return _GlobalExchangeRate;

		}

	}

	@POST
	@Path("deleteglobalExchangerateById")
	@Produces("application/json")
	public GlobalExchangeRate deleteglobalExchangerateById(GlobalExchangeRate _GlobalExchangeRate,
			@Context HttpHeaders headers) {
		if (headers.getRequestHeader("Authorization") != null) {
			// System.out.println(headers.getRequestHeader("Authorization"));

			String userAgent = headers.getRequestHeader("Authorization").get(0);
			Authentication _Authentication = new Authentication();
			_Authentication = _Authentication.getAuthentication(userAgent);
			if (_Authentication.Result == "Authenticated") {
				return new GlobalExchangeRate().deleteGlobalExchangeRate(_GlobalExchangeRate.GlobalExchangeId);
			} else {

				_GlobalExchangeRate.Result = "Not Authenticated";

				return _GlobalExchangeRate;
			}
		} else {

			_GlobalExchangeRate.Result = "Not Authenticated";

			return _GlobalExchangeRate;

		}
	}

	@POST
	@Path("globalExchangerateFees")
	@Produces("application/json")
	public PaymentFees globalExchangerateFees(PaymentFees _PaymentFees, @Context HttpHeaders headers) {
		if (headers.getRequestHeader("Authorization") != null) {
			// System.out.println(headers.getRequestHeader("Authorization"));

			String userAgent = headers.getRequestHeader("Authorization").get(0);
			Authentication _Authentication = new Authentication();
			_Authentication = _Authentication.getAuthentication(userAgent);
			if (_Authentication.Result == "Authenticated") {
				return new PaymentFees().getPaymentFeesnewdetails(_PaymentFees);
			} else {

				_PaymentFees.Result = "Not Authenticated";

				return _PaymentFees;
			}
		} else {

			_PaymentFees.Result = "Not Authenticated";

			return _PaymentFees;

		}
	}

	@POST
	@Path("enableDisableTransactionFeeSharing")
	@Produces("application/json")
	public TransactionFeeSharing enableDisableTransactionFeeSharing(TransactionFeeSharing _TransactionFeeSharing,
			@Context HttpHeaders headers) {
		if (headers.getRequestHeader("Authorization") != null) {
			// System.out.println(headers.getRequestHeader("Authorization"));

			String userAgent = headers.getRequestHeader("Authorization").get(0);
			Authentication _Authentication = new Authentication();
			_Authentication = _Authentication.getAuthentication(userAgent);
			if (_Authentication.Result == "Authenticated") {
				return new TransactionFeeSharing()._updateTransactionFeeSharingEnableDisable(
						_TransactionFeeSharing.TransactionFeeSharingId, _TransactionFeeSharing.IsSpecific);
			} else {

				_TransactionFeeSharing.Result = "Not Authenticated";

				return _TransactionFeeSharing;
			}
		} else {

			_TransactionFeeSharing.Result = "Not Authenticated";

			return _TransactionFeeSharing;

		}
	}

	@POST
	@Path("enableDisableglobalExchangerate")
	@Produces("application/json")
	public GlobalExchangeRate enableDisableglobalExchangerate(GlobalExchangeRate _GlobalExchangeRate,
			@Context HttpHeaders headers) {
		if (headers.getRequestHeader("Authorization") != null) {
			// System.out.println(headers.getRequestHeader("Authorization"));

			String userAgent = headers.getRequestHeader("Authorization").get(0);
			Authentication _Authentication = new Authentication();
			_Authentication = _Authentication.getAuthentication(userAgent);
			if (_Authentication.Result == "Authenticated") {
				return new GlobalExchangeRate().updateDataGlobalExchangeRateEnableDisable(
						_GlobalExchangeRate.GlobalExchangeId, _GlobalExchangeRate.IsActive);
			} else {

				_GlobalExchangeRate.Result = "Not Authenticated";

				return _GlobalExchangeRate;
			}
		} else {

			_GlobalExchangeRate.Result = "Not Authenticated";

			return _GlobalExchangeRate;

		}
	}

	@POST
	@Path("updateRealfeesglobalExchangerate")
	@Produces("application/json")
	public GlobalExchangeRate updateRealfeesglobalExchangerate(GlobalExchangeRate _GlobalExchangeRate,
			@Context HttpHeaders headers) {
		if (headers.getRequestHeader("Authorization") != null) {
			// System.out.println(headers.getRequestHeader("Authorization"));

			String userAgent = headers.getRequestHeader("Authorization").get(0);
			Authentication _Authentication = new Authentication();
			_Authentication = _Authentication.getAuthentication(userAgent);
			if (_Authentication.Result == "Authenticated") {
				return new GlobalExchangeRate().updateRealdataFeedGlobalExchangeRate(
						_GlobalExchangeRate.DestinationCountryId, _GlobalExchangeRate.SellSpotPrice);
			} else {

				_GlobalExchangeRate.Result = "Not Authenticated";

				return _GlobalExchangeRate;
			}
		} else {

			_GlobalExchangeRate.Result = "Not Authenticated";

			return _GlobalExchangeRate;

		}
	}

	@POST
	@Path("getFeesCategoryById")
	@Produces("application/json")
	public FeesCategory getFeesCategoryById(FeesCategory _FeesCategory, @Context HttpHeaders headers) {
		if (headers.getRequestHeader("Authorization") != null) {
			// System.out.println(headers.getRequestHeader("Authorization"));

			String userAgent = headers.getRequestHeader("Authorization").get(0);
			Authentication _Authentication = new Authentication();
			_Authentication = _Authentication.getAuthentication(userAgent);
			if (_Authentication.Result == "Authenticated") {
				return new FeesCategory()._getFeesCategoryById(_FeesCategory.FeesCategoryId);
			} else {

				_FeesCategory.Result = "Not Authenticated";

				return _FeesCategory;
			}
		} else {

			_FeesCategory.Result = "Not Authenticated";

			return _FeesCategory;

		}
	}

	@GET
	@Path("getFeesCategoryDetails")
	@Produces("application/json")
	public ArrayList<FeesCategory> getFeesCategoryDetails(@Context HttpHeaders headers) {
		FeesCategory _FeesCategory = new FeesCategory();
		if (headers.getRequestHeader("Authorization") != null) {
			// System.out.println(headers.getRequestHeader("Authorization"));

			String userAgent = headers.getRequestHeader("Authorization").get(0);
			Authentication _Authentication = new Authentication();
			_Authentication = _Authentication.getAuthentication(userAgent);
			if (_Authentication.Result == "Authenticated") {
				return FeesCategory._getFeesCategoryDetails();
			} else {
				ArrayList<FeesCategory> fFeesCategory = new ArrayList<FeesCategory>();
				_FeesCategory.Result = "Not Authenticated";
				fFeesCategory.add(_FeesCategory);
				return fFeesCategory;
			}
		} else {
			ArrayList<FeesCategory> fFeesCategory = new ArrayList<FeesCategory>();
			_FeesCategory.Result = "Not Authenticated";
			fFeesCategory.add(_FeesCategory);
			return fFeesCategory;

		}
	}

	@POST
	@Path("updateglobalExchangerateFees")
	@Produces("application/json")
	public GlobalExchangeRate updateglobalExchangerateFees(GlobalExchangeRate _GlobalExchangeRate,
			@Context HttpHeaders headers) {
		if (headers.getRequestHeader("Authorization") != null) {
			// System.out.println(headers.getRequestHeader("Authorization"));

			String userAgent = headers.getRequestHeader("Authorization").get(0);
			Authentication _Authentication = new Authentication();
			_Authentication = _Authentication.getAuthentication(userAgent);
			if (_Authentication.Result == "Authenticated") {
				return new GlobalExchangeRate()._updateGlobalExchangeRateFees(_GlobalExchangeRate.GlobalExchangeId,
						_GlobalExchangeRate.AutoFees, _GlobalExchangeRate.PaymentFeesId);
			} else {

				_GlobalExchangeRate.Result = "Not Authenticated";

				return _GlobalExchangeRate;
			}
		} else {

			_GlobalExchangeRate.Result = "Not Authenticated";

			return _GlobalExchangeRate;

		}
	}

	@POST
	@Path("getPaymentFeesDetailsByPaymentMethod")
	@Produces("application/json")
	public ArrayList<PaymentFees> getPaymentFeesDetailsByPaymentMethod(PaymentFees _PaymentFees,
			@Context HttpHeaders headers) {
		if (headers.getRequestHeader("Authorization") != null) {
			// System.out.println(headers.getRequestHeader("Authorization"));

			String userAgent = headers.getRequestHeader("Authorization").get(0);
			Authentication _Authentication = new Authentication();
			_Authentication = _Authentication.getAuthentication(userAgent);
			if (_Authentication.Result == "Authenticated") {
				return PaymentFees.getPaymentFeesDetailsByPaymentMethod(_PaymentFees.PaymentMethodId,
						_PaymentFees.FeesCategoryId);
			} else {
				ArrayList<PaymentFees> pPaymentFees = new ArrayList<PaymentFees>();
				_PaymentFees.Result = "Not Authenticated";
				pPaymentFees.add(_PaymentFees);
				return pPaymentFees;
			}
		} else {
			ArrayList<PaymentFees> pPaymentFees = new ArrayList<PaymentFees>();
			_PaymentFees.Result = "Not Authenticated";
			pPaymentFees.add(_PaymentFees);
			return pPaymentFees;

		}
	}

	@POST
	@Path("updateTransactionFeeSharingFees")
	@Produces("application/json")
	public TransactionFeeSharing updateTransactionFeeSharingFees(TransactionFeeSharing _TransactionFeeSharing,
			@Context HttpHeaders headers) {
		if (headers.getRequestHeader("Authorization") != null) {
			// System.out.println(headers.getRequestHeader("Authorization"));

			String userAgent = headers.getRequestHeader("Authorization").get(0);
			Authentication _Authentication = new Authentication();
			_Authentication = _Authentication.getAuthentication(userAgent);
			if (_Authentication.Result == "Authenticated") {

				return new TransactionFeeSharing()._updateTransactionFeeSharing(
						_TransactionFeeSharing.TransactionFeeSharingId, _TransactionFeeSharing.AutoFees,
						_TransactionFeeSharing.PaymentFeesId);
			} else {

				_TransactionFeeSharing.Result = "Not Authenticated";

				return _TransactionFeeSharing;
			}
		} else {

			_TransactionFeeSharing.Result = "Not Authenticated";

			return _TransactionFeeSharing;

		}
	}

	@POST
	@Path("gettranscationdetailsByCompany")
	@Produces("application/json")
	public ArrayList<AuthrozieTranscation> gettranscationdetailsByCompany(AuthrozieTranscation _AuthrozieTranscation,
			@Context HttpHeaders headers) {
		if (headers.getRequestHeader("Authorization") != null) {
			// System.out.println(headers.getRequestHeader("Authorization"));

			String userAgent = headers.getRequestHeader("Authorization").get(0);
			Authentication _Authentication = new Authentication();
			_Authentication = _Authentication.getAuthentication(userAgent);
			if (_Authentication.Result == "Authenticated") {
				return AuthrozieTranscation.getAuthrozieTranscationDetailsByCompany(_AuthrozieTranscation.CompanyId);
			} else {
				ArrayList<AuthrozieTranscation> aAuthrozieTranscation = new ArrayList<AuthrozieTranscation>();
				_AuthrozieTranscation.Result = "Not Authenticated";
				aAuthrozieTranscation.add(_AuthrozieTranscation);
				return aAuthrozieTranscation;
			}
		} else {
			ArrayList<AuthrozieTranscation> aAuthrozieTranscation = new ArrayList<AuthrozieTranscation>();
			_AuthrozieTranscation.Result = "Not Authenticated";
			aAuthrozieTranscation.add(_AuthrozieTranscation);
			return aAuthrozieTranscation;

		}
	}

	// @POST
	// @Path("saveapplicantkyc")
	//// @Produces("application/json")
	// public ApplicantKYC saveapplicantkyc(ApplicantKYC _ApplicantKYC) {
	// return new ApplicantKYC().addupdateApplicantKYC(_ApplicantKYC);
	// }
	@POST
	@Path("getsaveapplicantkyc")
	@Produces("application/json")
	public ArrayList<ApplicantKYC> getsaveapplicantkyc(ApplicantKYC _ApplicantKYC, @Context HttpHeaders headers) {
		if (headers.getRequestHeader("Authorization") != null) {
			// System.out.println(headers.getRequestHeader("Authorization"));

			String userAgent = headers.getRequestHeader("Authorization").get(0);
			Authentication _Authentication = new Authentication();
			_Authentication = _Authentication.getAuthentication(userAgent);
			if (_Authentication.Result == "Authenticated") {
				return ApplicantKYC.getKYCDetilasApplicant(_ApplicantKYC.CompanyId, _ApplicantKYC.CustomerId,
						_ApplicantKYC.ApplicantId);
			} else {
				ArrayList<ApplicantKYC> aApplicantKYC = new ArrayList<ApplicantKYC>();
				_ApplicantKYC.Result = "Not Authenticated";
				aApplicantKYC.add(_ApplicantKYC);
				return aApplicantKYC;
			}
		} else {
			ArrayList<ApplicantKYC> aApplicantKYC = new ArrayList<ApplicantKYC>();
			_ApplicantKYC.Result = "Not Authenticated";
			aApplicantKYC.add(_ApplicantKYC);
			return aApplicantKYC;

		}
	}

	@POST
	@Path("getapplicantkycById")
	@Produces("application/json")
	public ApplicantKYC getapplicantkycById(ApplicantKYC _ApplicantKYC, @Context HttpHeaders headers) {
		if (headers.getRequestHeader("Authorization") != null) {
			// System.out.println(headers.getRequestHeader("Authorization"));

			String userAgent = headers.getRequestHeader("Authorization").get(0);
			Authentication _Authentication = new Authentication();
			_Authentication = _Authentication.getAuthentication(userAgent);
			if (_Authentication.Result == "Authenticated") {
				return new ApplicantKYC().getApplicantKYCId(_ApplicantKYC.CustomerApplicantKYCId);
			} else {

				_ApplicantKYC.Result = "Not Authenticated";

				return _ApplicantKYC;
			}
		} else {

			_ApplicantKYC.Result = "Not Authenticated";

			return _ApplicantKYC;

		}
	}

	@GET
	@Path("gettest")
	@Produces("application/json")
	public ApplicantKYC gettest() {
		return new ApplicantKYC().test();
	}

	@POST
	@Path("addApplicant")
	@Produces("application/json")
	public ApplicantKYC addApplicant(ApplicantKYC _ApplicantKYC, @Context HttpHeaders headers) {
		if (headers.getRequestHeader("Authorization") != null) {
			// System.out.println(headers.getRequestHeader("Authorization"));

			String userAgent = headers.getRequestHeader("Authorization").get(0);
			Authentication _Authentication = new Authentication();
			_Authentication = _Authentication.getAuthentication(userAgent);
			if (_Authentication.Result == "Authenticated") {
				return new ApplicantKYC().addApplicantKYC(_ApplicantKYC.CustomerId, _ApplicantKYC.CompanyId,
						_ApplicantKYC.Title, _ApplicantKYC.FirstName, _ApplicantKYC.LastName, _ApplicantKYC.Gender,
						_ApplicantKYC.DOB, _ApplicantKYC.Country, _ApplicantKYC.FlatNumber, _ApplicantKYC.BuildingName,
						_ApplicantKYC.BuildingNumber, _ApplicantKYC.Street, _ApplicantKYC.State, _ApplicantKYC.Town,
						_ApplicantKYC.PostalCode, _ApplicantKYC.Phone);
			} else {

				_ApplicantKYC.Result = "Not Authenticated";

				return _ApplicantKYC;
			}
		} else {

			_ApplicantKYC.Result = "Not Authenticated";

			return _ApplicantKYC;

		}
	}

	/*
	 * @POST
	 * 
	 * @Path("upload")
	 * 
	 * @Consumes(MediaType.MULTIPART_FORM_DATA) public ApplicantKYC
	 * upload( @FormDataParam("file") InputStream fileInputStream,
	 * 
	 * @FormDataParam("file") FormDataContentDisposition disposition) {
	 * 
	 * 
	 * return new ApplicantKYC().checkimg(fileInputStream); }
	 */
	@POST
	@Path("testmagic")
	@Produces("application/json")
	public minepay hi(minepay _minepay) {
		return new minepay().addpay(_minepay.CardNumber, _minepay.exp, _minepay.cvv);
	}

	@POST
	@Path("email")
	@Produces("application/json")
	public Email email(Email _Email, @Context HttpHeaders headers) {
		if (headers.getRequestHeader("Authorization") != null) {
			// System.out.println(headers.getRequestHeader("Authorization"));

			String userAgent = headers.getRequestHeader("Authorization").get(0);
			Authentication _Authentication = new Authentication();
			_Authentication = _Authentication.getAuthentication(userAgent);
			if (_Authentication.Result == "Authenticated") {
				return new Email().go(_Email.CustomerId);
			} else {

				_Email.Result = "Not Authenticated";

				return _Email;
			}
		} else {

			_Email.Result = "Not Authenticated";

			return _Email;

		}
	}

	@POST
	@Path("pay")
	@Produces("application/json")
	public MagicTest pay(MagicTest _MagicTest, @Context HttpHeaders headers) {
		if (headers.getRequestHeader("Authorization") != null) {
			// System.out.println(headers.getRequestHeader("Authorization"));

			String userAgent = headers.getRequestHeader("Authorization").get(0);
			Authentication _Authentication = new Authentication();
			_Authentication = _Authentication.getAuthentication(userAgent);
			if (_Authentication.Result == "Authenticated") {
				return new MagicTest().voidtt(_MagicTest);
			} else {

				_MagicTest.Result = "Not Authenticated";

				return _MagicTest;
			}
		} else {

			_MagicTest.Result = "Not Authenticated";

			return _MagicTest;

		}
	}

	@POST
	@Path("refundTransaction")
	@Produces("application/json")
	public MagicPay refundTransaction(MagicPay _MagicPay, @Context HttpHeaders headers) {
		if (headers.getRequestHeader("Authorization") != null) {
			// System.out.println(headers.getRequestHeader("Authorization"));

			String userAgent = headers.getRequestHeader("Authorization").get(0);
			Authentication _Authentication = new Authentication();
			_Authentication = _Authentication.getAuthentication(userAgent);
			if (_Authentication.Result == "Authenticated") {
				return new MagicPay().voidrefundTransaction(_MagicPay);
			} else {

				_MagicPay.Result = "Not Authenticated";

				return _MagicPay;
			}
		} else {

			_MagicPay.Result = "Not Authenticated";

			return _MagicPay;

		}
	}

	@POST
	@Path("uploadDocumentKYC")
	@Produces("application/json")
	public ApplicantKYC refundTransaction(ApplicantKYC _ApplicantKYC, @Context HttpHeaders headers) {
		if (headers.getRequestHeader("Authorization") != null) {
			// System.out.println(headers.getRequestHeader("Authorization"));

			String userAgent = headers.getRequestHeader("Authorization").get(0);
			Authentication _Authentication = new Authentication();
			_Authentication = _Authentication.getAuthentication(userAgent);
			if (_Authentication.Result == "Authenticated") {
				return new ApplicantKYC().kycup(_ApplicantKYC.ApplicantId, _ApplicantKYC.Type, _ApplicantKYC.Side,
						_ApplicantKYC.ImageString, _ApplicantKYC.ImageName, _ApplicantKYC.ImageExt);
			} else {

				_ApplicantKYC.Result = "Not Authenticated";

				return _ApplicantKYC;
			}
		} else {

			_ApplicantKYC.Result = "Not Authenticated";

			return _ApplicantKYC;

		}
	}

	@POST
	@Path("createApplicantCheck")
	@Produces("application/json")
	public ApplicantKYC createApplicantCheck(ApplicantKYC _ApplicantKYC, @Context HttpHeaders headers)
			throws SQLException {
		if (headers.getRequestHeader("Authorization") != null) {
			// System.out.println(headers.getRequestHeader("Authorization"));

			String userAgent = headers.getRequestHeader("Authorization").get(0);
			Authentication _Authentication = new Authentication();
			_Authentication = _Authentication.getAuthentication(userAgent);
			if (_Authentication.Result == "Authenticated") {
				return new ApplicantKYC().kycCheck(_ApplicantKYC.ApplicantId);
			} else {

				_ApplicantKYC.Result = "Not Authenticated";

				return _ApplicantKYC;
			}
		} else {

			_ApplicantKYC.Result = "Not Authenticated";

			return _ApplicantKYC;

		}
	}

	@POST
	@Path("getApplicantCheck")
	@Produces("application/json")
	public ApplicantKYC getApplicantCheck(ApplicantKYC _ApplicantKYC, @Context HttpHeaders headers)
			throws SQLException {
		if (headers.getRequestHeader("Authorization") != null) {
			// System.out.println(headers.getRequestHeader("Authorization"));

			String userAgent = headers.getRequestHeader("Authorization").get(0);
			Authentication _Authentication = new Authentication();
			_Authentication = _Authentication.getAuthentication(userAgent);
			if (_Authentication.Result == "Authenticated") {
				return new ApplicantKYC()._getApplicantCheck(_ApplicantKYC.ApplicantId, _ApplicantKYC.ApplicantCheckId);
			} else {

				_ApplicantKYC.Result = "Not Authenticated";

				return _ApplicantKYC;
			}
		} else {

			_ApplicantKYC.Result = "Not Authenticated";

			return _ApplicantKYC;

		}
	}

	@POST
	@Path("getCustomerTransaction")
	@Produces("application/json")
	public AuthrozieTranscation getCustomerTransaction(AuthrozieTranscation _AuthrozieTranscation,
			@Context HttpHeaders headers) {
		if (headers.getRequestHeader("Authorization") != null) {
			// System.out.println(headers.getRequestHeader("Authorization"));

			String userAgent = headers.getRequestHeader("Authorization").get(0);
			Authentication _Authentication = new Authentication();
			_Authentication = _Authentication.getAuthentication(userAgent);
			if (_Authentication.Result == "Authenticated") {
				return new AuthrozieTranscation().getCustomerTransaction(_AuthrozieTranscation.CustomerId,
						_AuthrozieTranscation.CompanyId);
			} else {

				_AuthrozieTranscation.Result = "Not Authenticated";

				return _AuthrozieTranscation;
			}
		} else {

			_AuthrozieTranscation.Result = "Not Authenticated";

			return _AuthrozieTranscation;

		}
	}

	/*
	 * @POST
	 * 
	 * @Path("ii")
	 * 
	 * @Produces("application/json") public ApplicantKYC ii(ApplicantKYC
	 * _ApplicantKYC) { return new ApplicantKYC().upishu(_ApplicantKYC.Error); }
	 */
	@POST
	@Path("getSendEmailTLS")
	@Produces("application/json")
	public SendEmailTLS getSendEmailTLS(SendEmailTLS _SendEmailTLS) {

		return new SendEmailTLS().addSendEmailTLS(_SendEmailTLS.Name, _SendEmailTLS.Email,
				_SendEmailTLS.ReceivingCountry, _SendEmailTLS.FalconLoopTransactionNumber, _SendEmailTLS.Subject,
				_SendEmailTLS.Question);

	}

	@POST
	@Path("payGiftCard")
	@Produces("application/json")
	public GiftCard payGiftCard(GiftCard _GiftCard, @Context HttpHeaders headers) {

		if (headers.getRequestHeader("Authorization") != null) {
			// System.out.println(headers.getRequestHeader("Authorization"));

			String userAgent = headers.getRequestHeader("Authorization").get(0);
			Authentication _Authentication = new Authentication();
			_Authentication = _Authentication.getAuthentication(userAgent);
			if (_Authentication.Result == "Authenticated") {
				return new GiftCard().addgftcard(_GiftCard.GiftCardid, _GiftCard.CompanyId, _GiftCard.CustomerId,
						_GiftCard.TransactionDetail, _GiftCard.SendingAmount, _GiftCard.Charges, _GiftCard.Fees,
						_GiftCard.Tax, _GiftCard.ReceivingAmount, _GiftCard.BeneficiaryId, _GiftCard.PaymentMethodId,
						_GiftCard.TransferPurpose, _GiftCard.DeliveryType);
			} else {

				_GiftCard.Result = "Not Authenticated";

				return _GiftCard;
			}
		} else {

			_GiftCard.Result = "Not Authenticated";

			return _GiftCard;

		}
	}

	@GET
	@Path("getGiftCard")
	@Produces("application/json")
	public ArrayList<GiftCard> getGiftCard() {

		return GiftCard.getGiftCard();
	}

	@POST
	@Path("email1")
	@Produces("application/json")
	public Email email1(Email _Email) {
		return new Email().go1(_Email.email);
	}

	@POST
	@Path("sendNewletterEmail")
	@Produces("application/json")
	public SendEmailTLS sendNewletterEmail(SendEmailTLS _SendEmailTLS, @Context HttpHeaders headers) {
		if (headers.getRequestHeader("Authorization") != null) {
			// System.out.println(headers.getRequestHeader("Authorization"));

			String userAgent = headers.getRequestHeader("Authorization").get(0);
			Authentication _Authentication = new Authentication();
			_Authentication = _Authentication.getAuthentication(userAgent);
			if (_Authentication.Result == "Authenticated") {
				return new SendEmailTLS().sendNewletterEmailadmin(_SendEmailTLS.Email);
			} else {

				_SendEmailTLS.Result = "Not Authenticated";
				return _SendEmailTLS;
			}
		} else {

			_SendEmailTLS.Result = "Not Authenticated";
			return _SendEmailTLS;
		}
	}

	@POST
	@Path("payGiftCardVisa")
	@Produces("application/json")
	public GiftCard payGiftCardVisa(GiftCard _GiftCard, @Context HttpHeaders headers) {
		if (headers.getRequestHeader("Authorization") != null) {
			// System.out.println(headers.getRequestHeader("Authorization"));

			String userAgent = headers.getRequestHeader("Authorization").get(0);
			Authentication _Authentication = new Authentication();
			_Authentication = _Authentication.getAuthentication(userAgent);
			if (_Authentication.Result == "Authenticated") {
				return new GiftCard().addgftcardVisa(_GiftCard.GiftCardid, _GiftCard.CompanyId, _GiftCard.CustomerId,
						_GiftCard.TransactionDetail, _GiftCard.SendingAmount, _GiftCard.Charges, _GiftCard.Fees,
						_GiftCard.Tax, _GiftCard.ReceivingAmount, _GiftCard.BeneficiaryId, _GiftCard.PaymentMethodId,
						_GiftCard.TransferPurpose, _GiftCard.DeliveryType, _GiftCard.CardNumber,
						_GiftCard.setExpirationDate, _GiftCard.cvv, _GiftCard.SenderName);
			} else {

				_GiftCard.Result = "Not Authenticated";
				return _GiftCard;
			}
		} else {

			_GiftCard.Result = "Not Authenticated";
			return _GiftCard;
		}
	}

	@GET
	@Path("md")
	@Produces("application/json")
	public MD5 md() {
		return new MD5().testMD5();
	}

	@POST
	@Path("getMsisdnInfo")
	@Produces("application/json")
	public TransferToApi getMsisdnInfo(TransferToApi _TransferToApi) throws IOException {
		return new TransferToApi().addTransferTomsisdn_info(_TransferToApi.MobileNumber);
	}

	@GET
	@Path("getReserveId")
	@Produces("application/json")
	public TransferToApi getReserveId(@Context HttpHeaders headers) {
		TransferToApi _TransferToApi = new TransferToApi();
		if (headers.getRequestHeader("Authorization") != null) {
			// System.out.println(headers.getRequestHeader("Authorization"));

			String userAgent = headers.getRequestHeader("Authorization").get(0);
			Authentication _Authentication = new Authentication();
			_Authentication = _Authentication.getAuthentication(userAgent);
			if (_Authentication.Result == "Authenticated") {
				return new TransferToApi().TransferToreserverId();
			} else {

				_TransferToApi.Result = "Not Authenticated";
				return _TransferToApi;
			}
		} else {

			_TransferToApi.Result = "Not Authenticated";
			return _TransferToApi;
		}
	}

	@POST
	@Path("addTransferToTopup")
	@Produces("application/json")
	public TransferToApi addTransferToTopup(TransferToApi _TransferToApi, @Context HttpHeaders headers) {
		if (headers.getRequestHeader("Authorization") != null) {
			// System.out.println(headers.getRequestHeader("Authorization"));

			String userAgent = headers.getRequestHeader("Authorization").get(0);
			Authentication _Authentication = new Authentication();
			_Authentication = _Authentication.getAuthentication(userAgent);
			if (_Authentication.Result == "Authenticated") {
				return new TransferToApi().TransferToTopUp(_TransferToApi.MobileNumber, _TransferToApi.CompanyId,
						_TransferToApi.CustomerId, _TransferToApi.TransactionDetail, _TransferToApi.Amount,
						_TransferToApi.Charges, _TransferToApi.Fees, _TransferToApi.Tax,
						_TransferToApi.SendingCurrencyId, _TransferToApi.ReceivingCurrencytId,
						_TransferToApi.BeneficiaryId, _TransferToApi.PaymentMethodId,
						_TransferToApi.DestinationCountryId, _TransferToApi.SourceCountryId, _TransferToApi.IsLive,
						_TransferToApi.TransferPurpose, _TransferToApi.ExchangeRate, _TransferToApi.Sender,
						_TransferToApi.CardNumber, _TransferToApi.setExpirationDate, _TransferToApi.cvv,
						_TransferToApi.FaceAmount);
			} else {

				_TransferToApi.Result = "Not Authenticated";
				return _TransferToApi;
			}
		} else {

			_TransferToApi.Result = "Not Authenticated";
			return _TransferToApi;
		}
	}

	@GET
	@Path("getRole")
	@Produces("application/json")
	public ArrayList<role> getRole(@Context HttpHeaders headers) {
		role _role = new role();
		if (headers.getRequestHeader("Authorization") != null) {
			// System.out.println(headers.getRequestHeader("Authorization"));

			String userAgent = headers.getRequestHeader("Authorization").get(0);
			Authentication _Authentication = new Authentication();
			_Authentication = _Authentication.getAuthentication(userAgent);
			if (_Authentication.Result == "Authenticated") {
				return new role().getroleDetails();
			} else {
				ArrayList<role> rrole = new ArrayList<role>();
				_role.Result = "Not Authenticated";
				rrole.add(_role);
				return rrole;
			}
		} else {
			ArrayList<role> rrole = new ArrayList<role>();
			_role.Result = "Not Authenticated";
			rrole.add(_role);
			return rrole;
		}
	}

	@POST
	@Path("getRoleById")
	@Produces("application/json")
	public role getRoleById(role _role, @Context HttpHeaders headers) {
		if (headers.getRequestHeader("Authorization") != null) {
			// System.out.println(headers.getRequestHeader("Authorization"));

			String userAgent = headers.getRequestHeader("Authorization").get(0);
			Authentication _Authentication = new Authentication();
			_Authentication = _Authentication.getAuthentication(userAgent);
			if (_Authentication.Result == "Authenticated") {
				return new role().getroleDetailById(_role.RoleId);
			} else {

				_role.Result = "Not Authenticated";

				return _role;
			}
		} else {

			_role.Result = "Not Authenticated";

			return _role;
		}

	}

	@GET
	@Path("getModules")
	@Produces("application/json")
	public ArrayList<modules> getModules(@Context HttpHeaders headers) {
		modules _modules = new modules();
		if (headers.getRequestHeader("Authorization") != null) {
			// System.out.println(headers.getRequestHeader("Authorization"));

			String userAgent = headers.getRequestHeader("Authorization").get(0);
			Authentication _Authentication = new Authentication();
			_Authentication = _Authentication.getAuthentication(userAgent);
			if (_Authentication.Result == "Authenticated") {
				return new modules().getmodulesDetails();
			} else {
				ArrayList<modules> mmodules = new ArrayList<modules>();
				_modules.Result = "Not Authenticated";
				mmodules.add(_modules);
				return mmodules;
			}
		} else {
			ArrayList<modules> mmodules = new ArrayList<modules>();
			_modules.Result = "Not Authenticated";
			mmodules.add(_modules);
			return mmodules;
		}
	}

	@POST
	@Path("getModuleById")
	@Produces("application/json")
	public modules getModuleById(modules _modules, @Context HttpHeaders headers) {
		if (headers.getRequestHeader("Authorization") != null) {
			// System.out.println(headers.getRequestHeader("Authorization"));

			String userAgent = headers.getRequestHeader("Authorization").get(0);
			Authentication _Authentication = new Authentication();
			_Authentication = _Authentication.getAuthentication(userAgent);
			if (_Authentication.Result == "Authenticated") {
				return new modules().getmodulesDetailById(_modules.ModuelId);
			} else {

				_modules.Result = "Not Authenticated";

				return _modules;
			}
		} else {

			_modules.Result = "Not Authenticated";

			return _modules;
		}
	}

	@POST
	@Path("addRolesModule")
	@Produces("application/json")
	public RoleModules addRolesModule(RoleModules _RoleModules, @Context HttpHeaders headers) {
		if (headers.getRequestHeader("Authorization") != null) {
			// System.out.println(headers.getRequestHeader("Authorization"));

			String userAgent = headers.getRequestHeader("Authorization").get(0);
			Authentication _Authentication = new Authentication();
			_Authentication = _Authentication.getAuthentication(userAgent);
			if (_Authentication.Result == "Authenticated") {
				return new RoleModules().addRoleModules(_RoleModules.RoleId, _RoleModules.ModuelId);
			} else {

				_RoleModules.Result = "Not Authenticated";

				return _RoleModules;
			}
		} else {

			_RoleModules.Result = "Not Authenticated";

			return _RoleModules;
		}
	}

	@POST
	@Path("updateRolesModule")
	@Produces("application/json")
	public RoleModules updateRolesModule(RoleModules _RoleModules, @Context HttpHeaders headers) {
		if (headers.getRequestHeader("Authorization") != null) {
			// System.out.println(headers.getRequestHeader("Authorization"));

			String userAgent = headers.getRequestHeader("Authorization").get(0);
			Authentication _Authentication = new Authentication();
			_Authentication = _Authentication.getAuthentication(userAgent);
			if (_Authentication.Result == "Authenticated") {
				return new RoleModules().updateRoleModules(_RoleModules.RoleId, _RoleModules.ModuelId);
			} else {

				_RoleModules.Result = "Not Authenticated";

				return _RoleModules;
			}
		} else {

			_RoleModules.Result = "Not Authenticated";

			return _RoleModules;
		}
	}

	@POST
	@Path("getRolesModuleById")
	@Produces("application/json")
	public RoleModules getRolesModuleById(RoleModules _RoleModules, @Context HttpHeaders headers) {
		if (headers.getRequestHeader("Authorization") != null) {
			// System.out.println(headers.getRequestHeader("Authorization"));

			String userAgent = headers.getRequestHeader("Authorization").get(0);
			Authentication _Authentication = new Authentication();
			_Authentication = _Authentication.getAuthentication(userAgent);
			if (_Authentication.Result == "Authenticated") {
				return new RoleModules().getRoleModulesDetails(_RoleModules.RoleId);
			} else {

				_RoleModules.Result = "Not Authenticated";

				return _RoleModules;
			}
		} else {

			_RoleModules.Result = "Not Authenticated";

			return _RoleModules;
		}
	}

	@POST
	@Path("deleteRolesModuleById")
	@Produces("application/json")
	public RoleModules deleteRolesModuleById(RoleModules _RoleModules, @Context HttpHeaders headers) {
		if (headers.getRequestHeader("Authorization") != null) {
			// System.out.println(headers.getRequestHeader("Authorization"));

			String userAgent = headers.getRequestHeader("Authorization").get(0);
			Authentication _Authentication = new Authentication();
			_Authentication = _Authentication.getAuthentication(userAgent);
			if (_Authentication.Result == "Authenticated") {
				return new RoleModules().deleteRoleModulesDetails(_RoleModules.RolesModuleId);
			} else {

				_RoleModules.Result = "Not Authenticated";

				return _RoleModules;
			}
		} else {

			_RoleModules.Result = "Not Authenticated";

			return _RoleModules;
		}
	}

	@POST
	@Path("getMultipleModuleById")
	@Produces("application/json")
	public ArrayList<modules> getMultipleModuleById(modules _modules, @Context HttpHeaders headers) {
		if (headers.getRequestHeader("Authorization") != null) {
			// System.out.println(headers.getRequestHeader("Authorization"));

			String userAgent = headers.getRequestHeader("Authorization").get(0);
			Authentication _Authentication = new Authentication();
			_Authentication = _Authentication.getAuthentication(userAgent);
			if (_Authentication.Result == "Authenticated") {
				return new modules().getmodulesDetailByIds(_modules.MultipleModuelId);
			} else {
				ArrayList<modules> mmodules = new ArrayList<modules>();
				_modules.Result = "Not Authenticated";
				mmodules.add(_modules);
				return mmodules;
			}
		} else {
			ArrayList<modules> mmodules = new ArrayList<modules>();
			_modules.Result = "Not Authenticated";
			mmodules.add(_modules);
			return mmodules;
		}
	}

	@POST
	@Path("logOutUser")
	@Produces("application/json")
	public UserDetail logOutUser(UserDetail _UserDetail, @Context HttpHeaders headers) {
		if (headers.getRequestHeader("Authorization") != null) {
			// System.out.println(headers.getRequestHeader("Authorization"));

			String userAgent = headers.getRequestHeader("Authorization").get(0);
			Authentication _Authentication = new Authentication();
			_Authentication = _Authentication.getAuthentication(userAgent);
			if (_Authentication.Result == "Authenticated") {
				return new UserDetail().LogoutUser(_UserDetail.UserId);
			} else {

				_UserDetail.Result = "Not Authenticated";

				return _UserDetail;
			}
		} else {

			_UserDetail.Result = "Not Authenticated";

			return _UserDetail;
		}
	}

	@POST
	@Path("addCompanyServices")
	@Produces("application/json")
	public CompanyServices addCompanyServices(CompanyServices _CompanyServices, @Context HttpHeaders headers) {
		if (headers.getRequestHeader("Authorization") != null) {
			// System.out.println(headers.getRequestHeader("Authorization"));

			String userAgent = headers.getRequestHeader("Authorization").get(0);
			Authentication _Authentication = new Authentication();
			_Authentication = _Authentication.getAuthentication(userAgent);
			if (_Authentication.Result == "Authenticated") {
				return new CompanyServices().addCompanyServices(_CompanyServices.CompanyId,
						_CompanyServices.CompanyServices);
			} else {

				_CompanyServices.Result = "Not Authenticated";

				return _CompanyServices;
			}
		} else {

			_CompanyServices.Result = "Not Authenticated";

			return _CompanyServices;
		}
	}

	@POST
	@Path("updateCompanyServices")
	@Produces("application/json")
	public CompanyServices updateCompanyServices(CompanyServices _CompanyServices, @Context HttpHeaders headers) {
		if (headers.getRequestHeader("Authorization") != null) {
			// System.out.println(headers.getRequestHeader("Authorization"));

			String userAgent = headers.getRequestHeader("Authorization").get(0);
			Authentication _Authentication = new Authentication();
			_Authentication = _Authentication.getAuthentication(userAgent);
			if (_Authentication.Result == "Authenticated") {
				return new CompanyServices().updateCompanyServices(_CompanyServices.CompanyId,
						_CompanyServices.CompanyServices);
			} else {

				_CompanyServices.Result = "Not Authenticated";

				return _CompanyServices;
			}
		} else {

			_CompanyServices.Result = "Not Authenticated";

			return _CompanyServices;
		}
	}

	@GET
	@Path("getCompanyServices")
	@Produces("application/json")
	public ArrayList<CompanyServicesDetails> getCompanyServices(@Context HttpHeaders headers) {
		CompanyServicesDetails _CompanyServicesDetails = new CompanyServicesDetails();
		if (headers.getRequestHeader("Authorization") != null) {
			// System.out.println(headers.getRequestHeader("Authorization"));

			String userAgent = headers.getRequestHeader("Authorization").get(0);
			Authentication _Authentication = new Authentication();
			_Authentication = _Authentication.getAuthentication(userAgent);
			if (_Authentication.Result == "Authenticated") {
				return new CompanyServicesDetails().getCompanyServicesDetails();
			} else {
				ArrayList<CompanyServicesDetails> cCompanyServicesDetails = new ArrayList<CompanyServicesDetails>();
				_CompanyServicesDetails.Result = "Not Authenticated";
				cCompanyServicesDetails.add(_CompanyServicesDetails);
				return cCompanyServicesDetails;
			}
		} else {
			ArrayList<CompanyServicesDetails> cCompanyServicesDetails = new ArrayList<CompanyServicesDetails>();
			_CompanyServicesDetails.Result = "Not Authenticated";
			cCompanyServicesDetails.add(_CompanyServicesDetails);
			return cCompanyServicesDetails;
		}
	}

	@POST
	@Path("getMultipleCompanyServices")
	@Produces("application/json")
	public ArrayList<CompanyServicesDetails> getMultipleCompanyServices(CompanyServicesDetails _CompanyServicesDetails,
			@Context HttpHeaders headers) {
		if (headers.getRequestHeader("Authorization") != null) {
			// System.out.println(headers.getRequestHeader("Authorization"));

			String userAgent = headers.getRequestHeader("Authorization").get(0);
			Authentication _Authentication = new Authentication();
			_Authentication = _Authentication.getAuthentication(userAgent);
			if (_Authentication.Result == "Authenticated") {
				return new CompanyServicesDetails().getCompanyServicesDetailId(_CompanyServicesDetails.CompanyId,
						_CompanyServicesDetails.MultipleServicesId);
			} else {
				ArrayList<CompanyServicesDetails> cCompanyServicesDetails = new ArrayList<CompanyServicesDetails>();
				_CompanyServicesDetails.Result = "Not Authenticated";
				cCompanyServicesDetails.add(_CompanyServicesDetails);
				return cCompanyServicesDetails;
			}
		} else {
			ArrayList<CompanyServicesDetails> cCompanyServicesDetails = new ArrayList<CompanyServicesDetails>();
			_CompanyServicesDetails.Result = "Not Authenticated";
			cCompanyServicesDetails.add(_CompanyServicesDetails);
			return cCompanyServicesDetails;
		}
	}

	@POST
	@Path("getCompanyServices")
	@Produces("application/json")
	public CompanyServices getCompanyServices(CompanyServices _CompanyServices, @Context HttpHeaders headers) {
		if (headers.getRequestHeader("Authorization") != null) {
			// System.out.println(headers.getRequestHeader("Authorization"));

			String userAgent = headers.getRequestHeader("Authorization").get(0);
			Authentication _Authentication = new Authentication();
			_Authentication = _Authentication.getAuthentication(userAgent);
			if (_Authentication.Result == "Authenticated") {
				return new CompanyServices()._getCompanyServicedetails(_CompanyServices.CompanyId);
			} else {

				_CompanyServices.Result = "Not Authenticated";

				return _CompanyServices;
			}
		} else {

			_CompanyServices.Result = "Not Authenticated";

			return _CompanyServices;
		}
	}

	@POST
	@Path("getApplicantReport")
	@Produces("application/json")
	public OnfidoReport getApplicantReport(OnfidoReport _OnfidoReport, @Context HttpHeaders headers) {
		if (headers.getRequestHeader("Authorization") != null) {
			// System.out.println(headers.getRequestHeader("Authorization"));

			String userAgent = headers.getRequestHeader("Authorization").get(0);
			Authentication _Authentication = new Authentication();
			_Authentication = _Authentication.getAuthentication(userAgent);
			if (_Authentication.Result == "Authenticated") {
				return new OnfidoReport().getCheckreport(_OnfidoReport.ApplicantCheckId);
			} else {

				_OnfidoReport.Result = "Not Authenticated";

				return _OnfidoReport;
			}
		} else {

			_OnfidoReport.Result = "Not Authenticated";

			return _OnfidoReport;
		}
	}

	@POST
	@Path("Authorization")
	@Produces("application/json")
	public Authentication Authorization(@Context HttpHeaders headers) {
		Authentication _Authentication = new Authentication();
		if (headers.getRequestHeader("Authorization") != null) {
			String userAgent = headers.getRequestHeader("Authorization").get(0);

			_Authentication = _Authentication.getAuthentication(userAgent);
			if (_Authentication.Result == "Authenticated") {
				return new Authentication().getAuthenticationTest(userAgent);
			}
		} else {
			_Authentication.Result = "Not Authenticated";

		}
		return _Authentication;
	}

	@POST
	@Path("getcountryByPhoneCodeTEST")
	@Produces("application/json")
	public CountryDeatils getcountryByPhoneCodeTEST(CountryDeatils _CountryDeatils, @Context HttpHeaders headers) {

		Authentication _Authentication = new Authentication();
		if (headers.getRequestHeader("Authorization") != null) {
			String userAgent = headers.getRequestHeader("Authorization").get(0);
			_Authentication = _Authentication.getAuthentication(userAgent);
			if (_Authentication.Result == "Authenticated") {
				return new CountryDeatils().getCountryDetailsIso(_CountryDeatils.phonecode,
						_CountryDeatils.CountryName);
			} else {
				CountryDeatils _countryDeatils = new CountryDeatils();
				_countryDeatils.Result = "Not Authenticated";
				return _countryDeatils;
			}
		} else {
			CountryDeatils _countryDeatils = new CountryDeatils();
			_countryDeatils.Result = "Not Authenticated";
			return _countryDeatils;

		}
	}

	@POST
	@Path("updateMerchantKey")
	@Produces("application/json")
	public CompanyDetail updateMerchantKey(CompanyDetail _CompanyDetail, @Context HttpHeaders headers) {
		Authentication _Authentication = new Authentication();

		if (headers.getRequestHeader("Authorization") != null) {
			String userAgent = headers.getRequestHeader("Authorization").get(0);
			_Authentication = _Authentication.getAuthentication(userAgent);
			if (_Authentication.Result == "Authenticated") {
				return new CompanyDetail().updateCompanyMerchantKey(_CompanyDetail.CompanyId, userAgent);
			} else {

				_CompanyDetail.Result = "Not Authenticated";
				return _CompanyDetail;
			}
		} else {

			_CompanyDetail.Result = "Not Authenticated";
			return _CompanyDetail;

		}
	}
}
