;
; @author natgharz
;-----------------------------------------------------------------------------------------------------------------------------------
; DEFENISI DAN SPESIFIKASI TIPE
; DD : integer [1,2,3,4,5,...,31) 
; MM : integer [1,2,3,4,5,6,7,8,9,10,11,12)
; YY : integer > 0
; tanggal (DD,MM,YY)
;----------------------------------------------------------------------------------------------------------------------------------
; DEFENISI DAN SPESIFIKASI SELEKTOR
; Day 	: date -> Hr
; {Day (D) memberikan hari d dari D yang terdiri dari <d,m,y> }
; Month : date -> Bln
; {Month (D) memberikan bulan m dari D yang terdiri dari <d,m,y> }
; Year 	: date -> Thn
; {Year (D) memberikan tahun y dari D yang terdiri dari <d,m,y> } 
;----------------------------------------------------------------------------------------------------------------------------------
; KONSTRUKTOR
; MakeDate : <Hr,Bln,Thn> -> date
;----------------------------------------------------------------------------------------------------------------------------------
; REALISASI
; Nextday (D) :
; 	depend on (Month(D)
; 		Month(D) = 1 or Month(D) = 3 or Month(D) = 5 or Month(D) = 7
; 		or Month(D) = 8 or Month(D) = 10: {Bulan dengan 31 hari }
; 			if Day(D)<31 then MakeDate(Day(D)+1,Month(D),Year(D))
; 				else MakeDate(1,Month(D)+1,Year(D))
; 	Month(D) = 2 : {Februari}
; 			if Day(D)<28 then MakeDate(Day(D)+1,Month(D),Year(D))
; 				else MakeDate(Day(D),Month(D)+1,Year(D))
; 			else if Iskabisat?(Year(D)) then
; 				if Day(D)=28 then MakeDate(Day(D)+1,Month(D),Year(D))
; 					else MakeDate(1,Month(D)+1,Year(D))
; 				else MakeDate(1,Month(D)+1,Year(D))
; 	Month(D) = 4 or Month(D)=6 or Month(D)=9 or Month(D) = 11: {30 hr}
; 		if m<30 then MakeDate(Day(D)+1,Month(D),Year(D))
; 				else MakeDate(Day(D),Month(D)+1,Year(D))
; 	Month(D) = 12 {Desember}
; 		if m<31 then MakeDate(Day(D)+1,Month(D),Year(D))
; 				else MakeDate(1,1,Year(D)+1)
;----------------------------------------------------------------------------------------------------------------------------------
; REALISASI LSP
(defun typeHr(DD)
(if (and (integerp DD) (>= DD 1) (<= DD 31)) T Nil)
)

(defun typeBln(MM)
(if (and (integerp MM) (>= MM 1) (<= MM 12)) T Nil)
)

(defun typeThn(YY)
(if (and (integerp YY) (>= YY 1)) T Nil)
)

(defun typedate(DD MM YY)
	(if (and (typeHr DD)(typeBln MM)(typeThn YY)) T Nil)
)

(defun Day(Date)
	(car Date)
)

(defun Month(Date)
	(car (cdr Date))
)

(defun Year(Date)
	(car (cdr (cdr Date)))
)

(defun makedate(d m y)
	(cond ((typedate d m y) (list d m y)))
)

(defun Nextday(Date)
	(cond 	((and (= (Day Date) 29)(= (Month Date)2) (= (mod (Year Date) 4)0))(list 1 3 (Year Date)))
			((and (= (Day Date) 28)(= (Month Date)2) (not(= (mod (Year Date) 4)0))(list 1 3 (Year Date))))
			((and (= (Day Date) 31)(or (= (Month Date) 1)(= (Month Date) 3)(= (Month Date) 5)(= (Month Date) 7)(= (Month Date) 8)(= (Month Date) 10))(list 1 (+ (Month Date) 1) (Year Date))))
			((and (= (Day Date) 30) (or (= (Month Date) 4) (= (Month Date) 6) (= (Month Date) 9) (= (Month Date) 11))) (list 1 (+ (Month Date) 1) (Year Date)))
			((and (= (Day Date) 31) (= (Month Date) 12)) (list 1 1 (+ (Year Date) 1)))
			(t (list (+ (Day Date) 1) (Month Date) (Year Date)))
	)
)

(defun Yesterday(Date)
	(cond 	((and (= (Day Date) 1) (= (Month Date) 3) (= (mod (Year Date) 4) 0)) (list 29 2 (Year Date)))
			((and (= (Day Date) 1) (= (Month Date) 3) (/= (mod (Year Date) 4) 0)) (list 28 2 (Year Date)))
			((and (= (Day Date) 1) (or (= (Month Date) 2) (= (Month Date) 4) (= (Month Date) 8) (= (Month Date) 6) (= (Month Date) 9) (= (Month Date) 11))) (list 31 (- (Month Date) 1) (Year Date)))
			((and (= (Day Date) 1) (or (= (Month Date) 5) (= (Month Date) 7) (= (Month Date) 10) (= (Month Date) 12))) (list 30 (- (Month Date) 1) (Year Date)))
			((and (= (Day Date) 1) (= (Month Date) 1)) (list 31 12 (- (Year Date) 1)))
			(t (list (- (Day Date) 1) (Month Date) (Year Date)))
	)
)

(defun IsEqD(Date1 Date2)
	(cond ((and (= (Day Date1) (Day Date2) ) (and (= (Month Date1) (Month Date2)) (= (Year Date1) (Year Date2))))'True)
		(t 'False)
	)
)

(defun IsBefore(Date1 Date2)
	(cond ((or (< (Day Date1) (Day Date2) ) (or (< (Month Date1) (Month Date2)) (< (Year Date1) (Year Date2))))'True)
		(t 'False)
	)
)

(defun IsKabisat(a)
(if (or (and (= (mod a 4) 0) (not (= (mod a 100) 0)))
(= (mod a 400) 0)) T NIL)
)

;----------------------------------------------------------------------------------------------------------------------------------
; APLIKASI
; (nextday (makedate DD MM YY)
; (yesterday (makedate DD MM YY)
; (isEqD (makedate D1 )(makedate D2))
; (isBefore (makedate D1)(makedate D2))