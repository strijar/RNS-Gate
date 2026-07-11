let name = if fields.contains("username") {
    fields["username"]
} else {
    "Stranger"
};

let identity_line = if remote_identity == "" {
    "unknown"
} else {
    remote_identity
};

">Rhai page\n\n" +
"Hello, " + name + ".\n\n" +
"Your identity: " + identity_line + "\n"
