hello_world <- "hello world"
is(hello_world)

h <- "hello"
w <- "world"

hw <- paste(h, w)  # 여러 문자열 합치기
hw <- paste(h,w,sep="") # 띄어쓰기 제거하고 합치기
hw <- paste(h,w,sep=",") # , 넣고 합치기

nchar(hw) # 글자 숫자를 알려줌

x <- strsplit(hw, split=" ") #띄어쓰기 기준으로 단어를 분리
x

HW <- "this,is,test"
y <- strsplit(HW, split=",")
y

hw
HW

spacestring <- '    He is here.   '  # 공백 많은 문장 저장
spacestring <- trimws(spacestring)
spacestring

spacestring.mid <- sub(" ","", spacestring) # 대체하기
spacestring.mid
spacestring.mid <- sub(" ","", spacestring.mid)
spacestring.mid

fixsentence <- "T is a programming language"
fixsentence <- gsub("T", "R", fixsentence)  #문장 수정하기
fixsentence


expert <- FALSE
if (expert) 
{
  print("I don't have to learn any more")
}else
{
  print("I need to learn R")
}
