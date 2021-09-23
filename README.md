# study_JSP
JSP를 공부한 것을 정리하는 Repository
- 서블릿과 JSP를 공부하면서 서블릿, JSP 그리고 Spring과의 차이점을 정리.

## 서블릿
- JSP 표준이 나오기 전에 만들어진 표준으로 자바로 웹 어플리케이션을 개발할 수 있도록 하기 위해 만들어졌다.
- 자바 클래스를 이용해서 웹 애플리케이션을 개발할 수 있다.
- 반드시 매핑을 해야하다
- 동전 웹 애플리케이션 컴포넌트로 java thread를 이용하여 동작한다.
- 클라이언트의 요청에 동적으로 작동하고, 응답은 html을 이용한다.
- MVC 패턴에서 Controller로 이용된다.
- 단점
  - 어노테이션 매핑의 경우 프로그램 개발 완성후, 릴리즈 후 수정을 하고 싶다면 자바소스파일을 수정해야하고 계속해서 재컴파일이 필요하다.
  - web.xml의 경우 매핑하는 방법이 낫긴 하지만, 각각 다르게 구현을 해야 한다.
  - 웹 프로그램의 화면 기능이 복잡하기 때문에 서브릿의 자바 기반으로 화면 기능 구현 시 어려움이 발생한다.
  - 화면 구현 시 자바 코드로 인해 디자인 작업이 어려워 진다.
  - 서블릿에 비즈니스 로직이 같이 있어 개발 후 유지관리가 불편한다.

<img src='./img/servlet01.png'/>

- GenericSevlet 추상 클래스는 Servlet과 ServletConfig 인터페이스를 구현한다.
- HttpServlet은 GenericServlet 추상클래스를 상속받는다.

### 서블릿 프로젝트 만들기
1. Dynamic Project 선택
2. Project 이름 작성 후 tomcat 연결하기
3. Web module의 파일 이름을 'WebContent'로 설정하기
4. 'Generate web.xml deployment description' 선택하기

#### web.xml에서 서블릿 매핑하기
`<servlet-name>`: 임의의 이름을 만들어 준다.
`<servlet-class>`: 매핑할 클래스 파일명을 패키지 명을 폼함하여 정확하게 입력한다.
`<url-pattern>`: servlet-class의 클래스를 매핑할 임의의 이름을 입력한다. 주의할 점은 /로 시작해야 한다.

## JSP(Java Server Pages)
- HTML 코드에 JAVA 코드를 넣어 동적 웹페이지를 생성하는 웹 애플리케이션 도구이다.
- JSP 실행 시 JAVA Servlet으로 변환되며 웹 애플리케이션 섭에서 동작되면서 필요한 기능을 수행하고 그렇게 생성된 데이터를 웹페이지와 함께 클라이언트로 응답한다.
  - JAVA Servlet: 웹 페이지를 동적으로 생성하기 위해 서버 측 프로그램이다.
- JSP 는 대표적인 동적 웹 프로젝트이다.
- JSP의 스파게티 코드 문제때문에 JSP MVC를 사용하게 된다.(그리고 JSP MVC의 문제점을 해결하기 위해 Spring MVC 를 사용한다.)
- DAO(Data Access Object)
  - DB에 직접 접근하여 DB와 관련되 닝ㄹ을 하는 객체이다.
  - DB에 접속해서 데이터 추가, 삭제, 수정 등의 작업을 하는 클래스이다.
- DTO(Data Transfer Object)
  - DAO 가 DB에 접근하여 가져온 데이터를 난잡하게 가져오지 않고, 클래스로 만들어서 가져오는 객체이다.

### JSP 내부객체
- 개발자가 객체를 생성하지 않고 바로 사용할 수 있는 객체로 JSP 컨테이너로 의해 Servlet으로 변화될 떄 자동으로 객체가 생성된다.
- 종류
  - 입출력 객체
  - 서블릿 객체
  - 세션 객체
  - 예외 객체

### bean
- JAVA언어의 데이터와 기능으로 이루어진 클래스이다.
- JSP페이지를 만들고, 액션태그를 이용하여 빈을 사용하여 빈의 내부 데이터를 처리한다.
- 목적: 디자인 부분과 비즈니스 로직부분을 분리하고, 복잡한 JSP코드들을 줄이고 프로그램의 재사용성을 증가시키기 위해서이다.
- 빈 관련 액션태그
  - 데이터를 업데이트하고 읽어오는 역할을 한다. (setProperty(), getProperty() -> id, class, scope)
  - useBean을 이용해서 작성하면 자바에서 new 연산자로 객체를 생성하는 것과 동일한 개념이 되는 것이다.
  - setProperty(): 값을 저장하는 것, perperty에 value 값들이 들어온다. (*일 경우 빈 객체의 속성 값을 기본값으로 지정되는 것이다.)
  - getProperty(): 값을 불러오는 것이다.

