This is the official code repository for Fika App
You can be part of this amazing startup by making a small donation via:

<p>
  <a href="https://www.paypal.com/donate/?hosted_button_id=45A3RRNJMNAGQ">
      <img src="https://www.paypalobjects.com/en_US/i/btn/btn_donateCC_LG.gif" alt="paypal">
  </a>
</p>

## Score Board

- Designed the UI
- Integrated the Login logic with firebase
  (Users need to verify their email via a notification sent to their email)
- Can add errands from firestore and have them display on the app in real time
- Errands can be added on the app and they appear in firestore in real time

## Todos

- Change description field from int to String
- Connect profile with errands/database
- Display info of logged in user in the profiles section

To run the project locally, clone this repository then use the followimg commands:

```
flutter pub get
flutter run
```

## Documentation

Fika is a mobiel app that help people run errands, find short-term workface and do other things.

The frontend wil be developed with flutter and backend in Django, with DRF being the APIs.

Payment systems will be integrated with Mpesa.

Users can sign in, book errands and pay for them.

Here's a visual reference of what we are working on: [Overview](https://www.behance.net/gallery/141606459/Fika-design-and-development).

Here's the first draft of the overview of Fika App Documentation: [Docs](https://docs.google.com/document/d/14lMqh4H71angj-gOWGxL4tWIY2Wpjuz_or3u2SEjUOs/edit?usp=sharing).
