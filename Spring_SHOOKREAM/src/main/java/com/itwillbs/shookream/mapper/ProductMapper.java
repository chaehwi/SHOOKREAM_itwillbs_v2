package com.itwillbs.shookream.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.itwillbs.shookream.vo.CouponVo;
import com.itwillbs.shookream.vo.OrderVo;
import com.itwillbs.shookream.vo.OrderdeliveryVo;
import com.itwillbs.shookream.vo.ProductVo;
import com.itwillbs.shookream.vo.ReviewVo;
import com.itwillbs.shookream.vo.WishVo;
import com.itwillbs.shookream.vo.imageVo;


public interface ProductMapper {
	
	// =========================== 채휘 ===============================
	public int selectMemberIdx(String sId);

	public WishVo selectWish(@Param("product_idx") int product_idx, 
			@Param("member_idx") int member_idx);

	public ProductVo selectProduct(int product_idx);

	public imageVo selectImage(int product_idx);

	public List<String> selectCategoryList(String product_name);

	public List<String> selectColorList(String product_name);

	public List<imageVo> selectImageList(String product_name);

	public int insertOrder(OrderVo order);

	public List<ReviewVo> selectReviewList(int product_idx);

	public int insertOrderDetail(@Param("order")OrderVo order,@Param("delivery")OrderdeliveryVo delivery);

	public void updaetProduct(OrderVo order);

	public void updateMember(OrderVo order);

	public List<CouponVo> selectCoupontList(@Param("member_idx")int member_idx, @Param("product_price")int product_price);

	public List<OrderVo> selectOrderList(@Param("member_idx")int member_idx,@Param("listLimit") int listLimit,@Param("startRow") int startRow);

	public int getListCount(int member_idx);
	
	// ====================채휘 끝 =======================================

}
