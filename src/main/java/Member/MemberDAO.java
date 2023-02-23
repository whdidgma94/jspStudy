package Member;

import java.util.ArrayList;

public class MemberDAO {
	private ArrayList<MemberVO> list;
	private MemberDAO() {
		list = new ArrayList<MemberVO>();
	}
	static private MemberDAO instance = new MemberDAO();
	static public MemberDAO getInstance() {
		return instance;
	}
	public ArrayList<MemberVO> getAllMemberList(){
		return list;
	}
	public int checkId(String id) {
		for(int i =0; i < list.size(); i++) {
			if(list.get(i).getId().equals(id)) {
				return i;
			}
		}
		return -1;
	}
	public boolean checkPw(String pw, int idx) {
		return list.get(idx).getPw().equals(pw);
	}
	public MemberVO getAMember(int idx) {
		return list.get(idx);
	}
	public void deleteMember(int idx) {
		list.remove(idx);
	}
	public void addMember(String id, String pw, String name, String gender) {
		list.add(new MemberVO(id,pw,name,gender));
	}
	public void updateMember(int idx, String name, String gender) {
		MemberVO member = list.get(idx);
		member.setGender(gender);
		member.setName(name);
	}
}
