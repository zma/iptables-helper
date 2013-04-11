
let read_in_rules filename =
    let lines = ref [] in
    let chan = open_in filename in
    try
        while true; do
            lines := input_line chan :: !lines
        done; []
    with End_of_file ->
        close_in chan;
        List.rev !lines
;;

(* args *)
if Array.length Sys.argv != 2 then
    raise (Invalid_argument "args is wrong. input the filename only")

let filename = Sys.argv.(0)

let rules = read_in_rules filename

