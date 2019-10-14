Feature: Credit Notes
	Scenario Outline: User who has invoice with status of " "Payment Due" receives "Adjustment credit note is manually created" email
		Given I am a business agent
		And I have a <user> account with invoice
		And invoice's status is "Payment due"
		When I navigate the details of the invoice
		And I select a "Create a credit Note" option
		And I specifiy the amount manually
		Then Invoice status on "Amount" column should dipslay "Adjusted ${amount}"
		And user should receive "Credit Note Adjustment Created" email.

		Examples:
		| User		|
		| New CA User	|
		| New US User	|
		| Ext. CA User	|
		| Ext. US User	|
		| New US User	|
		| Ext. CA User	|
		| Ext. US User	|

	Scenario Outline: User who has invoice with status of "Paid" receives "Refundable credit note is manually created" email
		Given I am a business agent
		And I have a <user> account with invoice
		And invoice's status is "Paid"
		When I navigate the details of the invoice
		And I select a "Create a credit Note" option
		And I specifiy the amount manually
		Then Invoice status on "Amount" column should dipslay "Credit Issued ${amount}"
		And user should receive "Credit Note Refundable Created" email.

		Examples:
		| User		|
		| New CA User	|
		| New US User	|
		| Ext. CA User	|
		| Ext. US User	|
		| New US User	|
		| Ext. CA User	|
		| Ext. US User	|

	Scenario Outline: User who has a credit in his account receives "Credit Note Allocated" email when the amount is applied to upcoming invoice
		Given I am a business agent
		And I have a <user> account with upcoming invoice
		And account has credit amount
		When I navigate the details of the invoice
		And I select a "Allocate credits" option
		Then Invoice status on "Amount" column should dipslay "Credit Issued ${amount}"
		And user should receive "Credit Note Refundable Created" email.

		Examples:
		| User		|
		| New CA User	|
		| New US User	|
		| Ext. CA User	|
		| Ext. US User	|
		| New US User	|
		| Ext. CA User	|
		| Ext. US User	|
