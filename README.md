# Chelsea Mabbott Resume + Portfolio

This repo is a GitHub Pages-ready static site for Chelsea Mabbott's resume and portfolio. It includes:

- A polished single-page resume and portfolio site
- Chelsea's resume PDF
- Downloadable portfolio samples generated from the source writing files
- A compact web preview of the Boston Calling rehearsal vlog sample
- A GitHub Actions workflow that deploys the site to GitHub Pages on pushes to `main`

## Files to update first

- `index.html`: Update profile, resume, contact, and sample card copy
- `content/samples/*.txt`: Edit the source text used to generate sample PDFs
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
