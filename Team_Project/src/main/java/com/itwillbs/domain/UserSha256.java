package com.itwillbs.domain;
import java.security.MessageDigest;

public class UserSha256 {
	public static String encrypt(String planText) {
		try {
			MessageDigest md = MessageDigest.getInstance("SHA-256");// 파라미터로 해싱 알고리즘명 전달
			
			//byte로 변환할 planText를 저장한다.
			md.update(planText.getBytes());
			//byteData[] 에 넣어서 byte 타입으로 변환 
			byte byteData[] = md.digest();
			
			StringBuffer sb = new StringBuffer();
			for (int i = 0; i < byteData.length; i++) {
				sb.append(Integer.toString((byteData[i] & 0xff) + 0x100, 16).substring(1));
			}
			StringBuffer hexString = new StringBuffer();
			for (int i = 0; i < byteData.length; i++) {
				String hex = Integer.toHexString(0xff & byteData[i]);
				if (hex.length() == 1) {
					hexString.append('0');
				}
				hexString.append(hex);
			}
			return hexString.toString();
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException();
		}
	}
}

/*
 * private MessageDigest md;
	
	public String getHashPassword_sha256(String sourceData) { // 256비트 코드블럭(64글자)
		try {
			// 1. MessageDigest 객체 생성(static 메서드 getInstance() 메서드 호출)
			md = MessageDigest.getInstance("SHA-256"); // 파라미터로 해싱 알고리즘명 전달
			
			// 2. 원본 문자열 -> byte[] 타입으로 변환
			byte[] sourceBytes = sourceData.getBytes();
			
			// 3. MessageDigest 객체의 update() 메서드를 호출하여 배열로 변환된 원문 전달 
			md.update(sourceBytes);
			
			// 4. MessageDigest 객체의 digest() 메서드를 호출하여 원문에 대한 해싱 수행
			byte[] digestBytes = md.digest(); // 해싱 결과가 byte[] 타입으로 리턴됨
			
			// 5. String.format() 메서드를 사용하여 256비트 포맷 문자열 생성
			// => 파라미터 : 16진수 64자리 형식 지정문자열
			//               BigInteger 객체 생성을 통해 byte[] 배열을 양의 정수로 변경
			String hashData = String.format("%064x", new BigInteger(1, digestBytes));
			
			return hashData;
			
		} catch (NoSuchAlgorithmException e) {
			e.printStackTrace();
			System.out.println("해싱 알고리즘 선택이 잘못되었습니다!");
		}
		
		return null;
	}
 */

