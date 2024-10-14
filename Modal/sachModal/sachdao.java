package sachModal;

import java.util.ArrayList;

public class sachdao {
	 public ArrayList<sach> getsach(){
			ArrayList<sach> ds= new ArrayList<sach>();
			//String masach, String tensach, String tacgia,
			//Long soluong, Long gia, String anh, String maloai
			ds.add(new sach("s1", "Cấu trúc dữ liệu", "le nam",(long)10,
			  (long)100000, "image_sach/b1.jpg","cntt"));
			ds.add(new sach("s2", "Cơ sở dữ liệu", "le nam",(long)10,
					  (long)100000, "image_sach/b2.jpg","cntt"));
			ds.add(new sach("s3", "CSDL3", "le nam",(long)10,
					  (long)100000, "image_sach/b3.jpg","cntt"));
			ds.add(new sach("s4", "CSDL4", "le nam",(long)10,
					  (long)100000, "image_sach/b4.jpg","cntt"));
			ds.add(new sach("s5", "Điện tử", "le lai",(long)10,
					  (long)100000, "image_sach/b5.jpg","ly"));
			ds.add(new sach("s6", "Vat ly dai cuong", "le nam",(long)10,
					  (long)100000, "image_sach/b6.jpg","ly"));
			ds.add(new sach("s7", "Giai tich", "Pham nam",(long)10,
					  (long)100000, "image_sach/b7.jpg","toan"));
			return ds;
		   }
}
