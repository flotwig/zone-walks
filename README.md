# zone-walks

A collection of domain lists obtained from zone-walking TLDs that still use `NSEC`. Updated twice daily.

See [`./lists`](./lists) for all of the domain lists obtained by this project.

## What's zone walking?

Zone walking is a method of enumerating domain names that takes advantage of a quirk in DNSSEC. To learn more, see the following resources:

- [Authenticating NXDOMAIN responses and NSEC - Wikipedia](https://en.wikipedia.org/wiki/Domain_Name_System_Security_Extensions#Authenticating_NXDOMAIN_responses_and_NSEC)
- [Economical With The Truth: Making DNSSEC Answers Cheap - Cloudflare](https://blog.cloudflare.com/black-lies/)

## See Also

* [TLDR-2](https://github.com/flotwig/TLDR-2) - a collection of successful zone transfers (AXFRs) against TLDs. Auto-updated.
* @monoidic's [TLDR2](https://github.com/monoidic/TLDR2) - an extension of TLDR that collects information about which zones are walkable. This is the inspiration for `zone-walks`, and `zone-walks` even uses the `walkable_zones.md` data from TLDR2 as a seed.
