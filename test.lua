-- test mathx library

------------------------------------------------------------------------------
require"mathx"

version="mathx library for ".. _VERSION.." / Aug 2009"
print(version)

print""
function f(x)
 print(x,math.isfinite(x),math.isnan(x),math.isnormal(x),math.fpclassify(x))
end

print("x","finite","nan","normal","fpclassify")
f(0)
f(1/-math.infinity)
f(1/0)
f(0/0)
f(math.infinity)
f(math.nan)
f(3.45)

print""
x=1
while x~=0 do
 y,x=x,x/2
 if not math.isnormal(x) then break end
end
f(y)
f(x)
f(math.nextafter(x,1))
f(math.nextafter(0,1))

while x~=0 do
 y,x=x,x/2
end
f(y)
f(x)

print""
function f(x)
 local a=math.nextafter(x,-1/0)
 local b=math.nextafter(x, 1/0)
 print(a,x,b,x-a,b-x)
end
f(1)
f(0)

print""
print("max",math.fmax(1,math.nan,2), math.max(math.nan,1,2))
print("min",math.fmin(1,math.nan,2), math.min(math.nan,1,2))

print""
print("log2(32)",math.log2(32))
print("exp2(5)","",math.exp2(5))
print("cbrt(2)","",math.cbrt(2))
print("6!","",math.gamma(6+1))
print("hypot(5,12)",math.hypot(5,12))
print("fma(3,2,1)",math.fma(3,2,1))

print""
function f(x)
	print(x,math.floor(x),math.trunc(x),math.round(x),math.ceil(x))
end
print("x","floor","trunc","round","ceil")
f(-1.2)
f(-1.7)
f(1.2)
f(1.7)

print""
function f(x,y)
	print(x,y,x%y,math.remainder(x,y))
end
print("x","y","%","remainder")
f(13,3)
f(13,-3)
f(-13,3)
f(-13,-3)

print""
print(version)
