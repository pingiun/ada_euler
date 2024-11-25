function euler () {
    newstr=$(find src -name 'euler*.adb' | sed 's|src/\(.*\)|"\1"|' | paste -sd ',' | sed 's|\(.*\)|for Main use (\1);|')
    cat > default.gpr <<EOF
project Default is
    for Source_Dirs use ("src");
    for Object_Dir use "obj";
    $newstr
end Default;
EOF
    gprbuild -q && obj/euler$1
}
