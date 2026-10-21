class Contact {
  final String name;
  final String email;
  final String title;

  const Contact({required this.name, required this.email, required this.title});
}

void main() {
  // The contacts list below is already populated.
  const contacts = [
    Contact(name: 'Jake Overall', email: 'jake.overall@boisecodeworks.com', title: 'founder'),
    Contact(name: 'Matt Overall', email: 'matt.overall@boisecodeworks.com', title: 'founder'),
    Contact(name: 'Mark Ohnsman', email: 'mark@boisecodeworks.com', title: 'instructor'),
    Contact(name: 'Darryl Kilzer', email: 'darryl@boisecodeworks.com', title: 'instructor'),
    Contact(name: 'Tom Day', email: 'tom@boisecodeworks.com', title: 'instructor'),
  ];

  // 1. Print how many contacts are in the list.
  //    Expected: 5
  print(contacts.length);

  // 2. Create a new list named instructors that contains only the contacts whose title is 'instructor'.
  //    Do not modify the original contacts list.
  //    Expected: 3 contacts (Mark, Darryl, Tom)
  final instructors = contacts.where((c) => c.title == 'instructor').toList();
  print(instructors.map((c) => c.name).join(', '));

  // 3. Using instructors, create a list named instructorEmails that contains only their email addresses.
  //    Expected: mark@boisecodeworks.com, darryl@boisecodeworks.com, tom@boisecodeworks.com
  final instructorEmails = instructors.map((c) => c.email).toList();
  print(instructorEmails.join(', '));
}
