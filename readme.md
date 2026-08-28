# Overview

A multi-app product for a small charity, backed by a single source of truth. A Go
backend and a self-hosted PostgreSQL database hold the book inventory; two
separate frontend applications consume it.

The project serves two purposes at once: it is a real production deployment for
the charity, and it is a portfolio piece (a first substantial Go project).

# This Repo

The public-facing Nuxt site, statically generated. Will be enhanced with a
catalogue/inventory lookup against the backend API. See the sibling
`orchestration` repo to run it alongside the backend and database.
