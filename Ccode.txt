#include <stdio.h>
#include <stdlib.h>
int AddNum(int x,int y){
    return x+y;
}
int main()
{
int flag=4;
while(flag!=0){
    printf("\n\n***********************************************************************\nEnter the number to choose an operation\nAdd two numbers choose 1\nmultiplication two numbers choose 2\ndivide two numbers choose 3\nget minimum of list choose 4\ndetermine if the shape is Square or Rectangle chooose 5\ndetermine if the shape is triangle or not choose 6\nTo terminate the program choose 0\n************************************************************************\n");
    scanf("%d",&flag);
    if(flag==1){
        printf("\nEnter Two integers \n");
        int x,y;
        scanf("%d %d",&x,&y);
        printf("summation is : %d",AddNum(x,y));
    }
    else if(flag==2){
        printf("\nto make multiplication enter two numbers:\n");
        int x,y;
        scanf("%d %d",&x,&y);
        printf("multiplication is : %d",x*y);
    }
    else if(flag==3){
        printf("\nplease enter two numbers\n");
        int x,y;
        scanf("%d %d",&x,&y);
        printf("\nthe division is : %d",x/y);
    }
    else if(flag==4){
        int arr[100005],i,n,mini;
        printf("\nplease enter the size of the array (an integer number between 1 and 100000) : ");
        scanf("%d",&n);
        printf("\nPlease enter the n numbers : ");
        for(i=0;i<n;++i){
            scanf("%d",&arr[i]);
        }
        mini=arr[0];
        for(i=1;i<n;++i){
            if(mini>arr[i]){
                mini=arr[i];
            }
        }
        printf("\nthe minimum number in the array is : %d",mini);
    }
    else if(flag==5){
        printf("\nplease enter the four numbers: \n");
        int side1,side2,side3,side4;
        scanf("%d %d %d %d",&side1,&side2,&side3,&side4);
        if(side1==side2&&side1==side3&&side1==side4){
            printf("the output is (Square)\n");
        }
        else if(side1==side2&&side3==side4){
            printf("the output is (Rectangle)\n");
        }
        else if(side1==side3&&side2==side4){
            printf("the output is (Rectangle)\n");
        }
        else if(side1==side4&&side2==side3){
            printf("the output is (Rectangle)\n");
        }
        else{
            printf("the output is not (Square or Rectangle)\n");
        }
    }
    else if(flag==6){
        int side1,side2,side3;
        printf("\n please enter the three numbers to check triangle\n");
        scanf("%d %d %d",&side1,&side2,&side3);
        if(side1+side2>side3&&side1+side3>side2&&side2+side3>side1){
            printf("the output is (Triangle)\n");
        }
        else{
            printf("the output is (Not Triangle)\n");
        }
    }

}
}
