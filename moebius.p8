pico-8 cartridge // http://www.pico-8.com
version 19
__lua__
c=0

function _update60()
	r1=16+4*sin(time()/5)
	r2=64+4*sin(time()/7)
	f1=abs(sin(time()/4))
	f2=abs(cos(time()/6))
	c=8+8*sin(time()/15)
end

function _draw()
	cls()
	camera(-64,-64)
	for i= -64,64,3+f1 do
		for j= -64,64,3+f2 do

			z = sqrt(i*i+j*j)
			d = cos(z/64-i/128-time()/10)*10*cos(time()/3-z/128)

			if z>r1 and z<r2 then
				pset(d+i+3*cos(time()/4+i/128),j+d+4*sin(time()/3+j/128),abs(sin(i/48*sin(time()/23)+j/48*cos(time()/19)+z))*4+8+c)
			end
		end
	end

end
__gfx__
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00700700000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00077000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00077000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00700700000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
__label__
00000000000000000000000000000000000000000000000000000000000000000000000000e0ee0d000b00f00c00c00000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000d0d00f00c000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000d0dd0f000000000000000b00d00e00000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000e0e00000c00000f00f000c00000000000000000000000000000000000000000
0000000000000000000000000000000000000000000000000000000000000000d000ed0f0f00d000000000000000000000000000000000000000000000000000
0000000000000000000000000000000000000000000000000000000000000c0d00e0000000000000000000000c00e00b00c00000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000b000b0000f00000000000000d00c00000000000000000000000000000000000000000
0000000000000000000000000000000000000000000000000000000000f00e0e00d000000e000c00c00000000000000000f00000000000000000000000000000
00000000000000000000000000000000000000000000000000000000f000000b00f000c0000000000000000000000f00f0000000000000000000000000000000
000000000000000000000000000000000000000000000000000000fff0fc0e00e0000000000000000000000000b0000000000000000000000000000000000000
0000000000000000000000000000000000000000000000000000f0000000000000000000000000000000c00d00000000000000c0000000000000000000000000
000000000000000000000000000000000000000000000000000d00c0b00b0b0000000000000c00f00f00000000000000000e0000000000000000000000000000
0000000000000000000000000000000000000000000000000d000000e0e0d00d000f000b0000000000000000000000b00c000000000000000000000000000000
000000000000000000000000000000000000000000000000ee00f0b0d00000000000000000000000000000000000d00000000000000000000000000000000000
000000000000000000000000000000000000000000000d0f0d000c00000000000000000000000000000000e00e0000000000000b0c0000000000000000000000
000000000000000000000000000000000000000000000e000000e000000000000000000000000000d00b0000000000000000e000000000000000000000000000
0000000000000000000000000000000000000000d0000d00f0f0f000e0000e000d000f000b000c00000000000000000000d00000000000000000000000000000
0000000000000000000000000000000000000000000f0b000c0000000000000000000000000000000000000000000000f000000000f000000000000000000000
00000000000000000000000000000000000f000000c000c0f000000000000000000000000000000000000000000c0f0000000000e00000000000000000000000
000000000000000000000000000000c0000000000b00fe000f00000000000000000000000000000000000000f0000000000000f0000000000000000000000000
000000000000000000000000000000000000000e0f00f00000000f0000d000f000000000000000f000e00e00000000000000d00000000f000000000000000000
0000000000000000000d00000e0000000000f0f000c000000000000000000000000e000f000d000000000000000000000e000000000c00000000000000000000
0000000000000c00000000000000000000000000ce00000000000000000000000000000000000000000000000000000c000000000c0000000000000000000000
00000000000000000000000000000000e00000e0de000e0000d00000000000000000000000000000000000000000d00000000000000000000000000000000000
000000000000000000000000000000000000ee00000000000000000f000000000000000000000000000d000f00f000000000000d000000f00000000000000000
000000000000000000000000000d0000000d00c00000000000000000000c0000f000f000f000e000e00000000000000000000c000000c0000000000000000000
00000000d000000c00000c0000000000f000ee000b000000000000000000000000000000000000000000000000000000000e0000000000000000000000000000
0000000000000000000000000000000000cf0000000000d00000000000000000000000000000000000000000000000000d00000000e000000f00000000000000
000000000000000000000000000f00000e0b000000000000000c0000e000000000000000000000000000f000f00d00f0000000000f00000c0000000000000000
00000000000000000000000000000000e0f00000000000000000000000000c000e000f000f000f000d000000000000000000000e000000000000000000000000
00f0000000000000000000c0000000000f000f00000000000000000000000000000000000000000000000000000000000000f00000000e000000000000000000
0000000000f00000f00000000000000bb000000000c00000d0000000000000000000000000000000000000000000000000e000000000e00000e0000000000000
0000000000000000000000000000e0d0000000000000000000000f0000000b000e000f000e000e000e000e00f000d00e00000000000000000000000000000000
0000000000000000000000000000000f0e00000000000000000000000d000000000000000000000000000000000000000000000000e00000f000000000000000
0000d000000000000000000e00000db0000000c00000000000000000000000000000f000e000c000e00000000000000000000000b00000e00000000000000000
00000000000f000000c000000000ef00000000000000b0000000000000000b000d000000000000000000d000e000e000000d00d000000000000e000000000000
0000000000000000000000000000c00000000000000000000f000d0000b00000000e000d000f00000000000000000000d000000000000b000000000000000000
000000000000000000000000d00fd0e000e0000000000000000000000000000b0e000c000000000c0000e0000000000000000000000f00000e00000000000000
000000000000000000000000000f00000000000f00000000000000000000bc00000000000c00000000000000e0000000000000000c00000f0000000000000000
00000f000000c00000b00000000e00000000000000000e00000000000dcd000e000f0000000000b0000000000000f000e00e00f000000000000f000000000000
000000000000000000000000f00000c0000000000000000000f000f00000000000000000d0000000000d00000000000000000000000000f00000000000000000
00000000000000000000000000f00000000f00000000000000000000de000e0000c000000000e0000000000c00000000000000000000d00000f0000000000000
00000000000000000000000000e0000000000000f0000000000000e000000000000000c0000000000f0000000000d000d000000000c00000000000e000000000
000000e000000f00000c0000ed00000000000000000000d000000cb00000000000000000000b0000000000e0000000000000c00f00000000f000c00000000000
0000000000000000000000000ee000c0000000000000000000f0e0000000000000000f0000000000e0000000000e0000000000000000000f0000000000000000
00000000000000000000000000000000000d0000000000000000c0000000000000000000000000000000000000000000e000000000000f00000c000000000000
0000000000000000000f000ff0000000000000000000000000e00000000000000000000000d0000000000c00000000000000d00c00e00000000000c000000000
0000000f000000d000000000b0e00000000000000d0000e000cf000000000000000000000000000f0000000000e0000000000000000000000d000c0000000000
000000000000000000000000000000e00000000000000000000000000000000000000e000000000000000b0000000000000000000000000e0000000000000000
00000000000000000000000f000000000000e000000000000d000000000000000000000000d00000000000000000000b0000000000000f00000e000000000000
00000000000000000000b0000000000000000000000000000b00000000000000000000000000000c0000000000d000000000e00f000f00000000000e00000000
0000000c000000d00000000000e000000000000000f000c0e00000000000000000000000000000000000d00000000000000000000000000000f00b0000000000
0000000000000000000000de0000000c0000000000000000f0000000000000000000000000b00000000000000000000e0000000000000000d000000000000000
00000000000000000000b0000000000000000c00000000000000000000000000000000000000000d000000000c000000000e0000000000b0000e000e00000000
e000000000000000000000000000000000000000000000be0000000000000000000000000000000000000000000000000000000d000c00000000000000000000
00000000e000000f000000be00c0000f0000000000c0000f0000000000000000000000000c0000000000f000000000b0000000000000000000f00f0000000000
0000000000000000000d000000000000000000000000000000000000000000000000000000000000000000000e000000000d000000000000d000000000000000
0000000000000000000000000000000000000c0000000000000000000000000000000000000000f000000000000000000000000f000f00c00000c00f00000000
e00000000000000000000fd000c000000000000000d000ff000000000000000000000000000000000000e000000000c000000000000000000000000000000000
00000000e000000e0000000f0000000f000000000000000000000000000000000000000000f000000000000000000000000000000000000000e00c0000000000
0000000000000000000d0000000000000000000000000000000000000000000000000000000000f0000000000c000000000d000000000000f000000000000000
000000000000000000000b000000000000000c00000000e00000000000000000000000000000000000000000000000000000000f000d00c00000e00f00000000
f0000000000000000000000b00f000000000000000f00000000000000000000000000000000000000000c000000000f0000000000000000000f00c0000000000
00000000d000000e000e00000000000c000000000000000000000000000000000000000000c000000000000000000000000e0000000000000000000000000000
000000000000000000000000000000000000000000000d000000000000000000000000000000000d000000000d0000000000000c000000000c00d00e00000000
f00000000000000000000f0000f0000000000e000000000ce000000000000000000000000000000000000000000000f000000000000f00e00000000000000000
000000000000000f0000000c000000000000000000d00000000000000000000000000f00000000000000c00000000000000000000000000000f00f0000000000
00000000d0000000000c00000000000b000000000000000000000000000000000000000000f00000000000000b000000000d000000000000c000000000000000
000000000000000000000d000000000000000f00000000f00000000000000000000000000000000c00000000000000000000000d000f00d00000c0e000000000
e00000000000000000000e0000d000000000000000c0000e00000000000000000c0000000000000000000000000000e0000000000000000000d00c0000000000
00000000c000000e000e000e0000000e00000000000000000e0000f000000000000000f0000000000000e0000000000000000000000000000000000000000000
000000000000000000000000000000000000000000000000000000000000000000000000000d00000000000000f00000000f000000000000f00d00d000000000
000000000000000000000d0000e0000000000e00000000f0000b0000000000000000000000000000d0000000000000000000000e000b00e00000b00000000000
0000000000000000000000000000000b0000000000c00000e0000000000000000000000000000000000000000000000f000000000000000000f0000000000000
00000000d000000e000e000e0000000000000000000000000000000000e000c000f000000000000000000c0000000000000e000000000000e00d000000000000
0000000000000000000000000000000000000e000000000000b00000b00000000000000c0000000000000000000000000000000d000c00c00000e00000000000
000000000000000000000ec000c0000e0000000000f000f00000000000000000000000000000d0000000000000e0000000000000000000000e00000000000000
00000000c000000e0000000c00000000000000000000000000000c000000000000000000000000000d0000000000000f0000000000000000f0c0000000000000
0000000000000000000d0000000000000000e000000000000d000000000000000000000000000000000000c0000000000000e00000000f00000e000000000000
000000000000000000000f00000000000000000000d000d00000000000000000b000c0000000000000000000000000000000000e000e00000b00000000000000
00000000d0000000000000f000b000c000000000000000000000f00000000f00000000000c000e0000000000000e0000000000000000000b0e00000000000000
000000000000000f000c0000b00000000000e000000000000000000000d000000000000000000000000000000000000d0000000000000b00e0f0000000000000
00000000000000000000000000000000000000000e00000000e0000000000000000000000000000000d00000000000000000f00d00c00000f000000000000000
0000000c00000000000000e000f000d000000000000000f00000000f0000000000000000000000000000000f0000000000000000000000d000f0000000000000
000000000000000f0000000c00000000000e000000000000000000000000000000c000f00000000000000000000f0000000000000000b00dd000000000000000
0000000000000000000c0000e0000000000000000c00000000000d000000000f0000000000e0000b0000000000000000e000b00f00e00b000000000000000000
000000e00000000000000000000000c000e00000000000e000c000000000f0000000000000000000000f00000000000000000000000000c00000000000000000
00000000000000d0000000e0000e000000000000000000000000000000000000000000000000000000000000f000000000000000000ef00d0000000000000000
00000f0000000000000000000000000000000000c0000000000000000c0000000000000000000000000000000000b000c000b00e0e000e000000000000000000
0000000000000000000f0000d00000f000f0000000000f0000f000e0000000000000d000d000e00000000000000000000000000000bd00c00000000000000000
00000000000000f0000000000c0000000000000b000000000000000000000000f000000000000000b000c0000000000000000000f000f0000000000000000000
0000e00000000000000000e0000f0000000000000000c0000000000000000f00000000000000000000000000e000c000f00e00e00dd000000000000000000000
00000000000000000000e000000000000f0000e0000000000e0000f00f000000000000000000000000000000000000000000000eb0f000000000000000000000
000b000000000f0000000000e00000c000000000000f000000000000000000000000000000000000000000000000000000000e00f00000000000000000000000
00e00000000000000000000000d000000000000000000000f0000000000000000f000e000c000d000d000c00e000c00e00d000f000d000000000000000000000
0000000000000e00000f000f0000b00000d00c0000f0000000000d000c000e00000000000000000000000000000000000000e00d000000000000000000000000
00000000000000000000000000000000000000000000000f0000000000000000000000000000000000000000000000f00ec00c00000000000000000000000000
0000000000000000000000000f00000d000000000f0000000000e0000d000d000f000e000e000e000f00c000b00f0000d00fc0f0000000000000000000000000
00000000000d0000000d00000000c00000000e00000000c0000c00000000000000000000000000000000000000000e00cf000000000000000000000000000000
0000000000b000000000000c0000000000e00000000000000000000f0000c0000000000000000000c000c00d00ce00be000c00e0000000000000000000000000
000000000000000000000000000000e0000000000e000e000f00000000000000f0000f000f00e000000000000d00fe00e0000000000000000000000000000000
000000000b000000000f000000f00000f00000e000000000000000f0000b000f000f000f000c000f00e000de00cc000000000000000000000000000000000000
0000000d0000000000000000c0000000000000000000d000d0000e000c0000000000000000000b000e00bd00ed00e00b00b00000000000000000000000000000
00000000000000000000000000000f00000b00000b0000000000000000000e0000f000e000df000d00e0c00e0000000000000000000000000000000000000000
000000000000000000f000000000000e00000000000000000000c000c000e000f000d000f0000e000f0000000e00c00f00000000000000000000000000000000
000000000000000000000000000e00000000000e00000000c00000000000000e000c00e000e00000000c00e00000000000000000000000000000000000000000
00000000000000000f000000b000000000d0000000000f000000000d000e0000000000000c00d00b000000000000000000000000000000000000000000000000
000000000000000b00000000000000f00000000000f000000000b0000000000000b00d0000000000000000d00f00e00000000000000000000000000000000000
00000000000000f00000000e0000000000000d00000000000e000000000e00e0000000000000d00f00f000000000000000000000000000000000000000000000
0000000000000000000000000000e0000c0000000000000000000000e000000000000b000e000000000000000000000000000000000000000000000000000000
0000000000000000000000000000000000000000c00000b0000000000000000000c0000000000000000000b000e0000000000000000000000000000000000000
00000000000000000000000c0000000e0000f0000000000000000d000000000e0000000000000f00c00d00000000000000000000000000000000000000000000
0000000000000000000000e00000b000000000000000d00000f000000000d000000000000f000000000000000000000000000000000000000000000000000000
0000000000000000000000000000000000e0000d00000000000000000e000000000000d000000000000000000000000000000000000000000000000000000000
00000000000000000000f000000000000000000000000000e000000000000000000d00000000000000000000e000000000000000000000000000000000000000
000000000000000000e000000000b000f00000d0000c00000000000e000000000d000000000000000f000d000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000d000000000000d00c0000000000000000000000000000000000000000000000000
000000000000000000000000000c00000000d0000d00000e00000e000000000000000000e0000000000000000000000000000000000000000000000000000000
00000000000000000000000000e00000d00000000000000000000000000e000000000e0000000000000000000000000000000000000000000000000000000000
000000000000000000000000e0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000e000000b00000f00000e00000f000000000d0000000000000d00b0000000000000000000000000000000000000000000
000000000000000000000000000000000000f000000000000000000000000000d0000000000000b0000000000000000000000000000000000000000000000000
0000000000000000000000000000000c00000000000b00000c00000c0000000000000000000f0000000000000000000000000000000000000000000000000000
00000000000000000000000000000f0000000000b000000000000000000000f000000000e0000000000000000000000000000000000000000000000000000000
000000000000000000000000000000000000e0000000000d00000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000b000000f000000000d000000000000000000000000000000000000000000000000000000000
000000000000000000000000000000000000d0000b00e00000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000000000000000000000000000c0000000000000000f000000c00000000c0000000000f0000000000000000000000000000000000000000000000000

