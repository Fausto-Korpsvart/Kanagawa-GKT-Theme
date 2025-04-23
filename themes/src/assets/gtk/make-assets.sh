#! /usr/bin/env bash

for theme in '' '-Purple' '-Pink' '-Red' '-Orange' '-Yellow' '-Green' '-Blue' '-Grey'; do
	for type in '' '-Dragon'; do
		case "$theme" in
		'')
			theme_color_dark='#7e9cd8'
			theme_color_light='#4d699b'
			;;
		-Purple)
			theme_color_dark='#957fb8'
			theme_color_light='#624c83'
			;;
		-Pink)
			theme_color_dark='#d27e99'
			theme_color_light='#b35b79'
			;;
		-Red)
			theme_color_dark='#e46876'
			theme_color_light='#c84053'
			;;
		-Orange)
			theme_color_dark='#ffa066'
			theme_color_light='#cc6d00'
			;;
		-Yellow)
			theme_color_dark='#dca561'
			theme_color_light='#de9800'
			;;
		-Green)
			theme_color_dark='#98bb6c'
			theme_color_light='#6f894e'
			;;
		-Blue)
			theme_color_dark='#7e9cd8'
			theme_color_light='#4d699b'
			;;
		-Grey)
			theme_color_dark='#1f1f28'
			theme_color_light='#f2ecbc'
			;;
		esac

		if [[ "$type" == '-Dragon' ]]; then
			background_light='#f2ecbc'
			background_dark='#181616'
			base_dark='#1f1f28'
			surface_dark='#2a2a37'

			case "$theme" in
			'')
				theme_color_dark='#8ba4b0'
				theme_color_light='#4d699b'
				;;
			-Purple)
				theme_color_dark='#8992a7'
				theme_color_light='#624c83'
				;;
			-Pink)
				theme_color_dark='#a292a3'
				theme_color_light='#b35b79'
				;;
			-Red)
				theme_color_dark='#c4746e'
				theme_color_light='#c84053'
				;;
			-Orange)
				theme_color_dark='#b6927b'
				theme_color_light='#cc6d00'
				;;
			-Yellow)
				theme_color_dark='#c4b28a'
				theme_color_light='#de9800'
				;;
			-Green)
				theme_color_dark='#87a987'
				theme_color_light='#6f894e'
				;;
			-Blue)
				theme_color_dark='#8ba4b0'
				theme_color_light='#4d699b'
				;;
			-Grey)
				theme_color_dark='#181616'
				theme_color_light='#f2ecbc'
				;;
			esac
		fi

		if [[ "$type" != '' ]]; then
			cp -rf "assets.svg" "assets${theme}${type}.svg"
			sed -i "s/#8ba4b0/${theme_color_dark}/g" "assets${theme}${type}.svg"
			sed -i "s/#4d699b/${theme_color_light}/g" "assets${theme}${type}.svg"
			sed -i "s/#f2ecbc/${background_light}/g" "assets${theme}${type}.svg"
			sed -i "s/#1f1f28/${background_dark}/g" "assets${theme}${type}.svg"
			sed -i "s/#16161d/${base_dark}/g" "assets${theme}${type}.svg"
			sed -i "s/#2a2a37/${surface_dark}/g" "assets${theme}${type}.svg"
		elif [[ "$theme" != '' ]]; then
			cp -rf "assets.svg" "assets${theme}.svg"
			sed -i "s/#7e9cd8/${theme_color_dark}/g" "assets${theme}.svg"
			sed -i "s/#4d699b/${theme_color_light}/g" "assets${theme}.svg"
		fi
	done
done

echo -e "DONE!"
