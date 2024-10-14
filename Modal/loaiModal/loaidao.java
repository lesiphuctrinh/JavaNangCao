package loaiModal;

import java.util.ArrayList;

public class loaidao {
	public ArrayList<loai> getloai(){
	     ArrayList<loai> ds= new ArrayList<loai>();
	     ds.add(new loai("cntt","Cong nghe thong tin"));
	     ds.add(new loai("ly","Vat ly"));
	     ds.add(new loai("toan","Toan ung dung"));
	     ds.add(new loai("hoa","Hoa huu co"));
	     ds.add(new loai("sin","Cong nghe sinh hoc"));
	     return ds;
	    }
}
