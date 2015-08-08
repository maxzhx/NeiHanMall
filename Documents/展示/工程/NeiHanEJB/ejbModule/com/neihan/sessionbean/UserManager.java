package com.neihan.sessionbean;

import java.util.List;

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import com.neihan.entities.UserEntity;

/**
 * Session Bean implementation class UserManager
 */
@Stateless
public class UserManager implements UserManagerRemote {
	@PersistenceContext(unitName="NeiHanJPA")
	private EntityManager em;
	int userid=0;
    /**
     * Default constructor. 
     */
    public UserManager() {
        // TODO Auto-generated constructor stub
    }

	@Override
	public boolean register(String userName, String password, String email,
			String telephone) {
		// TODO Auto-generated method stub
		UserEntity user=new UserEntity();
		user.setUusername(userName);
		user.setUpassword(password);
		user.setUemail(email);
		user.setUtelephone(telephone);
		user.setUtype(1);
		em.persist(user);
		return true;
	}

	@Override
	public boolean login(String userName, String password) {
		// TODO Auto-generated method stub
		Query query=em.createQuery("from UserEntity u where u.uusername=:uusername and u.upassword=:upassword");
		query.setParameter("uusername", userName);
		query.setParameter("upassword", password);
		List list=query.getResultList();
		return list.size()>0;
	}


	@Override
	public int getUserID() {
		// TODO Auto-generated method stub
		return userid;
	}

	@Override
	public boolean setUserID(int usid) {
		// TODO Auto-generated method stub
		this.userid=usid;
		return true;
	}

	@Override
	public int getID(String username) {
		// TODO Auto-generated method stub
		List list=em.createQuery("select usid from UserEntity where uusername='"+username+"'").getResultList();
		if (list.size()>0) {
			return (int)(long)list.get(0);
		}
		return 0;
	}

	@Override
	public String getUsername(int usid) {
		// TODO Auto-generated method stub
		List list=em.createQuery("select uusername from UserEntity where usid="+String.format("%d", usid)).getResultList();
		if (list.size()>0) {
			return (String)list.get(0);
		}
		return null;
	}
	
	@Override
	public String getEmail(int usid) {
		// TODO Auto-generated method stub
		List list=em.createQuery("select uemail from UserEntity where usid="+String.format("%d", usid)).getResultList();
		if (list.size()>0) {
			return (String)list.get(0);
		}
		return null;
	}

	@Override
	public String getTelephone(int usid) {
		// TODO Auto-generated method stub
		List list=em.createQuery("select utelephone from UserEntity where usid="+String.format("%d", usid)).getResultList();
		if (list.size()>0) {
			return (String)list.get(0);
		}
		return null;
	}

	@Override
	public boolean setUsername(int usid, String username) {
		// TODO Auto-generated method stub
		em.find(UserEntity.class, (long)usid).setUusername(username);
		em.flush();
		return true;
	}

	@Override
	public boolean setEmail(int usid, String email) {
		// TODO Auto-generated method stub
		em.find(UserEntity.class, (long)usid).setUemail(email);
		em.flush();
		return true;
	}

	@Override
	public boolean setTelephone(int usid, String telephone) {
		// TODO Auto-generated method stub
		em.find(UserEntity.class, (long)usid).setUtelephone(telephone);
		em.flush();
		return true;
	}

	@Override
	public boolean setPassword(int usid, String password) {
		// TODO Auto-generated method stub
		em.find(UserEntity.class, (long)usid).setUpassword(password);
		em.flush();
		return false;
	}

}
