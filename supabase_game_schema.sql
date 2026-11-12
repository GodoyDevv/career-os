-- Atualização da Tabela de Roadmap no Supabase para suportar Dados do Jogo (XP, Nível, Quests, Streak)
CREATE TABLE IF NOT EXISTS public.career_game_state (
    user_id TEXT PRIMARY KEY DEFAULT 'godoy_bruno',
    xp INTEGER DEFAULT 0,
    level INTEGER DEFAULT 1,
    streak INTEGER DEFAULT 1,
    last_active DATE DEFAULT CURRENT_DATE,
    quests JSONB DEFAULT '[]'::jsonb,
    updated_at TIMESTAMPTZ DEFAULT NOW()
);

-- Habilitar RLS
ALTER TABLE public.career_game_state ENABLE ROW LEVEL SECURITY;

CREATE POLICY "Allow public read-write for personal game state"
ON public.career_game_state
FOR ALL
USING (true)
WITH CHECK (true);
