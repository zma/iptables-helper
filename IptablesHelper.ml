
let read_in_rules filename =
  let lines = ref [] in
  let chan = open_in filename in
    try
      while true do
        lines := input_line chan :: !lines
      done; []
    with End_of_file ->
      close_in chan;
      List.rev !lines
;;

let rec print_rules = function 
    [] -> ()
  | h :: t -> print_string h ; print_string "\n" ; print_rules t
;;

let rec rm_comments = function
    [] -> []
  | h :: t -> if h.[0] = '#' then rm_comments t else h :: (rm_comments t)
;;

let helper file_in =
  let rules_in = read_in_rules file_in in
  let rules = rm_comments rules_in in
    (* print_rules rules;; *)
    print_rules rules
;;

(* start works *)
match Sys.argv with
    [| _; file_in |] -> helper file_in
  | _ -> raise (Invalid_argument "args is wrong. input the filename only")

