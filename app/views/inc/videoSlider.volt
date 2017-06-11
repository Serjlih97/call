<ul>
	{% for video in videoSlider %}
		<li>{{ video }}</li>
	{% endfor %}
</ul>

<div class="slider">
	<div class="big-slider _video-big-slider">
		{% for photo in slider %}
			<div class="big-slider__item">
				<iframe width="100%" height="315" src="https://www.youtube.com/embed/CRjnFalbn1s" frameborder="0" allowfullscreen></iframe>
			</div>
		{% endfor %}
	</div>
	<div class="small-slider _video-small-slider">
		{% for photo in slider %}
			<div class="small-slider__item">
				<img src="{{ photo.small }}" alt="">
			</div>
		{% endfor %}
	</div>
</div>