package userManage.dao;

import org.apache.ibatis.session.SqlSession;


import sqlmap.MybatisManager;
import userManage.dto.UserManageDTO;

public class UserManageDAO {

	public String login(UserManageDTO dto) {//로그인
		String name=null;
		SqlSession session=MybatisManager.getInstance().openSession();
		name=session.selectOne("userManage.login", dto);		
		session.close();
		return name;
	}

	public int join(UserManageDTO dto) {//회원가입		
		int result;
		SqlSession session=MybatisManager.getInstance().openSession();
		result=session.insert("join",dto);			
		session.commit();
		session.close();
	    return result;
	}


	public void infoUpdate(UserManageDTO dto) {		
		SqlSession session=null;
		try {
			session=MybatisManager.getInstance().openSession();
			session.update("infoUpdate", dto);
			session.commit();//auto commit 아님
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if(session != null) session.close();
		}
		
	}



	public UserManageDTO myInfo(String id) {//회원정보
		UserManageDTO items=null;
		SqlSession session=null;
		//혹시 있을지 모를 예외발생을 처리하기 위해 try~catch문처리
		try {
			session=MybatisManager.getInstance().openSession();	
			items=session.selectOne("myInfo",id);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if(session != null) session.close();
		}
		return items;
	}

	public void infoDelete(String id) {
		SqlSession session=MybatisManager.getInstance().openSession();
		session.delete("userManage.infoDelete", id);
		session.commit();
		session.close();
	}




	

	



	

}
