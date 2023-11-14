# R 시작하기

print("hello, World!")
print("Welcome")

print("hello, World!"); print("Welcome")

# print("hello, World!"); print("Welcome")

print("Welcome"); 1+1
print("Welcome"); # 1+1

print("Welcome") # print()는 ()의 결과를 출력하는 함수구나....!!

help(print)
?print
?sum
?max
?min
?mean

example(sum)

install.packages("rootSovle")
update.packages("rootSolve")
library(rootSolve)

??ggplot2

# object : 메모리에 올라가는 모든 것

# 데이터 타입

# 변수이름 규칙
a <- 1
A <- 2   # a와 A는 서로 다른 변수임. 즉, R에서는 대/소문자를 구분함.
b <- c(3,4)
a1 <- c(1:10)
b.1 <- rep(3,5)

# 변수이름 규칙에 어긋나는 상황들
2a <- 3 # 변수이름 숫자로 시작X
.2 <- c(9,6)
a-b <- 3

# 변수값 할당 연산자 <-, =
x <- c(1,2,3)
y = c(4,5,6)

sum(x) # cumsum(x) # 누적합 1 2 3 (1, 3, 6)
sum(y) 

mean(x.1 <- c(1,2,3))
x.1

ls() # 메모리에 생성된 모든 객체를 보는 함수

rm(a)  # 객체 a를 메모리에서 지워라.
rm(b,x)
rm(list=ls())  # 모두 지워라.



# 스칼라 : 1차원 값
a <- 3
b <- 4.5
c <- 3/5
print(a)
a

english <- 80
math <- 90
korean <- NA    # NA는 대문자이어야 함. NA는 Not Availalbe의 약자임

is.na(english)
is.na(math)
is.na(korean)

science <- NULL
is.null(science)    #  NULL은 대문자이어야 함. NA와 NULL의 차이를 알아두어야함
science <- 70

d <- "hello"
e <- 'hello'
print(d)
e
nchar(d)
f <- substr(d, 1, 3)
g <- substr(d, 4, nchar(d))
paste(f, g, sep=" T.T ")
paste(f, g, sep="")
paste(f, g, "World!", sep="")

a*2+b-c/a
17 %% 5 # 나머지
17 %/% 5 # 몫

h <- "1"    #    f라는 객체에 "1"이라는 문자를 할당
h+1       #    문자 더하기 숫자는 에러

1+1
"1"+1

# 논리 값 (logic)
T 
TRUE    #  TRUE는 숫자로 표현하면 1, FALSE는 0임
true

F
FALSE

TRUE*TRUE
T*F
F*F

1 > 2
1 == 5/5
3 != 6/2
!T == F

T <- 5; F <- 7    # 에러가 발생하지는 않지만, 되도록이면 이러한 표현은 삼가한다.
rm(T, F)

# 논리 연산
TRUE && TRUE          # &&는 AND 연산자라고 부름
(1 < 2) && (1 < 3)    # and 하나라도 틀리면 F

TRUE && FALSE
(1 < 2) && (1 > 3)

FALSE && FALSE
(1 > 2) && (1 > 3)

TRUE || TRUE          # ||는 OR 연산자라고 부름
(1 < 2) || (1 < 3)    # 하나라도 T면 T

TRUE && FALSE
(1 < 2) || (1 > 3)

FALSE || FALSE
(1 > 2) || (1 > 3)

is.na(korean) || d!="hello"

TRUE && FALSE || FALSE
TRUE || FALSE && FALSE         # &&가 || 보다 우선권을 가짐!!

(TRUE || FALSE) && FALSE         # 괄호를 먼저 계산함!!
((1 < 2) || (1 > 3)) && is.na(english)

TRUE && TRUE || FALSE && FALSE
TRUE && (TRUE || FALSE) && FALSE


# 요소 값 (Factor)
James.gender <- factor("m", c("m", "f"))
Judy.gender <- factor("f", c("m", "f"))

nlevels(James.gender) # level의 개수 
levels(Judy.gender) # level 종류

James.grade <- factor("1", c("1", "2", "3", "4"))
Judy.grade <- factor("2", c("1", "2", "3", "4"))

James.grade + Judy.grade   #  에러. Why? 각 객체가 숫자가 아님

levels(James.grade) <- c("freshmen", "sophomore", "junior", "senior")
James.grade
Judy.grade


# 벡터 : 스칼라 또는 문자를 모아놓은 것

v <- c(1, 3, 5, 6)    # 벡터를 생성하기 위해서는 c()를 사용함
w <- c("a", "b", "c", "d")

names(v) <- w    # names()는 벡터의 각 요소에 이름을 생성
v
names(v) <- NULL
v
names(v) <- c("a", "b", "c")
v
names(v) <- NULL


# 벡터의 접근
v <- c(4,5,23,5,6,7,8,9,4,2)
v[1]
v[-1]
v[2:4]
v[-(2:4)]
v[c(5,7)]
v[-c(5,7)]
v[5,7]
v[v > 7]
length(v)
v[length(v)-2]
max(v)
min(v)
which.max(v)
v[which.max(v)] == max(v)

# 벡터의 연산
u <- c(1, 2, 3, 4, 5)
w <- c(1, 4, 6, 9, 11)

u + w
u + 1
w - u
10 - w
u + c(1,2,7)    # recyling rule in R

7 * u
u * w   # 각 요소끼리 곱
u %*% w   # 벡터 내적(inner product)
w/10
10/w
u/w

sum(u)     # 합
mean(u)    # 평균
var(u)     # 분산
sqrt(var(u))     # 표준편차
sd(u)  # standard deviation(표준편차)

identical(u,w)   # 전체를 비교
u == w             # 벡터 각 요소별로 비교
all(u == w)      # identical(u,w)와 같은 결과임, all(u == w)라고 쓰기를 권장함

intersect(u,w)    # 교집합
union(u,w)        # 합집합
setdiff(u,w)      # 차집합
setdiff(w,u)

4 %in% u    # 4가 벡터 u의 요소인지 판별

(4 %in% u) && (4 %in% w)  # 4가 벡터 u와 벡터 w의 요소인가?
4 %in% intersect(u,w)

# 2가 벡터 u의 요소이고, 벡터 w의 요소는 아닌가? 

2 %in% setdiff(u,w)
(2 %in% u) && !(2 %in% w)

# 벡터 쉽게 생성하기
rm(list=ls())

u <- c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20)
w <- c(1:20)
w <- 1:20      # 20:0, 20:-10, 1:1
all(u == w)

x <- seq(1, 10)
y <- seq(1, 10, by = 0.5)
z <- seq(10, 0, by = -0.5)
y.1 <- seq(1, 12, 5)
y.2 <- seq(1, 12, length.out = 10)

