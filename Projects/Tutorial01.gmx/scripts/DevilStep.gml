image_speed = 0.25;//使用1/4的速度播放sprite动画


if(!m_isAttacking && !m_isInSkill)
{
    var player = instance_find(obj_ysera, 0);
    var deltaX = player.x - x;
    var deltaY = player.y - y;
    var mySpeed = 2;
    if(deltaX > mySpeed)
    {
    phy_position_x += mySpeed;
    }
    else if(deltaX < -mySpeed)
    {
    phy_position_x -= mySpeed;
    }
    else
    {
    phy_position_x += deltaX;
    }
    
    if(deltaY > mySpeed)
    {
    phy_position_y += mySpeed;
    }
    else if(deltaY < -mySpeed)
    {
    phy_position_y -= mySpeed;
    }
    else
    {
    phy_position_y += deltaY;
    }
    if(deltaX > 0)
    {
    image_xscale = -1;
    }
    else if(deltaX <0)
    {
    image_xscale = 1;
    }
    sprite_index = spr_devil_walk;
    
}

if(sprite_index == spr_ysera_skill)
{
    if(image_index > 2 && m_fired == false)
    {
        instance_create(x, y, obj_ysera_skill_effect);
        m_fired = true;
    }
}
