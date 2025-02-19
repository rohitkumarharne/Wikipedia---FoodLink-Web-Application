package in.foodlink.FoodLink.model;

public class Register {
	private int rid;
    private String fullname;
    private String email;
    private String username;
    private String password;
    private int otp;
  

    public int getRid() {
		return rid;
	}

	public void setRid(int rid) {
		this.rid = rid;
	}

	public String getFullname() {
		return fullname;
	}

	public void setFullname(String fullname) {
		this.fullname = fullname;
	}

	public int getOtp() {
		return otp;
	}

	public void setOtp(int otp) {
		this.otp = otp;
	}

	@Override
	public String toString() {
		return "Register [rid=" + rid + ", fullname=" + fullname + ", email=" + email + ", username=" + username
				+ ", password=" + password + ", otp=" + otp + "]";
	}

	// Getters and Setters
    public String getFullName() {
        return fullname;
    }

    public void setFullName(String fullName) {
        this.fullname = fullName;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
}
