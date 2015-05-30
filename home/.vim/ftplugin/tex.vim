" set tex to latex
let g:tex_flavor = "latex"

" shortcuts for latex environments
inoremap <Leader><Leader>e \begin{enumerate}<CR>\item<CR>\end{enumerate}<UP>
inoremap <Leader><Leader>i \begin{itemize}<CR>\item<CR>\end{itemize}<UP>
inoremap <Leader><Leader>d \begin{description}<CR>\item[]<CR>\end{description}<UP><LEFT>
inoremap <Leader><Leader>t \begin{center}\begin{tabu}{}<CR>\toprule<CR>\midrule<CR>\bottomrule<CR>\end{tabu}\end{center}<ESC><UP><UP><UP><UP>$i
inoremap <Leader><Leader>lt \begin{center}\begin{longtabu}{}<CR>\toprule<CR>\midrule\endhead<CR>\bottomrule<CR>\end{longtabu}\end{center}<ESC><UP><UP><UP><UP>$i
inoremap <Leader>i \item
inoremap <Leader>c<Leader> \chapter{}<LEFT>
inoremap <Leader>s<Leader> \section{}<LEFT>
inoremap <Leader>ss<Leader> \subsection{}<LEFT>
inoremap <Leader>sss<Leader> \subsubsection{}<LEFT>
inoremap <Leader>p<Leader> \paragraph{}<LEFT>


