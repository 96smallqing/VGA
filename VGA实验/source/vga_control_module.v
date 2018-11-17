module vga_control_module
(
    CLK, RSTn,
	 Ready_Sig, Column_Addr_Sig, Row_Addr_Sig,
	 Red_Sig, Green_Sig, Blue_Sig
);
    input CLK;
	 input RSTn;
	 input Ready_Sig;
	 input [10:0]Column_Addr_Sig;
	 input [10:0]Row_Addr_Sig;
	 output Red_Sig;
	 output Green_Sig;
	 output Blue_Sig;
	 
	 /**********************************/
	 reg [2:0] rgb;
//	 reg isRectangle;
//	 reg isRectangle1;
//	 reg isRectangle2;
//	 reg isRectangle3; reg isRectangle4; reg isRectangle5; reg isRectangle6; reg isRectangle7;
	 always @ ( posedge CLK or negedge RSTn )
	     if( !RSTn )
//		  begin     isRectangle <= 1'b0;isRectangle1 <= 1'b0;isRectangle2 <= 1'b0;isRectangle3 <= 1'b0;
//						isRectangle4 <= 1'b0;isRectangle5 <= 1'b0;isRectangle6 <= 1'b0;isRectangle7 <= 1'b0;
		  rgb=3'b000;
		  
		 
		  else if( Column_Addr_Sig < 11'd100)// && Row_Addr_Sig > 11'd0 )
           rgb=3'b000;
		  else if( Column_Addr_Sig >= 11'd100&&Column_Addr_Sig < 11'd200)// &&)//Row_Addr_Sig >11'd0 )
            rgb=3'b001;
		  else if( Column_Addr_Sig >= 11'd200 &&Column_Addr_Sig < 11'd300)//&& Row_Addr_Sig >11'd0 )
            rgb=3'b010;
			else if( Column_Addr_Sig >= 11'd300 &&Column_Addr_Sig < 11'd400)//&& Row_Addr_Sig >11'd0 )
			  rgb=3'b011;
			else if( Column_Addr_Sig >= 11'd400 &&Column_Addr_Sig < 11'd500)//&& Row_Addr_Sig >11'd0 )
			   rgb=3'b100;
			else if( Column_Addr_Sig >= 11'd500 &&Column_Addr_Sig < 11'd600)//&& Row_Addr_Sig >11'd0 )
			   rgb=3'b101;
			else if( Column_Addr_Sig >= 11'd600 &&Column_Addr_Sig < 11'd700)//&& Row_Addr_Sig >11'd0 )
			   rgb=3'b110;
			else if( Column_Addr_Sig >= 11'd700 &&Column_Addr_Sig < 11'd800)//&& Row_Addr_Sig >11'd0 )
			   rgb=3'b111;
		  else
//		   begin   isRectangle <= 1'b0;isRectangle1 <= 1'b0;isRectangle2 <= 1'b0;isRectangle3 <= 1'b0;
//						isRectangle4 <= 1'b0;isRectangle5 <= 1'b0;isRectangle6 <= 1'b0;isRectangle7 <= 1'b0;
//			
			rgb=3'b000;

//		always @(posedge CLK or negedge RSTn )		
//			if( !RSTn)
//				rgb<=3'b000;
//			else if(isRectangle==1'b1)
//				rgb<=3'b001;
//			else if(isRectangle1==1'b1)
//				rgb<=3'b010;
//			else if(isRectangle2==1'b1)
//				rgb<=3'b011;
//			else if(isRectangle3==1'b1)
//				rgb<=3'b100;
//			else if(isRectangle4==1'b1)
//				rgb<=3'b101;
//			else if(isRectangle5==1'b1)
//				rgb<=3'b110;
//			else if(isRectangle6==1'b1)
//				rgb<=3'b111;
//			else if(isRectangle7==1'b1)
//				rgb<=3'b000;
//			//else rgb<=3'b111;
			
	/************************************/
	
	assign {Red_Sig,Green_Sig,Blue_Sig}=Ready_Sig?rgb:3'b000;	
//	 assign Red_Sig = Ready_Sig && isRectangle ? 1'b1 : (Ready_Sig && isRectangle1 ? 1'b0 : 1'b0);
//	 assign Green_Sig = Ready_Sig && isRectangle ? 1'b0 : ( Ready_Sig && isRectangle1 ? 1'b0 : 1'b0);
//	 assign Blue_Sig = Ready_Sig && isRectangle ? 1'b1 : (Ready_Sig && isRectangle1 ? 1'b1 : 1'b0);
	 
	/***********************************/

	 
	/***********************************/

endmodule
