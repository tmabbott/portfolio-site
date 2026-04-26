# Resume + Portfolio Starter

This repo is a GitHub Pages-ready static site for a recent graduate or early-career candidate who needs a combination online resume and portfolio. It includes:

- A polished single-page resume and portfolio site
- Placeholder writing samples as downloadable PDFs
- A GitHub Actions workflow that deploys the site to GitHub Pages on pushes to `main`

## Files to update first

- `index.html`: Replace the placeholder profile, resume details, and contact links
- `content/samples/*.txt`: Edit the source text for the placeholder writing samples
- `assets/favicon.svg`: Replace the icon if you want a personalized mark

## Regenerate the PDFs

After updating any sample text file, rebuild the PDFs locally:

```bash
./scripts/build-pdfs.sh
```

The generated PDFs land in `assets/samples/` and are ready to commit.

## Publish on GitHub Pages

1. Create a new GitHub repository.
2. Push this folder to the repository with `main` as the default branch.
3. In GitHub, go to `Settings` > `Pages`.
4. Under `Build and deployment`, set `Source` to `GitHub Actions`.
5. Push to `main`. The workflow in `.github/workflows/deploy.yml` will publish only the public site files.

## Local preview

If you want a quick local preview:

```bash
python3 -m http.server 8000
```

Then open `http://localhost:8000`.

testing.