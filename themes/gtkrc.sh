make_gtkrc() {
	local dest="${1}"
	local name="${2}"
	local theme="${3}"
	local color="${4}"
	local size="${5}"
	local ctype="${6}"
	local window="${7}"

	[[ "${color}" == '-Light' ]] && local ELSE_LIGHT="${color}"
	[[ "${color}" == '-Dark' ]] && local ELSE_DARK="${color}"

	local GTKRC_DIR="${SRC_DIR}/main/gtk-2.0"
	local THEME_DIR="${1}/${2}${3}${4}${5}${6}"

	if [[ "${color}" != '-Dark' ]]; then
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

		if [[ "$ctype" == '-Dragon' ]]; then
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

		if [[ "$ctype" == '-Dragon' ]]; then
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

	if [[ "$blackness" == 'true' ]]; then
		case "$ctype" in
		'')
			background_light='#f2ecbc'
			background_dark='#181820'
			background_darker='#16161d'
			background_alt='#2a2a37'
			titlebar_light='#dcd7ba'
			titlebar_dark='#0d0c0c'
			;;
		-Dragon)
			background_light='#c5c9c5'
			background_dark='#12120f'
			background_darker='#0d0c0c'
			background_alt='#181616'
			titlebar_light='#f2ecbc'
			titlebar_dark='#020203'
			;;
		esac
	else
		case "$ctype" in
		'')
			background_light='#f2ecbc'
			background_dark='#1f1f28'
			background_darker='#16161d'
			background_alt='#1a1a22'
			titlebar_light='#dcd7ba'
			titlebar_dark='#1f1f28'
			;;
		-Dragon)
			background_light='#c5c9c5'
			background_dark='#181616'
			background_darker='#0d0c0c'
			background_alt='#282727'
			titlebar_light='#f2ecbc'
			titlebar_dark='#181616'
			;;
		esac
	fi

	mkdir -p "${THEME_DIR}/gtk-2.0"

	cp -r "${GTKRC_DIR}/gtkrc${ELSE_DARK:-}-default" "${THEME_DIR}/gtk-2.0/gtkrc"
	sed -i "s/#f2ecbc/${background_light}/g" "${THEME_DIR}/gtk-2.0/gtkrc"
	sed -i "s/#1f1f28/${background_dark}/g" "${THEME_DIR}/gtk-2.0/gtkrc"
	sed -i "s/#2a2a37/${background_alt}/g" "${THEME_DIR}/gtk-2.0/gtkrc"

	if [[ "${color}" == '-Dark' ]]; then
		sed -i "s/#7e9cd8/${theme_color}/g" "${THEME_DIR}/gtk-2.0/gtkrc"
		sed -i "s/#16161d/${background_darker}/g" "${THEME_DIR}/gtk-2.0/gtkrc"
		sed -i "s/#16161d/${titlebar_dark}/g" "${THEME_DIR}/gtk-2.0/gtkrc"
	else
		sed -i "s/#4d699b/${theme_color}/g" "${THEME_DIR}/gtk-2.0/gtkrc"
		sed -i "s/#f2ecbc/${titlebar_light}/g" "${THEME_DIR}/gtk-2.0/gtkrc"
	fi
}
