<div class="slider">
	<div class="big-slider">
		{% for photo in slider %}
			<div class="big-slider__item">
				<img src="{{ photo.big }}" alt="">
			</div>
		{% endfor %}
	</div>
	<div class="small-slider">
		{% for photo in slider %}
			<div class="small-slider__item">
				<img src="{{ photo.small }}" alt="">
			</div>
		{% endfor %}
	</div>
</div>