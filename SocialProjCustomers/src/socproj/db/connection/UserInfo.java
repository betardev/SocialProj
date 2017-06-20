package socproj.db.connection;
public class UserInfo {

	/** 
	 * If the user is in the process of registration, but not finished yet
	 * */
	static public final int STATUS_INIT = 1;
	
	/**
	 * If the user is successfully registered and active in the system 
	 * */
	static public final int STATUS_REGISTERED = 2;
	/** 
	 * If the user's account is currently blocked but unblockable
	 * */
	static public final int STATUS_BLOCKED = 3;
	/** 
	 * If the user has been deleted from the system
	 * */
	static public final int STATUS_DELETED = 4;
	
    private String userName;
	private String email;
	private String passWord;
	private int status;
	private long userId;
	
	public UserInfo(String userName, String email, String passWord){
		this.userName = userName;
		this.email = email;
		this.passWord = passWord;
	}
	
	
	public UserInfo(){}

	public void setStatus(int status) {
		this.status = status;
	}
	
	public int getStatus() {
		return status;
	}
	
	public void setUserId(long userId) {
		this.userId = userId;
	}

	public long getUserId() {
		return userId;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}
	
	public String getUserName(){
		return userName;
	}

	public void setEmail(String email) {
		this.email = email;
	}
	
	public String getEmail(){
		return email;
	}

	public void setPassWord(String passWord) {
		this.passWord = passWord;
	}
	
	public String getPassWord(){
		return passWord;
	}



	

	
	
	
}
