u1 = User.create email: 'fake@user.com', password: '12345678'
u2 = User.create email: 'fake2@user.com', password: '12345678'

n1 = Note.create user: u1, title: 'Bootcamp 2 OneBitCode', body: 'Vai ser incrível :)'
n2 = Note.create user: u2, title: 'Aprender Rails', body: 'De maneira fácil :)'

t1 = Tag.create title: 'Rails', user: u1
t2 = Tag.create title: 'React', user: u2

UsersNote.create user: u1, note: n2
UsersNote.create user: u2, note: n1

TagsNote.create tag: t1, note: n1
TagsNote.create tag: t2, note: n2
