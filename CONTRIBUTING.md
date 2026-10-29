# Contributing

Any contribution that you make to this repository will
be under the Apache 2 License, as dictated by that
[license](http://www.apache.org/licenses/LICENSE-2.0.html):

~~~
5. Submission of Contributions. Unless You explicitly state otherwise,
   any Contribution intentionally submitted for inclusion in the Work
   by You to the Licensor shall be under the terms and conditions of
   this License, without any additional terms or conditions.
   Notwithstanding the above, nothing herein shall supersede or modify
   the terms of any separate license agreement you may have executed
   with Licensor regarding such Contributions.
~~~

## Guidelines

- Interface changes affect `scene_db` and every client: document the field
  semantics in the `.msg`/`.srv` comments, update `scene_db/docs/API.md` and
  add a line to `CHANGELOG.rst`.
- Add fields at the end; do not reuse removed names with another meaning.