### DBMS(DataBase Management System)
- 데이터 베이스는 여러 사용자나 응용 프로그램이 공유하고 동시에 접근 가능한 '데이터 집합'이다.
- DBMS는 데이터베이스를 관리 운영하는 소프트웨어이다.
- 사용자나 응요 프로그램은 DBMS가 관리하는 데이터에 동시에 접속하여 데이터를 공유한다.
- DBMS 분류
  - 계층형 DBMS
    - 각 계층이 트리 형태를 띠고 1:N 관계를 가진다.
    - 한번 구축하면 구조를 변경하기 까다롭다.
    - 접근 유연성이 부족하여 임의 검색 시 어렵다.
  - 망형 DBMS
    - 1:1, 1:N, N:M(다대다) 관계가 지원되어 효과적이고 빠른 데이터 추출이 가능하다.
  - 관계형 DBMS
    - 모든 데이터는 테이블에 저장된다.
    - 테이블 간의 관계는 기본키와 외래키를 사용하여 맺는다.(부모-자식 관계)
    - 다른 DBMS에 비해 업무 변화에 따라 순응할 수 있고 유지 보수 측면에서도 편리하다.
    - 대용량 데이터를 체계적으로 관리할 수 있다.
    - 시스템 자원을 많이 차지하여 시스템이 전반적으로 느려지는 단점이 있다.

### JDBC
- Java 프로그램에서 SQL문을 실행하여 데이터를 관리하기 위한 JAVA API이다.
- 다양한 데이터 베이스에 대해 별도의 프로그램을 만들 필요 없이, 해당 데이터 베이스의 JDBC를 이용하면 하나의 프로그램으로 데이터 베이스를 관리할 수 있다.
- JDBC를 사용한 DB 연동 순서
  1. JDBC 드라이버 로드
  2. 데이터베이스 연결
  3. SQL문 실행
  4. 데이터베이스 연결 해제

### DBCP(커넥션 풀)

### JSP와 서블릿의 차이점
- JSP(Java Server Page)은 확장자가 .jsp인 파일로 html 문서 안에 자바 언어를 삽입해 사용할 수 있도록 준다.
- 서블릿은 확장자가 .java인 파일로 자바의 일반적인 클래스와 동일한 개념으로 웹을 다룰 수 있도록 해주는 "HttpServlet" 클래스를 상속받은 클래스를 의미한다.
- 서블릿의 HTML 코드 출력 문제를 해결하기 위해 JSP 사용한다.

### JSP와 Spring의 차이점
- JSP는 웹 페이지 영역에서 사용되고, Spring은 웹 서비스 전반적 환경을 구성한다.

### 개발
- Eclipse 연결 후 Dynamic Web 만들기를 클릭해서 프로젝트를 만들면 폴더와 파일들이 생긴다. 이 중에서도 WebContent 폴더안에 만드는 것들이 Webpage를 구성하게 된다.

### 코드 설명
```
location.href = '[URL]';
```
- 바로 [URL]로 이동해라

#### 이외
- UTF-8 : 한글, 영어 모두 지원해주는 인코딩 언어
- javax.servlet 패키지에 예외가 발생 시, 프로젝트 -> build path -> libraries -> add external jars -> 톰캣폴더\lib\ -> jsp-api.jar, servlet-api.jar 추가
- @WebServlet 어노테이션보다 web.xml에서 지정한 매핑코드가 우선순위보다 훨씬 높다.
- source에 generate getters ans setters/generate constructor using Fields를 사용하면 코드를 안 작성해도 만들 수 있다.
- `response.setIntHeader("Refresh", 5);` : 웹 사이트의 리프레쉬.

### Installation
- tomcat 다운
- Eclipse 다운
- Eclipse Dynamic web 만들기 클릭
- 거기에 다운 받았던 tomcat 연결
- [webapp] 폴더에 index.jsp 만들기 실행버튼 누르기 -> 'http://localhost:8080/'에 서버가 띄워짐.