z.1 <- rep(2, 5)
z.2 <- rep(seq(1,3), times=3)
z.3 <- rep(seq(1,3), each=3)
z.4 <- rep(seq(1,3), each=3, times=2)

append(c(1,2), c(3,4))
c(c(1,2),c(3,4))
c(c(1,2),c("3","4"))

# 1에서 부터 10까지 공차가 1인 수열중에서 5보다 작고 8보다 큰 벡터를 만드시오.
x[x < 5]
x[x > 8]
append(x[x < 5], x[x > 8])

# 1에서 부터 10968까지 자연수 중에서, 3의 배수인 수들의 평균과 표준편차를 구하시오.
n <- 1:10968
m <- n[(n %% 3)==0]
mean(m)
sqrt(var(m))

# 리스트 : 스칼라 또는 문자를 혼합해서 모아놓은 것

James.info <- list(name="James", height=188, weight=80, hometown="Seoul")
Judy.info <- list(name="Judy", height=165, weight=51, hometown="Seoul")

James.info
Judy.info

James.info$name
James.info$height
James.info$weight
James.info$hometown

James.info[1]
James.info$hometown == Judy.info$hometown

# 리스트 중첩
James.score <- list(exam = list(mid=90, final=80, grading="B+"))
Judy.score <- list(exam = list(mid=95, final=90, grading="A0"))

James <- append(James.info, James.score)
Judy <- append(Judy.info, Judy.score)

James$exam$mid
James$exam$final

James.points <- James$exam$mid + James$exam$final  #  90+80=170
Judy.points <-Judy$exam$mid + Judy$exam$final      #  95+90=185

# James와 Judy 중 시험점수 합계(중간+기말)가 높은 사람은 누구인가?
c("James","Judy")[which.max(c(James.points,Judy.points))]

# 행렬 만들기
rm(list=ls())

m <- matrix(c(1:8), nrow = 2)
m.1 <- matrix(c(1:8), ncol = 2)

m.2 <- matrix(c(1:8), nrow = 2, byrow=T)
m.3 <- matrix(c(1:8), ncol = 2, byrow=T)

m.4 <- matrix(c(1:10), nrow=4)   # recycling rule
m.5 <- matrix(c(1:10), nrow=4, byrow=T)
m.6 <- matrix(c(1:10), nrow=4, ncol=2, byrow=T)

m.8 <- matrix(, nrow=4, ncol=4)  # null matrix
I <- diag(4)                   # identity matrix (단위행렬)
J <- diag(3,4)                # 대각선 요소가 3인 4x4 대각행렬

# 벡터를 이용한 행렬 만들기
m <- rbind(c(1,5,6), c(8,4,78))
m <- rbind(m, c(2,87,5))

n <- cbind(c(1,5,6), c(8,4,78))
n <- cbind(n, c(2,87,5))

rbind(m,n)
cbind(n,m)

# 행렬 데이터 접근
m <- matrix(seq(1:16), nrow = 4, byrow=T)
m[2, 3]
m[-2, 3]
m[2,- 3]
m[2:3, 1]
m[2:3,-1]
m[-(2:3), 3:4]
m[2,]
m[,2]
m[-2,]
m[,-2]
m[m <= 5]

# m행렬 요소중 5 이하인 요소는 몇개인가?
length(m[m <= 5])

max(m)
which(m >= 10, arr.ind = TRUE)

# m행렬 요소중 가장 큰 수자는 몇번째 요소인가? (행번호 및 열번호)
which(m == max(m), arr.ind = TRUE)

m[1,2] <- 7
m[1,2:3] <- c(100,200)

# 행렬 연산

m <- matrix(c(1:4), byrow=T, ncol=2)
n <- matrix(c(1,1,0,1), byrow=T, ncol=2)

m + n
m - n
m * n   # 각 요소끼리 곱
m %*% n   # 행렬의 곱
n/m   # 각 요소끼리 나누기

nrow(m)
ncol(m)
rowSums(m)     # 행 합
rowMeans(m)    # 행 평균
colSums(m)     # 열 합
colMeans(m)    # 열 평균

t(m)   # t() 전치행렬(transpose matrix)를 구함 # 행과 열을 맞바꾼 행렬
solve(m)   # solve() 역행렬을 구함

m %*% solve(m)
solve(2)

dim(m)   # 행렬의 차원

# 데이터 프레임
df <- data.frame(name = c("James", "Judy", "Donald"),
                 gender = c("M","F", "M"),
                 hometown = c("Seoul", "Samcheok", "New York"),
                 mid = c(90, 95, 60),
                 final = c(80, 90, 50),
                 grades = c("B+", "A0", "F"), stringsAsFactors = FALSE)
df
View(df)
str(df)
names(df)
names(df)[1] <- "First name"
df

df$name
df$grades[2]

# 데이터 프레임에 기존에 없던 열 추가
hw <- c(100, 90, 70)
df$homework <- hw
df

# 데이터 프레임 접근
df$final[2] <- 95
df.1 <- df[c(1,3), ]
df.2 <- df[, c("First name", "mid", "final", "homework", "grades")]
df.3 <- df[, -c(2:3)]

df.2 == df.3

df.2[2 ,c("First name","grades")]
df.2[2 ,c(1,5)]

# df에 각 학생의 중간/기말 성적의 평균을 나타내는 열을 추가하라. 열의 이름은 avg로 하시오.
df$avg <- rowMeans(df[, c("mid", "final")])

# 데이터 프레임 합치기
rm(list=ls())
df.1 <- data.frame(name = c("James", "Judy", "Donald"),
                   gender = c("M","F", "M"),
                   hometown = c("Seoul", "Samcheok", "New York"),
                   mid = c(90, 95, 60),
                   final = c(80, 90, 50),
                   grades = c("B+", "A0", "F"), stringsAsFactors = FALSE)
df.2 <- data.frame(name = c("Lee", "Emma"),
                   gender = c("M","F"),
                   hometown = c("Seoul", "LA"),
                   mid = c(70, 95),
                   final = c(75, 78),
                   grades = c("C+", "B+"), stringsAsFactors = FALSE)

df.3 <- rbind.data.frame(df.1, df.2)
df.3 <- rbind.data.frame(df.3, df.3)

head(df.3)
head(df.3, 3)

tail(df.3)
tail(df.3, 4)

# 타입 판별
a <- c(1,2,3,4,5)
class(a)
is.numeric(a)
is.factor(a)
is.character(a)
is.matrix(a)

class(df.3)
is.data.frame(df.3)

