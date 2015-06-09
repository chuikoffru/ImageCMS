<section class="mini-layout">
    <div class="frame_title clearfix">
        <div class="pull-left">
            <span class="help-inline"></span>
            <span class="title">Документация по модулю Click</span>
        </div>
        <div class="pull-right">
            <div class="d-i_b">
                <a href="/admin/components/cp/click/" class="t-d_n m-r_15"><span class="f-s_14">←</span> <span class="t-d_u">Вернуться</span></a>
            </div>
        </div>
    </div> 
    
    <h2 class="muted">Описание</h2>
    <h4>Click</h4>
    <p>Модуль Click - разработан специально для ImageCMS, для того чтобы решить сразу несколько задач:</p>
    <ul>
        <li>Упростить и сделать более удобным управление слайдшоу</li>
        <li>Упростить работу с рекламными материалами и подсчётом её эффективности</li>
        <li>Создать счётчик скачиваемых файлов, а так же убрать прямые ссылки до них</li>
    </ul>
    <p>Итого, один модуль решает несколько задач, и включает в себя 2 виджета:</p>
    <ul>
        <li>Ротатор баннеров - вывод случайных баннеров из списка</li>
        <li>Список баннеров - вывод баннеров одной категории списком</li>
    </ul>
    <p>И получается, что в этом поистине маленьком модуле, скрыт большой потенциал и большие возможности для улучшения функционала нами всемилюбимой системы.</p>
    
    <h2 class="muted">Как использовать?</h2>
    <h4>Подсчёт скачиваний</h3>
    <p>
    Подсчёт скачиваний часто используется на сайтах каталогах файлов, для реализации подобной затеи, необходимо дополнительное поле (создано в конструкторе полей), допустим field_file, с включённой опцией "Включить просмотр файлов"
    </p>
    <p>
    Представим, что каталог уже создан, и для страниц установлено дополнительное поле field_file, создаём страницы, и заполняем это поле, ссылками на файлы.
    </p>
    <p>
    Далее, открываем файл category.tpl, либо тот который вы указали для этой категории, и проделываем примерно такую работу:
    </p> <!-- &dollar; &lbrace; &rbrace; -->
    <textarea rows="8">
    &lbrace;foreach &dollar;pages as &dollar;page&rbrace;
        <h3>&lbrace;&dollar;page.title&rbrace;</h3>
        &lbrace;&dollar;page.prev_text&rbrace;
        <b>&lbrace;&dollar;file = &dollar;CI->click->link(&dollar;page.field_file)&rbrace;</b>
        <a href='&lbrace;site_url('click/to')&rbrace;/&lbrace;&dollar;file.id&rbrace;'>&lbrace;&dollar;file.title&rbrace;</a> (&lbrace;&dollar;file.count&rbrace;)
        <hr>
    &lbrace;/foreach&rbrace;
    </textarea>
    <p>Особенностью такой работы состоит то, что нет необходимости заходить в модуль Click, и создавать ссылку. Однажды прописав в шаблоне данный код, при создании страницы с этим полем, в модуле автоматически создаётся новая запись об этом файле, с заголовком "Скачать", типом link, и ссылкой, которую вы указали в поле field_file.</p>
    
    <h4>Ротатор баннера</h4>
    <p>Ротатор - это случайный вывод одного элемента из базы данных в одно и тоже место. Это позволяет не занимать слишком много рекламного пространства на сайте. Для того, чтобы создать ротатор баннеров, необходимо:</p>
    <ol>
        <li>Создать ссылки, с типом: Баннер (banner), указать обязательно категорию (любое ключевое слово, например rotate_banners), изображение, и ссылку на сайт, или страницу, куда побуждает пойти этот баннер.</li>
        <li>После этого, создаём новый виджет, например имя - rotate_banners, описание если нужно, и выбираем модуль Click - ротатор баннеров.</li>
        <li>После создания виджета, переходим к нему в настройки, и указываем категорию (ключевое слово), под которым у нас находятся баннеры для ротации.</li>
    </ol>
    Всё, в вашем шаблоне, в папке widgets, появился tpl файл, с именем виджета ротатора, вы можете его отредактировать по вашему усмотрению. И использовать на вашем сайте, с помощью простой команды:
    <textarea>
    &lbrace;widget('widget_name')&rbrace;
    </textarea>
    <h4>Список баннеров</h4>
    <p>Для создания списка баннеров, выводящихся горизонтально или вертикально, проделываем всё тоже самое что и описано в пункте выше, только при создании виджета выбираем модуль Click - список баннеров. Количество баннеров ограничивается только совпадением указанных категорий.</p>
    <p>Автор: <a href="http://chuikoff.ru" target="_blank">Чуйков Константин</a></p>
</section>