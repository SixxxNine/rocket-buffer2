-- CORE: É Usado para criar todo a parte funcional da nossa Aplicação/Resource

function fetchAPIData() --Função criada
    fetchRemote(URL_API, function (responseData, error) --declaramos uma requisição e abrimos um callback
        local data = fromJSON(responseData) --criamos uma variavel dentro da função

        -- Coloquei algumas informações dos dados da API
        outputChatBox ( "↓ Os dados abaixo pertence a um usuário do github! ↓", 0, 255, 255, true )
        outputChatBox ( "Usuário é: #B5B5B5"..data.name, 255, 255, 255, true )
        outputChatBox ( "Bio: #B5B5B5"..data.bio, 255, 255, 255, true )
        outputChatBox ( "Blog: #B5B5B5"..data.blog, 255, 255, 255, true )
        outputChatBox ( "Company: #B5B5B5"..data.type, 255, 255, 255, true )
        outputChatBox ( "twitter: #B5B5B5"..data.twitter_username, 255, 255, 255, true )
        outputChatBox ( "Email: #B5B5B5"..data.email, 255, 255, 255, true )
        outputChatBox ( "Localização: #B5B5B5"..data.location, 255, 255, 255, true )
        outputChatBox ( "Repositorios postados: #B5B5B5"..data.public_repos, 255, 255, 255, true )
        outputChatBox ( "Seguidores: #B5B5B5"..data.followers, 255, 255, 255, true )
        outputChatBox ( "Seguindo: #B5B5B5"..data.following, 255, 255, 255, true )
        outputChatBox ( "Para ver novamente o conteúdo execute o comando 'fetch' ou abra o console pelo f8! ✓", 0, 255, 255, true )
    end) 
end 