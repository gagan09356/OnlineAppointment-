 package com.connection;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.sql.Blob;
import java.sql.SQLException;
import java.util.List;

import org.hibernate.Hibernate;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import com.model.*;





public class DbConnection {
	Configuration con;
	SessionFactory sf;
			public DbConnection() {
					con=new Configuration().configure().addAnnotatedClass(User_Info.class).addAnnotatedClass(Doctor_Department.class).addAnnotatedClass(Doctor_Detail.class).addAnnotatedClass(Doctor_Schedule_Day.class).addAnnotatedClass(Doctor_Schedule.class).addAnnotatedClass(Appointment_Detail.class).addAnnotatedClass(Admin.class).addAnnotatedClass(Labrotary.class).addAnnotatedClass(Testimonials.class);
					sf=con.buildSessionFactory();
					}
			
			
			public int register(Object obj) throws SQLException {
			Session session=sf.openSession();
			Transaction tx=null;
			int i=0;
			try {
	    		tx=session.beginTransaction();
	    		
	    		i=(Integer)session.save(obj);
	    		System.out.println(i);
	    		session.flush();
	    		tx.commit();
	    	}
	    	catch(HibernateException ex) {
	    		if(tx==null)tx.rollback(); {
	    			tx.rollback();
	    			ex.printStackTrace();
	    		}
	    	}
	    	finally {
	    		session.close();
	    	}
	    	return i;
	    }
			
		/*	public int registerWithFile(Doctor_Detail obj,String filepath) throws SQLException {
				Session session=sf.openSession();
				Transaction tx=null;
				int i=0;
				//filepath="G:/doctor.jpg";
				try {
		    		tx=session.beginTransaction();
		    		File file = new File(filepath);
		    		FileInputStream inputStream = null;
		    		System.out.println(file.getAbsolutePath());
					try {
						inputStream = new FileInputStream(file.getAbsoluteFile());
					} catch (FileNotFoundException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
		    		Blob blob = Hibernate.getLobCreator(session)
		    							.createBlob(inputStream, file.length());
		    		obj.setPhoto(blob);
		    		i=(Integer)session.save(obj);
		    		System.out.println(i);
		    		tx.commit();
		    		blob.free();
		    	}
		    	catch(HibernateException ex) {
		    		if(tx==null)tx.rollback(); {
		    			tx.rollback();
		    			ex.printStackTrace();
		    		}
		    	}
		    	finally {
		    		session.close();
		    	}
		    	return i;
		    }*/
			
			
			public List<Object> fetch(String email,String password,String userQuery) {
				Session session=sf.openSession();
				Transaction tx=null;
					tx=session.beginTransaction();
					Query query=session.createQuery(userQuery);
					query.setParameter("email",email );
					query.setParameter("password", password);
					List<Object> list=query.list();
					System.out.println(list);
					return list;
			}
			
		
			
			public List<Object> getList(String stat) {
				Session session= sf.openSession();
				Transaction tx=null;
				tx=session.beginTransaction();
				Query query=session.createQuery(stat);
				List<Object> list=query.list();
				return list;
			}
			
			public int updatePassword(String email,String password,byte[] salt) {
				Session session= sf.openSession();
				Transaction tx=null;
				tx=session.beginTransaction();
				String userQuery="update User_Info set user_password=:password,user_password_salt=:salt where user_email_id=:email ";
				Query query=session.createQuery(userQuery);
				query.setParameter("password", password);
				query.setParameter("email", email);
				query.setParameter("salt", salt);
				int result=query.executeUpdate();
				tx.commit();
				System.out.println(query+","+result);
				return result;
			}
				
			public int updateDoctor(String name,String specilization,String address,int experience,String email,String mobile,int id) {
				Session session= sf.openSession();
				Transaction tx=null;
				tx=session.beginTransaction();
				String userQuery="update Doctor_Detail set doctor_name=:name,doctor_specialization=:spec,doctor_experience=:experience,doctor_mobile=:mobile,doctor_email=:email,doctor_address=:address where doctor_id=:id ";
				Query query=session.createQuery(userQuery);
				query.setParameter("name", name);
				query.setParameter("experience", experience);
				query.setParameter("spec", specilization);
				query.setParameter("mobile", mobile);
				query.setParameter("email", email);
				query.setParameter("address", address);
				query.setParameter("id", id);
				int result=query.executeUpdate();
				tx.commit();
				System.out.println(query+","+result);
				return result;
			}
			
			public int updateUser(String name,String address,String mobile,int id) {
				Session session= sf.openSession();
				Transaction tx=null;
				tx=session.beginTransaction();
				String userQuery="update User_Info set user_name=:name,user_mobile_no=:mobile,user_address=:address where user_id=:id ";
				Query query=session.createQuery(userQuery);
				query.setParameter("name", name);
				query.setParameter("mobile", mobile); 
				query.setParameter("address", address);
				query.setParameter("id", id);
				int result=query.executeUpdate();
				tx.commit();
				System.out.println(query+","+result);
				return result;
			}
			
			public List<Object> getDetail(String userQuery,String param) {
				Session session= sf.openSession();
				Transaction tx=null;
				tx=session.beginTransaction();
				Query query=session.createQuery(userQuery);
				query.setParameter("p", param);
				List<Object> list=query.list();
				System.out.println(param+" db");
				return list;
				}
			
			public List<Object> getInfo(String userQuery,int param) {
				Session session= sf.openSession();
				Transaction tx=null;
				tx=session.beginTransaction();
				Query query=session.createQuery(userQuery);
				query.setParameter("param", param);
				List<Object> list=query.list();
				return list;
				}
			public List<Object> getDoctorSearchByDateAndDep(String userQuery,String spec,String param) {
				Session session= sf.openSession();
				Transaction tx=null;
				tx=session.beginTransaction();
				Query query=session.createQuery(userQuery);
				query.setParameter("param", param);
				query.setParameter("spec", spec);
				List<Object> list=query.list();
				return list;
				}
		//for delete the appointment
			public int deleteAppointment(String userquery,int id) {
				Session session= sf.openSession();
				Transaction tx=null;
				tx=session.beginTransaction();
				Query query=session.createQuery(userquery);
				query.setParameter("id", id);
				int result=query.executeUpdate();
				tx.commit();
				System.out.println(query+","+result);
				return result;
			}
	}
	

