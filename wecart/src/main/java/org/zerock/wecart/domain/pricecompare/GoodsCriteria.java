package org.zerock.wecart.domain.pricecompare;

import org.springframework.web.util.UriComponentsBuilder;

import lombok.Data;
import lombok.extern.log4j.Log4j2;

@Log4j2
@Data
public class GoodsCriteria {

	private Integer currPage = 1;
	private Integer amount = 40;
	private Integer pagesPerPage = 10;
	
	private String keyword;
	private String sort;
	
	public String getPagingUri() {
		log.trace("getPagingUri() invoked.");
		
		UriComponentsBuilder builder = UriComponentsBuilder.fromPath("");
		if(keyword != null) builder.queryParam("keyword", this.keyword);
		builder.queryParam("currPage", this.currPage);
		builder.queryParam("amount", this.amount);
		builder.queryParam("pagesPerPage", this.pagesPerPage);		
		if(sort != null) builder.queryParam("sort", this.sort);
		
		String queryString = builder.toUriString();
		log.info("\t+ queryString: {}", queryString);
		
		return queryString;
	} //getPagingUri
	
	public String getSearchPagingUri() {
		log.trace("getSearchPagingUri() invoked.");
		
		UriComponentsBuilder builder = UriComponentsBuilder.fromPath("");
		if(keyword != null) builder.queryParam("keyword", this.keyword);
		builder.queryParam("sort", this.sort);
		
		String queryString = builder.toUriString();
		log.info("\t+ queryString: {}", queryString);
		
		return queryString;
	} //getSearchPagingUri
} //end class
