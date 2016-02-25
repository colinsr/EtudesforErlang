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
-export([date_parts/1,julian/1]).


date_parts(Date) ->
  DateList = re:split(Date,"[-]",[{return,list}]),
  lists:map(fun(X) -> element(1,{Int, _ } = string:to_integer(X)) end, DateList).

%% @doc The number for the day of the year passed as a string.

-spec(julian(string()) -> number()).

julian(StringDate) ->
  DaysPerMonth = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31],
  [YY,MM,DD] = date_parts(StringDate),
  julian(YY,MM,DD,DaysPerMonth,0).


julian(YY, MM, DD, DaysPerMonth, Acc) when MM > 1 ->
  [CurrentMonth|RemainingMonths] = DaysPerMonth,
  LeapYear = is_leap_year(YY),
  if
    LeapYear, CurrentMonth == 28 -> julian(YY,MM-1,DD,RemainingMonths,Acc+29);
    true -> ok
  end,
  julian(YY,MM-1,DD,RemainingMonths,Acc+CurrentMonth);
julian(_, _, DD, _, Acc) ->
  Acc+DD.

is_leap_year(YY) ->
  (YY rem 4 == 0 andalso YY rem 100 /= 0)
    orelse (YY rem 400 == 0).