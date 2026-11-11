-- SQL de Criação da Tabela no Supabase
-- Cole este script no SQL Editor do seu projeto Supabase:

CREATE TABLE IF NOT EXISTS public.career_roadmap (
    item_id TEXT PRIMARY KEY,
    completed BOOLEAN DEFAULT FALSE,
    completed_at TIMESTAMPTZ,
    notes TEXT DEFAULT '',
    updated_at TIMESTAMPTZ DEFAULT NOW()
);

-- Habilitar Row Level Security (RLS)
ALTER TABLE public.career_roadmap ENABLE ROW LEVEL SECURITY;

-- Política de Acesso Público (Leitura e Escrita via Anon Key para o seu uso pessoal)
CREATE POLICY "Allow public read-write for personal roadmap"
ON public.career_roadmap
FOR ALL
USING (true)
WITH CHECK (true);
