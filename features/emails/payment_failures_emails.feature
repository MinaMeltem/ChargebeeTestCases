Feature: Payment Failures Emails
	Scenario: User receives "Payment failed email" when invoice transaction is unseccessful
		Given I am a <user>
		And I have saved payment method in my account
		When chargebee system tries to charge my invoice
		And transaction fails
		Then I receive "Payment Failed" email
		Examples:
		| User		|cd
		| New CA User	|
		| New US User	|
		| Ext. CA User	|
		| Ext. US User	|
		| New US User	|
		| Ext. CA User	|
		| Ext. US User	|