# 타입 변환
x <- c("a", "b", "c")
class(x)

x <- as.factor(x)
x
class(x)

x <- as.character(x)
x

m <- matrix(c(1:9), ncol=3)
m
class(m)

m <- as.data.frame(m)
m

m <- as.matrix(m)
m
colnames(m) <- NULL
m

df.3
str(df.3)
df.3$gender <- as.factor(df.3$gender)
str(df.3)

df.3$gender <- as.character(df.3$gender)
str(df.3)

# 메모리 효율적으로 쓰기
x <- rnorm(50000000)
gc()

# 조건문
if(1 == 2/2) {
  print("true")
  print("Hello World!")
} else {
  print("false")
  print("welcome")
}

if(1 == 3/2) {
  print("true")
  print("Hello World!")
} else {
  print("false")
  print("welcome")
}

x <- "1"
if(is.numeric(x)) {
  print(x + 1)
} else if(is.factor(x)){
  print(as.numeric(x) + 2)
} else {
  print(as.numeric(x) + 3)
}

# else 와 else if 는 선택사항.(즉, 필요할 때만 씀)
if(is.numeric(x)) {
  print(x + 1)
}

if(is.numeric(x)) print(x + 1)

df.1 <- data.frame(name = c("James", "Judy", "Donald"),
                   gender = c("M","F", "M"),
                   hometown = c("Seoul", "Samcheok", "New York"),
                   mid = c(90, 95, 60),
                   final = c(80, 90, 50),
                   grades = c("B+", "A0", "F"), stringsAsFactors = FALSE)
df.2 <- data.frame(name = c("Lee", "Emma"),
                   gender = c("M","F"),
                   hometown = c("Seoul", "LA"),
                   mid = c(70, 95),
                   final = c(75, 78),
                   grades = c("C+", "B+"), stringsAsFactors = FALSE)

df <- rbind.data.frame(df.1, df.2)
str(df)
rm(df.1, df.2); gc()

# 세번째 학생이 남자면 그 학생의 기말시험 점수를 알고 싶다.
if(df$gender[3]=="M") print(df$final[3])

# 두번째 학생의 고향이 서울이면 그 학생의 기말시험 점수를 알고 싶다.
# 그렇지 않으면 그 학생의 중간시험과 기말시험 점수와 평균을를 출력하고 싶다.
if(df$hometown[2]=="Seoul") {
  print(df$final[2])
} else {
  df.exam <- df[2, c("mid", "final")]
  df.exam$avg <- rowMeans(df.exam)
  print(df.exam)
}

# 두번째 학생의 기말시험 점수가 6점 올랐다.
# 성적평가 정책상 중간/기말 평균이 95점 이상이면 A+를 준다.
# df를 수정하라.
df
df[2,"final"] <- df[2,"final"] + 6
df
exam.avg.2 <- rowMeans(df[2,c("mid","final")])
if(exam.avg.2 > 95) df[2,"grades"] <- "A+"
df

# ifelse 조건문
x <- c(1:6)
ifelse(x %% 2 != 0, "odd", "even")

# ifelse를 이용하여 "a", "B", "c", "D", ... , "y", "Z" 를 출력하라.
ifelse(1:length(letters) %% 2 == 0, LETTERS, letters)

# 37이 소수인지 출력
ifelse(0 %in% (37 %% (2:36)), "합성수" , "소수")

# gender 컬럼이 팩터형이 아니면, 팩터형으로 변환하라.
str(df)
ifelse(is.factor(df$gender), Sys.sleep(0), df$gender <- as.factor(df$gender))
str(df)

# 반복문 (for, while, repeat)
for(i in 1:10) {
  print(i)
}

i <- 1
while(i <= 10) {
  print(i)
  i <- i + 1
}

i <- 1
repeat {
  print(i)
  if(i < 10) {
    i <- i + 1
  } else break
}

# 350 부터 489500 까지 자연수 중 7의 배수를 모두 구하라.

for(i in 350:489500) {
  if(i %% 7 == 0) print(i)
}

x <- 350:489500
x[x %% 7 == 0]

system.time(
  for(i in 350:489500) {
    if(i %% 7 == 0) print(i)
  }
)

system.time(print(x[x %% 7 == 0]))
rm(x); gc()

# 되도록 이면 반복문은 피할 것! 어쩔 수 없이 사용해야 된다면 그때 사용할 것!

# 1 부터 12 까지 자연수 중 3의 배수의 평균을 구하라.
x <- rep(0, 12)
for(i in 1:12) {
  if(i %% 3 == 0) x[i] <- i
}
x <- x[x != 0]
mean(x)

x <- 1:12
x <- x[x %% 3 == 0]
mean(x)

# 수학연산
# 사칙연산 모두 가능 (+, -, *, /)
# n %% m  => n을 m으로 나눈 나머지
# n %/% m  => n을 m으로 나눈 몫
# n^m  => n의 m제곱
# exp(n)  => 자연대수 e의 n제곱
# log(n, base=n)  => 밑이 n인 로그, 만약 base를 지정하지 않으면 밑이 e인 자연로그
log(9, 3)
log(9)
log(9, exp(1))
log(exp(1))

# log2(n)  => 밑이 2인 로그
log2(4)

# log10(n)  => 상용 로그
log10(1000)

# sin(x), cos(x), tan(x)
sin(pi/2); cos(2*pi); tan(pi/4)

# 괄호 연산
1:5*2+1
1:(5*2)+1
1:(5*2+1)
1:5*(2+1)
x <- exp(1:5*(2+1))
log(x)

x <- append(seq(1, 100, 3), seq(1, 100, 4))
sum(x); mean(x); var(x); median(x)

# NA(Not Available) 처리
NA && TRUE
NA + 1
x <- c(1, 2, 3, NA)
sum(x)
sum(x, na.rm = TRUE)
mean(x, na.rm = TRUE)
var(x, na.rm = TRUE)
median(x, na.rm = TRUE)
x <- as.numeric(na.omit(x))
x
class(x)

# 함수 (매우 중요!!)
rm(list=ls())

# f(x) = x + 1 을 고려해보자.
f <- function(x) {
  y <- x + 1          # y라는 객체는 f라는 함수에만 정의. 메모리에 생성되지 않음
  return(y)
}
f(1)

g <- function(x) return(x^2)
g(4)

# h(x) = x + y 을 고려해보자. x와 y를 출력하고, x+y와 x-y를 반화하는 함수를 만들어라.
h <- function(x, y) {
  print(paste("x =",x))
  print(paste("y =",y))
  print(paste("x + y =",x+y))
  print(paste("x - y =",x-y))
}
h(10,10)

