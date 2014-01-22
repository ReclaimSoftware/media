**A media server, e.g. for your local network**

### Paths

    /
    /videos/:id
    /videos/:id.:ext


### Developing

Assuming `$DIR/media/foo.webm`, create `db/seeds.coffee` with:

```coffee
module.exports = {
  videos: [
    {id: "foo", title: "Foo", storage_key: "foo.webm"}
  ]
}
```

and run `rs-dev --storage-dir=$DIR`


### License: TBD
