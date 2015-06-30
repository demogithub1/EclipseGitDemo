/*******************************************************************
 * Extension controller for the "Testing a Controller Extension" recipe.
 * Retrieves the contacts associated with the account managed by the
 * standard controller and stores these in public property.
 *******************************************************************/
public with sharing class AccountContactsExt 
{
    //Test
    // the contacts associated with the account
    public List<Contact> contacts {get; set;}
    public contact con {get;set;}
    // constructor - retrieves the contacts associated with the 
    // account managed by the standard controller
    public AccountContactsExt(ApexPages.StandardController std)
    {
        Id accId=std.getId();
        con = (Contact)std.getrecord();
        system.debug('Contact Detail: ' + con);
        contacts=[select id, FirstName, LastName, Email from Contact where AccountId=:accId];
    }
}