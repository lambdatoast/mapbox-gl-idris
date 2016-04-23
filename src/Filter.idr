module Filter

public export data Op = Eq | NEq | In | NIn

public export data Term value = T Op String value

export Show Op where
  show Eq = "is"
  show NEq = "is not"
  show In = "in"
  show NIn = "not in"

export Show v => Show (Term v) where
  show (T op k v) = k ++ " " ++ (show op) ++ " " ++ show v

negateOp : Op -> Op
negateOp Eq = NEq
negateOp NEq = Eq
negateOp In = NIn
negateOp NIn = In

export
negateTerm : Term v -> Term v
negateTerm (T x y z) = (T (negateOp x) y z)
