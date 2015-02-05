/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package daos;


import java.util.Collection;
import java.util.List;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;


/**
 *
 * @author Marco
 */
public class PreguntaDao {
    
    public Collection loadAll()throws Exception{
		Session session = NewHibernateUtil.getSessionFactory().openSession();
		Transaction tx = session.getTransaction();
		List l = null;
		try{
			tx.begin();
			Query q = session.createQuery("from Pregunta");
			l=q.list();
			tx.commit();
		}catch(HibernateException he){
			if(tx != null && tx.isActive()){
				tx.rollback();
			}
		}
                finally{
                    session.close();
                }
		return l;
	}
}
