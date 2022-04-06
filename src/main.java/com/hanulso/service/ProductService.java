package com.hanulso.service;

import java.util.List;

import com.hanulso.domain.ProductVO;

public interface ProductService {

	public void product_insert(ProductVO pvo);
	
	public ProductVO product_view(int pno);
	
	public List<ProductVO> product_view_list(String username);

}