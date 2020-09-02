package pit4307x.actions;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import java.util.Map;
import pit4307x.models.Contact;
import pit4307x.services.ContactService;


public class ContactAction extends ActionSupport {
    private Contact contact;
    
    public String addContact() throws Exception {
        return SUCCESS;
    }

    public String addContactSubmit() throws Exception {
        Map session = ActionContext.getContext().getSession();
        ContactService contactService;
        if (session.containsKey("contactservice")) {
            contactService = (ContactService) session.get("contactservice");
        } else {
            contactService = new ContactService();
        }
        contactService.addContact(contact);
        session.put("contactservice", contactService);
        return SUCCESS;
    }
    
    public String listContacts() throws Exception {
        return SUCCESS;
    }

    public void validate() {
        if (contact != null) {
            if (contact.getFirstname().length() < 3) {
                addFieldError("contact.firstname", "First name must be at least 3 characters");
            }
            if (contact.getLastname().length() < 2) {
                addFieldError("contact.lastname", "Last name must be at least 2 characters");
            }
            if (contact.getPhone().length() != 8) {
                addFieldError("contact.phone", "Phone must be 8 digits");
            }
            if (contact.getAge() < 10 || contact.getAge() > 99) {
                addFieldError("contact.age", "Age must be between 10 and 99");
            }
        }
    }    

    public Contact getContact() {
        return contact;
    }

    public void setContact(Contact contact) {
        this.contact = contact;
    }
}

