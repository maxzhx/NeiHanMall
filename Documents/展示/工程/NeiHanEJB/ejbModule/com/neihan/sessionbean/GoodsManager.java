package com.neihan.sessionbean;

import java.util.List;

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import com.neihan.entities.GoodsEntity;
import com.neihan.entities.UserEntity;

/**
 * Session Bean implementation class GoodsManager
 */
@Stateless
public class GoodsManager implements GoodsManagerRemote {
	@PersistenceContext(unitName="NeiHanJPA")
	private EntityManager em;
	int goodsID=0;
    /**
     * Default constructor. 
     */
    public GoodsManager() {
        // TODO Auto-generated constructor stub
    }

	@Override
	public boolean addGoods(int no, String name, int rest, double price,
			String color, String size, String type, String description) {
		GoodsEntity goods=new GoodsEntity();
		goods.setGno(no);
		goods.setGname(name);
		goods.setGrest(rest);
		System.out.println(price);
		goods.setGprice(price);
		goods.setGcolor(color);
		goods.setGsize(size);
		goods.setGtype(type);
		goods.setGdescription(description);
		em.persist(goods);
		return true;
	}

	@Override
	public boolean removeGoods(int id) {
		// TODO Auto-generated method stub
		em.remove(em.find(GoodsEntity.class, (long)id));
		return true;
	}

	@Override
	public int getGoodsID() {
		// TODO Auto-generated method stub
		
		return goodsID;
	}

	@Override
	public boolean setGoodsID(int goodsID) {
		// TODO Auto-generated method stub
		this.goodsID=goodsID;
		return true;
	}

	@Override
	public String getName(int gid) {
		// TODO Auto-generated method stub
		List list=em.createQuery("select gname from GoodsEntity where gid="+String.format("%d", gid)).getResultList();
		if (list.size()>0) {
			return (String)list.get(0);
		}
		return null;
	}

	@Override
	public String getColor(int gid) {
		// TODO Auto-generated method stub
		List list=em.createQuery("select gcolor from GoodsEntity where gid="+String.format("%d", gid)).getResultList();
		if (list.size()>0) {
			return (String)list.get(0);
		}
		return null;
	}

	@Override
	public String getDescription(int gid) {
		// TODO Auto-generated method stub
		List list=em.createQuery("select gdescription from GoodsEntity where gid="+String.format("%d", gid)).getResultList();
		if (list.size()>0) {
			return (String)list.get(0);
		}
		return null;
	}

	@Override
	public int getNo(int gid) {
		// TODO Auto-generated method stub
		List list=em.createQuery("select gno from GoodsEntity where gid="+String.format("%d", gid)).getResultList();
		if (list.size()>0) {
			return (int)list.get(0);
		}
		return 0;
	}

	@Override
	public double getPrice(int gid) {
		// TODO Auto-generated method stub
		List list=em.createQuery("select gprice from GoodsEntity where gid="+String.format("%d", gid)).getResultList();
		if (list.size()>0) {
			return (double)list.get(0);
		}
		return 0;
	}

	@Override
	public int getRest(int gid) {
		// TODO Auto-generated method stub
		List list=em.createQuery("select grest from GoodsEntity where gid="+String.format("%d", gid)).getResultList();
		if (list.size()>0) {
			return (int)list.get(0);
		}
		return 0;
	}

	@Override
	public String getSize(int gid) {
		// TODO Auto-generated method stub
		List list=em.createQuery("select gsize from GoodsEntity where gid="+String.format("%d", gid)).getResultList();
		if (list.size()>0) {
			return (String)list.get(0);
		}
		return null;
	}

	@Override
	public String getType(int gid) {
		// TODO Auto-generated method stub
		List list=em.createQuery("select gtype from GoodsEntity where gid="+String.format("%d", gid)).getResultList();
		if (list.size()>0) {
			return (String)list.get(0);
		}
		return null;
	}

	
	@Override
	public boolean setName(int gid, String name) {
		// TODO Auto-generated method stub
		em.find(GoodsEntity.class, (long)gid).setGname(name);
		em.flush();
		return true;
	}

	@Override
	public boolean setColor(int gid, String color) {
		// TODO Auto-generated method stub
		em.find(GoodsEntity.class, (long)gid).setGcolor(color);
		em.flush();
		return true;
	}

	@Override
	public boolean setDescription(int gid, String description) {
		// TODO Auto-generated method stub
		em.find(GoodsEntity.class, (long)gid).setGdescription(description);
		em.flush();
		return true;
	}

	@Override
	public boolean setNo(int gid, int no) {
		// TODO Auto-generated method stub
		em.find(GoodsEntity.class, (long)gid).setGno(no);
		em.flush();
		return true;
	}

	@Override
	public boolean setPrice(int gid, double price) {
		// TODO Auto-generated method stub
		em.find(GoodsEntity.class, (long)gid).setGprice(price);
		em.flush();
		return true;
	}

	@Override
	public boolean setRest(int gid, int rest) {
		// TODO Auto-generated method stub
		em.find(GoodsEntity.class, (long)gid).setGrest(rest);
		em.flush();
		return true;
	}

	@Override
	public boolean setSize(int gid, String size) {
		// TODO Auto-generated method stub
		em.find(GoodsEntity.class, (long)gid).setGsize(size);
		em.flush();
		return true;
	}

	@Override
	public boolean setType(int gid, String type) {
		// TODO Auto-generated method stub
		em.find(GoodsEntity.class, (long)gid).setGtype(type);
		em.flush();
		return true;
	}


}
