# [Wecart](http://152.67.222.245/)
## 우리동네장바구니 프로젝트 입니다.
**서비스 정의**
: 사용자 위치에 따른 지역 마트의 품목별 가격을 비교할 수 있는 서비스 제공 및 지역 주민의 온라인 커뮤니티 형성
<p></p>

**서비스 기획 배경**
: 코로나 사태로 인한 사상 최대의 양적완화로 인한 금리 상승과 러-우 전쟁으로 인한 인플레이션 등으로 장기간의 경기 침체가 계속되는 상황에서 대중들의 합리적인 소비를 도모할 수 있는 서비스
<p></p>

**데이터 활용**<br>
* 한국소비자원_생필품 가격 정보:
https://www.data.go.kr/data/15083256/fileData.do
<p></p>

* UI 스토리보드: https://docs.google.com/presentation/d/1TPoAyAR9fTNeU3A5fVU7dkYxcz-bnWTesm3K-EKWIlg/edit#slide=id.p 
<p></p>

* ERD 데이터 모델링<br>

  [- 회원 ERD](https://github.com/woojungjo/project/assets/110724186/bd8e3112-6f4c-4714-9902-4d6839379109) <br>

  [- 게시판 ERD](https://github.com/woojungjo/project/assets/110724186/1878741c-e9f3-4a19-9606-cafeead0a51f)  
<p></p>

* IE 표기법 데이터 모델링: https://www.erdcloud.com/d/Enz86RZCZhuh6e6gR
<p></p>

* Request Mapping: https://github.com/orgs/woojungjo/projects/8
<p></p>

* 프로젝트 진행 상황: https://github.com/orgs/woojungjo/projects/7
<p></p>

**개발 환경**<br>
- OS<br>
  - Windows 10
- Dev Tools<br>
  - Spring Tool Suite 3, SQL*Developer, VSCODE
- IDE<br>
  - Eclipse JEE 2021-12
-	DBMS<br>
    - Oracle Cloud 19c Release 4 Enterprise Edition
-	WAS<br>
    - Apache Tomcat v9.0
- Server<br>
    - Oracle Compute Server(Ubuntu)
-	Language<br>
    - Java, HTML5, CSS3, JavaScript, jQuery, Servlet
-	Framework<br>
    - Spring Framework
- FrontEnd
  - HTML5, CSS3, JavaScript, jQuery, Ajax
- BackEnd
  - Maven, MyBatis, hikariCP, JSTL, Lombok, Quartz
<br>
<br>

## 프로젝트 상세
### 프로젝트 전체 기능
- 회원 - 회원 가입, 로그인, 개인 정보 수정
- 가격 비교 - 상품 목록, 상품 상세 조회
- 장바구니 - 오늘의 장바구니, 마이페이지 장바구니
- 게시판 - 장메이트 게시판, 문의 게시판
<br>

## 김지연
### 담당역할
- Git 관련 기반작업
- 전체 게시판 ERD
- 지역게시판, 세일게시판 관련 IE 표기법 ER 모델 및 스키마 생성
- 게시판 UI 스토리보드
- 상품 목록, 오늘의 장바구니, 마이페이지 장바구니 상세 목록 Front-End 및 Back-End
- 공공데이터 API DB 저장 및 Quartz로 구현
- Oracle Compute Server에 프로젝트 배포
<br>

### 화면 및 구현 기능
**상품목록**<br>
<img src='https://github.com/woojungjo/project/assets/110724186/4cf7d2d7-79d6-445b-9c33-84ed89cd68b5'>
- JavaScript를 통한 2 Depth 서브 메뉴
- 공공데이터 API를 통해 조회한 상품 목록
- 인기순, 낮은 가격 순, 높은 가격 순 상품 정렬
- 상품 검색 기능
<br>
<br>

**오늘의 장바구니**<br>
<img src='https://github.com/woojungjo/project/assets/110724186/b5e4fd13-53f1-45c9-a35c-3e1be12f6777'>
- 수량 변화 시 RESTful 방식을 통한 가격 변화 및 합계 변화를 실시간 DB 저장
- 공공데이터 API를 통한 최신 가격 조회
- 마이페이지 장바구니 목록으로의 저장 기능
- RESTful 방식을 통한 상품 삭제
<br>
<br>

**마이페이지 장바구니**<br>
<img src='https://github.com/woojungjo/project/assets/110724186/b4f54923-552a-4638-bacb-10dff1173e03'>
- 공공데이터 API를 통한 가격 조회
- JavaScript를 통한 수량 변화 시 가격 변화 및 합계 변화
- RESTful 방식을 이용한 공공데이터 API 날짜에 따른 현재 가격 비교
- RESTful 방식을 통한 장바구니 삭제
<br>
<br>
