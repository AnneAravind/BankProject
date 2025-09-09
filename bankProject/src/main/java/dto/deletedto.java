package dto;

public class deletedto {
private int AccountNumber;
private String email;
private String password;
public deletedto(int accountNumber, String email, String password) {
	super();
	AccountNumber = accountNumber;
	this.email = email;
	this.password = password;
}
public int getAccountNumber() {
	return AccountNumber;
}
public void setAccountNumber(int accountNumber) {
	AccountNumber = accountNumber;
}
public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
}
public String getPassword() {
	return password;
}
public void setPassword(String password) {
	this.password = password;
}
@Override
public String toString() {
	return "deletedto [AccountNumber=" + AccountNumber + ", email=" + email + ", password=" + password + "]";
}

}
