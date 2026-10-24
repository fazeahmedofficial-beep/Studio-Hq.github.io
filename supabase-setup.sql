-- Paste all of this into Supabase: SQL Editor > New query > Run

create table if not exists public.studio_data (
  user_id uuid primary key references auth.users(id) on delete cascade,
  data jsonb not null default '{}'::jsonb,
  updated_at timestamptz not null default now()
);

alter table public.studio_data enable row level security;

create policy "own row read" on public.studio_data
  for select to authenticated using (auth.uid() = user_id);
create policy "own row insert" on public.studio_data
  for insert to authenticated with check (auth.uid() = user_id);
create policy "own row update" on public.studio_data
  for update to authenticated using (auth.uid() = user_id) with check (auth.uid() = user_id);

grant select, insert, update on public.studio_data to authenticated;
