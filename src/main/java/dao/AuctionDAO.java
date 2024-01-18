package dao;

import org.apache.ibatis.annotations.Select;

import model.Auction;

public interface AuctionDAO {

    // 특정 사용자가 작성한 게시글 중 하나의 pnum을 가져오는 쿼리
    @Select("SELECT pnum FROM your_auction_table WHERE writer_id != #{login} LIMIT 1")
    Integer oneBoardByOtherUser(String login);

	Auction selectBoardByPnum(Integer otherUserPnum);
}