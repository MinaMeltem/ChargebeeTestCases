Feature: Dunned accounts remain active
	Scenario Outline: Storage Subscription stays active when the account dunned
		Given I am a billing agent
		And I have a dunned <user>
		And the user has a <subscription>
		When the users dunning period ends
		Then invoice status becomes "Not Paid"
		And the <subscription> should remain active

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