j <- function(x, y, z=1) x+y+z     # 인자 지정 전달 (z=1)
j(2, 3)
j(2, 3, 7)
j(2, 4)

j1 <- function(x, y, z=-x-y) x+y+z     # 인자 지정 전달 (z=-x-y)
j1(464, 18)

j2 <- function() sum(1:100)
j2()

# d라는 함수는 3차원 좌표평면의 어느 점에서 원점까지 거리를 계산하는 함수이다.
# d라는 함수를 구현하고, 원점에서 부터 점(3,4,5)의 거리를 구하라. (HW)

# 이름, 고향, 중간, 기말을 입력받아 기말/중간 평균 점수가 60점 이상이면 Pass,
# 이하이면 Fail을 반환하는 함수를 만들어라. (HW)

# 중첩함수
f <- function(x, y) {
  x <- x + 5
  g <- function(y, z = 7) return(y + z)
  return(c(x, g(y)))
}
f(15, 3)

# 스코프
n <- 100             # 전역변수 n 선언
f <- function() {
  print(n)
}
f()

f.1 <- function() {
  n <- 1             # 지역변수 n 선언
  print(n)        
}
f.1()               # 함수내부의 지역변수 n이 전역변수 n보다 우선한다.

f.2 <- function(n) {
  print(n)        
}
f.2(1)               # 함수인자의 변수명 n이 전역변수 n보다 우선한다.

f.3 <- function(x) {
  a <- 2
  g <- function(y) {
    print(y + a)
  }
  g(x)
}
f.3(1)

# cat : 출력함수
string1 <- "Hello, World!"
print(string1)
cat(string1)

# print() 는 객체 한개만 출력 가능, cat()은 여러객체 동시에 출력 가능
string2 <- "Welcome!"
print(string1, string2)    # 에러
print(c(string1, string2))
print(paste(string1, string2))  

cat(string1, string2)
cat(string1, string2, "- Prof. Lee")

r1 <- print(paste(string1, string2))  
r2 <- cat(string1, string2)
# cat : 출력함수
string1 <- "Hello, World!"
print(string1)
cat(string1)

# print() 는 객체 한개만 출력 가능, cat()은 여러객체 동시에 출력 가능
string2 <- "Welcome!"
print(string1, string2)    # 에러
print(c(string1, string2))
print(paste(string1, string2))  

cat(string1, string2)
cat(string1, string2, "- Prof. Lee")

r1 <- print(paste(string1, string2))  
r2 <- cat(string1, string2)

# 파이프 %>% 
f <- function(x) x+1
g <- function(y) y^2
f(g(7))

# 파이프는 생각의 방향과 코딩의 방향을 같게 만들어 주는 기술
# 파이프를 사용하기 위한 패키지 로드
install.packages("dplyr")

library(dplyr)

g(7)
7 %>% g
f(g(7))
7 %>% g %>% f

sum(c(2,4,1))
c(2,4,1) %>% sum
c(2,4,1) %>% sum()
c(2,4,1) %>% sum(.)

mean(rep(777,777))
rep(777,777) %>% sd()

a <- c(6,2,9,1,77,66)
sort(a)
a %>% sort

sort(a, decreasing = T)
a %>% sort(., decreasing = T)
a %>% sort(decreasing = T)
T %>% sort(a, decreasing = .)

m <- matrix(c(1,5,
              5,3), byrow = T, ncol=2)
rowSums(m)
m %>% rowSums

a <- c(6,3,1)
b <- c(0,3,9)

sum(union(a, b))
a %>% union(., b) %>% sum
b %>% union(a, .) %>% sum

a %>% union(b) %>% sum

d <- NULL
is.null(d)
d %>% is.null

f1 <- function(x) x+2
4 %>% f1 %% 3

g1 <- function(y, z) y^3+sqrt(z)

2 %>% g1(y=., z=16) %>% f1
2 %>% g1(z=16) %>% f1
2 %>% g1(16) %>% f1

2 %>% 
  g1(16) %>%
  f1

4 %>%
  g1(y=3,.) %>%
  f1

4 %>%
  g1(3,.) %>%
  f1

c("2","7") %>% 
  as.numeric %>% 
  sum %>%
  print

c("2","7") %>% 
  sum %>% 
  as.numeric %>%
  print

c(1,2,3,4) %>%
  matrix(ncol=2) %>% 
  rowSums %>% 
  mean

f2 <- function(x, y, z=1) x+y+z
2, 3 %>% f2
c(2, 3) %>% f2 # 에러: 2,3 벡터가 x에 들어감, y 값 X
c(2, 3) %>% f2(.,.) # 2+2+1 3+3+1
# 함수의 입력이 2개 이상일 경우에는 %>% 를 왠만하면 쓰지 마세요.(권장)

f2 <- function(v, z=1) v[1]+v[2]+z
c(2, 3) %>% f2
c(2, 3) %>% f2(z=8)
c(2, 3) %>% f2(8)

f <- function(x) 3*x^2

# 함수 f(x)를 0에서 부터 1까지 적분해라.
integrate(f, 0, 1)
integrate(f, 0, 1)$value
(f %>% integrate(0,1))$value

f <- function(x) 1/sqrt(2*pi)*exp(-x^2/2)
(f %>% integrate(-Inf, Inf))$value
(f %>% integrate(-Inf, 0))$value

# 함수 f(x)를 x에 대해서 미분해라.
install.packages("Deriv")
library(Deriv)
Deriv(f,"x")
Deriv(sin(x), "x")
f %>% Deriv("x")
f %>% Deriv("x", nderiv = 2) # 3차 도함수

# 함수 g(x,y)=2*x^3+log(y)를 y에 대해서 편미분해라.
g <- function(x,y) 2*x^3+log(y)
Deriv(g,"y")
g %>% Deriv("y", nderiv = 2)
g %>% Deriv("x") %>% Deriv("y")

# 확률변수 X ~ Bin(5, 0.4) 이다. E[X]를 구하라.
Pr <- function(x) choose(5,x)*0.4^x*(1-0.4)^(5-x)
x <- 0:5
Pr(x) %>% sum
(x*Pr(x)) %>% sum

sum(x*dbinom(x,5,0.4))

# 고급 파이프
install.packages("magrittr")
library(magrittr)
iris
iris <- iris

head(iris,10)
iris %>% head
str(iris)

faithful <- faithful
faithful %>% str

# old faithful 간헐천의 분출시간의 평균은?
mean(faithful$eruptions)
faithful %$% mean(eruptions)
faithful$eruptions %>% mean(.)
faithful$eruptions %>% mean

# old faithful 간헐천의 분출주기의 표준편차는?
sd(faithful$waiting)

