Feature: Attempt to charge credit cards for dunned users
	Scenario Outline: Attempt to collect a payment and dun a user
		Given I am a billing agent
		And I have a dunned <user>
		And the user has a <subscription>
		When the first attempt to collect payment was unsuccessful
		Then the customer is dunned
		And the invoice item status should be "Payment Due"
		And there should be attempts to collect payment during the dunning period

		Examples:
		| user | subscription |
		| new CA user | Service Subscription |
		| new CA user | Storage Subscription |
		| new US user | Service Subscription |
		| new US user | Storage Subscription |
		| existing CA user | Service Subscription |
		| existing CA user | Storage Subscription |
		| existing US user | Service Subscription |
		| existing US user | Storage Subscription |
