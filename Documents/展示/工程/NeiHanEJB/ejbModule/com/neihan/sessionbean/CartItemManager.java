package com.neihan.sessionbean;

import java.util.List;

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import com.neihan.entities.CartItemEntity;

/**
 * Session Bean implementation class CartItemManager
 */
@Stateless
public class CartItemManager implements CartItemManagerRemote {
	@PersistenceContext(unitName="NeiHanJPA")
	private EntityManager em;
    /**
     * Default constructor.
     */
    public CartItemManager() {
        // TODO Auto-generated constructor stub
    }

	@Override
	public boolean addtoCart(int usid, int gid, int cinum) {
		// TODO Auto-generated method stub
		CartItemEntity cartItem=new CartItemEntity();
		cartItem.setUsid(usid);
		cartItem.setGid(gid);
		cartItem.setCinum(cinum);
		em.persist(cartItem);
		return true;
	}

	@Override
	public boolean removefromCart(int usid, int gid) {
		Query query=em.createQuery("select ciid from CartItemEntity u where u.usid=:usid and u.gid=:gid");
		query.setParameter("usid", usid);
		query.setParameter("gid", gid);
		List list=query.getResultList();
//		System.out.println(list.get(0));
		for (int i = 0; i < list.size(); i++) {
			em.remove(em.find(CartItemEntity.class, list.get(i)));
		}
		return true;
	}

	@Override
	public List<Long> findMyCartItem(int usid) {
		// TODO Auto-generated method stub
		Query query=em.createQuery("select ciid from CartItemEntity u where u.usid=:usid");
		query.setParameter("usid", usid);
		List<Long> list=query.getResultList();
		return list;
	}

	@Override
	public int getGid(int ciid) {
		// TODO Auto-generated method stub
		List list=em.createQuery("select gid from CartItemEntity where ciid="+String.format("%d", ciid)).getResultList();
		if (list.size()>0) {
			return (int)list.get(0);
		}
		return 0;
	}

	@Override
	public int getCinum(int ciid) {
		// TODO Auto-generated method stub
		List list=em.createQuery("select cinum from CartItemEntity where ciid="+String.format("%d", ciid)).getResultList();
		if (list.size()>0) {
			return (int)list.get(0);
		}
		return 0;
	}
}
