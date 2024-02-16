package com.jcticket.admin.dao;

import com.jcticket.admin.dto.AdminDto;
import com.jcticket.agency.dto.AgencyDto;
import com.jcticket.ticketing.dto.TicketingDto;
import com.jcticket.user.dto.UserDto;

import java.util.List;
import java.util.Map;

/**
 * packageName :  com.jcticket.admin.dao
 * fileName : AdminDao
 * author :  jisoo Son
 * date : 2024-02-05
 * description : 관리자 Dao
 * ===========================================================
 * DATE                 AUTHOR                NOTE
 * -----------------------------------------------------------
 * 2024-02-05             jisoo Son             최초 생성
 */
public interface AdminDao {
    AdminDto adminLogin(AdminDto adminDto) throws Exception;
    // 최근 회원가입 기능 가입순 limit3 List 조회
    List<UserDto> userstatics() throws Exception;
    // 회원 테이블 총 개수 조회
    int usercnt(Map<String, Object> options) throws Exception;
    // 회원 페이징 리스트 조회
    List<UserDto> userPaingList(Map<String, Object> pagingParams) throws Exception;
    // 회원 가입
    int insertUser(UserDto userDto) throws Exception;
    // 회원 탈퇴
    int userRetireUpdate(String user_id) throws Exception;
    // 회원 삭제
    int userDelete(String user_id) throws Exception;
    // 관리자 회원가입
    int insertAdmin(AdminDto adminDto) throws Exception;
    // 관리자 삭제
    int deleteAdmin(String admin_id) throws Exception;
    // 기획사 등록
    int insertAgency(AgencyDto agencyDto) throws Exception;
    // 기획사 전체 삭제
    int deleteAllAgency() throws Exception;
    // 기획사 전체 조회
    int countAllAgency() throws Exception;

}