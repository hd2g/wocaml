module Endpoints = struct
  module Me = struct
    let make root = root @ ["me"]
  end

  module My = struct
    let make root =
      let root = root @ ["my"] in
      function
      | `Status -> root @ ["status"]
      | `Tasks  -> root @ ["tasks"]
  end

  module Rooms = struct
    let make root =
      let root = root @ ["rooms"] in
      function
      | `Messasges -> root @ ["messages"]
      | `Tasks     -> root @ ["tasks"]
      | `Files     -> root @ ["files"]
      | `Link      -> root @ ["link"]
  end

  module Tasks = struct
  end

  module Files = struct
  end

  module Link = struct
  end
end


module Chatwork = struct
  type t =
    { url: string
    ; version: string
    ; endpoints: string list
    }
end
