/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package persistencia;

import java.io.Serializable;
import javax.persistence.Query;
import javax.persistence.EntityNotFoundException;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;
import modelo.Ventas;
import java.util.ArrayList;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import persistencia.exceptions.NonexistentEntityException;
import modelo.Cliente;

/**
 *
 * @author Augusto
 */
public class ClienteJpaController implements Serializable {

    public ClienteJpaController(EntityManagerFactory emf) {
        this.emf = emf;
    }
    private EntityManagerFactory emf = null;

    public ClienteJpaController() {
        emf = Persistence.createEntityManagerFactory("AgenciaTurismoPU");
    }

    public EntityManager getEntityManager() {
        return emf.createEntityManager();
    }

    public void create(Cliente cliente) {
        if (cliente.getListCompras() == null) {
            cliente.setListCompras(new ArrayList<Ventas>());
        }
        EntityManager em = null;
        try {
            em = getEntityManager();
            em.getTransaction().begin();
            List<Ventas> attachedListCompras = new ArrayList<Ventas>();
            for (Ventas listComprasVentasToAttach : cliente.getListCompras()) {
                listComprasVentasToAttach = em.getReference(listComprasVentasToAttach.getClass(), listComprasVentasToAttach.getId());
                attachedListCompras.add(listComprasVentasToAttach);
            }
            cliente.setListCompras(attachedListCompras);
            em.persist(cliente);
            for (Ventas listComprasVentas : cliente.getListCompras()) {
                Cliente oldClienteOfListComprasVentas = listComprasVentas.getCliente();
                listComprasVentas.setCliente(cliente);
                listComprasVentas = em.merge(listComprasVentas);
                if (oldClienteOfListComprasVentas != null) {
                    oldClienteOfListComprasVentas.getListCompras().remove(listComprasVentas);
                    oldClienteOfListComprasVentas = em.merge(oldClienteOfListComprasVentas);
                }
            }
            em.getTransaction().commit();
        } finally {
            if (em != null) {
                em.close();
            }
        }
    }

    public void edit(Cliente cliente) throws NonexistentEntityException, Exception {
        EntityManager em = null;
        try {
            em = getEntityManager();
            em.getTransaction().begin();
            Cliente persistentCliente = em.find(Cliente.class, cliente.getId());
            List<Ventas> listComprasOld = persistentCliente.getListCompras();
            List<Ventas> listComprasNew = cliente.getListCompras();
            List<Ventas> attachedListComprasNew = new ArrayList<Ventas>();
            for (Ventas listComprasNewVentasToAttach : listComprasNew) {
                listComprasNewVentasToAttach = em.getReference(listComprasNewVentasToAttach.getClass(), listComprasNewVentasToAttach.getId());
                attachedListComprasNew.add(listComprasNewVentasToAttach);
            }
            listComprasNew = attachedListComprasNew;
            cliente.setListCompras(listComprasNew);
            cliente = em.merge(cliente);
            for (Ventas listComprasOldVentas : listComprasOld) {
                if (!listComprasNew.contains(listComprasOldVentas)) {
                    listComprasOldVentas.setCliente(null);
                    listComprasOldVentas = em.merge(listComprasOldVentas);
                }
            }
            for (Ventas listComprasNewVentas : listComprasNew) {
                if (!listComprasOld.contains(listComprasNewVentas)) {
                    Cliente oldClienteOfListComprasNewVentas = listComprasNewVentas.getCliente();
                    listComprasNewVentas.setCliente(cliente);
                    listComprasNewVentas = em.merge(listComprasNewVentas);
                    if (oldClienteOfListComprasNewVentas != null && !oldClienteOfListComprasNewVentas.equals(cliente)) {
                        oldClienteOfListComprasNewVentas.getListCompras().remove(listComprasNewVentas);
                        oldClienteOfListComprasNewVentas = em.merge(oldClienteOfListComprasNewVentas);
                    }
                }
            }
            em.getTransaction().commit();
        } catch (Exception ex) {
            String msg = ex.getLocalizedMessage();
            if (msg == null || msg.length() == 0) {
                Integer id = cliente.getId();
                if (findCliente(id) == null) {
                    throw new NonexistentEntityException("The cliente with id " + id + " no longer exists.");
                }
            }
            throw ex;
        } finally {
            if (em != null) {
                em.close();
            }
        }
    }

    public void destroy(Integer id) throws NonexistentEntityException {
        EntityManager em = null;
        try {
            em = getEntityManager();
            em.getTransaction().begin();
            Cliente cliente;
            try {
                cliente = em.getReference(Cliente.class, id);
                cliente.getId();
            } catch (EntityNotFoundException enfe) {
                throw new NonexistentEntityException("The cliente with id " + id + " no longer exists.", enfe);
            }
            List<Ventas> listCompras = cliente.getListCompras();
            for (Ventas listComprasVentas : listCompras) {
                listComprasVentas.setCliente(null);
                listComprasVentas = em.merge(listComprasVentas);
            }
            em.remove(cliente);
            em.getTransaction().commit();
        } finally {
            if (em != null) {
                em.close();
            }
        }
    }

    public List<Cliente> findClienteEntities() {
        return findClienteEntities(true, -1, -1);
    }

    public List<Cliente> findClienteEntities(int maxResults, int firstResult) {
        return findClienteEntities(false, maxResults, firstResult);
    }

    private List<Cliente> findClienteEntities(boolean all, int maxResults, int firstResult) {
        EntityManager em = getEntityManager();
        try {
            CriteriaQuery cq = em.getCriteriaBuilder().createQuery();
            cq.select(cq.from(Cliente.class));
            Query q = em.createQuery(cq);
            if (!all) {
                q.setMaxResults(maxResults);
                q.setFirstResult(firstResult);
            }
            return q.getResultList();
        } finally {
            em.close();
        }
    }

    public Cliente findCliente(Integer id) {
        EntityManager em = getEntityManager();
        try {
            return em.find(Cliente.class, id);
        } finally {
            em.close();
        }
    }

    public int getClienteCount() {
        EntityManager em = getEntityManager();
        try {
            CriteriaQuery cq = em.getCriteriaBuilder().createQuery();
            Root<Cliente> rt = cq.from(Cliente.class);
            cq.select(em.getCriteriaBuilder().count(rt));
            Query q = em.createQuery(cq);
            return ((Long) q.getSingleResult()).intValue();
        } finally {
            em.close();
        }
    }

}
