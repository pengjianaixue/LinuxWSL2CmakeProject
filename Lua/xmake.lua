print("Hello word");
if jit then
    print("jit is on")
else
    print("jit is off")
end
local getTime = os.date("%c")
print(getTime)
local shellhandle =  io.popen("ps aux")
print(shellhandle:read("*all"))
print(type(3.125))
print(type("string"))
print(type(true))
if true then
    print("Hello")
end
