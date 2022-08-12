# README

## Summary

This is a sample project meant to explore and practice ActiveRecord associations in Rails. Users can create and attend events that have a date and location.

## Model Requirements

- A user may sign up with a username and password.
- A user may create any number of events (organizer).
- A user may select any number of events to attend (attendee).
- An event has one organizer and any number of attendees.
- An event has a date and location that are specified by the organizer.

## Associations

#### User

- Has many organized_events.
- Has many attended_events.

#### Event

- Belongs to organizer.

## Implementation

- A "has many through" relationship is established with an intermediary table: "event_attendees".
