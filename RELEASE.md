# Release Checklist

1. Update [`CHANGELOG.md`](./CHANGELOG.md) to list the changes that will be included in the new version.
2. Update the package version in [`README.md`](./README.md) and [`mix.exs`](./mix.exs).
3. Commit the changes with a version bump commit, `git commit -m "Bump version"` .
4. Push the changes to GitHub.
5. Create a new release in GitHub, ensuring you are pointing to the version bump commit created above.
6. Wait. Creating a new release will kick off the release action which uses [`rustler_precompiled`](https://hexdocs.pm/rustler_precompiled/RustlerPrecompiled.html) to precompile the `fast_rss` Rust dependency. You must wait until this process is complete before releasing to Hex.
7. Checkout the recently create tag.
8. Once the NIFs are built, use `mix rustler_precompiled.download FastRss.Native --all --print` to download generate the checksum file.
9. Run `mix hex.publish`.