faithful %$% sd(waiting)

# iris 갯수

iris$Species %>% table

iris %$% table(Species)

# working directory 지정
getwd
setwd
source # 한번에 실행

# 메모리상의 데이터프레임 객체를 csv파일로 워킹 디렉토리에 저장하기
write.csv(faithful, "faithful.csv", row.names = F)
## csv : comma seppard variable 


# 현재 메모리상에 있는 iris라는 데이터 프레임 객체를 워킹 디렉토리에 iris1.csv로 저장하시오.
iris %>% write.csv("iris1.csv", row.names = F)

rm(list=ls())
# 현재 워킹 디렉토리에 있는 iris1.csv라는 파일을 메모리에 올리기
irisdf <- read.csv("iris1.csv", header = T)
str(irisdf)

irisdf1 <- read.csv("iris1.csv", header = F)
irisdf2 <- read.csv("iris1.csv", header = T, stringsAsFactors = F) ## stringsAsFactors = T 쓰지 않기 나중에 바꾸면 됨
str(irisdf2)

class(irisdf$Species) == class(irisdf2$Species)

# irisdf2의 Species 필드를 factor형으로 바꾸시오.
# irisdf2$Species <- as.factor(irisdf2$Species)
irisdf2$Species %<>% as.factor
str(irisdf2)

# 객체의 저장
x <- 1:100
y <- 101:200 %>% as.character
f <- function(x) log(x)

save(x, y, f, file="xyf.RData")
rm(x,y,f)
load("xyf.RData")

# apply 계열 함수(중요함)
rm(list=ls()); gc()

m <- 1:11 %>% matrix(ncol=4, byrow = T)
m

# 행렬 m의 행평균을 구하라.
rowMeans(m)
apply(m, 1, mean) # 벡터 형태로 결과를 반환

1:11 %>%
  matrix(ncol=3, byrow = T) %>%
  apply(1, which.min) %>% 
  max

f1 <- function(x) sum(x)^0

m %>%
  apply(1, f1) %>% 
  max

# 행렬 m의 열합을 구하라.
colSums(m)
apply(m, 2, sum)
m %>%
  rbind(m) %>% 
  dim %>%
  matrix(ncol=2) %>%
  cbind(.,.) %>% 
  apply(2, function(x) x+1) %>% 
  as.character %>% 
  length

# 행렬 m의 열분산을 구하라.
apply(m, 2, var)

# 행렬 m에서 각 행에서 가장 큰 숫자는 몇번째 열인가?
apply(m, 1, which.max)

# for 반복문을 이용하여 행렬 m에서 행평균과 열분산을 출력하라.
for(i in 1:2)
  ifelse(i==1,
         m %>% rowMeans %>% print,
         m %>% apply(i,var) %>% print
  )

iris <- iris
# iris 데이터 프레임에서 각 필드평균을 구하라.(단, Species 필드는 제외)
apply(iris[,-5], 2, mean)
colMeans(iris[,-5])


result <- lapply(iris[,-5], mean)
# lapply는 무조건 열로만 처리함!
m %>% as.data.frame %>% lapply(sum)

str(result)
result$Sepal.Length
unlist(result)

lapply(iris[,-5], mean) %>% unlist

tapply(iris$Sepal.Length, iris$Species, mean)
iris %$%
  tapply(Sepal.Length, Species, mean)

# GPA.csv를 읽어들여서 성별로 학점의 분산을 구하라.
GPA <- read.csv("GPA.csv",header = T,stringsAsFactors = T)
tapply(GPA$gpa, GPA$gender, var)
GPA %$% tapply(gpa, gender, var)

# 데이터 가공
rm(list=ls()); gc()
iris <- iris
summary(iris)

library(dplyr)
select(iris, Sepal.Width, Sepal.Length, Species)
select(iris, c(2,1,5)) %>% head
select(iris, starts_with("Sepal"), 5) %>% head
select(iris, ends_with("Width"), 1) %>% head

iris %>% select(., -Species) %>% head
iris %>% select(-5) %>% head
iris[,-5] %>% head

group_by(iris, Species)
summarise(iris, mean.Sepal.Length = mean(Sepal.Length))
filter(iris, Sepal.Length > 5)

iris %>% 
  select(starts_with("Sepal"), Species) %>%
  filter(Sepal.Length > 5) %>% 
  group_by(Species) %>%
  summarise(Sepal.Length.sd = sd(Sepal.Length),
            Sepal.Width.mean = mean(Sepal.Width),
            Sepal.Length.max = max(Sepal.Length),
            Sepal.Width.min = min(Sepal.Width),
            n = n())

iris %>%
  filter(Sepal.Length > 5) %>% 
  select(starts_with("Sepal"), Species) %>%
  group_by(Species) %>%
  summarise(Sepal.Length.sd = sd(Sepal.Length),
            Sepal.Width.mean = mean(Sepal.Width),
            Sepal.Length.max = max(Sepal.Length),
            Sepal.Width.min = min(Sepal.Width),
            n = n())

iris %>%
  group_by(Species) %>%
  filter(Sepal.Length > 5) %>% 
  select(starts_with("Sepal"), Species) %>%
  summarise(Sepal.Length.sd = sd(Sepal.Length),
            Sepal.Width.mean = mean(Sepal.Width),
            Sepal.Length.max = max(Sepal.Length),
            Sepal.Width.min = min(Sepal.Width),
            n = n())

sample(1:10, 5)
set.seed(22); sample(1:10, 5)

iris %>% 
  group_by(Species) %>%
  sample_frac(0.1)

iris %>% 
  group_by(Species) %>%
  sample_n(6)

sdf <- split(iris, iris$Species)
iris.se <- sdf$setosa
iris.ve <- sdf$versicolor
iris.vi <- sdf$virginica

subset(iris, Species == "setosa")
iris %>% filter(Species == "setosa")

x <- ifelse(rnorm(1000000)>0,"p","n") %>%
  as.factor %>%
  as.data.frame
names(x) <- "v"

system.time(subset(x, v=="p"))
system.time(x %>% filter(v=="p"))

subset(iris, Species == "versicolor") %>% head
iris %>% filter(Species == "versicolor") %>% head

subset(iris, Species == "virginica") %>% head
iris %>% filter(Species == "virginica") %>% head

subset(iris, Species == "setosa" && Sepal.Length > 5) %>% head
iris %>%
  filter(Species == "setosa" && Sepal.Length > 5) %>%
  head

iris %>%
  filter(Species == "setosa" || Sepal.Length > 5) %>%
  head

# iris 데이터프레임에서 Sepal.Length가 5 이상
# 또는 Petal.Width가 2 이하인 데이터를 출력하고,
# 각 종의 갯수를 세시오.

