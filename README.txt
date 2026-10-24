STUDIO HQ - how to publish

1. In Supabase: SQL Editor > New query > paste supabase-setup.sql > Run.
2. In GitHub: upload ALL files in this folder (except this README and the .sql, which are optional) to the top level of your repo. Commit.
3. Settings > Pages > Deploy from a branch > main / (root).
4. Open your link. First visit: click "Sign in with sync", paste your Supabase Project URL and anon public key (Project Settings > API), then Create account / Sign in.
5. After you have your account: in Supabase, Authentication > turn off "Allow new users to sign up".

Never paste the service_role / secret key anywhere.
Sign in first on the device that holds your real data.
