-- Atualização da Tabela de Roadmap no Supabase para suportar subpassos (aulas individuais)
-- Execute no SQL Editor do Supabase se desejar que a coluna subtasks seja gravada em nuvem

ALTER TABLE public.career_roadmap ADD COLUMN IF NOT EXISTS subtasks JSONB DEFAULT '[]'::jsonb;
