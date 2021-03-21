import Plots
@time a = read(Cmd(["ls","-last"]), String)
println(read(Cmd(["ps","aux",]), String))
println(read(Cmd(["tree"]), String))
println(a)
Inta=102
if Inta<=100
    println(Inta)
    end
# testFile = open("test.txt","w")
# for i in 0:100
#     write(testFile,string(i)*"\n")
#     flush(testFile)
# end
# close(testFile)