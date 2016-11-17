package com.tep.admin.service;

import java.util.List;
import java.util.Map;

import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.tep.commons.common.CommandMap;

public interface AdminService {

	List<Map<String, Object>> selectMemberList(Map<String, Object> map) throws Exception;

	Map<String, Object> selectDashboard() throws Exception;

	void insertLendplace(Map<String, Object> map, MultipartHttpServletRequest request) throws Exception;

	Map<String, Object> selectMemberModifyForm(Map<String, Object> map) throws Exception;

	void adminMemberModify(Map<String, Object> params) throws Exception;

}
