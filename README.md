# VSCode Hello World Sample in OCaml

Welcome to the VSCode Hello World sample in OCaml! This sample project demonstrates how to use the VS Code API with OCaml, providing a simple template for creating your own VSCode extensions in OCaml.

This sample uses [Melange](https://github.com/melange-re/melange) to compile OCaml code to JavaScript. The bindings necessary to interact with the VSCode API are located in `src-bindings/vscode.ml`, while the extension's logic resides in `src/extension.ml`. Once compiled, the JavaScript output (`extension.js`) is promoted from the build directory to the source tree, where it's utilized by the `launch.json` configuration to run the extension.

## Getting Started

### Prerequisites

Ensure that you have opam installed on your system.

### Setup

Create a new opam switch with the latest version of the compiler and Melange:

```
opam switch create . 5.1.1 --no-install
opam install melange
```

You probably want to install some of the [OCaml Platform developer tools](https://ocaml.org/docs/platform) as well:

```
opam install ocamlformat ocaml-lsp-server
```

### Running the Extension

You can build the project using:

```
eval $(opam env)
dune build
```

To run the extension, follow these steps:

1. Open the project in Visual Studio Code.
2. Go to the 'Run and Debug' panel in VSCode.
3. Select the "Run Extension" launch target.
4. The extension will now activate in a new VSCode window.

To test the extension, try running the "Hello World" command, you should see a notification with the "Hello World" message.

## Extending the Extension

To extend this extension or modify its functionality:

- **VSCode API Bindings:** The bindings to the VSCode API are located in `src-bindings/vscode.ml`. You can extend or modify these bindings as needed for more advanced features. Read [Melange's documentation](https://melange.re/v3.0.0/communicate-with-javascript/) to learn how to write bindings.
- **Extension Logic:** The core logic of the extension is in `src/extension.ml`. This is where you can add new commands, listeners, or any other functionalities you want your extension to have.

Happy Hacking!
