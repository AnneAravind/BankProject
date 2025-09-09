package dto;

public class Userdto 
{
	private String accountholderName;
	private String email;
	private long phone;
	private int age;
	private String gender;
	private String password;
	private String address;
		
		public Userdto(String accountholderName, String email, long phone, int age, String gender, String password, String address) {
			super();
			this.accountholderName = accountholderName;
			this.email = email;
			this.phone = phone;
			this.age = age;
			this.gender = gender;
			this.password = password;
			this.address = address;
		}
		
		public String getAccountholderName() {
			return accountholderName;
		}

		public void setAccountholderName(String accountholderName) {
			this.accountholderName = accountholderName;
		}

		public String getEmail() {
			return email;
		}

		public void setEmail(String email) {
			this.email = email;
		}

		public long getPhone() {
			return phone;
		}

		public void setPhone(long phone) {
			this.phone = phone;
		}

		public int getAge() {
			return age;
		}

		public void setAge(int age) {
			this.age = age;
		}

		public String getGender() {
			return gender;
		}

		public void setGender(String gender) {
			this.gender = gender;
		}

		public String getPassword() {
			return password;
		}

		public void setPassword(String password) {
			this.password = password;
		}

		public String getAddress() {
			return address;
		}

		public void setAddress(String address) {
			this.address = address;
		}

		@Override
		public String toString() {
			return "UserDto [accountholderName=" + accountholderName + ", email=" + email + ", phone=" + phone + ", age=" + age + ", gender=" + gender
					+ ", password=" + password + ", address=" + address + "]";
		}

		
		
	}
		
