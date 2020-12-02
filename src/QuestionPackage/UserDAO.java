package QuestionPackage;

import java.text.*;
import java.util.*;
import java.sql.*;

public class UserDAO {
	static Connection currentCon = null;
	static ResultSet rs = null;

	public static UserBean login(UserBean bean) {

		// preparing some objects for connection
		Statement stmt = null;

		String username = bean.getUsername();
		String password = bean.getPassword();
		
		

		String searchQuery = "select * from users where username='" + username + "' AND password='" + password + "'";

		// "System.out.println" prints in the console; Normally used to trace the
		// process
		System.out.println("Your user name is " + username);
		System.out.println("Your password is " + password);
		System.out.println("Query: " + searchQuery);

		try {
			// connect to DB
			try {
			currentCon = ConnectionManager.getConnection();
			}
			catch(Exception e) {
				System.out.println("error creating connection:"+e);
				
			}
			stmt = currentCon.createStatement();
			System.out.println(stmt);
			rs = stmt.executeQuery(searchQuery);
			System.out.println(rs);
			boolean more = rs.next();

			// if user does not exist set the isValid variable to false
			if (!more) {
				System.out.println("Sorry, you are not a registered user! Please sign up first");
				bean.setValid(false);
			}

			// if user exists set the isValid variable to true
			else if (more) {
				String firstName = rs.getString("FirstName");
	            String lastName = rs.getString("LastName");
	            String role = rs.getString("role");
		     	
	            System.out.println("Welcome " + firstName );
	            System.out.println("role dao :" + role );
	            bean.setFirstName(firstName);
	            bean.setLastName(lastName);
	            bean.setRole(role);
	            bean.setValid(true);
			}
		}

		catch (Exception ex) {
			System.out.println("Log In failed: An Exception has occurred! " + ex);
		}

		// some exception handling
		finally {
			if (rs != null) {
				try {
					rs.close();
				} catch (Exception e) {
				}
				rs = null;
			}

			if (stmt != null) {
				try {
					stmt.close();
				} catch (Exception e) {
				}
				stmt = null;
			}

			if (currentCon != null) {
				try {
					currentCon.close();
				} catch (Exception e) {
				}

				currentCon = null;
			}
		}

		return bean;

	}

}
