package org.shlg.news.backup;

import java.util.Random;

public class MyRandom {

    public static void main(String[] args) {

         int n = 20;

        Random rand = new Random();

        boolean[]  bool = new boolean[n];

        int randInt = 0;

        for(int i = 0; i < 6 ; i++) {

             do {

                 randInt  = rand.nextInt(n);

             }while(bool[randInt]);

            bool[randInt] = true;

            System.out.println(randInt);

       }

  }

}
