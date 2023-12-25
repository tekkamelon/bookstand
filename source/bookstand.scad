// 基礎部分
module plank(rotate_x, rotate_y, rotate_z){

	rotate([rotate_x, rotate_y, rotate_z]){

		// 厚みを20mmに設定
		linear_extrude(20){

			polygon(points=[[0, 0], [0, 40], [15, 40], [15, 20], [50, 20], [65, 70], [100, 70], [100, 0]]); //時計回り

		}

	}

}

color("red")
plank(90, 0, 0);

// x方向に80mm,y軸方向に-100mm移動
translate([80, -100, 0]){

	plank(90, 0, 90);

}

