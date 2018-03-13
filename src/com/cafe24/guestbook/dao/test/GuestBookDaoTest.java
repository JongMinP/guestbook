package com.cafe24.guestbook.dao.test;

import java.util.List;

import com.cafe24.guestbook.dao.GuestBookDao;
import com.cafe24.guestbook.vo.GuestBookVo;

public class GuestBookDaoTest {

	public static void main(String[] args) {

//		insert();
//		getList();
//		System.out.println("---");
//		getGusetBook();
//		delete();
		
	}

	public static void getList() {
		GuestBookDao dao = new GuestBookDao();
		
		List<GuestBookVo> list =  dao.getList();
		
		for(GuestBookVo vo : list) {
			System.out.println(vo);
		}
		
	}

	public static void insert() {
		
		GuestBookDao dao = new GuestBookDao();
		
		GuestBookVo vo = new GuestBookVo();
		
		vo.setName("둘리");
		vo.setContent("둘리내용");
		vo.setPassword("둘리 비밀번호");
		
		dao.insert(vo);
		
	}

	public static void getGusetBook() {

		GuestBookDao dao = new GuestBookDao();
		
		System.out.println(dao.getGusetBook(1));
		
	}

	public static void delete() {

		GuestBookDao dao = new GuestBookDao();
		
		dao.delete(1);
	}

}
