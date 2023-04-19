package org.zerock.wecart.service;

import java.util.List;
import java.util.concurrent.TimeUnit;

import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.MethodOrderer;
import org.junit.jupiter.api.Order;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.TestInstance;
import org.junit.jupiter.api.TestInstance.Lifecycle;
import org.junit.jupiter.api.TestMethodOrder;
import org.junit.jupiter.api.Timeout;
import org.junit.jupiter.api.extension.ExtendWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit.jupiter.SpringExtension;
import org.zerock.wecart.domain.pricecompare.GoodsCriteria;
import org.zerock.wecart.domain.pricecompare.GoodsVO;
import org.zerock.wecart.domain.pricecompare.MemberGoodsCartVO;
import org.zerock.wecart.exception.ServiceException;
import org.zerock.wecart.service.pricecompare.PriceCompareService;

import lombok.NoArgsConstructor;
import lombok.extern.log4j.Log4j2;

@NoArgsConstructor
@Log4j2

@ExtendWith(SpringExtension.class)
@ContextConfiguration(locations= {"file:src/main/webapp/WEB-INF/**/root-*.xml"})

@TestInstance(Lifecycle.PER_CLASS)
@TestMethodOrder(MethodOrderer.OrderAnnotation.class)
public class PriceCompareServiceTests {

	@Autowired
	private PriceCompareService service;
	
	@BeforeAll
	void beforeAll() {
		log.trace("beforeAll() invoked.");
		
		assert this.service != null;
		log.info("\t+ this.service: {}", this.service);
	} //beforeAll

	//1. 상품 전체 조회 (페이징 처리)
//	@Disabled
	@Test
	@Order(1)
	@DisplayName("Test1: getList()")
	@Timeout(value=4, unit=TimeUnit.SECONDS)
	void getList() throws ServiceException {
		log.trace("getList() invoked.");
		
		GoodsCriteria cri = new GoodsCriteria();
		cri.setCurrPage(1);
		cri.setAmount(20);
		cri.setSort("popular");
//		cri.setSort("low");
//		cri.setSort("high");
		
		List<GoodsVO> list = this.service.getList(cri);
		
		if(list != null) {
			log.info("\t+ list: {}", list);
		} else {
			throw new ServiceException("GoodsVO is NULL.");
		} //if-else
		
	} //getList
	
	//2. 총 상품 개수 반환
//	@Disabled
	@Test
	@Order(2)
	@DisplayName("Test2: getTotalAmount()")
	@Timeout(value=4, unit=TimeUnit.SECONDS)
	void getTotalAmount() throws ServiceException {
		log.trace("getTotalAmount() invoked.");
		
		String keyword = "product_1";
//		String keyword = null;
		
		Integer totalAmount = this.service.getTotalAmount(keyword);
		
		log.info("\t+ totalAmount: {}", totalAmount);
		
	} //getTotalAmount
	
	//3. 상품 검색 
//	@Disabled
	@Test
	@Order(3)
	@DisplayName("Test3: getSearchList()")
	@Timeout(value=4, unit=TimeUnit.SECONDS)
	void getSearchList() throws ServiceException {
		log.trace("getSearchList() invoked.");
		
		GoodsCriteria cri = new GoodsCriteria();
		cri.setCurrPage(1);
		cri.setAmount(20);
		cri.setKeyword("product_1");
		
		List<GoodsVO> list = this.service.getSearchList(cri);
		
		if(list != null) {
			log.info("\t+ list: {}", list);
		} else {
			throw new ServiceException("GoodsVO is NULL.");
		} //if-else
		
	} //getSearchList
	
//	@Disabled
	@Test
	@Order(4)
	@DisplayName("Test4: getMemberGoodsCartListForMember()")
	@Timeout(value=4, unit=TimeUnit.SECONDS)
	void getMemberGoodsCartListForMember(Integer member_id) throws ServiceException {
		log.trace("getMemberGoodsCartListForMember() invoked.");
		
		
		List<Integer> list = this.service.getInstalledCartIdsOfMember(198);
		
		if(list != null) {
			log.info("\t + list: {}", list);
		}else {
			throw new ServiceException("MemberGoodsCartVO is null");
		} // if - else
		
	} //MemberGoodsCartListForMember
	
//	@Disabled
	@Test
	@Order(5)
	@DisplayName("Test5: getTodayCartIdOfMember()")
	@Timeout(value=4, unit=TimeUnit.SECONDS)
	void getTodayCartIdOfMember() throws ServiceException {
		log.trace("getTodayCartIdOfMember() invoked.");
		
		Integer member_id = 198;
		
		Integer cart_id = this.service.getTodayCartIdOfMember(member_id);
		
		if(cart_id != null) {
			log.info("\t + list: {}", cart_id);
		}else {
			log.info("해당 회원은 TodayCart를 가지고 있지 않습니다.");
		} // if - else
		
	} //MemberGoodsCartListForMember
	
//	@Disabled
	@Test
	@Order(6)
	@DisplayName("Test6: getTodayCartIdOfMember()")
	@Timeout(value=4, unit=TimeUnit.SECONDS)
	void saveGoodsIntoTodayCart() throws ServiceException {
		log.trace("getTodayCartIdOfMember() invoked.");
		
		try {
			
			this.service.saveGoodsIntoTodayCart(198, 100, 2295427);
			
		}catch(Exception e) {
			throw new ServiceException(e);
		}
	} //MemberGoodsCartListForMember
	
	
} //end class









