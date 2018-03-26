/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strcmp.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: fofow <marvin@42.fr>                       +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2017/11/22 16:47:24 by fofow             #+#    #+#             */
/*   Updated: 2017/11/22 16:47:26 by fofow            ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

int	ft_strcmp(const char *s1, const char *s2)
{
	while (*s1++ == *s2++ && *(s1 - 1))
		;
	return ((unsigned char)*(s1 - 1) - (unsigned char)*(s2 - 1));
}