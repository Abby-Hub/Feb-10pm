package com.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.bean.Employee;
import com.db.DbConnection;

public class EmployeeServiceImpl implements EmployeeService {
	
	private Connection con = null;
	
	
	@Override
	public boolean save(Employee emp) {
		con = DbConnection.getConnection();
		String qry = "insert into Emp values(?,?,?)";
		int i =0;
		try {
			PreparedStatement pst = con.prepareStatement(qry);
			pst.setInt(1, emp.getId());
			pst.setString(2, emp.getName());
			pst.setFloat(3, emp.getSalary());
			i = pst.executeUpdate();
		}catch (Exception e) {
			e.printStackTrace();
		}
		if(i != 0)
		return true;
		else
			return false;
	}

	@Override
	public List<Employee> get() {
		List<Employee> empList = new ArrayList<Employee>();
		Employee emp = null;
		con = DbConnection.getConnection();
		String qry = "Select * from Emp";
		try {
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery(qry);
			
			while (rs.next()) {
				emp = new Employee();
				emp.setId(rs.getInt(1));
				emp.setName(rs.getString(2));
				emp.setSalary(rs.getFloat(3));
				empList.add(emp);
			}
			
		}catch (Exception e) {
			e.printStackTrace();
		}
		if(empList.isEmpty())
			return null;
		else
			return empList;
	}

	@Override
	public boolean delete(int empId) {
		con = DbConnection.getConnection();
		String qry = "delete from Emp where empId=?";
		int i =0;
		try {
			PreparedStatement pst = con.prepareStatement(qry);
			pst.setInt(1, empId);
			
			i = pst.executeUpdate();
		}catch (Exception e) {
			e.printStackTrace();
		}
		if(i != 0)
		return true;
		else
			return false;
	}

	@Override
	public Employee search(int empId) {
		Employee emp = null;
		con = DbConnection.getConnection();
		String qry = "Select * from Emp where empId = "+empId;
		try {
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery(qry);
			
			while (rs.next()) {
				emp = new Employee();
				emp.setId(rs.getInt(1));
				emp.setName(rs.getString(2));
				emp.setSalary(rs.getFloat(3));
			}
			
		}catch (Exception e) {
			e.printStackTrace();
		}
		if(emp == null)
			return null;
		else
			return emp;
		
	}

}
