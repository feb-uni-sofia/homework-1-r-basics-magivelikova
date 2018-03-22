#a)
x<-c(4,1,1,4)
#b)
y<-c(1,4)
# c) - since y is shorter than x, the elements of y are repeated until y becomes the same length as x and this can only happen if the longer
# vector's length is a multiple of the shorter vector's legth. We get x(4,1,1,4)-y(1,4,1,4)=z(3,-3,0,0)
z <- x-y
#d)
s<-c(x,y)
#e)
rep(s,10)
#f)
rep(s,3)
#g)
seq(7,21)
7:21
#h)
length(seq(7,21))
