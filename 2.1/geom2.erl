%%%-------------------------------------------------------------------
%%% @author Colin
%%% @copyright (C) 2016, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 08. Mar 2016 6:31 AM
%%%-------------------------------------------------------------------
-module(geom2).
-author("Colin").

%% API
-export([area/2]).


area(Length, Width) when Length > 0, Width > 0->
  Length * Width;
area(_,_) ->
  "Enter a valid length and width".