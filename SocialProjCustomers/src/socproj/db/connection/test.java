package socproj.db.connection;
import java.security.*;

public class test {

	void main(String[] args) throws NoSuchAlgorithmException{
		String plainText = "123456";
		MessageDigest mdAlgorithm = MessageDigest.getInstance("MD5");
		mdAlgorithm.update(plainText.getBytes());

		byte[] digest = mdAlgorithm.digest();
		StringBuffer hexString = new StringBuffer();

		for (int i = 0; i < digest.length; i++) {
		    plainText = Integer.toHexString(0xFF & digest[i]);

		    if (plainText.length() < 2) {
		        plainText = "0" + plainText;
		    }

		    hexString.append(plainText);
		}

		System.out.println(hexString.toString());
		
		
	}
	
	
}
