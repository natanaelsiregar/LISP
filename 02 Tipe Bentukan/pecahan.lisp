;
; @author natgharz
;-----------------------------------------------------------------------------------------------------------------------------------
; Defenisi dan Spesifikasi KONSTRUKTOR :
; Nama fungsi : makeP(a, b)
; Konstruktor: makeP(a, b), untuk membentuk pecahan dari dua buah bilangan (a b) dari bilangan integer
;	       dengan a adalah pembilang dan b adalah penyebut
;
; Nama fungsi makePecahan (a,b)
;
; makePecahan :: 2 real --> pecahan
;
; REALISASI LISP
(defun makePecahan(/ a b)
   (cons a (cons b nill))
)
;----------------------------------------------------------------------------------------------------------------------------------
; Defenisi dan Spesifikasi SELEKTOR :
; Nama fungsi pembilang (a)
; Pembilang :: Pecahan --> real
; Pembilang a mengembalikan nilai pecahan dari a

; Nama fungsi penyebut (b)
; Penyebut :: Pecahan --> real
; Penyebut (b) mengembalikan nilai pecahan dari b

; REALISASI
(defun pemb(a)
	(car a)
)

(defun peny(b)
	(car (cdr b))
)
;----------------------------------------------------------------------------------------------------------------------------------
; OPERATOR :
;
; Defenisi dan Spesifikasi
; add p :2 pecahan --->pecahan
; {addp (p1 p2) : depend on (p1 p2)
;	n1/d1 + n2/d2 = (n1*d2 + n2*d1) /d1 * d2}

; REALISASI LISP
(defun addP(p1 p2)
		(/
			(+
				(* (pemb p1) (peny p2)) (* (pemb p2) (peny p1))
				)
				(* (peny p1) (peny p2))
		)
)

(defun subP(p1 p2)
		(/
			(-
				(* (pemb p1) (peny p2)) (* (pemb p2) (peny p1))
				)
				(* (peny p1) (peny p2))
		)
)


(defun mulP (p1 p2)
		(/ 
			(* 
				(pemb p1) (pemb p2)
			) 
				(*(peny p1) (peny p2))
		)
)
	

(defun divP (p1 p2)
		(/ 
			(* 
				(pemb p1) (peny p2)
			) 
				(*(peny p1) (pemb p2))
		)
)	
;----------------------------------------------------------------------------------------------------------------------------------
; Predikat

; Defenisi dan Spesifikasi
; isEqP(p1 p2) : pecahan --->boolean

; REALISASI
(defun isEqP(p1 p2)
	(eq (/ (pemb p1) (peny p1)) (/ (pemb p2) (peny p2)))
)

(defun isEqP(p1 p2)
	(< (/ (pemb p1) (peny p1)) (/ (pemb p2) (peny p2)))
)	