data:extend({

{
    type = "rocket-silo",
    name = "rocket-silo",
    icon = "__base__/graphics/icons/rocket-silo.png",
    icon_size = 64, icon_mipmaps = 4,
    flags = {"placeable-player", "player-creation"},
    crafting_categories = {"rocket-building"},
    rocket_parts_required = 200,
    crafting_speed = 1.25,
    rocket_result_inventory_size = 2,
    module_specification =
    {
      module_slots = 6,
      module_info_icon_shift = {0, 3.3}
    },
    fixed_recipe = "rocket-part",
    show_recipe_icon = false,
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    minable = {mining_time = 1, result = "rocket-silo"},
    max_health = 10000,
    corpse = "rocket-silo-remnants",
    dying_explosion = "rocket-silo-explosion",
    collision_box = {{-4.40, -4.40}, {4.40, 4.40}},
    selection_box = {{-4.5, -4.5}, {4.5, 4.5}},
    damaged_trigger_effect = hit_effects.entity(),
    hole_clipping_box = { {-2.75, -1.15}, {2.75, 2.25} },
    resistances =
    {
      {
        type = "fire",
        percent = 60
      },
      {
        type = "impact",
        percent = 60
      }
    },
    vehicle_impact_sound = sounds.generic_impact,
    energy_source =
    {
      type = "electric",
      usage_priority = "primary-input"
    },
    energy_usage = "425kW", --energy usage used when crafting the rocket
    idle_energy_usage = "10KW",
    lamp_energy_usage = "10KW",
    active_energy_usage = "4990KW",
    rocket_entity = "rocket-silo-rocket",

    times_to_blink = 3,
    light_blinking_speed = 1 / (3 * 60),
    door_opening_speed = 1 / (4.25 * 60),

    base_engine_light =
    {
      intensity = 1,
      size = 25,
      shift = {0, 1.5}
    },

    shadow_sprite =
    {
      filename = "__base__/graphics/entity/rocket-silo/00-rocket-silo-shadow.png",
      priority = "medium",
      width = 304,
      height = 290,
      draw_as_shadow = true,
      dice = 2,
      shift = util.by_pixel(8, 2),
      hr_version =
      {
        filename = "__base__/graphics/entity/rocket-silo/hr-00-rocket-silo-shadow.png",
        priority = "medium",
        width = 612,
        height = 578,
        draw_as_shadow = true,
        dice = 2,
        shift = util.by_pixel(7, 2),
        scale = 0.5
      },
    },
    
    hole_sprite =
    {
      filename = "__base__/graphics/entity/rocket-silo/01-rocket-silo-hole.png",
      width = 202,
      height = 136,
      shift = util.by_pixel(-6, 16),
      hr_version =
      {
        filename = "__base__/graphics/entity/rocket-silo/hr-01-rocket-silo-hole.png",
        width = 400,
        height = 270,
        shift = util.by_pixel(-5, 16),
        scale = 0.5
      }
    },
    hole_light_sprite =
    {
      filename = "__base__/graphics/entity/rocket-silo/01-rocket-silo-hole-light.png",
      width = 202,
      height = 136,
      shift = util.by_pixel(-6, 16),
      tint = {1,1,1,0},
      hr_version =
      {
        filename = "__base__/graphics/entity/rocket-silo/hr-01-rocket-silo-hole-light.png",
        width = 400,
        height = 270,
        shift = util.by_pixel(-5, 16),
        tint = {1,1,1,0},
        scale = 0.5
      }
    },

    rocket_shadow_overlay_sprite =
    {
      filename = "__base__/graphics/entity/rocket-silo/03-rocket-over-shadow-over-rocket.png",
      width = 212,
      height = 142,
      shift = util.by_pixel(-2, 22),
      hr_version = {
        filename = "__base__/graphics/entity/rocket-silo/hr-03-rocket-over-shadow-over-rocket.png",
        width = 426,
        height = 288,
        shift = util.by_pixel(-2, 21),
        scale = 0.5
      }
    },
    rocket_glow_overlay_sprite =
    {
      filename = "__base__/graphics/entity/rocket-silo/03-rocket-over-glow.png",
      blend_mode = "additive",
      width = 218,
      height = 222,
      shift = util.by_pixel(-4, 36),
      hr_version =
      {
        filename = "__base__/graphics/entity/rocket-silo/hr-03-rocket-over-glow.png",
        blend_mode = "additive",
        width = 434,
        height = 446,
        shift = util.by_pixel(-3, 36),
        scale = 0.5
      }
    },

    door_back_sprite =
    {
      filename = "__base__/graphics/entity/rocket-silo/04-door-back.png",
      width = 158,
      height = 144,
      shift = util.by_pixel(36, 12),
      hr_version = {
        filename = "__base__/graphics/entity/rocket-silo/hr-04-door-back.png",
        width = 312,
        height = 286,
        shift = util.by_pixel(37, 12),
        scale = 0.5
      }
    },
    door_back_open_offset = {1.8, -1.8 * 0.43299225},
    door_front_sprite =
    {
      filename = "__base__/graphics/entity/rocket-silo/05-door-front.png",
      width = 166,
      height = 152,
      shift = util.by_pixel(-28, 32),
      hr_version =
      {
        filename = "__base__/graphics/entity/rocket-silo/hr-05-door-front.png",
        width = 332,
        height = 300,
        shift = util.by_pixel(-28, 33),
        scale = 0.5
      }
    },
    door_front_open_offset = {-1.8, 1.8 * 0.43299225},

    base_day_sprite =
    {
      filename = "__base__/graphics/entity/rocket-silo/06-rocket-silo.png",
      width = 300,
      height = 300,
      shift = util.by_pixel(2, -2),
      hr_version =
      {
        filename = "__base__/graphics/entity/rocket-silo/hr-06-rocket-silo.png",
        width = 608,
        height = 596,
        shift = util.by_pixel(3, -1),
        scale = 0.5
      }
    },
    
    red_lights_back_sprites =
    {
      layers =
      {
        {
          filename = "__base__/graphics/entity/rocket-silo/07-red-lights-back/red-light.png",
          width = 32,
          height = 32,
          shift = {1.34375, 0.28125-1.375},
          hr_version =
          {
            filename = "__base__/graphics/entity/rocket-silo/07-red-lights-back/hr-red-light.png",
            width = 32,
            height = 32,
            shift = {1.34375, 0.28125-1.375},
            scale = 0.5
          }
        },
        {
          filename = "__base__/graphics/entity/rocket-silo/07-red-lights-back/red-light.png",
          width = 32,
          height = 32,
          shift = {2.3125, 0.9375-1.375},
          hr_version =
          {
            filename = "__base__/graphics/entity/rocket-silo/07-red-lights-back/hr-red-light.png",
            width = 32,
            height = 32,
            shift = {2.3125, 0.9375-1.375},
            scale = 0.5
          }
        },
        {
          filename = "__base__/graphics/entity/rocket-silo/07-red-lights-back/red-light.png",
          width = 32,
          height = 32,
          shift = {2.65625, 1.90625-1.375},
          hr_version =
          {
            filename = "__base__/graphics/entity/rocket-silo/07-red-lights-back/hr-red-light.png",
            width = 32,
            height = 32,
            shift = {2.65625, 1.90625-1.375},
            scale = 0.5
          }
        },
        {
          filename = "__base__/graphics/entity/rocket-silo/07-red-lights-back/red-light.png",
          width = 32,
          height = 32,
          shift = {-2.65625, 1.90625-1.375},
          hr_version =
          {
            filename = "__base__/graphics/entity/rocket-silo/07-red-lights-back/hr-red-light.png",
            width = 32,
            height = 32,
            shift = {-2.65625, 1.90625-1.375},
            scale = 0.5
          }
        },
        {
          filename = "__base__/graphics/entity/rocket-silo/07-red-lights-back/red-light.png",
          width = 32,
          height = 32,
          shift = {-2.3125, 0.9375-1.375},
          hr_version =
          {
            filename = "__base__/graphics/entity/rocket-silo/07-red-lights-back/hr-red-light.png",
            width = 32,
            height = 32,
            shift = {-2.3125, 0.9375-1.375},
            scale = 0.5
          }
        },
        {
          filename = "__base__/graphics/entity/rocket-silo/07-red-lights-back/red-light.png",
          width = 32,
          height = 32,
          shift = {-1.34375, 0.28125-1.375},
          hr_version =
          {
            filename = "__base__/graphics/entity/rocket-silo/07-red-lights-back/hr-red-light.png",
            width = 32,
            height = 32,
            shift = {-1.34375, 0.28125-1.375},
            scale = 0.5
          }
        },
        {
          filename = "__base__/graphics/entity/rocket-silo/07-red-lights-back/red-light.png",
          width = 32,
          height = 32,
          shift = {0, 0-1.375},
          hr_version =
          {
            filename = "__base__/graphics/entity/rocket-silo/07-red-lights-back/hr-red-light.png",
            width = 32,
            height = 32,
            shift = {0, 0-1.375},
            scale = 0.5
          }
        }
      }
    },

    red_lights_front_sprites =
    {
      layers =
      {
        {
          filename = "__base__/graphics/entity/rocket-silo/07-red-lights-back/red-light.png",
          width = 32,
          height = 32,
          shift = {2.3125, 2.8125-1.375},
          hr_version =
          {
            filename = "__base__/graphics/entity/rocket-silo/07-red-lights-back/hr-red-light.png",
            width = 32,
            height = 32,
            shift = {2.3125, 2.8125-1.375},
            scale = 0.5
          }
        },
        {
          filename = "__base__/graphics/entity/rocket-silo/07-red-lights-back/red-light.png",
          width = 32,
          height = 32,
          shift = {1.34375, 3.40625-1.375},
          hr_version =
          {
            filename = "__base__/graphics/entity/rocket-silo/07-red-lights-back/hr-red-light.png",
            width = 32,
            height = 32,
            shift = {1.34375, 3.40625-1.375},
            scale = 0.5
          }
        },
        {
          filename = "__base__/graphics/entity/rocket-silo/07-red-lights-back/red-light.png",
          width = 32,
          height = 32,
          shift = {0, 3.75-1.375},
          hr_version =
          {
            filename = "__base__/graphics/entity/rocket-silo/07-red-lights-back/hr-red-light.png",
            width = 32,
            height = 32,
            shift = {0, 3.75-1.375},
            scale = 0.5
          }
        },
        {
          filename = "__base__/graphics/entity/rocket-silo/07-red-lights-back/red-light.png",
          width = 32,
          height = 32,
          shift = {-1.34375, 3.40625-1.375},
          hr_version =
          {
            filename = "__base__/graphics/entity/rocket-silo/07-red-lights-back/hr-red-light.png",
            width = 32,
            height = 32,
            shift = {0, 3.75-1.375},
            scale = 0.5
          }
        },
        {
          filename = "__base__/graphics/entity/rocket-silo/07-red-lights-back/red-light.png",
          width = 32,
          height = 32,
          shift = {-2.3125, 2.8125-1.375},
          hr_version = {
            filename = "__base__/graphics/entity/rocket-silo/07-red-lights-back/hr-red-light.png",
            width = 32,
            height = 32,
            shift = {-2.3125, 2.8125-1.375},
            scale = 0.5
          }
        }
      }
    },
    satellite_animation =
    {
      filename = "__base__/graphics/entity/rocket-silo/15-rocket-silo-turbine.png",
      priority = "medium",
      width = 28,
      height = 46,
      frame_count = 32,
      line_length = 8,
      animation_speed = 0.4,
      shift = util.by_pixel(-100, 110),
      hr_version = {
        filename = "__base__/graphics/entity/rocket-silo/hr-15-rocket-silo-turbine.png",
        priority = "medium",
        width = 54,
        height = 88,
        frame_count = 32,
        line_length = 8,
        animation_speed = 0.4,
        shift = util.by_pixel(-100, 111),
        scale = 0.5
      }
    },

    arm_01_back_animation =
    {
      filename = "__base__/graphics/entity/rocket-silo/08-rocket-silo-arms-back.png",
      priority = "medium",
      width = 66,
      height = 76,
      frame_count = 32,
      line_length = 32,
      animation_speed = 0.3,
      shift = util.by_pixel(-54, -84),
      hr_version =
      {
        filename = "__base__/graphics/entity/rocket-silo/hr-08-rocket-silo-arms-back.png",
        priority = "medium",
        width = 128,
        height = 150,
        frame_count = 32,
        line_length = 32,
        animation_speed = 0.3,
        shift = util.by_pixel(-53, -84),
        scale = 0.5
      }
    },

    arm_02_right_animation =
    {
      filename = "__base__/graphics/entity/rocket-silo/08-rocket-silo-arms-right.png",
      priority = "medium",
      width = 94,
      height = 94,
      frame_count = 32,
      line_length = 32,
      animation_speed = 0.3,
      shift = util.by_pixel(100, -38),
      hr_version =
      {
        filename = "__base__/graphics/entity/rocket-silo/hr-08-rocket-silo-arms-right.png",
        priority = "medium",
        width = 182,
        height = 188,
        frame_count = 32,
        line_length = 32,
        animation_speed = 0.3,
        shift = util.by_pixel(101, -38),
        scale = 0.5
      }
    },

    arm_03_front_animation =
    {
      filename = "__base__/graphics/entity/rocket-silo/13-rocket-silo-arms-front.png",
      priority = "medium",
      width = 66,
      height = 114,
      frame_count = 32,
      line_length = 32,
      animation_speed = 0.3,
      shift = util.by_pixel(-52, 16),
      hr_version =
      {
        filename = "__base__/graphics/entity/rocket-silo/hr-13-rocket-silo-arms-front.png",
        priority = "medium",
        width = 126,
        height = 228,
        frame_count = 32,
        line_length = 32,
        animation_speed = 0.3,
        shift = util.by_pixel(-51, 16),
        scale = 0.5
      }
    },

    base_front_sprite =
    {
      filename = "__base__/graphics/entity/rocket-silo/14-rocket-silo-front.png",
      width = 292,
      height = 132,
      shift = util.by_pixel(-2, 78),
      hr_version =
      {
        filename = "__base__/graphics/entity/rocket-silo/hr-14-rocket-silo-front.png",
        width = 580,
        height = 262,
        shift = util.by_pixel(-1, 78),
        scale = 0.5
      }
    },
    silo_fade_out_start_distance = 8,
    silo_fade_out_end_distance = 15,

    alarm_sound =
    {
      filename = "__base__/sound/silo-alarm.ogg",
      volume = 1.0
    },
    clamps_on_sound =
    {
      filename = "__base__/sound/silo-clamps-on.ogg",
      volume = 1.0
    },
    clamps_off_sound =
    {
      filename = "__base__/sound/silo-clamps-off.ogg",
      volume = 0.8
    },
    doors_sound =
    {
      filename = "__base__/sound/silo-doors.ogg",
      volume = 0.8
    },
    raise_rocket_sound =
    {
      filename = "__base__/sound/silo-raise-rocket.ogg",
      volume = 1.0
    },
    open_sound = sounds.machine_open,
    close_sound = sounds.machine_close,
    working_sound =
    {
      sound =
      {
        filename = "__base__/sound/rocket-silo-working-1.ogg",
        volume = 0.8
      },
      fade_in_ticks = 10,
      fade_out_ticks = 15,
    },
    flying_sound =
    {
      filename = "__base__/sound/silo-rocket.ogg",
      volume = 1.0,
      audible_distance_modifier = 3,
    }

  },
  {
    type = "rocket-silo-rocket",
    name = "rocket-silo-rocket",
    flags = {"not-on-map"},
    collision_mask = {"not-colliding-with-itself"},
    collision_box = {{-2, -7}, {2, 4}},
    selection_box = {{0, 0}, {0, 0}},
    dying_explosion = "massive-explosion",
    shadow_slave_entity = "rocket-silo-rocket-shadow",
    inventory_size = 2,
    rising_speed = 1 / (7 * 60),
    engine_starting_speed = 1 / (5.5 * 60),
    flying_speed = 1 / (2000 * 60),
    flying_acceleration = 0.01,

    glow_light =
    {
      intensity = 1,
      size = 30,
      shift = {0, 1.5},
      color = {r = 1.0, g = 1.0, b = 1.0}
    },

    rocket_sprite = util.add_shift_offset(util.by_pixel(0, 32*3.5), --util.mul_shift(rocket_rise_offset, -1),
    {
      filename = "__base__/graphics/entity/rocket-silo/02-rocket.png",
      width = 154,
      height = 300,
      shift = util.by_pixel(-4, -28),
      hr_version = {
        filename = "__base__/graphics/entity/rocket-silo/hr-02-rocket.png",
        width = 310,
        height = 596,
        shift = util.by_pixel(-5, -27),
        scale = 0.5
      }
    }),

    rocket_shadow_sprite = util.add_shift_offset(util.by_pixel(-146, -120),
    {
      filename = "__base__/graphics/entity/rocket-silo/09-rocket-shadow.png",
      priority = "medium",
      width = 336,
      height = 110,
      draw_as_shadow = true,
      shift = util.by_pixel(146, 120),
      hr_version = {
        filename = "__base__/graphics/entity/rocket-silo/hr-09-rocket-shadow.png",
        priority = "medium",
        width = 672,
        height = 216,
        draw_as_shadow = true,
        shift = util.by_pixel(146, 121),
        scale = 0.5
      }
    }),

    rocket_glare_overlay_sprite = util.add_shift_offset(util.by_pixel(0, 112+112),
    {
      filename = "__base__/graphics/entity/rocket-silo/03-rocket-over-glare.png",
      blend_mode = "additive",
      width = 481,
      height = 481,
      shift = util.by_pixel(-2, -2),
      flags = { "linear-magnification", "linear-minification" },
    }),
    rocket_smoke_top1_animation = util.add_shift_offset(util.by_pixel(0-66, -112+28+232+32),
    {
      filename = "__base__/graphics/entity/rocket-silo/12-rocket-smoke.png",
      priority = "medium",
      tint = { r = 0.8, g = 0.8, b = 1, a = 0.8 },
      --tint = { r = 1, g = 0, b = 0, a = 0.8 },
      width = 41,
      height = 145,
      frame_count = 24,
      line_length = 8,
      animation_speed = 0.5,
      scale = 1.5*1.3,
      shift = util.by_pixel(-2, -2),
      hr_version = {
        filename = "__base__/graphics/entity/rocket-silo/hr-12-rocket-smoke.png",
        priority = "medium",
        tint = { r = 0.8, g = 0.8, b = 1, a = 0.8 },
        --tint = { r = 1, g = 0, b = 0, a = 0.8 },
        width = 80,
        height = 286,
        frame_count = 24,
        line_length = 8,
        animation_speed = 0.5,
        scale = 1.5/2*1.3,
        shift = util.by_pixel(-1, -3),
      }
    }),
    rocket_smoke_top2_animation = util.add_shift_offset(util.by_pixel(0+17, -112+28+265+32),
    {
      filename = "__base__/graphics/entity/rocket-silo/12-rocket-smoke.png",
      priority = "medium",
      tint = { r = 0.8, g = 0.8, b = 1, a = 0.8 },
      --tint = { r = 0, g = 1, b = 0, a = 0.8 },
      width = 41,
      height = 145,
      frame_count = 24,
      line_length = 8,
      animation_speed = 0.5,
      scale = 1.5*1.3,
      shift = util.by_pixel(-2, -2),
      hr_version = {
        filename = "__base__/graphics/entity/rocket-silo/hr-12-rocket-smoke.png",
        priority = "medium",
        tint = { r = 0.8, g = 0.8, b = 1, a = 0.8 },
        --tint = { r = 0, g = 1, b = 0, a = 0.8 },
        width = 80,
        height = 286,
        frame_count = 24,
        line_length = 8,
        animation_speed = 0.5,
        scale = 1.5/2*1.3,
        shift = util.by_pixel(-1, -3),
      }
    }),
    rocket_smoke_top3_animation = util.add_shift_offset(util.by_pixel(0+48, -112+28+252+32),
    {
      filename = "__base__/graphics/entity/rocket-silo/12-rocket-smoke.png",
      priority = "medium",
      tint = { r = 0.8, g = 0.8, b = 1, a = 0.8 },
      --tint = { r = 0, g = 0, b = 1, a = 0.8 },
      width = 41,
      height = 145,
      frame_count = 24,
      line_length = 8,
      animation_speed = 0.5,
      scale = 1.5*1.3,
      shift = util.by_pixel(-2, -2),
      hr_version = {
        filename = "__base__/graphics/entity/rocket-silo/hr-12-rocket-smoke.png",
        priority = "medium",
        tint = { r = 0.8, g = 0.8, b = 1, a = 0.8 },
        --tint = { r = 0, g = 0, b = 1, a = 0.8 },
        width = 80,
        height = 286,
        frame_count = 24,
        line_length = 8,
        animation_speed = 0.5,
        scale = 1.5/2*1.3,
        shift = util.by_pixel(-1, -3),
      }
    }),

    rocket_smoke_bottom1_animation = util.add_shift_offset(util.by_pixel(0-69, -112+28+205+32),
    {
      filename = "__base__/graphics/entity/rocket-silo/12-rocket-smoke.png",
      priority = "medium",
      tint = { r = 0.8, g = 0.8, b = 1, a = 0.7 },
      --tint = { r = 1, g = 1, b = 0, a = 0.8 },
      width = 41,
      height = 145,
      frame_count = 24,
      line_length = 8,
      animation_speed = 0.5,
      scale = 1.5*1.3,
      shift = util.by_pixel(-2, -2),
      hr_version = {
        filename = "__base__/graphics/entity/rocket-silo/hr-12-rocket-smoke.png",
        priority = "medium",
        tint = { r = 0.8, g = 0.8, b = 1, a = 0.7 },
        --tint = { r = 1, g = 1, b = 0, a = 0.8 },
        width = 80,
        height = 286,
        frame_count = 24,
        line_length = 8,
        animation_speed = 0.5,
        scale = 1.5/2*1.3,
        shift = util.by_pixel(-1, -3),
      }
    }),
    rocket_smoke_bottom2_animation = util.add_shift_offset(util.by_pixel(0+62, -112+28+207+32),
    {
      filename = "__base__/graphics/entity/rocket-silo/12-rocket-smoke.png",
      priority = "medium",
      tint = { r = 0.8, g = 0.8, b = 1, a = 0.7 },
      --tint = { r = 0, g = 1, b = 1, a = 0.8 },
      width = 41,
      height = 145,
      frame_count = 24,
      line_length = 8,
      animation_speed = 0.5,
      scale = 1.5*1.3,
      shift = util.by_pixel(-2, -2),
      hr_version = {
        filename = "__base__/graphics/entity/rocket-silo/hr-12-rocket-smoke.png",
        priority = "medium",
        tint = { r = 0.8, g = 0.8, b = 1, a = 0.7 },
        --tint = { r = 0, g = 1, b = 1, a = 0.8 },
        width = 80,
        height = 286,
        frame_count = 24,
        line_length = 8,
        animation_speed = 0.5,
        scale = 1.5/2*1.3,
        shift = util.by_pixel(-1, -3),
      }
    }),
    rocket_flame_animation = util.add_shift_offset(util.by_pixel(-1, 280-16),
    {
      filename = "__base__/graphics/entity/rocket-silo/10-jet-flame.png",
      priority = "medium",
      blend_mode = "additive",
      width = 87,
      height = 128,
      frame_count = 8,
      line_length = 8,
      animation_speed = 0.5,
      scale = 1.13,
      shift = util.by_pixel(-0.5, -2),
      hr_version = {
        filename = "__base__/graphics/entity/rocket-silo/hr-10-jet-flame.png",
        priority = "medium",
        blend_mode = "additive",
        width = 172,
        height = 256,
        frame_count = 8,
        line_length = 8,
        animation_speed = 0.5,
        scale = 1.13/2,
        shift = util.by_pixel(-1, -2),
      }
    }),
    rocket_flame_left_animation = util.add_shift_offset(util.by_pixel(-32-28+3, 280-68+1),
    {
      filename = "__base__/graphics/entity/rocket-silo/10-jet-flame.png",
      priority = "medium",
      blend_mode = "additive",
      width = 87,
      height = 128,
      frame_count = 8,
      line_length = 8,
      animation_speed = 0.5,
      scale = 0.345*1.15,
      shift = util.by_pixel(-0.5, -2),
      hr_version = {
        filename = "__base__/graphics/entity/rocket-silo/hr-10-jet-flame.png",
        priority = "medium",
        blend_mode = "additive",
        width = 172,
        height = 256,
        frame_count = 8,
        line_length = 8,
        animation_speed = 0.5,
        scale = 0.345/2*1.15,
        shift = util.by_pixel(-1, -2),
      }
    }),
    rocket_flame_left_rotation = 0.0611,

    rocket_flame_right_animation = util.add_shift_offset(util.by_pixel(32+16, 280-50),
    {
      filename = "__base__/graphics/entity/rocket-silo/10-jet-flame.png",
      priority = "medium",
      blend_mode = "additive",
      width = 87,
      height = 128,
      frame_count = 8,
      line_length = 8,
      animation_speed = 0.5,
      scale = 0.368*1.15,
      shift = util.by_pixel(-0.5, -2),
      hr_version = {
        filename = "__base__/graphics/entity/rocket-silo/hr-10-jet-flame.png",
        priority = "medium",
        blend_mode = "additive",
        width = 172,
        height = 256,
        frame_count = 8,
        line_length = 8,
        animation_speed = 0.5,
        scale = 0.368/2*1.15,
        shift = util.by_pixel(-1, -2),
      }
    }),
    rocket_flame_right_rotation = 0.952,

    rocket_initial_offset = {0, 1.5},
    rocket_rise_offset = {0, -3.5},
    rocket_launch_offset = {0, -256},
    rocket_render_layer_switch_distance = 7.5,
    full_render_layer_switch_distance = 9,
    effects_fade_in_start_distance = 4.5,
    effects_fade_in_end_distance = 7.5,
    shadow_fade_out_start_ratio = 0.25,
    shadow_fade_out_end_ratio = 0.75,
    rocket_visible_distance_from_center = 2.75,
    rocket_above_wires_slice_offset_from_center = -3,
    rocket_air_object_slice_offset_from_center = -5.5
  },
  {
    type = "rocket-silo-rocket-shadow",
    name = "rocket-silo-rocket-shadow",
    flags = {"not-on-map"},
    collision_mask = {"not-colliding-with-itself"},
    collision_box = {{0, 0}, {10, 3.5}},
    selection_box = {{0, 0}, {0, 0}}
  }

})