# table 합치기
df.1 <- data.frame(name = c("James", "Judy", "Donald"),
                   mid = c(90, 95, 60))

df.2 <- data.frame(name = c("James", "Judy", "Donald"),
                   final = c(80, 90, 50))

cbind.data.frame(df.1,df.2)
merge(df.1,df.2) # merge: 병합하다

df.1 <- data.frame(name = c("James", "Judy", "Donald"),
                   mid = c(90, 95, 60))

df.2 <- data.frame(name = c("James", "Judy", "Lee"),
                   final = c(80, 90, 50))
df.1
df.2
merge(df.1, df.2) # 공통된 것만 합침
merge(df.1, df.2, all=TRUE)

test1 <- data.frame(id = c(1, 2, 3, 4, 5),
                    midterm = c(60, 80, 70, 90, 85))

test2 <- data.frame(id = c(1, 2, 3, 4, 6),
                    final = c(70, 83, 65, 95, 80))

test1
test2

merge(test1, test2, by="id")
inner_join(test1, test2, by="id") # merge보다 더 빠름 

merge(test1, test2, all=T, by="id")
full_join(test1, test2, by="id")

left_join(test1, test2, by="id") # 왼쪽에 있는 test1을 기준으로 test2f를 join, 1~4까지만 join
right_join(test1, test2, by="id") # 오른쪽에 있는 데이터 유지, test1 병합

total <- test1 %>% left_join(test2, ., by="id")
total$class <- as.factor(c(1,1,2,2,2))
total %<>% select(c(1,4,2,3)) # 1423 순서로 필드를 바꿈 

name <- data.frame(class = as.factor(1:2),
                   prof = c("Lee", "Moon"))

total %>% left_join(name, by="class") # ., 생략

# 정렬
rm(list=ls()); gc()
x <- c(20, 11, 33, 50, 47)
sort(x)
sort(x, decreasing = TRUE)
order(x) # 정렬했을 때 몇번째 숫자인지 
order(x, decreasing = TRUE)

test1 <- data.frame(id = c(1, 2, 3, 4, 5),
                    midterm = c(60, 80, 70, 90, 85))

test2 <- data.frame(id = c(1, 2, 3, 4, 5),
                    final = c(70, 83, 65, 95, 80))

arrange(inner_join(test1, test2, by="id"), midterm)

test1 %>% 
  inner_join(test2, by="id") %>% 
  arrange(desc(final))

# 그래프# 산점도 (scatter plot)
faithful <- faithful
str(faithful)
library(dplyr)
library(magrittr)
plot(faithful)

plot(faithful,
     xlab="분출기간",
     ylab="분출주기")

plot(faithful,xlab="분출기간",ylab="분출주기",
     main="Old Faithful 산점도")

plot(faithful,
     xlab="분출기간",ylab="분출주기",
     main="Old Faithful 산점도",
     col="red")

plot(faithful,xlab="분출기간",ylab="분출주기",
     main="Old Faithful 산점도",
     col="violetred")

colors()
dev.off()

plot(faithful,xlab="분출기간",ylab="분출주기",
     main="Old Faithful 산점도",
     col="violetred", pch=16)

plot(faithful,xlab="분출기간",ylab="분출주기",
     main="Old Faithful 산점도",
     col="violetred", pch=16, cex=3)

par(mfrow=c(2,2))
plot(faithful,xlab="분출기간",ylab="분출주기",
     main="Old Faithful 산점도",
     col="black")

plot(faithful,xlab="분출기간",ylab="분출주기",
     main="Old Faithful 산점도",
     col="red",pch=19)

plot(faithful,xlab="분출기간",ylab="분출주기",
     main="Old Faithful 산점도",
     col="dodgerblue",pch=7, cex=1.5)

plot(faithful,
     main="Old Faithful 산점도",
     col="pink",pch=2, cex=0.5)

par(mfrow=c(1,1))

iris <- iris
plot(iris$Petal.Length, iris$Petal.Width,
     xlab="꽃잎의 길이",
     ylab="꽃잎의 너비",
     main = "붓꽃",pch=16)

plot(iris %>% select(3,4),
     xlab="꽃잎의 길이",
     ylab="꽃잎의 너비",
     main = "붓꽃",pch=16,
     col=iris$Species)
legend("left", legend = levels(iris$Species), 
       pch=16, col=1:3)
legend("right", legend = levels(iris$Species),
       pch=16, col=1:3)

plot(iris %>% select(3,4),
     xlab="꽃잎의 길이",
     ylab="꽃잎의 너비",
     main = "붓꽃",pch=16,
     col=c(rep("blue",50),rep("green",50),rep("orange",50))
)
legend("topleft", legend = levels(iris$Species),
       pch=16, col=c("blue","green","orange"), cex=1.2)

plot(iris %>% select(3,4),
     xlab="꽃잎의 길이",
     ylab="꽃잎의 너비",
     main = "붓꽃",pch=16,
     col=iris$Species)
legend("bottomright",
       legend = c("세토사","버시칼라","버지니카"),
       pch=16, col=1:3, cex=1.2)

# 히스토그램 (histogram)
hist(iris$Sepal.Width)
x <- rnorm(2000,10,4)
hist(x,col="yellow")
hist(x,col="yellow",probability = T)
curve(dnorm(x,10,4),col="red",add=T)

# 상자그림 (box plot)
boxplot(iris$Sepal.Width)
boxplot(Sepal.Width ~ Species, data=iris)
boxplot(Sepal.Width ~ Species, data=iris,
        col=c("red","yellow","blue"))
boxplot(Sepal.Width ~ Species, data=iris,
        col=c("red","yellow","blue"),
        horizontal=T, notch=T)

# 수학식
plot(NA, xlim=c(-3,3), ylim=c(-3,4),
     xlab="x",ylab="y")
abline(v=0)  # v : vertical 수직의
abline(h=0)  # h : horizontal 수평의
points(0,0,col="red",pch=16)

abline(a=1,b=1,col="red")
abline(a=0,b=-1,col="blue",lwd=3)
abline(a=-2,b=3,col="black",lty=4)

curve(-(x-1)^2+5, -3, 4, col="blue")
dev.off()
curve(-(x-1)^2+5, -3, 4, col="blue",
      xlab="x", ylab="y")
abline(v=0,lwd=0.5)
abline(h=0,lwd=0.5)
abline(a=1,b=1,col="red")

curve(sin(x),0,6*pi,col="red",ylab = "f(x)")
abline(v=0,lwd=0.5)
abline(h=0,lwd=0.5)
curve(cos(x),0,6*pi,col="blue",add=T)

