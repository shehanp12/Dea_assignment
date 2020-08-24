package enterpriseapp.mysql.auth.dao;

import enterpriseapp.mysql.auth.model.User;

public interface UserDAO {

  public boolean login(String Email, String Password);








}
