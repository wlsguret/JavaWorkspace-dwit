package mvc2path.dao;

import org.springframework.stereotype.Repository;

@Repository("mysqldao")
public class mysqlDAO  implements DAO{
public int insert() {
	System.out.println("mysql insert");
	return 1;
}
public void select() {
	System.out.println("mysql select");
}
public void update() {
	System.out.println("mysql update");
}
public void delete() {
	System.out.println("mysql delete");
}
}
