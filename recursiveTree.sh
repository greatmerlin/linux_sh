#! /bin/bash

branch() {
    if (( $1 == 0 )); then
        exit;
    fi
    let inc=int=ext=rows=$(( 64 / 2**$1 ))
    for ((i=1;i<=rows;i++)) do
        x=$((buffer))
        for ((j=0;j<100;j++)) do
            if (( $1 > N )) || (( j >= (100 - buffer) )) || (( j != x )); then
                printf "_"
            else
                printf "1"
                if (( i <= rows/2 )); then
                    if (( inc == int )); then
                        inc=$((ext))
                    else
                        inc=$((int))
                    fi
                fi
                x=$((x+inc))
            fi
        done
        printf "\n"
        if ((i <= rows/2 )); then
            buffer=$((buffer+1))
            int=$((int-2))
            inc=ext=$((ext+2))
        fi
    done
    branch $(($1-1))
}
printf "%0.s_" {1..100}
printf "\n"
buffer=18
read N
branch 5
