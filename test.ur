
fun testRe s =
    case (Regex.match "t 1" s) of
	None => False
      | Some _ => True

fun index () =
    let
	val r = testRe "test 123"
    in
	return <xml>
	  <body>
	    {case r of
		 False => <xml>none</xml>
	       | True => <xml>something</xml>}
	  </body>
	</xml>
    end
