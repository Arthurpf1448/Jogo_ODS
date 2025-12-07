//draw_text(100, 100, max(floor(hp), 0))
//draw_text(100, 120, max(floor(ox), 0))

draw_sprite(spr_barra_fundo, 0, barra_hp_X, barra_hp_Y)
draw_sprite_stretched(spr_barra_hp, 0, barra_hp_X, barra_hp_Y, (hp / hp_mx) * barra_hp_W, barra_hp_H)
draw_sprite(spr_barra_borda, 0, barra_hp_X, barra_hp_Y)

draw_sprite(spr_barra_fundo, 0, barra_ox_X, barra_ox_Y)
draw_sprite_stretched(spr_barra_ox, 0, barra_ox_X, barra_ox_Y, (ox / ox_mx) * barra_ox_W, barra_ox_H)
draw_sprite(spr_barra_borda, 0, barra_ox_X, barra_ox_Y)