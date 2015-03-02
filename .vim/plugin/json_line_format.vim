python << EOF
import vim
import json
from collections import OrderedDict

def json_line_format_print():
    line_num = vim.current.window.cursor[0]
    try:
        formatted = json.dumps(
                        json.loads(vim.current.line, object_pairs_hook=OrderedDict),
                        ensure_ascii=False, indent=4)
        print formatted
    except Exception as e:
        print e

def json_line_format_write():
    line_num = vim.current.window.cursor[0]
    buff = vim.current.buffer
    try:
        formatted = json.dumps(
                        json.loads(vim.current.line, object_pairs_hook=OrderedDict),
                        ensure_ascii=False, indent=4)
        for i, line in enumerate(formatted.split('\n')):
            buff.append(line, line_num+i)
        vim.command('normal dd')
    except Exception as e:
        print e
EOF

nnoremap jw :python json_line_format_write()<CR>
nnoremap jp :python json_line_format_print()<CR>
