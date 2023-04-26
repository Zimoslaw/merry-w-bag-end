(define
	(domain merry-w-bag-end)
	(:requirements :adl)
	(:types room color puzzle position)
	(:predicates
		(neighbor ?r1 ?r2 - room ?c - color)
		(room-has-color ?r - room ?c - color)
		(merry-in-room ?r - room)
        (merry-has-color ?c - color)

		(at ?p - puzzle ?y - position)
        (next-to ?l1 ?l2 - position)
        (empty ?l)
	)

	(:action wez
		:parameters (?ball - color)
		:precondition
        (exists (?r - room)
            (and
                (merry-in-room ?r)
                (room-has-color ?r ?ball)
            )
        )
		:effect
        (and
            (not (room-has-color ?r ?ball))
            (merry-has-color ?ball)
        )
	)

	(:action idz
		:parameters (?target - room)
		:precondition
        (exists (?r - room ?c - color)
            (and
                (neighbor ?r ?target ?c)
                (merry-in-room ?r)
                (merry-has-color ?c)
            )
        )
		:effect
		(and
            (not (merry-in-room ?r))
			(merry-in-room ?target)
            (not (merry-has-color ?c))
		)
	)
	(:action przesun
		:parameters (?p - puzzle)
		:precondition
		(and
			(merry-in-room A)
			(exists (?l1 ?l2 - position)
				(and
					(at ?p ?l1)
					(next-to ?l1 ?l2)
					(empty ?l2)
				)
			)
		)
		
		:effect
		(and
			(not (at ?p ?l1))
			(not (empty ?l2))
			(empty ?l1)
			(at ?p ?l2)
		)
	)
)