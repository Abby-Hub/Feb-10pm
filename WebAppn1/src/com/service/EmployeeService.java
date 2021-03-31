package com.service;

import java.util.List;

import com.bean.Employee;

public interface EmployeeService {
	
	boolean save(Employee emp); // 'emp' data inserted then return true,otherwise return false
	List<Employee> get();// return all emp records as List<Employee> collection 
	boolean delete(int empId); // id found delete record from DB table and return true, otherwise return false
	Employee search(int empId); //id found return Employee Data, otherwise return null

}
