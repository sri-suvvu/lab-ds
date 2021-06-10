AIM:-C program to perform binary search for a key value in given list by using both recursive and non-recursive function
Algrothim:
Step1 : start
step2 : declare n,i,val,pos,option
step3 : input n 
step4 : declare arr[n]
step5 : intialize i=0
step6 : IF i<n 
            GO TO step7
        ELSE
           GO TO step9
        [END OF IF]
Step7 : read arr[i]
step8 : i=i+1 , GO TO step6
step9 : take input val
step10: Display "Enter 1 for non recursive function"
step11: Display "Enter 2 for recursive function"
step 12: read option
step13: IF option = 1
           GO TO step 14
        ELSE IF option = 2
             GO TO step 19
        ELSE
             GO TO step 22
step14 : Initialize beg=0, end=n-1, pos=-1
step15 : repeat step16 and step17 while beg<=end
step16 : set mid=(beg+end)/2
step17 : IF arr[mid]=val
             set pos= mid
             print pos
             go to step22
         Else if arr[mid] > val
              set end=mid-1
         Else
              set beg=mid+1
         [END OF IF]
step18: IF pos = -1
           print "value not found in array"
           [END OF IF]
            GO TO STEP22  
step19 : initialize beg=0, end=n-1, pos=-1
step20 : IF beg<=end
            set mid=(beg+end)/2
            IF arr[mid]=val
                 assign pos = mid
                 GO TO step22
                 [END OF IF]
            ELSE IF arr[mid] > val
                 set end = mid-1
                 go to step 20
            ELSE
                set beg = mid+1
                GO TO step20
             [END OF IF] 
         ELSE  
            assign pos = -1
             [END OF IF] 
step21 : IF pos!=-1
           print "element is found"
             go to step 22
         ELSE
            print "element not found"
           GO TO step 22
step22: STOP
Program:
#include<stdio.h>
int binaryrecur(int n,int arr[*],int beg,int end,int val);   //Recursive function
void binarynonrecur(int n,int arr[*],int beg,int end,int val);	//Non-Recursive function
void main()
{
	int n,i,val,pos,option;
	printf("enter the size of array: ");
	scanf("%d",&n);
	int arr[n];
	printf("enter the elements in ascending order: ");
	for(i=0;i<n;i++)
		scanf("%d",&arr[i]);
	printf("enter the value to search: ");
	scanf("%d",&val);
	printf("enter 1 for Non-Recursive Function \n");
	printf("enter 2 for Recursive Function\n");
	scanf("%d",&option);
	switch(option)
	{
	    case 1:
	    {
	       	binarynonrecur(n,arr,0,n-1,val);
	       	break;
	    }
	    case 2:
	    {
	       pos=binaryrecur(n,arr,0,n-1,val);
			if(pos!=-1)
				printf("\nelement %d found at %d position using Recursion Function",val,pos+1);
			else
				printf("\nelement %d not found using Recursion Function",val);
	        break;	
	    }
	    default:
	        printf("enter correct option! ");
	}		
}
int binaryrecur(int n,int arr[n],int beg,int end,int val)	//Recursion Function
{
	if(beg<=end)
	{
		int mid=(beg+end)/2;
		if(arr[mid]==val)
			return mid;
		if(arr[mid]>val)
			return binaryrecur(n,arr,beg,mid-1,val);
		else
			return binaryrecur(n,arr,mid+1,end,val);		
	}
	return -1;
}
void binarynonrecur(int n,int arr[n],int beg,int end,int val)	//Non-Recursion Function
{
	int mid,pos=-1;
	while(beg<=end)
	{
		mid=(beg+end)/2;
		if(arr[mid]==val)
		{
			pos=mid+1;
			printf("\nelement %d is found at position %d using Non-Recursion",val,pos);
			break;
		}
		else if(arr[mid]>val)
			end=mid-1;
		else
			 beg=mid+1;	
	}
	if(pos==-1)
		printf("\nelement %d does not found in the array using Non-Recursion",val);
}
Output:
1.enter the size of array :6
enter the element in ascending order:10 15 25 30 60 75
enter the value to search:15
enter 1 for non recursive function
enter 2 for recursive function
1
 element 15 is found at position 2 using non-recursion
2.enter the size of array :4
enter the element in ascending order:10 20 30 40 50
enter the value to search:40
enter 1 for non recursive function
enter 2 for recursive function
2
 element 20 is found at position 4  using  recursion
3.enter the size of array :5
enter the element in ascending order:20 30 40 50 60
enter the value to search:15
enter 1 for non recursive function
enter 2 for recursive function
1
 element 15 does not found using  non-recursion
4.enter the size of array :5
enter the element in ascending order:10 20 35 45 65
enter the value to search:10
enter 1 for non recursive function
enter 2 for recursive function
2
 element 25 does  not found using recursion
        

