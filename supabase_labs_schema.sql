-- Script SQL para as novas tabelas técnicas do Tech OS
-- Cole no SQL Editor do seu Supabase se quiser persistência em nuvem também para os Labs:

CREATE TABLE IF NOT EXISTS public.tech_labs (
    lab_id TEXT PRIMARY KEY,
    status TEXT DEFAULT 'pending',
    repo_url TEXT DEFAULT '',
    check_steps JSONB DEFAULT '[]'::jsonb,
    updated_at TIMESTAMPTZ DEFAULT NOW()
);

ALTER TABLE public.tech_labs ENABLE ROW LEVEL SECURITY;

CREATE POLICY "Allow public read-write for tech labs"
ON public.tech_labs
FOR ALL
USING (true)
WITH CHECK (true);
