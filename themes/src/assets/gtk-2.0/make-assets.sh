#! /usr/bin/env bash

for theme in '' '-Purple' '-Pink' '-Red' '-Orange' '-Yellow' '-Green' '-Blue' '-Grey'; do
	for color in '' '-Dark'; do
		for type in '' '-Dragon'; do
			if [[ "$color" == '' ]]; then
				case "$theme" in
				'')
					theme_color='#4d699b'
					;;
				-Purple)
					theme_color='#624c83'
					;;
				-Pink)
					theme_color='#b35b79'
					;;
				-Red)
					theme_color='#c84053'
					;;
				-Orange)
					theme_color='#cc6d00'
					;;
				-Yellow)
					theme_color='#de9800'
					;;
				-Green)
					theme_color='#6f894e'
					;;
				-Teal)
					theme_color='#4e8ca2'
					;;
				-Grey)
					theme_color='#54546d'
					;;
				esac

				if [[ "$type" == '-Dragon' ]]; then
					background_color='#f2ecbc'

					case "$theme" in
					'')
						theme_color='#8ba4b0'
						;;
					-Purple)
						theme_color='#8992a7'
						;;
					-Pink)
						theme_color='#a292a3'
						;;
					-Red)
						theme_color='#c4746e'
						;;
					-Orange)
						theme_color='#b6927b'
						;;
					-Yellow)
						theme_color='#c4b28a'
						;;
					-Green)
						theme_color='#87a987'
						;;
					-Teal)
						theme_color='#949fb5'
						;;
					-Grey)
						theme_color='#625e5a'
						;;
					esac
				fi
			else
				case "$theme" in
				'')
					theme_color='#7e9cd8'
					;;
				-Purple)
					theme_color='#957fb8'
					;;
				-Pink)
					theme_color='#d27e99'
					;;
				-Red)
					theme_color='#e46876'
					;;
				-Orange)
					theme_color='#ffa066'
					;;
				-Yellow)
					theme_color='#dca561'
					;;
				-Green)
					theme_color='#98bb6c'
					;;
				-Teal)
					theme_color='#6caf95'
					;;
				-Grey)
					theme_color='#727169'
					;;
				esac

				if [[ "$type" == '-Dragon' ]]; then
					background_color='#181616'

					case "$theme" in
					'')
						theme_color='#8ba4b0'
						;;
					-Purple)
						theme_color='#8992a7'
						;;
					-Pink)
						theme_color='#a292a3'
						;;
					-Red)
						theme_color='#c4746e'
						;;
					-Orange)
						theme_color='#b6927b'
						;;
					-Yellow)
						theme_color='#c4b28a'
						;;
					-Green)
						theme_color='#87a987'
						;;
					-Teal)
						theme_color='#949fb5'
						;;
					-Grey)
						theme_color='#625e5a'
						;;
					esac
				fi
			fi

			if [[ "$type" != '' ]]; then
				cp -r "assets${color}.svg" "assets${theme}${color}${type}.svg"
				if [[ "$color" == '' ]]; then
					sed -i "s/#7e9cd8/${theme_color}/g" "assets${theme}${color}${type}.svg"
				else
					sed -i "s/#4d699b/${theme_color}/g" "assets${theme}${color}${type}.svg"
				fi
			elif [[ "$theme" != '' ]]; then
				cp -r "assets${color}.svg" "assets${theme}${color}.svg"
				if [[ "$color" == '' ]]; then
					sed -i "s/#7e9cd8/${theme_color}/g" "assets${theme}${color}.svg"
				else
					sed -i "s/#4d699b/${theme_color}/g" "assets${theme}${color}.svg"
				fi
			fi

		done
	done
done

echo -e "DONE!"
