`timescale 1ns / 1ps
//num1= 11011011
//num2 10101110

module lab3(num1,num2,out1);

input [7:0] num1;
input [7:0] num2;
output [5:0] out1;
//wirelar�m�z�n boyutunu a�a��da assign yapt�ktan sonra elde edece�imiz sonucun boyutuna
//g�re belirleriz..... mesela assign a_result = num[6:5]; //10 sonuc 2 bitlik o y�zden wire [1:0]

wire [1:0] a_result ;
wire [3:0] b_result;
wire [2:0] c_result;
wire [3:0] d_result;
wire [10:0] e_result;
parameter coef =6'b110010; //parametre olusturma parameter isim = bit_sayisi'b10000...

assign a_result = num1[6:5]; //10 , belli bir k�sm� almak istiyorsak num1[x,y] x+1 bitten y+1. bite kadar.. x>y
assign b_result = {2{a_result}}; //1010 , replicate i�lemi i�in {3 {isim } } burada 3 , 3 kez demek
assign c_result =  num1[2:0] ; // 011
assign d_result = num2[3:0]; //1110
assign e_result = {d_result,c_result,b_result}; //concatenate i�in {k��eli parantez aras�na yaz}
assign out1 = e_result / coef;

endmodule