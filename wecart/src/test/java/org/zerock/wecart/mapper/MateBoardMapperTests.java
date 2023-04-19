package org.zerock.wecart.mapper;

import static org.junit.jupiter.api.Assertions.assertNotNull;

import java.sql.Timestamp;
import java.util.List;
import java.util.Objects;
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
import org.zerock.wecart.domain.board.Criteria;
import org.zerock.wecart.domain.mateboard.MateBoardDTO;
import org.zerock.wecart.domain.mateboard.MateBoardVO;
import org.zerock.wecart.mapper.board.mateboard.MateBoardMapper;

import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.extern.log4j.Log4j2;

@Log4j2
@NoArgsConstructor

@ExtendWith(SpringExtension.class)
@ContextConfiguration(locations="file:src/main/webapp/WEB-INF/**/root-*.xml")

@TestInstance(Lifecycle.PER_CLASS)
@TestMethodOrder(MethodOrderer.OrderAnnotation.class)
public class MateBoardMapperTests {
	
	@Setter(onMethod_= {@Autowired})
	private MateBoardMapper mapper;
	
	@BeforeAll
	void beforeAll() {
		log.trace("beforeAll() invoked");
		
		Objects.nonNull(this.mapper);
		assert this.mapper !=null;
		assertNotNull(this.mapper);
		
		log.info("this.mapper:{}, {}", this.mapper, this.mapper.getClass().getName());
	}//beforeAll
	
//	@Disabled
	@Test
	@Order(1)
	@DisplayName("페이징처리후: mateBoardMapperSelectAllTest")
	@Timeout(value=50, unit=TimeUnit.SECONDS)
	void mateBoardMapperSelectAllTest() {
		log.trace("mateBoardMapperSelectAllTest() invoked.");
		
		Criteria cri = new Criteria();
		cri.setCurrPage(2);
		cri.setAmount(20);
//		cri.setSort("views");
		
		List<MateBoardVO> list = this.mapper.selectAll(cri);
		assertNotNull(list);
		
		list.forEach(log::info);
		
	}//mateBoardMapperSelectAllTest() 
	
	
//	@Disabled
	@Test
	@Order(2)
	@DisplayName("testSelectTotalCount()")
	@Timeout(value=3, unit=TimeUnit.SECONDS)
	void testSelectTotalCount() {
		
		log.trace("testSelectTotalCount() invoked" );
		
		Integer totalCount = this.mapper.selectTotalCount();
		
		//DML문장이아니라서 affectedLines이 아님
		Objects.requireNonNull(totalCount);
		log.info("totalCount:{}", totalCount);
	}//testSelectTotalCount
	
	
//	@Disabled
	@Test
	@Order(3)
	@DisplayName("게시물 상세 조회: mateBoardMapperSelectTest")
	@Timeout(value=50, unit=TimeUnit.SECONDS)
	void mateBoardMapperSelectTest() {
		log.trace("mateBoardMapperSelectTest() invoked.");
		
		Integer post_no=77;
		
		MateBoardVO vo = this.mapper.select(post_no);
		assertNotNull(vo);
		
		log.info("vo:{}", vo);
		
	}//mateBoardMapperSelectTest() 
	
//	@Disabled
	@Test
	@Order(4)
	@DisplayName("게시물 수정 : mateBoardMapperuUpdateTest")
	@Timeout(value=5, unit=TimeUnit.SECONDS)
	void mateBoardMapperuUpdateTest() {
		log.trace("mateBoardMapperuUpdateTest() invoked.");
		
		//모든 컬럼을 수정하지 않는 경우
		MateBoardVO vo = this.mapper.select(301);
		MateBoardDTO dto = new MateBoardDTO();
		
		dto.setPost_no(vo.getPost_no());
		dto.setTitle("NEW TITLE");
		dto.setContent("NEW_NEW_NEW_NEW_NEW");
		dto.setViews(vo.getViews());
		dto.setMember_id(vo.getMember_id());
		dto.setMeeting_status('0');
		dto.setMeeting_area("Jamsil");
		dto.setParticipant_id_1(300);
		dto.setParticipant_id_2(301);
		dto.setParticipant_id_3(303);
		 
		Integer affectedLines = this.mapper.update(dto);
		
		assertNotNull(affectedLines);
		log.info("***********afftedLines:{}", affectedLines);
	}//mateBoardMapperuUpdateTest()
	
	
//	@Disabled
	@Test
	@Order(4)
	@DisplayName("신규 게시물 등록 : mateBoardMapperInsertTest")
	@Timeout(value=5, unit=TimeUnit.SECONDS)
	void mateBoardMapperInsertTest() {
		log.trace("mateBoardMapperInsertTest() invoked.");
		
		MateBoardDTO dto = new MateBoardDTO();
		Timestamp now = new Timestamp(System.currentTimeMillis());

		dto.setTitle("Ju's");
		dto.setContent("Ju_New_Content");
		dto.setViews(1000000000);
		dto.setMember_id(333);
		dto.setMeeting_status(String.valueOf(0).charAt(0));
		dto.setMeeting_area("NY");
		dto.setMeeting_time(now);
		dto.setReport_cnt(0);
		dto.setParticipant_id_1(335);
		dto.setParticipant_id_2(337);
		dto.setParticipant_id_3(379);
		
		Integer afftectedLines = this.mapper.insert(dto);
		assertNotNull(afftectedLines);
		
		log.info("afftectedLines:{}", afftectedLines);
		
	}//mateBoardMapperInsertTest() 
	
}//end class 
 