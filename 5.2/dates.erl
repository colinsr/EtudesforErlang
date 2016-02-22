%%%-------------------------------------------------------------------
%%% @author Colin
%%% @copyright (C) 2016, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 22. Feb 2016 7:38 AM
%%%-------------------------------------------------------------------
-module(dates).
-author("Colin").

%% API
-export([date_parts/1]).


date_parts(Date) ->
  DateList = re:split(Date,"[-]",[{return,list}]),
  lists:map(fun(X) -> element(1,{Int, _ } = string:to_integer(X)) end, DateList).
