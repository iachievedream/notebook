java_sorting

傳統氣泡排序法 Bubble_Sort
~~~
public class Bubble_Sort extends Object
{
	public static void main(String args[])
	{
		int i,j,tmp;
		int data[]={6,5,9,7,2,8};	//原始資料
		
		System.out.println("氣泡排序法：");
		System.out.print("原始資料為：");
		for(i=0;i<6;i++)
		{
			System.out.print(data[i]+" ");
		}
		System.out.print("\n");
		
		for (i=5;i>0;i--)		//掃瞄次數
		{
			for (j=0;j<i;j++)   	//比較、交換次數
			{
				// 比較相鄰兩數，如第一數較大則交換
				if (data[j]>data[j+1])
				{
				tmp=data[j];
				data[j]=data[j+1];
				data[j+1]=tmp;
			   }
		    }
		
		    //把各次掃描後的結果印出
		    System.out.print("第"+(6-i)+"次排序後的結果是："); 
		    for (j=0;j<6;j++)
		    {
			System.out.print(data[j]+" ");
		    }		
		    System.out.print("\n");
		}
		
		System.out.print("排序後結果為：");
		for (i=0;i<6;i++)
		{
			System.out.print(data[i]+" ");
		}
		System.out.print("\n");
	}
}
~~~

改良氣泡排序法
~~~
public class Bubble_Sort2 extends Object
{
	int data[]=new int[]{4,6,2,7,8,9};	//原始資料

	public static void main(String args[])
	{		
		System.out.print("改良氣泡排序法\n原始資料為：");
		Bubble_Sort2 test=new Bubble_Sort2();
		test.showdata();
		test.bubble();
	}
	
	public void showdata ()     //利用迴圈列印資料
    {
	int i;
	for (i=0;i<6;i++)
	{
		System.out.print(data[i]+" ");
	}
	System.out.print("\n");
    }

    public void bubble ()
    {
	int i,j,tmp,flag;    	
	for(i=5;i>=0;i--)
	{
		flag=0;           //flag用來判斷是否有執行交換的動作
		for (j=0;j<i;j++)
		{
			if (data[j+1]<data[j])
			{
				tmp=data[j];
				data[j]=data[j+1];
				data[j+1]=tmp;
				flag++;    //如果有執行過交換，則flag不為0
			}
		}
		if (flag==0)
		{
			break;
		}
			
			//當執行完一次掃描就判斷是否做過交換動作，如果沒有交換過資料
			//，表示此時陣列已完成排序，故可直接跳出迴圈
			
			System.out.print("第"+(6-i)+"次排序：");
			for (j=0;j<6;j++)
			{
				System.out.print(data[j]+" ");
			}
			System.out.print("\n");
		}
		
	System.out.print("排序後結果為：");
	showdata ();
	}
}
~~~

選擇排序法 Selection_Sort
~~~
public class Selection_Sort extends Object
{
	int data[]=new int[]{9,7,5,3,4,6};
	
	public static void main(String args[])
	{
		System.out.print("原始資料為：");
		Selection_Sort test=new Selection_Sort();		
		test.showdata ();
		test.select ();
	}
	
	void showdata ()
	{
		int i;
		for (i=0;i<6;i++)
		{
			System.out.print(data[i]+" ");
		}
		System.out.print("\n");
	}
	
	void select ()
	{
		int i,j,tmp,k;
		for(i=0;i<5;i++)    	    //掃描5次
		{   
			for(j=i+1;j<6;j++)  //由i+1比較起，比較5次
			{	
				if(data[i]>data[j])  //比較第i及第j個元素
				{	
					tmp=data[i];
					data[i]=data[j];
					data[j]=tmp;	
				}
			}
			System.out.print("第"+(i+1)+"次排序結果：");
		for (k=0;k<6;k++)
		{
			System.out.print(data[k]+" ");    //列印排序結果
		}
		System.out.print("\n");
	    }
	    System.out.print("\n");
	}
}
~~~

插入排序法 Insert_Sort
~~~
import java.io.*;

public class Insert_Sort extends Object
{
	int data[]=new int[6];
	int size=6;
	
	public static void main(String args[])
	{
		Insert_Sort test=new Insert_Sort();
		test.inputarr();
		System.out.print("您輸入的原始陣列是：");		
		test.showdata();
		test.insert();
	}

	void inputarr()
	{
		int i;
		for (i=0;i<size;i++)      //利用迴圈輸入陣列資料
		{
			try{
				System.out.print("請輸入第"+(i+1)+"個元素：");
				InputStreamReader isr = new InputStreamReader(System.in);
				BufferedReader br = new BufferedReader(isr);
				data[i]=Integer.parseInt(br.readLine());
			}catch(Exception e){}
		}
	}
	
	void showdata()
	{  
		int i;
		for (i=0;i<size;i++)
		{
			System.out.print(data[i]+" ");   //列印陣列資料
		}
		System.out.print("\n");
	}
	
