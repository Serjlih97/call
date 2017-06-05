<h2>Файлы</h2>
{% for file in files %}
    <a href="{{ file.path }}" target="_blank" class="file-link">{{ file.name }}</a>
{% endfor %}