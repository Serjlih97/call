<h2>Файлы</h2>
{% for file in files %}
    <div class="file-wrapp">
    	<a href="{{ file.path }}" target="_blank" class="file-link">{{ file.name }}</a>
    </div>
{% endfor %}