; @author natgharz
;----------------------------------------------------------------------------------------------------------------------------------
; DEFENISI DAN SPESIFIKASI
; fac : integer ≥ 0 → integer > 0
; { fac (n) = n! sesuai dengan definisi rekursif factorial}
;----------------------------------------------------------------------------------------------------------------------------------
; REALISASI
; 			n =0 : n! = 1
; 			n ≥ 1 : n! = (n-1) ! * n }
; fac(n) : if n = 0 then {Basis 0}
;				1
; 			else {Rekurens : definisi faktorial}
; 				n * fac (n-1)
;----------------------------------------------------------------------------------------------------------------------------------
; REALISASI LSP
(defun faktorial (n)
    (cond ((= n 0) 1)
        (t (* n (faktorial (- n 1))))
    )
)
;----------------------------------------------------------------------------------------------------------------------------------
; APLIKASI
; (faktorial n)