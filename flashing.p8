pico-8 cartridge // http://www.pico-8.com
version 19
__lua__
function _init()
	n=10
	always = true
	gltch = false
	bpm = 128
	show = -1
end


function _update()

	bps = bpm/60*4
	invbps = 1/bps
	oldcount = count
	count = flr(time()/invbps)
	
	if btnp(4) then always=not always end
	if btnp(5) then gltch = not gltch end

	if btn(0) then n+=1 end
	if btn(1) then n-=1 end

	if btn(2) then show=time() bpm+=1 end
	if btn(3) then show=time() bpm-=1 end
		
	n = max(1,n)
end

function _draw()
		
		cls()
		
		if (count~=oldcount or always) then
			
			for i=-1,n-1 do
				c = flr(rnd(2))
				x = rnd(64)
				y1 = ((128/n)*(i) + time()*10)%(128-128/n)
				y2 = y1+(128/n)*(flr(rnd(4))+1)
				if c==1 then
					rectfill(x,y1,128-x,y2, 7)
				else
					rectfill(0,y1,128,y2, 7)
					rectfill(x,y1,128-x,y2,0)
				end
			end
			
			if gltch then
				for j=0,32 do
					s = flr(rnd(16))
					memcpy(0x6000+flr(rnd(128-s))*64,0x6000+flr(rnd(128-s))*64,64*s)
				end
			end
		
		end
		
		
