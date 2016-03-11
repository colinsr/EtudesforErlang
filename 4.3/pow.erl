%%%-------------------------------------------------------------------
%%% @author Colin
%%% @copyright (C) 2016, <COMPANY>
%%% @doc
%%% powers
%%% @end
%%% Created : 11. Mar 2016 6:47 AM
%%%-------------------------------------------------------------------
-module(pow).
-author("Colin").

%% API
-export([raise/2]).

-spec(raise(number(), number()) -> number()).

%%  @doc Returns X to the Nth power in a non-tail recursive fashion

raise(_X, N) when N =:= 0 -> 1;
raise(X, N) when N =:= 1 -> X;
raise(X, N) when N > 0   -> X * raise(X, N-1);
raise(X, N)              -> 1.0 / raise(X, abs(N)).