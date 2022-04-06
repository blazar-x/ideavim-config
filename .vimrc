"==================基础配置==============================
" '': 在前一次跳转位置与当前位置间切换
" '.: 跳转到之前修改的位置
" <C-a>: 对选中的数字增加1 <C-x>: 对选中的数字减1j 80<C-a>对选中的数字加80

"基础配置--------------------------
set hlsearch      "搜索逐字符高亮
set incsearch     "在输入要搜索的文字时，vim会实时匹配
set ignorecase    "设置忽略大小写
set smartcase     "设置智能匹配大小写，当ignorecase为开启

set nobackup      "从不备份
set noswapfile    "禁止缓存文件生成
set number          "显示行号
"set relativenumber "显示相对行号
set wrap            "字不超过窗口，自动折行
set clipboard^=unnamed,unnamedplus "共享系统剪切板，可跨平台
" 屏幕滚动时在光标上下方保留10行预览代码
set so=10
"开启拼写检查"
set spell

"插件配置--------------------------
"开启简单跳转插件 <leader><leader>s启用搜索字符
set easymotion
"多光标操作
set multiple-cursors
" 启用vim环绕功能 ds cs ys
set surround
" 交换两个文本 cxiw cxiw 交换两个单词"
set exchange
" 开启注释插件gcc注释一行"
set commentary
" 开启文件树
set NERDTree

"==================insert模式映射==============================
"jk回到正常模式
inoremap jk <ESC>
"==================normal模式映射==============================
"设置引导键"
let mapleader =" "

" 这俩键太难按了，映射为vim的j左右大写"
map H ^
map L $
"取消高亮"
nnoremap nl :nohlsearch<CR>
"复制到行尾
nnoremap Y y$
nnoremap ,s <Plug><easymotion-s>

"标签页操作
"向左切换标签页
nnoremap <C-.> gt
"向右切换标签页
nnoremap <C-,> gT
"关闭当前标签页
nnoremap <C-q> :q<CR>
"上移或者下移的时候自动滚动到屏幕中央"
nnoremap j jzz
nnoremap k kzz
