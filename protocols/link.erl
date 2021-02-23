-module(linker).
-compile(export_all).

fn(X, Y) ->
    _fun = X + Y,
    io:fwrite("~w~n", [_fun]).

while(L) -> while(L, 0).
while([], Acc) -> Acc;

while([_|T], Acc) ->
    io:fwrite("~w~n", [Acc]),
    while(T, Acc + 1).
    
start() -> 
    X = [1,2,3,4,5,6],
    fn(1,2),
    while(X).
