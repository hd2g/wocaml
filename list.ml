let basis_url = "https://api.chatwork.com"
;;

let version = "v2"
;;

type methods = Get | Post | Put | Delete
;;

module List = struct
  include List

  let rec unique self =
    let rec unique' ls n =
      match ls with
      | [] -> []
      | h :: t -> if n = h then unique' t n
                  else h :: (unique' t n)
    in
    match self with
    | [] -> []
    | h :: t -> h :: (unique' (unique t) h)
end
;;

let () =
  List.iter print_int (List.unique [3;1;2;3;1;2;3;1;2])
;;
