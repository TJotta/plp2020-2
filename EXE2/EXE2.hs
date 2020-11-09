-- --exe 1. 
-- *Main> (4, "Ola", True)
--(4,"Ola",True)

-- --exe 2.
-- *Main> (("Hello", 4), True)          
-- (("Hello",4),True)
-- *Main> snd (fst (("Hello", 4), True))
-- 4

-- --exe 3. - exe 4.a.
module Cliente where

data Cliente = OrgGov String 
            | Empresa String Responsavel Cargo Int
            | Individuo Pessoa Bool 
            deriving Show

data Responsavel = Resp String String
                    deriving Show

data Cargo = Cargo | Gerente | Supervisor | Empregado
            deriving Show

data Pessoa = Pessoa String String Genero 
            deriving Show
        
data Genero = Masculino | Feminino | Outro
            deriving Show

-- --exe 4.b.

nomeCliente :: Cliente -> String
nomeCliente c = case c of 
                    OrgGov nome                    -> nome 
                    Empresa nomeempresa resp cg id ->
                        case resp of 
                           Resp pn sn              -> pn ++ " " ++ sn
                    Individuo p ads                ->
                        case p of
                            Pessoa pn' sn' g       -> pn'++ " " ++ sn'     