plot(NA, xlim=c(0,15), ylim=c(-1.2,1.2),
     xlab="x", ylab="y")
abline(v=0,lwd=0.5)
abline(h=0,lwd=0.5)
curve(sin(x), 0, 2*pi, add = T)
curve(cos(x), 0.5*pi, 2.5*pi, add=T, col="red")

curve(dnorm(x,5,2),-3,13, ylab = "f(x)")
abline(h=0,lwd=0.5)
curve(dnorm(x,5,3),-3,13, add=T, col="red")
curve(dnorm(x,5,4),-3,13, add=T, col="blue")

# log(x)+sqrt(x)=2를 풀어라.
curve(log(x)+sqrt(x),0,5,ylab="")
abline(h=2,col="red",lty=2)

install.packages("rootSolve")
library(rootSolve)
# 방정식의 우변을 항상 0으로 만든다.
# 즉, log(x)+sqrt(x)-2=0
eq <- function(x) log(x)+sqrt(x)-2
uniroot(eq,c(1,3))$root
abline(v=uniroot(eq,c(1,3))$root, col="blue")

eq <- function(x)
  x^2-5*x+6
uniroot.all(eq, c(0,5))

# 연립방정식
#  x + y = 3
# 2x + y = 5

A <- matrix(c(1,1,
              2,1), byrow = T, ncol=2)
b <- c(3,5)
solve(A,b)

# 최대값, 최소값 찾기
f <- function(x) (x-1)^2+3
curve(f, -10,10)
optimize(f,c(-5,5),maximum = F)

f <- function(x) x*(x-2)*(x+3)
curve(f, -5,5)
optimize(f,c(-4,0),maximum = T)
optimize(f,c(1,5),maximum = T)
optimize(f,c(1,5),maximum = T, tol=10^-8)

library(dplyr)
library(magrittr)
library(Deriv)
f <- function(x) return(7^x-11^x-sqrt(77^x-121^x)=0)
eq <- Deriv(f,"x")
curve(f,xlim=c(-2,0))
abline(h=0,col="red",lty=2)
uniroot(f,c(-2,-0))$root
uniroot(f,c(-2,-1))$root

f <- function(x) x^77-77
curve(f,0,2)
uniroot(f,c(0,2))$root

#회귀분석(regression analysis)
library(dplyr)
library(magrittr)

faithful <- faithful
plot(faithful)

set.seed(111)
x1 <- sample(10:90, 250, replace = T)
set.seed(222)
y <- (x1-50)^2/10+20+rnorm(length(x1),0,10)
xy <- data.frame(x1,y)
plot(xy)

# 선형회귀 (linear regression)
rg1 <- lm(waiting ~ eruptions, data=faithful)
rg1
rg1$coefficients
plot(faithful)
abline(rg1, col="red", lwd=3)

rg2 <- lm(y ~ x1, data=xy)
rg2
plot(xy)
abline(rg2, col="red", lwd=3)

xy$x2 <- xy$x1^2
rg3 <- lm(y ~ x1+x2, data=xy)
rg3
curve(262.31027-9.67095*x+0.09709*x^2,
      0,100,add=T,col="blue",lwd=3)

# iris 데이터에서 종속변수를 Petal.Length로 
# 독립변수를 Petal.Width로 하여
# 1. 단순 선형회귀분석을 수행하라.
# 2. 산점도와 회귀직선을 그려라.

df <- iris[,-5]
plot(df[,c(4,3)])
lrg1 <- lm(Petal.Length ~ Petal.Width, data=df)
lrg1
abline(lrg1, col="red")

abline(v=0.8,lty=2)
abline(h=1.084+2.23*0.8,lty=2)

names(df) <- c(paste0("x",1:3),"y")
rg4 <- lm(y ~ ., data = df)
rg4

# df에서 종속변수를 y로 
# 독립변수를 x1, x3 로하여
# 1. 다중 선형회귀분석을 수행하라.
# 2. x1=5.84,x3=3.75 일때 y값을 예측하시오.

df %>% head

lrg2 <- lm(y ~ x1+x3, data=df)
lrg2
prediction <- function(x1,x3)
  -0.008996-0.082218*x1+0.449376*x3
prediction(x1=5.84,x3=3.75)

load("pr3.RData")
plot(pr3, pch=16)
view(pr3)

pr3$x1 <- pr3$x
pr3$x2 <- log(pr3$x)
pr3$x3 <- sqrt(pr3$x)
pr3$x4 <- sin(pr3$x)
pr3$x5 <- cos(pr3$x)


lm(y ~ ., data=pr3[,-1])
prediction <- function(x)
  1.73828-0.01902*x+2.57063*log(x)+0.40346*sqrt(x)+
  2.46624*sin(x)+0.14776*cos(x) 
curve(prediction,0,100,col="red",lty=3,add=T)

# 로지스틱 회귀(logistic regression)
# 설명변수가 이항 범주형(binomial and categorical type) 자료 일때 사용

set.seed(11)
hours <- c(runif(20,0,6), runif(20,5,9)) %>% round(2)
outcomes <- rep(c("fail","pass"),each=20)
rstudy <- data.frame(hours,outcomes)
rstudy$outcomes.number <- ifelse(rstudy$outcomes=="fail",0,1)
plot(rstudy[,c(1,3)])

rg4 <- lm(outcomes.number~hours,data=rstudy)
abline(rg4,lwd=3,col="red")

lrg1 <- glm(outcomes.number~hours, data=rstudy,
            family = "binomial")

coeff <- lrg1$coefficients %>% unname
beta0 <- coeff[1]
beta1 <- coeff[2]
l <- function(x) beta0+beta1*x
pred <- function(x) 1/(1+exp(-l(x)))

curve(pred, min(rstudy$hours), max(rstudy$hours),
      col="blue",lwd=3,add=T)

pred.pf <- function(hours) ifelse(pred(hours) >= 0.5, "pass", "fail")
pred.pf(6)
abline(h=0.5,lty=2)

library(rootSolve)
q0.5 <- uniroot(function(x) pred(x)-0.5,
                c(min(rstudy$hours), max(rstudy$hours)))$root
abline(v=q0.5,lty=3)
text(q0.5,0.2,q0.5 %>% round(3))

# iris 데이터에서 setosa 구분하기
iris <- iris
plot(iris[,-5], col=iris$Species)
plot(iris %>% select(3,1), col=iris$Species,
     pch=16, cex=1.5)
legend("topleft", legend = levels(iris$Species), 
       col = c(1:3), pch = 16, cex=1.5)

plot(iris %>% select(4,1), col=iris$Species,
     pch=16, cex=1.5)
