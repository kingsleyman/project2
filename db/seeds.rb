Registrant.destroy_all
User.destroy_all

Registrant.create([
{
	id: SecureRandom.urlsafe_base64,
	email: "bob@test.com",
	expires_at: Time.now + 4.hours
},
{
	id: SecureRandom.urlsafe_base64,
	email: "bill@test.com",
	expires_at: Time.now + 4.hours
},
{
	id: SecureRandom.urlsafe_base64,
	email: "biff@test.com",
	expires_at: Time.now + 4.hours
}
	])

User.create([
{
	id: SecureRandom.urlsafe_base64,
	name: "John",
	email: "john@test.com",
	password: "123",
	password_confirmation: "123",
},
{
	id: SecureRandom.urlsafe_base64,
	name: "Dave",
	email: "dave@test.com",
	password: "123",
	password_confirmation: "123",
},
{
	id: SecureRandom.urlsafe_base64,
	name: "Lebron",
	email: "lebron@test.com",
	password: "123",
	password_confirmation: "123",
}
	])