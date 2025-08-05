##~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
##                            Derivitive practice                           ----
##~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#................practice using the function D().................

#create an expression 
my_expression <- expression (5*x^2)

#find the derivitive of the expression with respect to x
my_derivative <- D(expr = my_expression, name = "x")

#evaluate derivitaave at x = 2.8
x <- 2.8

# evaluate!
eval(my_derivative)

#....................another example with D()....................
#find derivitive with respect to x
my_derivative <-D(expr = expression(3.1 * x^4 - 28 * x), name = "x")
my_derivative

#create and store a function
fx <- expression(x^2)

#find the derivative with respect to x
df_dx <- D(expr = fx, name = "x")
df_dx

#....................You Try!....................
#Using the D() function in R:
#1 dg_dz
dg_dz <-D(expr = expression( 2*z^3 - 10.5*z^2 +4.1), name = "z")
dg_dz
#2
dg_dz2 <-D(expr = expression( (2*y^3 + 1)^4 - 8*y^3), name = "y")
dg_dz2

