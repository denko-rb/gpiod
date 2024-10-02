# gpiod

# Experimental (DO NOT USE!)

If you need to use Linux GPIO in Ruby, please see [denko-piboard](https://github.com/denko-rb/denko-piboard) or [lgpio](https://github.com/denko-rb/lgpio) instead.

This gem only contains some (probably bad) code, extracted from an old version of `denko-piboard`. I started building that on top of `libgpiod` directly, but eventually settled on [lgpio](https://github.com/joan2937/lg) which has more features and was simpler to implement.

At some point, I will probably finish the `libgpiod` implementation, and substitute it where applicable in `denko-piboard`, in place of `lgpio`. It performs ~15-20% better, but `lgpio` + YJIT is already pretty fast, so this isn't a priority.
