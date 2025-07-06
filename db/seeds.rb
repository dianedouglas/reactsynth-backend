Todo.destroy_all
Preset.destroy_all
Todo.create(todo_name: 'Build backend', completed: true)
Todo.create(todo_name: 'Build frontend', completed: false)

Preset.create(
	title: "Light Rain",
	ripple_speed: 25,
	ripple_sustain: 5,
	rain_speed: 300,
	octave: 2,
	filter_frequency: 589,
	filter_q: 1
)
