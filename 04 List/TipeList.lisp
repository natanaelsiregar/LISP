; @author natgharz
;----------------------------------------------------------------------------------------------------------------------------------
; 1). Konso { untuk kons bulat kosong }
; Konso(e,L) : menghasilkan sebuah list dari e dan L, dengan e sebagai element pertama dari list L
;----------------------------------------------------------------------------------------------------------------------------------
; REALISASI LISP
(defun Konso(e L)
	(cons e L)
)

; 2). Konsb {untuk kons bulat penuh}
; Konsb (L e) : menghasilkan sebuah list dari L dan e, dengan e sebagai element terakhir dari list L
;----------------------------------------------------------------------------------------------------------------------------------
; REALISASI LISP
(defun Konsb (L e)
	(reverse (cons e (reverse L))
	) 
)

; 3). FirstElmt: List of integer tidak kosong → integer
; {FirstElmt(L) Menghasilkan elemen pertama list L }
;----------------------------------------------------------------------------------------------------------------------------------
; REALISASI LISP
(defun Firstchar (L)
	(car L)
)

; 4). Tail : List of integer tidak kosong → List of integer
; {Tail(L) : Menghasilkan list tanpa elemen pertama list L }
;----------------------------------------------------------------------------------------------------------------------------------
; REALISASI LISP
(defun Tail (L)
	(cdr L)
)

; 5). LastElmt 
; LastElmt : List tidak kosong ( L ) ------> elemen ( e )
; {LastElmt ( L ) Menghasilkan elemen terakhir dari list L }
;----------------------------------------------------------------------------------------------------------------------------------
; REALISASI LISP
(defun LastElmt (L) 
   (car (reverse L))
)

; 6). Head
; Head: List tidak kosong ( L ) -------> elemen ( e )
; {Head ( L ) Menghasilkan list tanpa elemen terkhir list L } 
;----------------------------------------------------------------------------------------------------------------------------------
; REALISASI LISP
(defun Head (L) 
    (reverse (cdr (reverse L))
	)
)

; 7). IsEmpty
;IsEmpty : list -----> boolean
;{IsEmpty ( L ) benar jika list kosong }
;----------------------------------------------------------------------------------------------------------------------------------
; REALISASI LISP
(defun IsEmpty (L) 
    (null L)
) 	

; 8). IsOneElmt 
; IsOneElmt : list -----> boolean 
; {IsOneElmt ( L ) benar jika list L hanya mempunyai satu elemen }
;----------------------------------------------------------------------------------------------------------------------------------
; REALISASI LISP
(defun IsOneElmt (L) 
   (and (not (isempty L)) (isempty(cdr L))
   )
)

; 9). IsEqual
; IsEqual:: point --> boolean
; IsEqual(P1,P2) membuktikan nilai benar jika titik L1 equal dengan L2 adalah titik pusat (0,0).
;----------------------------------------------------------------------------------------------------------------------------------
; REALISASI LISP
(defun IsEqual (L1 L2)
   (equal L1 L2 )
)

; 10). NbElmt.
; Banyaknya elemen 
; NbElmt(L) menghasilkan banyaknya elemen dari list L
;----------------------------------------------------------------------------------------------------------------------------------
; REALISASI LISP
(defun NbElmt (LS)
  (cond ((Null LS) 0) 
		(t (+ 1 (NbElmt (cdr LS))))
  )
)

; 11). ElmtKeN 
; ElmtKeN : integer >= 0,List -----> elemen 
; {ElmtKeN ( N, L ) Mengirimkan elemen list yang ke N ,N <=NbElmt(L) dan N >= 0
;----------------------------------------------------------------------------------------------------------------------------------
; REALISASI LISP
(defun ElmtKeN ( N L )  
   (cond 
       ((=n 1)  (FirstElmt (L) ))
	   (t (ElmtKeN (= n 1 ) (Tail L))) 
	)
)

; 12). Copy
; Copy (L) menghasilkan salinan dari list L.
;----------------------------------------------------------------------------------------------------------------------------------
; REALISASI LISP
(defun Copy (L)
	(cond ((IsEmpty L) 0)
		(t (Konso (FirstElmt L) (Tail L)))
	)
)


 
