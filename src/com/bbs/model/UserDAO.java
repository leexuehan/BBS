package com.bbs.model;
import java.sql.Statement;

import com.bbs.beans.*;

public interface UserDAO {
	public void AddUser(User user);
	public boolean ValiUserByName (String username);
	public User FindUser(String username, String password);
	public User FindUser(String username);
	public void DeleteUser(String username);
	public void UpdateUser(User user);
	public Group getGroup(int GroupId, Statement stmt);
}
