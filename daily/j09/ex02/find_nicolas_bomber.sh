#!/bin/sh
# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    find_nicolas_bomber.sh                             :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: jpucelle <jpucelle@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2014/07/18 08:47:59 by jpucelle          #+#    #+#              #
#    Updated: 2014/07/18 08:47:59 by jpucelle         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

if [ $# -eq 1 ]; then
	cat $1 | grep -i "Nicolas\tBomber" | awk -F'\t' '{print $3}' | awk -F'[^0-9]*' '$1'
fi
