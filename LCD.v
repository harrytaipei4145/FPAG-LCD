`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:01:44 12/21/2015 
// Design Name: 
// Module Name:    LCD 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module LCD(input clk,output reg LCD_E,
output reg LCD_RS,
output reg LCD_RW,
output reg SF_D11,
output reg SF_D10,
output reg SF_D9,
output reg SF_D8);


reg [49:0]count;



always @(posedge clk)begin
if(count==400000000)
count<=0;
else
count<=count+1;
end

always @(posedge clk)begin
if(count==0)
LCD_E<=0;
else if(count==750000)begin
LCD_E<=1;
SF_D11<=0;
SF_D10<=0;
SF_D9<=1;
SF_D8<=1;
end
else if(count==750012)begin
LCD_E<=0;
end
else if(count==955012)begin
LCD_E<=1;
SF_D11<=0;
SF_D10<=0;
SF_D9<=1;
SF_D8<=1;
end
else if(count==955024)begin
LCD_E<=0;
end
else if(count==960024)begin
LCD_E<=1;
SF_D11<=0;
SF_D10<=0;
SF_D9<=1;
SF_D8<=1;
end
else if(count==960036)begin
LCD_E<=0;
end
else if(count==962036)begin
LCD_E<=1;
SF_D11<=0;
SF_D10<=0;
SF_D9<=1;
SF_D8<=0;
end
else if(count==962048)begin
LCD_E<=0;
end//initial
else if(count==964048)begin
LCD_E<=1;
LCD_RS<=0;
LCD_RW<=0;
SF_D11<=0;
SF_D10<=0;
SF_D9<=1;
SF_D8<=0;
end
else if(count==964060)begin
LCD_E<=0;
end
else if(count==964110)begin
LCD_E<=1;
LCD_RS<=0;
LCD_RW<=0;
SF_D11<=1;
SF_D10<=0;
SF_D9<=0;
SF_D8<=0;
end

else if(count==964122)begin
LCD_E<=0;
end//function set

else if(count==966122)begin
LCD_E<=1;
LCD_RS<=0;
LCD_RW<=0;
SF_D11<=0;
SF_D10<=0;
SF_D9<=0;
SF_D8<=0;
end
else if(count==966134)begin
LCD_E<=0;
end
else if(count==966184)begin
LCD_E<=1;
LCD_RS<=0;
LCD_RW<=0;
SF_D11<=0;
SF_D10<=1;
SF_D9<=0;
SF_D8<=0;
end

else if(count==966196)begin
LCD_E<=0;
end//mode

else if(count==968196)begin
LCD_E<=1;
LCD_RS<=0;
LCD_RW<=0;
SF_D11<=0;
SF_D10<=0;
SF_D9<=0;
SF_D8<=0;
end
else if(count==968208)begin
LCD_E<=0;
end
else if(count==968258)begin
LCD_E<=1;
LCD_RS<=0;
LCD_RW<=0;
SF_D11<=1;
SF_D10<=1;
SF_D9<=0;
SF_D8<=0;
end

else if(count==968270)begin
LCD_E<=0;
end//display

else if(count==970270)begin
LCD_E<=1;
LCD_RS<=0;
LCD_RW<=0;
SF_D11<=0;
SF_D10<=0;
SF_D9<=0;
SF_D8<=0;
end
else if(count==970282)begin
LCD_E<=0;
end
else if(count==970332)begin
LCD_E<=1;
LCD_RS<=0;
LCD_RW<=0;
SF_D11<=0;
SF_D10<=0;
SF_D9<=0;
SF_D8<=1;
end

else if(count==970344)begin
LCD_E<=0;
end//clear

else if(count==1052344)begin
LCD_E<=1;
LCD_RS<=1;
LCD_RW<=0;
SF_D11<=0;
SF_D10<=0;
SF_D9<=1;
SF_D8<=1;
end
else if(count==1052356)begin
LCD_E<=0;
end
else if(count==1052406)begin
LCD_E<=1;
LCD_RS<=1;
LCD_RW<=0;
SF_D11<=0;
SF_D10<=0;
SF_D9<=0;
SF_D8<=0;
end

else if(count==1052418)begin
LCD_E<=0;
end//display0

else if(count==1054418)begin
LCD_E<=1;
LCD_RS<=0;
LCD_RW<=0;
SF_D11<=1;
SF_D10<=0;
SF_D9<=0;
SF_D8<=0;
end
else if(count==1054430)begin
LCD_E<=0;
end
else if(count==1054480)begin
LCD_E<=1;
LCD_RS<=0;
LCD_RW<=0;
SF_D11<=0;
SF_D10<=0;
SF_D9<=0;
SF_D8<=1;
end

else if(count==1054492)begin
LCD_E<=0;
end//address 01

else if(count==2056492)begin
LCD_E<=1;
LCD_RS<=1;
LCD_RW<=0;
SF_D11<=0;
SF_D10<=0;
SF_D9<=1;
SF_D8<=1;
end
else if(count==2056504)begin
LCD_E<=0;
end
else if(count==2056554)begin
LCD_E<=1;
LCD_RS<=1;
LCD_RW<=0;
SF_D11<=0;
SF_D10<=0;
SF_D9<=1;
SF_D8<=0;
end

else if(count==2056566)begin
LCD_E<=0;
end//display2

else if(count==3058566)begin
LCD_E<=1;
LCD_RS<=0;
LCD_RW<=0;
SF_D11<=1;
SF_D10<=0;
SF_D9<=0;
SF_D8<=0;
end
else if(count==3058578)begin
LCD_E<=0;
end
else if(count==3058628)begin
LCD_E<=1;
LCD_RS<=0;
LCD_RW<=0;
SF_D11<=0;
SF_D10<=0;
SF_D9<=1;
SF_D8<=0;
end

else if(count==3058640)begin
LCD_E<=0;
end//address 02

else if(count==4060640)begin
LCD_E<=1;
LCD_RS<=1;
LCD_RW<=0;
SF_D11<=0;
SF_D10<=0;
SF_D9<=1;
SF_D8<=1;
end
else if(count==4060652)begin
LCD_E<=0;
end
else if(count==4060702)begin
LCD_E<=1;
LCD_RS<=1;
LCD_RW<=0;
SF_D11<=0;
SF_D10<=0;
SF_D9<=0;
SF_D8<=1;
end

else if(count==4060714)begin
LCD_E<=0;
end//display1

else if(count==5062714)begin
LCD_E<=1;
LCD_RS<=0;
LCD_RW<=0;
SF_D11<=1;
SF_D10<=0;
SF_D9<=0;
SF_D8<=0;
end
else if(count==5062726)begin
LCD_E<=0;
end
else if(count==5062776)begin
LCD_E<=1;
LCD_RS<=0;
LCD_RW<=0;
SF_D11<=0;
SF_D10<=0;
SF_D9<=1;
SF_D8<=1;
end

else if(count==5062788)begin
LCD_E<=0;
end//address 03

else if(count==6064788)begin
LCD_E<=1;
LCD_RS<=1;
LCD_RW<=0;
SF_D11<=0;
SF_D10<=0;
SF_D9<=1;
SF_D8<=1;
end
else if(count==6064800)begin
LCD_E<=0;
end
else if(count==6064850)begin
LCD_E<=1;
LCD_RS<=1;
LCD_RW<=0;
SF_D11<=0;
SF_D10<=0;
SF_D9<=0;
SF_D8<=1;
end

else if(count==6064862)begin
LCD_E<=0;
end//display1

else if(count==7066862)begin
LCD_E<=1;
LCD_RS<=0;
LCD_RW<=0;
SF_D11<=1;
SF_D10<=0;
SF_D9<=0;
SF_D8<=0;
end
else if(count==7066874)begin
LCD_E<=0;
end
else if(count==7066924)begin
LCD_E<=1;
LCD_RS<=0;
LCD_RW<=0;
SF_D11<=0;
SF_D10<=1;
SF_D9<=0;
SF_D8<=0;
end

else if(count==7066936)begin
LCD_E<=0;
end//address 04


else if(count==8068936)begin
LCD_E<=1;
LCD_RS<=1;
LCD_RW<=0;
SF_D11<=0;
SF_D10<=0;
SF_D9<=1;
SF_D8<=1;
end
else if(count==8068948)begin
LCD_E<=0;
end
else if(count==8068998)begin
LCD_E<=1;
LCD_RS<=1;
LCD_RW<=0;
SF_D11<=0;
SF_D10<=0;
SF_D9<=1;
SF_D8<=0;
end

else if(count==8069010)begin
LCD_E<=0;
end//display2

else if(count==9071010)begin
LCD_E<=1;
LCD_RS<=0;
LCD_RW<=0;
SF_D11<=1;
SF_D10<=0;
SF_D9<=0;
SF_D8<=0;
end
else if(count==9071022)begin
LCD_E<=0;
end
else if(count==9071072)begin
LCD_E<=1;
LCD_RS<=0;
LCD_RW<=0;
SF_D11<=0;
SF_D10<=1;
SF_D9<=0;
SF_D8<=1;
end

else if(count==9071084)begin
LCD_E<=0;
end//address 05

else if(count==10073084)begin
LCD_E<=1;
LCD_RS<=1;
LCD_RW<=0;
SF_D11<=0;
SF_D10<=0;
SF_D9<=1;
SF_D8<=1;
end
else if(count==10073096)begin
LCD_E<=0;
end
else if(count==10073146)begin
LCD_E<=1;
LCD_RS<=1;
LCD_RW<=0;
SF_D11<=0;
SF_D10<=1;
SF_D9<=1;
SF_D8<=0;
end

else if(count==10073158)begin
LCD_E<=0;
end//display6

else if(count==11075158)begin
LCD_E<=1;
LCD_RS<=0;
LCD_RW<=0;
SF_D11<=1;
SF_D10<=0;
SF_D9<=0;
SF_D8<=0;
end
else if(count==11075170)begin
LCD_E<=0;
end
else if(count==11075220)begin
LCD_E<=1;
LCD_RS<=0;
LCD_RW<=0;
SF_D11<=0;
SF_D10<=1;
SF_D9<=1;
SF_D8<=0;
end

else if(count==11075232)begin
LCD_E<=0;
end//address 06

else if(count==12077232)begin
LCD_E<=1;
LCD_RS<=1;
LCD_RW<=0;
SF_D11<=0;
SF_D10<=0;
SF_D9<=1;
SF_D8<=1;
end
else if(count==12077244)begin
LCD_E<=0;
end
else if(count==12077294)begin
LCD_E<=1;
LCD_RS<=1;
LCD_RW<=0;
SF_D11<=0;
SF_D10<=0;
SF_D9<=0;
SF_D8<=1;
end

else if(count==12077306)begin
LCD_E<=0;
end//display1

else if(count==13079306)begin
LCD_E<=1;
LCD_RS<=0;
LCD_RW<=0;
SF_D11<=1;
SF_D10<=1;
SF_D9<=0;
SF_D8<=0;
end
else if(count==13079318)begin
LCD_E<=0;
end
else if(count==13079368)begin
LCD_E<=1;
LCD_RS<=0;
LCD_RW<=0;
SF_D11<=0;
SF_D10<=0;
SF_D9<=0;
SF_D8<=0;
end

else if(count==13079380)begin
LCD_E<=0;
end//address 40

else if(count==14081380)begin
LCD_E<=1;
LCD_RS<=1;
LCD_RW<=0;
SF_D11<=0;
SF_D10<=0;
SF_D9<=1;
SF_D8<=1;
end
else if(count==14081392)begin
LCD_E<=0;
end
else if(count==14081442)begin
LCD_E<=1;
LCD_RS<=1;
LCD_RW<=0;
SF_D11<=0;
SF_D10<=0;
SF_D9<=0;
SF_D8<=0;
end

else if(count==14081454)begin
LCD_E<=0;
end//display0

else if(count==15083454)begin
LCD_E<=1;
LCD_RS<=0;
LCD_RW<=0;
SF_D11<=1;
SF_D10<=1;
SF_D9<=0;
SF_D8<=0;
end
else if(count==15083466)begin
LCD_E<=0;
end
else if(count==15083516)begin
LCD_E<=1;
LCD_RS<=0;
LCD_RW<=0;
SF_D11<=0;
SF_D10<=0;
SF_D9<=0;
SF_D8<=1;
end

else if(count==15083528)begin
LCD_E<=0;
end//address 41

else if(count==16085528)begin
LCD_E<=1;
LCD_RS<=1;
LCD_RW<=0;
SF_D11<=0;
SF_D10<=0;
SF_D9<=1;
SF_D8<=1;
end
else if(count==16085540)begin
LCD_E<=0;
end
else if(count==16085590)begin
LCD_E<=1;
LCD_RS<=1;
LCD_RW<=0;
SF_D11<=0;
SF_D10<=0;
SF_D9<=1;
SF_D8<=0;
end

else if(count==16085602)begin
LCD_E<=0;
end//display2

else if(count==17087602)begin
LCD_E<=1;
LCD_RS<=0;
LCD_RW<=0;
SF_D11<=1;
SF_D10<=1;
SF_D9<=0;
SF_D8<=0;
end
else if(count==17087614)begin
LCD_E<=0;
end
else if(count==17087664)begin
LCD_E<=1;
LCD_RS<=0;
LCD_RW<=0;
SF_D11<=0;
SF_D10<=0;
SF_D9<=1;
SF_D8<=0;
end

else if(count==17087676)begin
LCD_E<=0;
end//address 42



else if(count==18089676)begin
LCD_E<=1;
LCD_RS<=1;
LCD_RW<=0;
SF_D11<=0;
SF_D10<=0;
SF_D9<=1;
SF_D8<=1;
end
else if(count==18089688)begin
LCD_E<=0;
end
else if(count==18089738)begin
LCD_E<=1;
LCD_RS<=1;
LCD_RW<=0;
SF_D11<=0;
SF_D10<=0;
SF_D9<=0;
SF_D8<=1;
end

else if(count==18089750)begin
LCD_E<=0;
end//display1

else if(count==19091750)begin
LCD_E<=1;
LCD_RS<=0;
LCD_RW<=0;
SF_D11<=1;
SF_D10<=1;
SF_D9<=0;
SF_D8<=0;
end
else if(count==19091762)begin
LCD_E<=0;
end
else if(count==19091812)begin
LCD_E<=1;
LCD_RS<=0;
LCD_RW<=0;
SF_D11<=0;
SF_D10<=0;
SF_D9<=1;
SF_D8<=1;
end

else if(count==19091824)begin
LCD_E<=0;
end//address 43

else if(count==20093824)begin
LCD_E<=1;
LCD_RS<=1;
LCD_RW<=0;
SF_D11<=0;
SF_D10<=0;
SF_D9<=1;
SF_D8<=1;
end
else if(count==20093836)begin
LCD_E<=0;
end
else if(count==20093886)begin
LCD_E<=1;
LCD_RS<=1;
LCD_RW<=0;
SF_D11<=0;
SF_D10<=0;
SF_D9<=0;
SF_D8<=1;
end

else if(count==20093898)begin
LCD_E<=0;
end//display1

else if(count==21095898)begin
LCD_E<=1;
LCD_RS<=0;
LCD_RW<=0;
SF_D11<=1;
SF_D10<=1;
SF_D9<=0;
SF_D8<=0;
end
else if(count==21095910)begin
LCD_E<=0;
end
else if(count==21095960)begin
LCD_E<=1;
LCD_RS<=0;
LCD_RW<=0;
SF_D11<=0;
SF_D10<=1;
SF_D9<=0;
SF_D8<=0;
end

else if(count==21095972)begin
LCD_E<=0;
end//address 44

else if(count==22097972)begin
LCD_E<=1;
LCD_RS<=1;
LCD_RW<=0;
SF_D11<=0;
SF_D10<=0;
SF_D9<=1;
SF_D8<=1;
end
else if(count==22097984)begin
LCD_E<=0;
end
else if(count==22098034)begin
LCD_E<=1;
LCD_RS<=1;
LCD_RW<=0;
SF_D11<=0;
SF_D10<=0;
SF_D9<=1;
SF_D8<=0;
end

else if(count==22098046)begin
LCD_E<=0;
end//display2

else if(count==23000046)begin
LCD_E<=1;
LCD_RS<=0;
LCD_RW<=0;
SF_D11<=1;
SF_D10<=1;
SF_D9<=0;
SF_D8<=0;
end
else if(count==23000058)begin
LCD_E<=0;
end
else if(count==23000108)begin
LCD_E<=1;
LCD_RS<=0;
LCD_RW<=0;
SF_D11<=0;
SF_D10<=1;
SF_D9<=0;
SF_D8<=1;
end

else if(count==23000120)begin
LCD_E<=0;
end//address 45

else if(count==24002120)begin
LCD_E<=1;
LCD_RS<=1;
LCD_RW<=0;
SF_D11<=0;
SF_D10<=0;
SF_D9<=1;
SF_D8<=1;
end
else if(count==24002132)begin
LCD_E<=0;
end
else if(count==24002182)begin
LCD_E<=1;
LCD_RS<=1;
LCD_RW<=0;
SF_D11<=0;
SF_D10<=1;
SF_D9<=1;
SF_D8<=0;
end

else if(count==24002194)begin
LCD_E<=0;
end//display6

else if(count==25004194)begin
LCD_E<=1;
LCD_RS<=0;
LCD_RW<=0;
SF_D11<=1;
SF_D10<=1;
SF_D9<=0;
SF_D8<=0;
end
else if(count==25004206)begin
LCD_E<=0;
end
else if(count==25004256)begin
LCD_E<=1;
LCD_RS<=0;
LCD_RW<=0;
SF_D11<=0;
SF_D10<=1;
SF_D9<=1;
SF_D8<=0;
end

else if(count==25004268)begin
LCD_E<=0;
end//address 46

else if(count==26006268)begin
LCD_E<=1;
LCD_RS<=1;
LCD_RW<=0;
SF_D11<=0;
SF_D10<=0;
SF_D9<=1;
SF_D8<=1;
end
else if(count==26006280)begin
LCD_E<=0;
end
else if(count==26006330)begin
LCD_E<=1;
LCD_RS<=1;
LCD_RW<=0;
SF_D11<=0;
SF_D10<=0;
SF_D9<=0;
SF_D8<=1;
end

else if(count==26006342)begin
LCD_E<=0;
end//display1

else if(count==27008342)begin
LCD_E<=1;
LCD_RS<=0;
LCD_RW<=0;
SF_D11<=1;
SF_D10<=0;
SF_D9<=0;
SF_D8<=0;
end
else if(count==27008354)begin
LCD_E<=0;
end
else if(count==27008404)begin
LCD_E<=1;
LCD_RS<=0;
LCD_RW<=0;
SF_D11<=0;
SF_D10<=0;
SF_D9<=0;
SF_D8<=0;
end

else if(count==27008416)begin
LCD_E<=0;
end//address 00

else if(count==28010416)begin
LCD_E<=1;
LCD_RS<=0;
LCD_RW<=1;
SF_D11<=1;
SF_D10<=0;
SF_D9<=0;
SF_D8<=0;
end
else if(count==28010428)begin
LCD_E<=0;
end
else
LCD_E<=LCD_E;
end

endmodule