package dto;

public class CreateAccount {
private String accountHolderName;
private long phone;
private String email;
private int AccountNumber;
private Double initialBalance;
private String AccountType;
private String Address;

public CreateAccount(String accountHolderName,long phone, String email, int AccountNumber, String AccountType ,Double initialBalance, 
		String address) {
	super();
	this.accountHolderName = accountHolderName;
	this.email = email;
	this.AccountNumber = AccountNumber;
	this.initialBalance = initialBalance;
	this.AccountType=AccountType;
	Address = address;
}
public String getAccountHolderName() {
	return accountHolderName;
}
public void setAccountHolderName(String accountHolderName) {
	this.accountHolderName = accountHolderName;
}
public long getPhone() {
	return phone;
}
public void setAccountHolderName(long phone) {
	this.phone = phone;
}
public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
}
public int getAccountNumber() {
	return AccountNumber;
}
public void setAccountNumber(int AccountNumber) {
	this.AccountNumber = AccountNumber;
}
public Double getInitialBalance() {
	return initialBalance;
}
public void setInitialBalance(Double initialBalance) {
	this.initialBalance = initialBalance;

}
public String getAddress() {
	return Address;
}
public void setAddress(String address) {
	Address = address;
}
public String getAccountType() {
	return AccountType;
}
public void setAccountType(String AccountType) {
	this.AccountType = AccountType;
}
@Override
public String toString() {
	return "CreateAccount [accountHolderName=" + accountHolderName + ", phone=" + phone + ", email=" + email
			+ ", AccountNumber=" + AccountNumber + ", initialBalance=" + initialBalance + ", AccountType=" + AccountType
			+ ", Address=" + Address + "]";
}

}

