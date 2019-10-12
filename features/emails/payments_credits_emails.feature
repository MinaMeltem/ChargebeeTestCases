Feature: Payments & Credits
	Scenario Outline: User receives confrimation email after One-time AddOn item charged from his account via Chargebee or Rocket system
	  Given I'm a business agent
		And I have a <user> account with valid payment method
		And I added one-time charge <addon item> in the account via <system>
		When payment is sucessful
		And invoice status is "Paid"
		Then user should receive "Your payment was successful" email from Chargebee

		Examples:
		|   User	| AddOn item		| system	|
		| New CA User	| Blanket Purchase 	| Chargebee UI	|
		| New US User	| Busy Day Fee		| Chargebee UI	|
		| Ext. CA User	| Appointment Fee	| Chargebee UI	|
		| Ext. US User	| Mattress Bag Fee	| Chargebee UI	|
		| New CA User	| Blanket Purchase 	| Rocket	|
		| New US User	| Busy Day Fee		| Rocket	|
		| Ext. CA User	| Appointment Fee	| Rocket	|
		| Ext. US User	| Mattress Bag Fee	| Rocket	|


	Scenario Outline: User receives confrimation email after one-time custom payment charged by using AddCharge in chargebee system
		Given I'm a business agent
		And I have a <user> account with valid payment method
		And I charged one-time custom payment from the account via "Add Charge" menu in chargebee UI
		When payment is sucessful
		And invoice status is "Paid"
		Then user should receive "Your payment was successful" email from Chargebee

		Examples:
		| User		|
		| New CA User	|
		| New US User	|
		| Ext. CA User	|
		| Ext. US User	|
		| New US User	|
		| Ext. CA User	|
		| Ext. US User	|


	Scenario Outline: User receives Initial/Recurring charge is sucessful after payment charged
		Given I am a <user>
		And I have a valid payment method
		And I have <recurring payment item> in my account
		When my monthly recurring payment is successfully charged
		And invoice status is "Paid"
		Then I should receive "Your subscription has been renewed" email from Chargebee

		Examples:
		| User		| recurring payment item       |
		| New CA User	| Monthly storage plan payment |
		| Ext.CA User	| Monthly protection payment   |
		| New US User	| Monthly storage plan payment |
		| Ext.US User	| Monthly protection payment   |


	Scenario Outline: User receives Refund Initiayted email
		Given I'm a business agent
		And I have a <user> account
		And there is paid invoice in the account
		When I navigate to invoice detail page in user account
		And I initiate a refund bu using a "Issue a refund" option
		Then as soon as innitiation complete, user should "Your refund is on the way" email from chargebee account.

		Examples:
		| User		|
		| New CA User	|
		| New US User	|
		| Ext. CA User	|
		| Ext. US User	|
		| New US User	|
		| Ext. CA User	|
		| Ext. US User	|
