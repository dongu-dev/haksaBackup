# 프로젝트 개요 #
form 방식을 이용한 리스트 및 검색기능, 페이징 

### 전체적인 문제점 ###
- 주석처리 미흡
- 가독성을 무시한 소스코드 작성

### 리스트 및 검색기능 ###

(1) Controller
```
  // 인사공통코드 리스트 페이지 데이터 호출
	@RequestMapping(value="/personnelCode/personnelCommonList", method = RequestMethod.GET)
	public String personnelCommonCodeList(Model model
				, @RequestParam(value="currentPage", defaultValue="1") int currentPage
				, @RequestParam(value="pagePerRow", required=true, defaultValue="10") int pagePerRow
				, @RequestParam(value="optionSearch", defaultValue="") String optionSearch
				, @RequestParam(value="keyWord", defaultValue="") String keyWord) {
	
      Map<String, Object> personnelCommonCodeList = PersonnelCodeService.selectPersonnelCommonCodeList(currentPage, pagePerRow,               optionSearch,   keyWord);

      model.addAttribute("PersonnelCommonCode", personnelCommonCodeList.get("PersonnelCommonCode"));
      model.addAttribute("lastPage", personnelCommonCodeList.get("lastPage"));
      model.addAttribute("currentPage", currentPage);
      model.addAttribute("pagePerRow", pagePerRow);
      model.addAttribute("optionSearch", optionSearch);
      model.addAttribute("keyWord", keyWord);
      logger.info("PersonnelCommonCode값" + personnelCommonCodeList.get("PersonnelCommonCode"));
      logger.info("lastPage값" + personnelCommonCodeList.get("lastPage"));
      logger.info("currentPage값" + currentPage);
      logger.info("pagePerRow값" + pagePerRow);
      logger.info("optionSearchr값" + optionSearch);
      logger.info("keyWord값" +keyWord);

        return "personnelCode/personnelCommonList";
	}
```
검색기능 : 내가 특정한 key 값을 통해 검색을 하고자 하여 List 보다는 Map을 사용함.<br>
문제점 : 리턴 타입을 ModelAndView 를 사용하여 값을 객체로 View에 넘겨주는 방법이 있는데 많은 소스코드들을 작성할 필요가 없었다고 생각함.
<br><br>
(2) Service
```
  @Service
  @Transactional
  public class PersonnelCodeService {
        @Autowired
      private PersonnelCodeDao personnelCodeDao;
      private static final Logger logger = LoggerFactory.getLogger(PersonnelCodeService.class);

      // 인사공통코드 리스트(listPersonnelCommonCode.jsp) service 메소드 -> 페이징 및 검색 옵션부여
      public Map<String, Object> selectPersonnelCommonCodeList(int currentPage, int pagePerRow, String optionSearch, String keyWord) {
          int startPage = (currentPage-1)*pagePerRow;

          int totalCount = personnelCodeDao.getTotalCount();
          logger.info("totalCount값 : " + totalCount);

          int lastPage = (int) (Math.ceil(totalCount / pagePerRow));

          Map<String, Object> PersonnelCommonCodeList = new HashMap<String, Object>();
          PersonnelCommonCodeList.put("startPage", startPage);
          PersonnelCommonCodeList.put("pagePerRow", pagePerRow);
          PersonnelCommonCodeList.put("optionSearch", optionSearch);
          PersonnelCommonCodeList.put("keyWord", keyWord);
          logger.info("startPage값 : " + startPage);
          logger.info("pagePerRow값 : " + pagePerRow);
          logger.info("optionSearch값 : " + optionSearch);
          logger.info("keyWord값 : " + keyWord);

          List<PersonnelCommonCode> PersonnelCommonCode = personnelCodeDao.selectPersonnelCommonCodeList(PersonnelCommonCodeList);

          Map<String, Object> reListPersonnelCommonCode = new HashMap<String, Object>();
          reListPersonnelCommonCode.put("PersonnelCommonCode", PersonnelCommonCode);
          reListPersonnelCommonCode.put("lastPage", lastPage);

          return reListPersonnelCommonCode;
      }
```
<br><br>
(3) Dao
```
  @Repository
  public class PersonnelCodeDao {
      private final String NS = "com.cafe24.iumium.personnel.code.dao.PersonnelCodeMapper.";

      @Autowired
        private SqlSessionTemplate sqlSessionTemplate;
      private static final Logger logger = LoggerFactory.getLogger(PersonnelCodeDao.class);

      // 인사공통코드 리스트
      public List<PersonnelCommonCode> selectPersonnelCommonCodeList(Map<String, Object> personnelCommonCodeList) {
        return sqlSessionTemplate.selectList(NS+"personnelCommonCodeList", personnelCommonCodeList);
      }
      
      // 인사공통코드 전체 행개수
      public int getTotalCount() {
        return sqlSessionTemplate.selectOne(NS+"totalCount");
      }
```
<br><br>
(4) Mapper
```
	<mapper namespace="com.cafe24.iumium.personnel.code.dao.PersonnelCodeMapper">
		<!-- 인사공통코드 리스트 조회 -->
	    <select id="personnelCommonCodeList"
		parameterType="java.util.Map"
		resultType="com.cafe24.iumium.personnel.code.dto.PersonnelCommonCode">
	      SELECT 
		 personnel_common_appointment_code AS personnelCommonAppointmentCode
		 , personnel_common_appointment_code_name AS personnelCommonAppointmentCodeName
		 , personnel_common_use_existence_nonexistence AS personnelCommonUseExistenceNonexistence
		 , personnel_common_registration_date AS personnelCommonRegistrationDate
		 , personnel_common_modification_date AS personnelCommonModificationDate
	      FROM ilban_personnel_common
		<if test="!keyWord.equals('')">
		   <choose>
		      <when test="!optionSearch.equals('')">
			WHERE personnel_common_appointment_code LIKE #{keyWord} AND personnel_common_appointment_code_name LIKE #				{optionSearch}
		      </when>
		   </choose>
		</if>
		<if test="keyWord.equals('')">
		  <choose>
		    <when test="!optionSearch.equals('')">
			WHERE personnel_common_appointment_code_name LIKE #{optionSearch}
		    </when>
		  </choose>
		</if>
	      ORDER BY personnel_common_appointment_code
	      ASC LIMIT #{startPage}, #{pagePerRow}
	    </select>
	</mapper>
```
## View URL 링크
https://github.com/wonmin123/haksaBackup/blob/master/haksaProjectBackup/src/main/webapp/WEB-INF/views/personnelCode/personnelCommonList.jsp
