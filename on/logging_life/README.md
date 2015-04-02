# Logging life

Status: [readable](../status/).

I keep a log of most activities I do during the day.
This started from keeping time logs of work done and then expanded to
other things I felt like tracking.


## Google Sheets

Initially I stored these in Google Sheets, but I had a couple of
issues that pushed me to change.

As my files got larger, they became slower to load.
This was annoying when I wanted to quickly enter a small note.

The other issue was the table layout.
Most of the fields (date, start/stop time) were fine, but the fields
that stored lists (people, tags) did not display as nicely.
The notes field was even worse, because the layout was encouraging me to
write less details to avoid the space used.


## YAML

[YAML](http://yaml.org/) is a structured text file, similar to JSON but
designed to be more human readable and writable.

Since it is a plain text file, it opens quickly in any editor.

It also allows me to expand from the table structure into documents with
flexible but structured input.


## Structure

The format of my logs evolved over the years, but seems to have become
fairly stable now.

I record each day as a separate file, with a folder structure to break
them into years and months: `1999/12/31.yaml`.

In the files, the top level is a list of each entry for the day.
Each entry then contains fields for the different details.


### Full example

```yaml
- date: 1999-12-31
  notes:
    - Very formal meeting with Anna and Bill to plan how to take over the world.
    - Pretty much the same thing we do every night.
  people:
    - Anna Amigo
    - Bill Buddy
  place: home
  project: World Domination
  start: T23:00
  stop: T23:50
  tags:
    - genetic engineering
    - mice
  type: attending meeting
```


### Date and time fields

The `date` is in [ISO-8601](https://en.wikipedia.org/wiki/ISO_8601)
format.

The `start` and `stop` fields begin with a `T` so when they are joined
with the `date` field they still conform to ISO-8601.
There are exceptions to this that I describe in the "Multiple Days"
section further down.

This was also because the YAML parser treated `00:01` as a string and
`01:01` as a number.
Adding `T` makes them both strings.


### Detail fields

`notes` is where all the action is.
I treat each entry as a paragraph, and wrap them at 80 characters.

`people` has the full names of people participating.

`place` is my informal name for where the activity took place.

`project` is usually my informal name for the project I am working on.

`tags` are any words that can be used to categorise the entry.
This may be the name of a product or the subject of the meeting,
anything that I think may be useful for searching with later.

`type` describes the type of activity I was doing.
I almost always keep this to 1 or 2 words.


### Single vs multiple strings

I use different fields names for strings and lists.
This is a small effort to make it easier to parse later.

- `note`, `notes`

- `person`, `people`

- `place`, `places`

- `project`, `projects`

- `tag`, `tags`

- `type`, `types`

I have been very tempted to change `people` to `persons` but have not
made that jump yet.


### Short example

If the `type` fully describes the activity, then I only need to include
the date and times.

```yaml
- date: 1999-12-31
  start: T23:50
  stop: T23:59
  type: writing notes
```


### Multiple days

If the activity I am doing goes over midnight, then I prefix the `start`
and `stop` times with their dates.

```yaml
- date: 1999-12-31
  start: 1999-12-31T23:59
  stop: 2000-01-01T00:01
  type: writing notes
```

This should not be a major issue for parsing, because each will be a
string, and simple times will always start with a `T`.

I leave the date field as I find it quicker to read.


## Editing

I find this format very quick to edit because I am able to copy other
entry blocks and update them for a new entry.
This is even quicker for entries on the same day.

The level of detail I included increased over time.
So I started with simply times and type of activities, sometimes some
notes.
As it became more natural, I added the extra fields like `tags` and
`people`.

It is quicker and easier to access than anything I have found since.
