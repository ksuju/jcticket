package com.jcticket.admin.service;

import com.jcticket.admin.dto.AdminDto;
import com.jcticket.admin.dto.UserPageDto;
import com.jcticket.user.dto.UserDto;

import java.util.List;

/**
 * packageName :  com.jcticket.admin.service
 * fileName : AdminService
 * author :  jisoo Son
 * date : 2024-02-05
 * description : 관리자 Service
 * ===========================================================
 * DATE                 AUTHOR                NOTE
 * -----------------------------------------------------------
 * 2024-02-05             jisoo Son             최초 생성
 */
public interface AdminService {
    AdminDto adminLogin(AdminDto adminDto) throws Exception;
    List<UserDto> userstatics() throws Exception;
    // 총 회원수 조회
    int usercnt(String option, String keyword) throws Exception;
    // 회원 페이징 리스트 조회
    List<UserDto> userPaingList(int page, String option, String keyword) throws Exception;
    // 현재페이지, 전체, 시작, 끝, 검색값 전달 PageDto 전달
    UserPageDto pagingParam(int page, String option, String keyword) throws Exception;
    // 유저 회원가입
    int userInsert(UserDto userDto) throws Exception;
    // 회원 탈퇴
    int userDelete(String user_id) throws Exception;
}