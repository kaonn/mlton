signature INT_INF =
   sig
      include INTEGER

      val divMod: int * int -> int * int
      val quotRem: int * int -> int * int
      val pow: int * Int.int -> int
      val log2: int -> Int.int
      val orb: int * int -> int
      val xorb: int * int -> int
      val andb: int * int -> int
      val notb: int -> int
      val << : int * Word.word -> int
      val ~>> : int * Word.word -> int
   end

signature INT_INF_EXTRA =
   sig
      include INT_INF

      val areSmall: int * int -> bool
      val bigIntConstant: Int.int -> int
      val gcd: int * int -> int 
      val isSmall: int -> bool
      datatype rep =
	 Small of Word.word
       | Big of Word.word Vector.vector
      val rep: int -> rep
      val size: int -> Int.int
   end
