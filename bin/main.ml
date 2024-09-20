open Core

let filename_param =
  let open Command.Param in
  anon ("filename" %: string)
  
let do_hash file =
  Md5.digest_file_blocking file |> Md5.to_hex |> print_endline
