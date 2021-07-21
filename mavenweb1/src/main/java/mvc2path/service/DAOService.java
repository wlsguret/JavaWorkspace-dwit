package mvc2path.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import mvc2path.dao.DAO;

@Service("daoservice")
public class DAOService{
	@Autowired(required = false)
	@Qualifier("oracledao")
	DAO dao;
	public void insert() {dao.insert();}

	public void select() {dao.select();}

	public void update() {dao.update();}

	public void delete() {dao.delete();}

}
