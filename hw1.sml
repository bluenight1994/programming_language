(* function 1 *)

fun is_older(d1: int * int * int, d2: int * int * int) =
	if (#1 d1) < (#1 d2) then true
	else
		if (#1 d1) > (#1 d2) then false
		else
			if (#2 d1) < (#2 d2) then true
			else
				if (#2 d1) > (#2 d2) then false
				else
					if (#3 d1) < (#3 d2) then true
					else false


(* function 2 *)

fun number_in_month(xs: (int * int * int) list, month: int) =
	if null xs
	then 0
	else
		if #2 (hd xs) = month
		then 1 + number_in_month((tl xs), month)
		else 0 + number_in_month((tl xs), month)


(* function 3 *)

fun number_in_months(xs: (int * int * int) list, months: int list) = 
	if null months
	then 0
	else
		number_in_month(xs, (hd months)) + number_in_months(xs, (tl months))


(* function 4 *)

fun dates_in_month(dates: (int * int * int) list, month: int) =