# なるべくbashの設定を使う
source ~/.bashrc

# 色設定
autoload -U colors; colors

# プロンプト関係
# %n : ユーザ名
# %m : ホスト名
PROMPT="%F{green}%n%f%F{white}@%f%F{cyan}%D %*%f%F{red}%(!.#.$)%f "
# PROMPT2="%n %_%%"
# SPROMPT="%r is correct? [n,y,a,e]: "
RPROMPT="%F{yellow}[%d]%f"

# 補完機能を使用する
autoload -U compinit promptinit
compinit
zstyle ':completion::complete:*' use-cache true
# zstyle ':completion:*:default' menu select true
zstyle ':completion:*:default' menu select=2

# 大文字、小文字を区別せず補完する
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

# 補完でカラーを使用する
autoload colors
zstyle ':completion:*' list-colors "${LS_COLORS}"

# kill の候補にも色付き表示
zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([%0-9]#)*=0=01;31'

# zsh内蔵エディタを使う
autoload -U zcalc
autoload zed

# 予測入力させる
# autoload predict-on
# zle -N predict-on
# zle -N predict-off
# bindkey '^X^P' predict-on
# bindkey '^O' predict-off
# zstyle ':predict' verbose true

# 入力途中の履歴補完を有効化する
autoload history-search-end
zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end

# 入力途中の履歴補完
bindkey "^P" history-beginning-search-backward-end
bindkey "^N" history-beginning-search-forward-end

# インクリメンタルサーチの設定
#bindkey "^R" history-incremental-search-backward
#bindkey "^S" history-incremental-search-forward

# 履歴のインクリメンタル検索でワイルドカード利用可能
bindkey '^R' history-incremental-pattern-search-backward
bindkey '^S' history-incremental-pattern-search-forward

# ヒストリーサイズ設定
HISTFILE=$HOME/.zsh_history
HISTSIZE=1000000
SAVEHIST=1000000
PATH=${PATH}:~/bin

# ヒストリの一覧を読みやすい形に変更
HISTTIMEFORMAT="[%Y/%M/%D %H:%M:%S] "

# 補完リストが多いときに尋ねない
LISTMAX=1000

# "|,:"を単語の一部とみなさない
WORDCHARS="$WORDCHARS|:"

# http://www.ayu.ics.keio.ac.jp/~mukai/translate/zshoptions.html
# タブキーの連打で自動的にメニュー補完
setopt AUTO_MENU
# /foo/barでいきなりcd
setopt AUTO_CD
# "~$var" でディレクトリにアクセス
setopt AUTO_NAME_DIRS
# 補完が/で終って、つぎが、語分割子か/かコマンドの後(;とか&)だったら、補完末尾の/を取る
unsetopt AUTO_REMOVE_SLASH
# 曖昧な補完で、自動的に選択肢をリストアップ
setopt AUTO_LIST
# 変数名を補完する
setopt AUTO_PARAM_KEYS
# プロンプト文字列で各種展開を行なう
setopt PROMPT_SUBST
# サスペンド中のプロセスと同じコマンド名を実行した場合はリジュームする
setopt AUTO_RESUME
# ファイル名の展開でディレクトリにマッチした場合末尾に / を付加する
setopt MARK_DIRS
# 明確なドットの指定なしで.から始まるファイルをマッチ
# rm *で確認
setopt RM_STAR_WAIT
# 行の末尾がバッククォートでも無視する
setopt SUN_KEYBOARD_HACK
# ~hoge以外にマッチする機能を使う
setopt EXTENDED_GLOB
# 補完対象のファイルの末尾に識別マークをつける
setopt LIST_TYPES
# BEEPを鳴らさない
setopt NO_BEEP
# 補完候補など表示する時はその場に表示し、終了時に画面から消す
setopt ALWAYS_LAST_PROMPT
# cd kotaで/home/kotaに移動する
setopt CDABLE_VARS
# クォートされていない変数拡張が行われたあとで、フィールド分割
setopt SH_WORD_SPLIT
# 定義された全ての変数は自動的にexportする
setopt ALL_EXPORT
# ディレクトリ名を補完すると、末尾がスラッシュになる。
setopt AUTO_PARAM_SLASH
# 普通のcdでもスタックに入れる
setopt AUTO_PUSHD
# コマンドのスペルの訂正を使用する
setopt CORRECT
# "*" にドットファイルをマッチ
unsetopt GLOB_DOTS
# 補完候補を詰めて表示
setopt LIST_PACKED
# ディレクトリスタックに、同じディレクトリを入れない
setopt PUSHD_IGNORE_DUPS
# 補完の時にベルを鳴らさない
setopt NO_LIST_BEEP
# ^Dでログアウトしないようにする
unsetopt IGNORE_EOF
# ジョブの状態をただちに知らせる
setopt NOTIFY
# 複数のリダイレクトやパイプに対応
setopt MULTIOS
# ファイル名を数値的にソート
setopt NUMERIC_GLOB_SORT
# リダイレクトで上書き禁止
unsetopt NOCLOBBER
# =以降でも補完できるようにする
setopt MAGIC_EQUAL_SUBST
# 補完候補リストの日本語を正しく表示
setopt PRINT_EIGHT_BIT
# 右プロンプトに入力がきたら消す
setopt TRANSIENT_RPROMPT
# 戻り値が0以外の場合終了コードを表示
unsetopt PRINT_EXIT_VALUE
# echo {a-z}などを使えるようにする
setopt BRACE_CCL
# !!などを実行する前に確認する
setopt HISTVERIFY
# 余分な空白は詰めて記録
setopt HIST_IGNORE_SPACE
# ヒストリファイルを上書きするのではなく、追加するようにする
setopt APPEND_HISTORY
# ジョブがあっても黙って終了する
setopt NO_CHECK_JOBS
# ヒストリに時刻情報もつける
setopt EXTENDED_HISTORY
# 履歴がいっぱいの時は最も古いものを先ず削除
setopt HIST_EXPIRE_DUPS_FIRST
# 履歴検索中、重複を飛ばす
setopt HIST_FIND_NO_DUPS
# ヒストリリストから関数定義を除く
setopt HIST_NO_FUNCTIONS
# 前のコマンドと同じならヒストリに入れない
setopt HIST_IGNORE_DUPS
# 重複するヒストリを持たない
setopt HIST_IGNORE_ALL_DUPS
# ヒストリを呼び出してから実行する間に一旦編集可能
unsetopt hist_verify
# 履歴をインクリメンタルに追加
setopt INC_APPEND_HISTORY
# history コマンドをヒストリに入れない
setopt HIST_NO_STORE
# 履歴から冗長な空白を除く
setopt HIST_REDUCE_BLANKS
# 改行コードで終らない出力もちゃんと出力する
setopt NO_PROMPTCR
# loop の短縮形を許す
setopt SHORT_LOOPS
# 履歴を共有
setopt SHARE_HISTORY
# $0 にスクリプト名/シェル関数名を格納
setopt FUNCTION_ARGZERO
# Ctrl+S/Ctrl+Q によるフロー制御を使わないようにする
setopt NO_FLOW_CONTROL
# コマンドラインでも # 以降をコメントと見なす
setopt INTERACTIVE_COMMENTS
# デフォルトの複数行コマンドライン編集ではなく、１行編集モードになる
unsetopt SINGLE_LINE_ZLE
# 語の途中でもカーソル位置で補完
setopt COMPLETE_IN_WORD
# バックグラウンドジョブが終了したらすぐに知らせる。
setopt NO_TIFY


#ライン操作はEmacsスタイルで行う
bindkey -e

#C-Uで行頭まで削除
bindkey "^U" backward-kill-line

#ttyで省電力のための画面を消す機能を無効化する(xterm)
#setterm -blank 0

#端末設定
#Ctrl+H に 1 文字削除
#stty erase '^H'
#Ctrl+C に割り込み
#stty intr '^C'
# Ctrl+Z にサスペンド
#stty susp '^Z'
