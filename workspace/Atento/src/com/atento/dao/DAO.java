package com.atento.dao;

import java.util.List;

public interface DAO<T> {
	public void adicionar(T t) throws Exception;
	public void atualizar(T t) throws Exception;
	public void excluir(T t) throws Exception;
	public List<T> getTodos();
	public T get(int id);
	
}
