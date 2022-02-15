; Nama			: Natanael Jansudin Siregar
; NIM			: 11S20023
; Nama File		: JmlFx4_023.lsp
;----------------------------------------------------------------------------------------------------------------------------------
; FUNGSI ANTARA
; FX3 		: 1 integer > 0 → 1 integer > 0
; { FX4 (x) menghitung pangkat empat dari x, bilangan integer, dengan menggunakan fungsi pangkat2 yang telah dibuat sebelumnya }
; JML-FX4	: 2 integer > 0 → 1 integer > 0
; { JML-FX4 (x,y) menghitung jumlah pangkat empat dari x dengan pangkat empat dari y }
;----------------------------------------------------------------------------------------------------------------------------------
; REALISASI
; FX2 : x*X
; FX4 : (FX2(X))+(FX2(y))
;----------------------------------------------------------------------------------------------------------------------------------
; REALISASI LISP
(defun FX2 (x)
	(* x x))
(defun FX4 (x)
	(* (FX2 x) (FX2 x)))
(defun JML-FX4 (x y)
	(+ (FX4 x) (FX4 y)))
;----------------------------------------------------------------------------------------------------------------------------------
; APLIKASI
; (JML-FX4 x y)