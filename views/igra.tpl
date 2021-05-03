% import model

<!DOCTYPE html>
<html>

<body style="text-align: center;">

    <p>{{igra.pravilni_del_gesla()}}</p>

    <p>Nepravilne črke: {{igra.nepravilni_ugibi()}}</p>

    <img src="/img/{{igra.stevilo_napak()}}.jpg">

    % if poskus == model.ZMAGA :
        <h1>Zmaga!</h1>
    % elif poskus == model.PORAZ :
        <h1>Poraz!</h1>
        <h5>Pravilni geslo je {{igra.geslo}}</h5>
    % else:
        <form action="/igra/{{id_igre}}/" method="post">
            <input type="text" name="crka" autofocus>
            <button type="submit">Ugibaj</button>
        </form>
    % end
    </br>
    <a href="/">Na začetno stran</a>

</body>

</html>