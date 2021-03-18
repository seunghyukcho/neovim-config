map <F5> :w <CR> :!clear; echo '\n'; g++ --std=c++11 %; if [ -f a.out ]; then if [ -f input ]; then time ./a.out < input; else time ./a.out; fi; rm a.out; fi <CR>
