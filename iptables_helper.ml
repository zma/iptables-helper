
let read_in_rules filename =
  let chan = open_in filename in
  let rec add_lines acc = 
    try
      let line = input_line chan in
      add_lines (line :: acc)
    with End_of_file ->
      close_in chan;
      List.rev acc
  in
  add_lines []

let rec print_rules rs = 
  List.iter (fun r -> print_endline r) rs

let rec rm_comments rs =
  (** Note: Only recognize lines with 1st char as '#' as comment.
      TODO: support more patterns **)
  List.filter (
    fun r -> if String.length r > 0 && r.[0] = '#' then false else true
  ) rs

let helper file_in =
  file_in
  |> read_in_rules
  |> rm_comments
  |> print_rules

(* start work *)
let () =
  match Sys.argv with
  | [| _; file_in |] -> helper file_in
  | _ -> raise (Invalid_argument "args is wrong. input the filename only")

