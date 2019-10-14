Feature: Invalid Payment Methods

	Background:
		Given I am a <user>
		And I have my credit card information in the chargebee system

	Scenario Outline: User receive notification email five days before than expiration date of the payment method
		When five days left to the expiration date of my payment Methods
		Then I should receive a "Your payment method will expire soon" email from Chrgebee system

		Examples:
		| User		|cd
		| New CA User	|
		| New US User	|
		| Ext. CA User	|
		| Ext. US User	|
		| New US User	|
		| Ext. CA User	|
		| Ext. US User	|

	Scenario Outline: User receive notification email when credit card has expired
		When my credit card expired
		Then I should receive "Your payment method will expire soon" email

		Examples:
		| User		|cd
		| New CA User	|
		| New US User	|
		| Ext. CA User	|
		| Ext. US User	|
		| New US User	|
		| Ext. CA User	|
		| Ext. US User	|

	Scenario Outline: User receive notification email when the payment method becomes invalid
		When my credit card becomes invalid
		Then I should receive "Your payment method is Invalid" email

		Examples:
		| User		|
		| New CA User	|
		| New US User	|
		| Ext. CA User	|
		| Ext. US User	|
		| New US User	|
		| Ext. CA User	|
		| Ext. US User	|
