draw_sprite(spr_barra_fundo, 0, barra_hp_X, barra_hp_Y)
draw_sprite_stretched(spr_barra_hp, 0, barra_hp_X, barra_hp_Y, (hp / hp_mx) * barra_hp_W, barra_hp_H)
draw_sprite(spr_barra_borda, 0, barra_hp_X, barra_hp_Y)

draw_set_font(fnt_score)
draw_set_colour(c_black)
if(room != rm_fase_3) draw_text(1200, barra_hp_Y, max(pontos, 0));
draw_set_font(fnt_normal)
draw_set_colour(-1)
