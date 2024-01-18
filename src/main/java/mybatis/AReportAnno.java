package mybatis;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;

import model.Report;

public interface AReportAnno {

    @Insert("INSERT INTO AReport (content, regdate) VALUES (#{content}, #{regdate})")
    int insertReport(Report rep);
    
    
    @Select("SELECT pnum FROM Auction WHERE id != #{login} LIMIT 1")
    Integer oneBoardByOtherUser(String login);
   
    
    
}