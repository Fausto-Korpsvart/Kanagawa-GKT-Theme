#! /usr/bin/env bash

for theme in '' '-Blue' '-Green' '-Grey' '-Orange' '-Pink' '-Purple' '-Red' '-Teal' '-Yellow'; do
    for color in '' '-Dark'; do
        for type in '' '-Dragon'; do
            if [[ "$color" == '' ]]; then
                case "$theme" in
                    '')
                        theme_color='#4d699b'
                        ;;
                    -Green)
                        theme_color='#6f894e'
                        ;;
                    -Grey)
                        theme_color='#54546d'
                        ;;
                    -Orange)
                        theme_color='#cc6d00'
                        ;;
                    -Pink)
                        theme_color='#b35b79'
                        ;;
                    -Purple)
                        theme_color='#624c83'
                        ;;
                    -Red)
                        theme_color='#c84053'
                        ;;
                    -Teal)
                        theme_color='#4e8ca2'
                        ;;
                    -Yellow)
                        theme_color='#de9800'
                        ;;
                esac

                if [[ "$type" == '-Dragon' ]]; then
                    background_color='#f2ecbc'

                    case "$theme" in
                        '')
                            theme_color='#4d699b'
                            ;;
                        -Green)
                            theme_color='#6f894e'
                            ;;
                        -Grey)
                            theme_color='#54546d'
                            ;;
                        -Orange)
                            theme_color='#cc6d00'
                            ;;
                        -Pink)
                            theme_color='#b35b79'
                            ;;
                        -Purple)
                            theme_color='#624c83'
                            ;;
                        -Red)
                            theme_color='#c84053'
                            ;;
                        -Teal)
                            theme_color='#4e8ca2'
                            ;;
                        -Yellow)
                            theme_color='#de9800'
                            ;;
                    esac
                fi
            else
                case "$theme" in
                    '')
                        theme_color='#7e9cd8'
                        ;;
                    -Green)
                        theme_color='#98bb6c'
                        ;;
                    -Grey)
                        theme_color='#c8c093'
                        ;;
                    -Orange)
                        theme_color='#ffa066'
                        ;;
                    -Pink)
                        theme_color='#d27e99'
                        ;;
                    -Purple)
                        theme_color='#957fb8'
                        ;;
                    -Red)
                        theme_color='#e46876'
                        ;;
                    -Teal)
                        theme_color='#6caf95'
                        ;;
                    -Yellow)
                        theme_color='#dca561'
                        ;;
                esac

                if [[ "$type" == '-Dragon' ]]; then
                    background_color='#181616'

                    case "$theme" in
                        '')
                            theme_color='#8ba4b0'
                            ;;
                        -Green)
                            theme_color='#87a987'
                            ;;
                        -Grey)
                            theme_color='#c8c093'
                            ;;
                        -Orange)
                            theme_color='#b6927b'
                            ;;
                        -Pink)
                            theme_color='#a292a3'
                            ;;
                        -Purple)
                            theme_color='#8992a7'
                            ;;
                        -Red)
                            theme_color='#c4746e'
                            ;;
                        -Teal)
                            theme_color='#949fb5'
                            ;;
                        -Yellow)
                            theme_color='#c4b28a'
                            ;;
                    esac
                fi
            fi

            if [[ "$type" != '' ]]; then
                cp -r "assets${color}.svg" "assets${theme}${color}${type}.svg"
                if [[ "$color" == '' ]]; then
                    sed -i "s/#4d699b/${theme_color}/g" "assets${theme}${color}${type}.svg"
                else
                    sed -i "s/#7e9cd8/${theme_color}/g" "assets${theme}${color}${type}.svg"
                fi
            elif [[ "$theme" != '' ]]; then
                cp -r "assets${color}.svg" "assets${theme}${color}.svg"
                if [[ "$color" == '' ]]; then
                    sed -i "s/#4d699b/${theme_color}/g" "assets${theme}${color}.svg"
                else
                    sed -i "s/#7e9cd8/${theme_color}/g" "assets${theme}${color}.svg"
                fi
            fi

        done
    done
done

echo -e "DONE!"
