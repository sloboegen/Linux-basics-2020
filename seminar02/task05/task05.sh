#! /bin/bash
sed '/^name=/c name=Timur' file.property | sed '/^lastname=/c lastname=Garaev'