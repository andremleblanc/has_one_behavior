Noticed an unexpected behavior for a `has_one` relationship with `dependent: :destroy`. It destroys the associated object before running validations on the newly assigned object. It seems desirable to not destroy the existing object if validations will prevent the new object from getting saved.

TODOs:
See if this behavior is the same for `has_many :association, dependent: :destroy`
