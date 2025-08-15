#! /usr/bin/env bash

for theme in '' '-Blue' '-Green' '-Grey' '-Orange' '-Pink' '-Purple' '-Red' '-Teal' '-Yellow'; do
    for type in '' '-Dragon'; do
        case "$theme" in
            '')
                theme_color_dark='#7e9cd8'
                theme_color_light='#4d699b'
                ;;
            -Blue)
                theme_color_dark='#7e9cd8'
                theme_color_light='#4d699b'
                ;;
            -Green)
                theme_color_dark='#98bb6c'
                theme_color_light='#6f894e'
                ;;
            -Grey)
                theme_color_dark='#c8c093'
                theme_color_light='#54546d'
                ;;
            -Orange)
                theme_color_dark='#ffa066'
                theme_color_light='#cc6d00'
                ;;
            -Pink)
                theme_color_dark='#d27e99'
                theme_color_light='#b35b79'
                ;;
            -Purple)
                theme_color_dark='#957fb8'
                theme_color_light='#624c83'
                ;;
            -Red)
                theme_color_dark='#e46876'
                theme_color_light='#c84053'
                ;;
            -Teal)
                theme_color_dark='#6caf95'
                theme_color_light='#4e8ca2'
                ;;
            -Yellow)
                theme_color_dark='#dca561'
                theme_color_light='#de9800'
                ;;
        esac

        if [[ "$type" == '-Dragon' ]]; then
            panel_dark='#181616'
            panel_light='#f2ecbc'

            case "$theme" in
                '')
                    theme_color_dark='#8ba4b0'
                    theme_color_light='#4d699b'
                    ;;
                -Blue)
                    theme_color_dark='#8ba4b0'
                    theme_color_light='#4d699b'
                    ;;
                -Green)
                    theme_color_dark='#87a987'
                    theme_color_light='#6f894e'
                    ;;
                -Grey)
                    theme_color_dark='#c8c093'
                    theme_color_light='#54546d'
                    ;;
                -Orange)
                    theme_color_dark='#b6927b'
                    theme_color_light='#cc6d00'
                    ;;
                -Pink)
                    theme_color_dark='#a292a3'
                    theme_color_light='#b35b79'
                    ;;
                -Purple)
                    theme_color_dark='#8992a7'
                    theme_color_light='#624c83'
                    ;;
                -Red)
                    theme_color_dark='#c4746e'
                    theme_color_light='#c84053'
                    ;;
                -Teal)
                    theme_color_dark='#949fb5'
                    theme_color_light='#4e8ca2'
                    ;;
                -Yellow)
                    theme_color_dark='#c4b28a'
                    theme_color_light='#de9800'
                    ;;
            esac
        fi

        if [[ "$type" != '' ]]; then
            rm -rf "thumbnail${theme}${type}.svg"
            cp -rf "thumbnail.svg" "thumbnail${theme}${type}.svg"
            sed -i "s/#7e9cd8/${theme_color_dark}/g" "thumbnail${theme}${type}.svg"
            sed -i "s/#4d699b/${theme_color_light}/g" "thumbnail${theme}${type}.svg"
            sed -i "s/#f2ecbc/${panel_light}/g" "thumbnail${theme}${type}.svg"
            sed -i "s/#1f1f28/${panel_dark}/g" "thumbnail${theme}${type}.svg"
            sed -i "s/thumbnail/thumbnail${theme}${type}/g" "thumbnail${theme}${type}.svg"
        elif [[ "$theme" != '' ]]; then
            rm -rf "thumbnail${theme}.svg"
            cp -rf "thumbnail.svg" "thumbnail${theme}.svg"
            sed -i "s/#7e9cd8/${theme_color_dark}/g" "thumbnail${theme}.svg"
            sed -i "s/#4d699b/${theme_color_light}/g" "thumbnail${theme}.svg"
            sed -i "s/thumbnail/thumbnail${theme}/g" "thumbnail${theme}.svg"
        fi
    done
done

echo -e "DONE!"
