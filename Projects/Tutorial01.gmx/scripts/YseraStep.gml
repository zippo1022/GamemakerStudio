image_speed = 0.25;//使用1/4的速度播放sprite动画
if (keyboard_check(ord('A')))
{
    phy_position_x = phy_position_x - 4;
    sprite_index = spr_ysera_walk_side;
    image_xscale = 1;
    m_playerDirection = PlayerDirection.LEFT;
}

else if (keyboard_check(ord('D')))
{
    phy_position_x = phy_position_x + 4;
    sprite_index = spr_ysera_walk_side;
    image_xscale = -1;
}

else if (keyboard_check(ord('W')))
{
    phy_position_y = phy_position_y - 4;
    sprite_index = spr_ysera_walk_back;
}

else if (keyboard_check(ord('S')))
{
    phy_position_y = phy_position_y + 4;
    sprite_index = spr_ysera_walk_front;
}

else
{
    sprite_index = spr_ysera_idle;
}


if(keyboard_check(ord('J'))){
    m_isAttacking = true;
    switch(m_playerDirection)
    {
    case PlayerDirection.UP:
        sprite_index = spr_ysera_attack_back;
        break;
    case PlayerDirection.DOWN:
        sprite_index = spr_ysera_attack_front;
        break;
    case PlayerDirection.LEFT:
        sprite_index = spr_ysera_attack_side;
        break;
    case PlayerDirection.RIGHT:
        sprite_index = spr_ysera_attack_side;
        break;
    }
    image_index = 0;
}
else if(keyboard_check(ord('K')))
{
    m_issInSkill = true;
    sprite_index = spr_ysera_skill;
    image_index = 0;
}

