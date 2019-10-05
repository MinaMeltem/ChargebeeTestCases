Feature: Dun a user
	Scenario Outline: Dun for unpaid storage and/or service subscriptions
		Given I am a billing agent
		And I have a dunned <user>
		And the user has a <subscription>
		When the first attempt to collect payment was unsuccessful
		Then their account should be dunned
		And their invoice item status for <subscription> should display "Payment Due"

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
