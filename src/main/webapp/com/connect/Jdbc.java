package com.connect;

	import java.sql.Connection;
	import java.sql.DriverManager;
	import java.sql.ResultSet;
	import java.sql.Statement;
	import java.sql.SQLException;

public class Jdbc {

		Connection conn;
		String URL="jdbc:mysql://localhost:3310/display";
		String USER="root";
		String PASSWORD="tiger";
		Statement st;
			Jdbc()
			 {
				try {
				Class.forName("com.mysql.cj.jdbc.Driver");
				conn=DriverManager.getConnection(URL,USER,PASSWORD);
				st=conn.createStatement();
				}
				catch(ClassNotFoundException | SQLException e) {
					e.printStackTrace();
				}
			}
			
			public int manuplate(String query){
				 int i=0;
				try{
					 i= st.executeUpdate(query);
				}
				catch(SQLException e) {
					e.printStackTrace();
				}
							return i;				
			}	
			
			public void select() {
				ResultSet  r;
				try {
				 r=st.executeQuery("Select * from emp_detail");
					while(r.next())
					{
						System.out.println(r.getString(1)+"\t"+r.getString(2));
					}
				}
					catch(Exception e) {}
			}
			
			public static void main(String ar[]) {
				Jdbc obj=new Jdbc();
				//System.out.println(obj.select());
				obj.select();
			}
	}




