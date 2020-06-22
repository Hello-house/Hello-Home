package com.frontController;

import java.io.IOException;
import java.io.UnsupportedEncodingException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public interface ICommand {
	// �������̽� �ȿ��� ����Ʈ �޼��带 ����Ͽ� �Ϲ� �޼��带 ����� �� �ִ�.
	public String execute(HttpServletRequest request, HttpServletResponse response) throws UnsupportedEncodingException, ServletException, IOException;
}
