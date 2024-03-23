module Disposable = struct
  type t
end

module ExtensionContext = struct
  type t

  external subscriptions : t -> Disposable.t array = "subscriptions" [@@mel.get]
end

module Commands = struct
  external registerCommand : string -> ('a array -> unit) -> Disposable.t
    = "registerCommand"
  [@@mel.scope "commands"] [@@mel.module "vscode"]

  external executeCommands : string -> 'a array -> unit = "executeCommands"
  [@@mel.scope "commands"] [@@mel.module "vscode"] [@@mel.variadic]
end

module Window = struct
  external showInformationMessage : string -> unit = "showInformationMessage"
  [@@mel.scope "window"] [@@mel.module "vscode"]
end
