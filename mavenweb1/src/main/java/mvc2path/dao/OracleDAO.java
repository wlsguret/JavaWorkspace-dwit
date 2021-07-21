package mvc2path.dao;

import org.springframework.stereotype.Repository;

@Repository("oracledao")
public class OracleDAO  implements DAO{
public void insert() {
	System.out.println("oracle insert");
}
public void select() {
	System.out.println("oracle select");
}
public void update() {
	System.out.println("oracle update");
}
public void delete() {
	System.out.println("oracle delete");
}
}
