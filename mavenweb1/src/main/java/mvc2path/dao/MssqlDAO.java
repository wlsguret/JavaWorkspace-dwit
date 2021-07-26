package mvc2path.dao;

import org.springframework.stereotype.Repository;

@Repository("mssqldao")
public class MssqlDAO implements DAO{
public int insert() {
	System.out.println("mssql insert");
	return 1;
}
public void select() {
	System.out.println("mssql select");
}
public void update() {
	System.out.println("mssql update");
}
public void delete() {
	System.out.println("mssql delete");
}
}
