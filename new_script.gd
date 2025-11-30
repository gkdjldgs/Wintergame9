extends Resource
class_name Fishtype

@export var fish_name: String = 'Sunfish'
@export_range(0,100,1) var base_price: int = 10
@export_range(0,150,1) var lengthincm: float = 20
@export var tint: Color = Color.SKY_BLUE

@export_range(0.2, 3.0, 0.05) var bite_time_average: float = 1.22
@export_range(0.1, 2.0, 0.05) var bite_time_dif: float = 0.5

@export_range(0.0, 1.0, 0.01) var difficulty: float = 0.45

enum MOVEMENT{Smooth, Darty, Sink_Rise, Chaotic}
@export var pattern: MOVEMENT = MOVEMENT.Smooth