	void insert()
	{  
		int i;     //i為掃描次數
		int j;     //以j來定位比較的元素
		int tmp;   //tmp用來暫存資料
		for (i=1;i<size;i++)  //掃描迴圈次數為SIZE-1
		{  
			tmp=data[i];
	j=i-1;
		while (j>=0 && tmp<data[j])  //如果第二元素小於第一元素
			{							
			  data[j+1]=data[j]; //就把所有元素往後推一個位置
			  j--;
			}
			data[j+1]=tmp;       //最小的元素放到第一個元素
			System.out.print("第"+i+"次掃瞄：");
			showdata();
		}
	}
	
}
~~~

謝耳排序法 Shell_Sort
~~~
import java.io.*;

public class Shell_Sort extends Object
{
	int data[]=new int[8];
	int size=8;	
	
	public static void main(String args[])
	{ 		
		ch08_05 test =  new ch08_05();
		test.inputarr();		
		System.out.print("您輸入的原始陣列是：");
		test.showdata();
		test.shell();
	}

	void inputarr()
	{
		int i=0;
		for (i=0;i<size;i++)
		{ 
			System.out.print("請輸入第"+(i+1)+"個元素：");
			try{				
				InputStreamReader isr = new InputStreamReader(System.in);
				BufferedReader br = new BufferedReader(isr);
				data[i]=Integer.parseInt(br.readLine());
			}catch(Exception e){}
		}
	}

	void showdata()
	{
		int i=0;		
		for (i=0;i<size;i++)
		{
			System.out.print(data[i]+" ");
		}
		System.out.print("\n");
	}
	
	void shell()
	{  
		int i;        //i為掃描次數
		int j;        //以j來定位比較的元素
		int k=1;      //k列印計數
		int tmp;      //tmp用來暫存資料
		int jmp;      //設定間距位移量
		jmp=size/2;
		while (jmp != 0)
		{  
			for (i=jmp ;i<size ;i++)
			{  
				tmp=data[i];
				j=i-jmp;
				while(j>=0 && tmp<data[j])  //插入排序法
				{  
					data[j+jmp] = data[j];
					j=j-jmp;
				}	
				data[jmp+j]=tmp;				
			}
			
			System.out.print("第"+ (k++) +"次排序：");			
			showdata();
			jmp=jmp/2;    //控制迴圈數
		}
        }
}
~~~

快速排序法 Quick_Sort
~~~
import java.io.*;
import java.util.*;

public class Quick_Sort extends Object
{
	int process = 0;
	int size;
	int data[]=new int[100];
	
	public static void main(String args[])
	{
		ch08_06 test = new ch08_06();
		
		System.out.print("請輸入陣列大小(100以下)：");
		try{			
			InputStreamReader isr = new InputStreamReader(System.in);
			BufferedReader br = new BufferedReader(isr);
			test.size=Integer.parseInt(br.readLine());
		}catch(Exception e){}		
		
		test.inputarr ();
		System.out.print("原始資料是：");		
		test.showdata ();
		
		test.quick(test.data,test.size,0,test.size-1);
		System.out.print("\n排序結果：");
		test.showdata();
	}	
	
	void inputarr()
	{
		//以亂數輸入
		Random rand=new Random();
		int i;
		for (i=0;i<size;i++)
			data[i]=(Math.abs(rand.nextInt(99)))+1;		
	}
	
	void showdata()
	{  
		int i;
		for (i=0;i<size;i++)
			System.out.print(data[i]+" ");		
		System.out.print("\n");
	}

	void quick(int d[],int size,int lf,int rg)
	{
		int i,j,tmp;		
		int lf_idx;
		int rg_idx;
		int t;
                                         //1:第一筆鍵值為d[lf]
		if(lf<rg)
		{
			lf_idx=lf+1;
			rg_idx=rg;
			
			//排序
			while(true)
			{			
				System.out.print("[處理過程"+(process++)+"]=> ");
				for(t=0;t<size;t++)
					System.out.print("["+d[t]+"] ");									
				
				System.out.print("\n");
			
				for(i=lf+1;i<=rg;i++)  //2:由左向右找出一個鍵值大於d[lf]者
				{		
					if(d[i]>=d[lf])
					{
						lf_idx=i;
						break;
					}
					lf_idx++;
				}
			
				for(j=rg;j>=lf+1;j--)   //3:由右向左找出一個鍵值小於d[lf]者
				{			
					if(d[j]<=d[lf]) 
					{
						rg_idx=j;
						break;
					}
					rg_idx--;
				}
			
				if(lf_idx<rg_idx)        //4-1:若lf_idx<rg_idx
				{								
					tmp = d[lf_idx];
					d[lf_idx] = d[rg_idx]; //則d[lf_idx]和d[rg_idx]互換
					d[rg_idx] = tmp;       //然後繼續排序	
				}else{
					break;		       //否則跳出排序過程
				}
			}
			
			//整理
			if(lf_idx>=rg_idx)              //5-1:若lf_idx大於等於rg_idx
			{                               //則將d[lf]和d[rg_idx]互換
				tmp = d[lf];
				d[lf] = d[rg_idx];
				d[rg_idx] = tmp;
				   //5-2:並以rg_idx為基準點分成左右兩半
				quick(d,size,lf,rg_idx-1); //以遞迴方式分別為左右兩半進行排序
				quick(d,size,rg_idx+1,rg); //直至完成排序
			}
		}
	}
}
~~~


~~~

~~~