legend("topleft", legend = levels(iris$Species), 
       col = c(1:3), pch = 16, cex=1.5)

iris$is.setosa <- ifelse(iris$Species=="setosa",1,0)
iris %>%
  select(Petal.Length, is.setosa) %>% 
  plot(col=iris$Species,cex=2,pch=16)
legend("topright", legend = levels(iris$Species), 
       col = c(1:3), cex=2,pch=16)
abline(lm(is.setosa~Petal.Length, data=iris),lwd=3,col="red")

lrg2 <- glm(is.setosa~Petal.Length, data=iris,
            family = "binomial")

coeff <- lrg2$coefficients %>% unname
beta0 <- coeff[1]
beta1 <- coeff[2]
pred <- function(x) 1/(1+exp(-beta0-beta1*x))
curve(pred, min(iris$Petal.Length), max(iris$Petal.Length),
      col="blue",lwd=3,add=T)

pred.setosa <- function(Petal.Length) 
  ifelse(pred(Petal.Length)>0.5, "setosa", "not setosa")
pred.setosa(6)
pred.setosa(2.1)
abline(h=0.5,lty=2)

q0.5 <- uniroot(function(x) pred(x)-0.5, c(2, 3))$root
abline(v=q0.5,lty=4)
text(2.3,0,q0.5 %>% round(3))

plot(iris %>% select(3,1), col=iris$Species,pch=16)
legend("topleft", legend = levels(iris$Species),
       col = c(1:3),pch=16)
abline(v=q0.5,lwd=2)

# Sepal.Length 변수로 setosa를 구별하는
# 1. 로지스틱 회귀모형을 제시하시오. 
# 2. 그림으로 표현하시오.
# 3. 어느 붓꽃이 Sepal.Length가 4.6일때,
#    이 꽃은 setosa인지 예측하시오.

# 다중 로지스틱 회귀(multiple logistic regression)
rm(list=ls()); gc(); dev.off()
iris <- iris[-(1:50),]
plot(iris[,-5], col=iris$Species, pch=16)
iris$is.virginica <- ifelse(iris$Species=="virginica",1,0)
plot(iris %>% select(starts_with("Petal")),
     col=iris$Species,pch=16)
legend("topleft", legend = levels(iris$Species)[2:3], 
       col = c(2,3), pch=16)

mlrg1 <- glm(is.virginica ~ Petal.Length+Petal.Width, iris, 
             family = "binomial")

coeff <- mlrg1$coefficients %>% unname
beta0 <- coeff[1]
beta1 <- coeff[2]
beta2 <- coeff[3]
pred <- function(x1,x2) 1/(1+exp(-beta0-beta1*x1-beta2*x2))
pred.virginica <- function(x1, x2) {
  prob <- pred(x1,x2) %>% print
  ifelse(prob > 0.5, return("virginica"), return("not virginica"))
}

plot(iris %>% select(starts_with("Petal")),
     col=iris$Species,pch=16)

pred.virginica(6,2)
pred.virginica(5,1.5)
pred.virginica(3,1)


##################################################3

library(dplyr)
library(magrittr)
library(nnet)

# 인공신경망 개념 설명
# 인공신경망 (artificial neural network)
# 1. 데이터 생성
rm(list=ls()); gc()
x <- seq(1,20, length.out = 100)
y <- seq(27,81, length.out = 100)
xyz <- data.frame(x,y,z=x^2+5*y)

# 2. 훈련 데이터와 검증 데이터 분리
samp <- sample(1:nrow(xyz), nrow(xyz)*0.7)
xyz.train <- xyz[samp, ]
xyz.test <- xyz[-samp, ]

nn1 <- nnet(xyz.train[,-3], xyz.train[,3], size=50, maxit=10000, linout=T)
# nn1 <- nnet(z ~ ., data = xyz.train, size=50, maxit=10000, linout=T)
z.prediction <- predict(nn1, xyz.test[,-3])
data.frame(xyz.test, z.prediction)

#########################################

# 인공신경망 학습을 통한 곡선찾기
x <- c(0,sort(10*runif(40)))
y <- sin(2*x)+cos(3*x)
plot(x, y, pch=16)

# 실제곡선
f <- function(x) sin(2*x)+cos(3*x)
plot(f, 0, 10, add=T, lwd=2, col="blue")

nn2 <- nnet(x, y, size=20, maxit=20000, linout=TRUE)
x1 <- seq(0, 10, by=0.1)
lines(x1, predict(nn2, data.frame(x=x1)), col="red", lwd=2)

# 인공신경망 학습을 통한 iris의 종 분류
iris <- iris
summary(iris)
iris.train <- iris %>% 
  group_by(Species) %>% 
  sample_frac(0.7) %>% 
  as.data.frame
iris.test <- setdiff(iris, iris.train)

nn3 <- nnet(Species ~., data=iris.train, size=20, maxit=10000, linout=F)
Species.prediction <- predict(nn3, iris.test[,-5], type="class") %>% as.factor
iris.test %>% cbind.data.frame(Species.prediction)

#########################################
# (실습 2) -2.75, 0, 654.102 를 입력하여 
# 양수, 음수, 영을 판별하는 신경망을 만들어라.

#########################################

# Spiral data
load("spiral.Rdata")
str(spiral)
plot(spiral[-3], pch=16,
     col=spiral$color %>% as.character)

test <- data.frame(x=NA, y=NA)
for(i in 1:10000){
  set.seed(i)
  test[i,] <- runif(2,-1,1)
}

plot(test,xlim=c(-1,1),ylim=c(-1,1),
     xlab="x", ylab="y",pch=16)

nn4 <- nnet(color~., data=spiral, 
            size=20, maxit=10000,
            linout=F)
points(test,pch=16, col=predict(nn4, test, type="class"))

#########################################
# 배타적 논리합 대한 신경망을 만들시오.
rm(list=ls()); gc(); dev.off()
xor <- data.frame(x = c(0,0,1,1),y=c(0,1,0,1))
xor$z <- xor %$% ifelse(x==y,0,1) %>% as.factor
plot(xor$x, xor$y, col=xor$z, pch=16, cex=2,
     xlab="X", ylab = "Y", main = "배타적 논리합")

nn6 <- nnet(z ~ ., data = xor, 
            size=10, maxit=100,
            linout=F)
predict(nn6, xor[,1:2], type="class")

test <- data.frame(x=NA, y=NA)
for(i in 1:10000){
  set.seed(i)
  test[i,] <- runif(2,0,1)
}
points(test,pch=16, cex=2,
       col=predict(nn6, test, type="class") %>% as.factor)