if (time()-show<0.1) then
	print(bpm)
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
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777700000
77777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777
77777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777
77777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777
77777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777
77777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777
77777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777
77777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777
77777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777
77777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777
77777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777
77777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777
77777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777
77777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777
77777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777
77777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777
77777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777
77777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777
77777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777
77777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777
77777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777
77777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777
77777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777
77777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777
77777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777
77777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777
77000777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777700077
77000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000077
77000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000077
77000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000077
77000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000077
77000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000077
77000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000077
77000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000077
77000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000077
77000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000077
77000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000077
77000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000077
77000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000077
77000000000000000000000000000000000000000000000000000077777777777777777777000000000000000000000000000000000000000000000000000077
77000000000000000000000000000000000000000000000000000077777777777777777777000000000000000000000000000000000000000000000000000077
77000000000000000000000000000000000000000000000000000077777777777777777777000000000000000000000000000000000000000000000000000077
77000000000000000000000000000000000000000000000000000077777777777777777777000000000000000000000000000000000000000000000000000077
77000000000000000000000000000000000000000000000000000077777777777777777777000000000000000000000000000000000000000000000000000077
77000000000000000000000000000000000000000000000000000077777777777777777777000000000000000000000000000000000000000000000000000077
77000000000000000000000000000000000000000000000000000077777777777777777777000000000000000000000000000000000000000000000000000077
77000000000000000000000000000000000000000000000000000077777777777777777777000000000000000000000000000000000000000000000000000077
77000000000000000000000000000000000000000000000000000077777777777777777777000000000000000000000000000000000000000000000000000077
77000000000000000000000000000000000000000000000000000077777777777777777777000000000000000000000000000000000000000000000000000077
77000000000000000000000000000000000000000000000000000077777777777777777777000000000000000000000000000000000000000000000000000077
77000000000000000000000000000000000000000000000000000077777777777777777777000000000000000000000000000000000000000000000000000077
77000000000000000000000000000000000000000000000000000077777777777777777777000000000000000000000000000000000000000000000000000077
77777777777777777777777777700000000000000000000000000000000000000000000000000000000000000000000000000777777777777777777777777777
77777777777777777777777777700000000000000000000000000000000000000000000000000000000000000000000000000777777777777777777777777777
77777777777777777777777777700000000000000000000000000000000000000000000000000000000000000000000000000777777777777777777777777777
77777777777777777777777777700000000000000000000000000000000000000000000000000000000000000000000000000777777777777777777777777777
77777777777777777777777777700000000000000000000000000000000000000000000000000000000000000000000000000777777777777777777777777777
77777777777777777777777777700000000000000000000000000000000000000000000000000000000000000000000000000777777777777777777777777777
77777777777777777777777777700000000000000000000000000000000000000000000000000000000000000000000000000777777777777777777777777777
77777777777777777777777777700000000000000000000000000000000000000000000000000000000000000000000000000777777777777777777777777777
77777777777777777777777777700000000000000000000000000000000000000000000000000000000000000000000000000777777777777777777777777777
77777777777777777777777777700000000000000000000000000000000000000000000000000000000000000000000000000777777777777777777777777777
77777777777777777777777777700000000000000000000000000000000000000000000000000000000000000000000000000777777777777777777777777777
77777777777777777777777777700000000000000000000000000000000000000000000000000000000000000000000000000777777777777777777777777777
77777777777777777777777777700000000000000000000000000777777777777777777777700000000000000000000000000777777777777777777777777777
00000000000000000000000000000000000000000000000000000777777777777777777777700000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000777777777777777777777700000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000777777777777777777777700000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000777777777777777777777700000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000777777777777777777777700000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000777777777777777777777700000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000777777777777777777777700000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000777777777777777777777700000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000777777777777777777777700000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000777777777777777777777700000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000777777777777777777777700000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000777777777777777777777700000000000000000000000000000000000000000000000000000
77777777777777777777777777777777777777777777000000000000000000000000000000000000000077777777777777777777777777777777777777777777
77777777777777777777777777777777777777777777000000000000000000000000000000000000000077777777777777777777777777777777777777777777
77777777777777777777777777777777777777777777000000000000000000000000000000000000000077777777777777777777777777777777777777777777
77777777777777777777777777777777777777777777000000000000000000000000000000000000000077777777777777777777777777777777777777777777
77777777777777777777777777777777777777777777000000000000000000000000000000000000000077777777777777777777777777777777777777777777
77777777777777777777777777777777777777777777000000000000000000000000000000000000000077777777777777777777777777777777777777777777
77777777777777777777777777777777777777777777000000000000000000000000000000000000000077777777777777777777777777777777777777777777
77777777777777777777777777777777777777777777000000000000000000000000000000000000000077777777777777777777777777777777777777777777
77777777777777777777777777777777777777777777000000000000000000000000000000000000000077777777777777777777777777777777777777777777
77777777777777777777777777777777777777777777000000000000000000000000000000000000000077777777777777777777777777777777777777777777
77777777777777777777777777777777777777777777000000000000000000000000000000000000000077777777777777777777777777777777777777777777
77777777777777777777777777777777777777777777000000000000000000000000000000000000000077777777777777777777777777777777777777777777
77777777777777777777777777777777777777777777000000000000000000000000000000000000000077777777777777777777777777777777777777777777
77777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777
77777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777
77777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777
77777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777
77777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777
77777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777
77777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777
77777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777
77777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777
77777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777
77777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777
77777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777
77777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777
77777777777777777777777777777777777777777777770000000000000000000000000000000000007777777777777777777777777777777777777777777777
77777777777777777777777777777777777777777777770000000000000000000000000000000000007777777777777777777777777777777777777777777777
77777777777777777777777777777777777777777777770000000000000000000000000000000000007777777777777777777777777777777777777777777777
77777777777777777777777777777777777777777777770000000000000000000000000000000000007777777777777777777777777777777777777777777777
77777777777777777777777777777777777777777777770000000000000000000000000000000000007777777777777777777777777777777777777777777777
77777777777777777777777777777777777777777777770000000000000000000000000000000000007777777777777777777777777777777777777777777777
77777777777777777777777777777777777777777777770000000000000000000000000000000000007777777777777777777777777777777777777777777777
77777777777777777777777777777777777777777777770000000000000000000000000000000000007777777777777777777777777777777777777777777777
77777777777777777777777777777777777777777777770000000000000000000000000000000000007777777777777777777777777777777777777777777777
77777777777777777777777777777777777777777777770000000000000000000000000000000000007777777777777777777777777777777777777777777777
77777777777777777777777777777777777777777777770000000000000000000000000000000000007777777777777777777777777777777777777777777777
77777777777777777777777777777777777777777777770000000000000000000000000000000000007777777777777777777777777777777777777777777777
77777777777777777777777777777777777777777777770000000000000000000000000000000000007777777777777777777777777777777777777777777777
77777777777777777777777777777777777777777777770000000000000000000000000000000000007777777777777777777777777777777777777777777777
77777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777
77777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777
77777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777
77777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777
77777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777
77777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777
77777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777

