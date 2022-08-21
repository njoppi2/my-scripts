#!/bin/bash
nmcli radio wifi on
xhost si:localuser:root

# perceba que é um .sh (obviamente n vai ter .txt), se deixar sem .sh, ele não é executado automaticamente, ai as coisas que precisam de display vao dar erro (no protocol specified)
