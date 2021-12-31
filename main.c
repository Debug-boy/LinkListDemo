#include <stdio.h>
#include <stdlib.h>

typedef struct Node{
    int data;
    struct Node *next;
}*PNode;

typedef PNode LinkList;
typedef unsigned char bool;

#define CREATE_HEAD     1
#define CREATE_TATIL    2
#define false           0
#define true            1

LinkList  linkList_create(int length,int mode){
    PNode headNode = 0;
    PNode virtualHead = 0;
    PNode tempNode = 0;
    for(int i=1;i<=length;++i){
        tempNode = (PNode) malloc(sizeof (struct Node));
        tempNode->data = i;

        if(mode == CREATE_HEAD){
            tempNode->next = headNode;
            headNode = tempNode;
        }else if(mode == CREATE_TATIL){
            if(headNode==0){
                headNode = tempNode;
                virtualHead = headNode;
            }else{
                virtualHead->next = tempNode;
                virtualHead = tempNode;
                virtualHead->next = 0;
            }
        }
    }
    return headNode;
}

LinkList  linkList_inverse(LinkList list){
    PNode pre = 0;
    PNode cur = list;
    PNode nxt = 0;

    nxt = list->next;
    while(1){
        cur->next = pre;
        pre = cur;
        if(nxt==0)
            break;
        cur = nxt;
        nxt = nxt->next;
    }
    return pre;
}

LinkList linklist_reverse(LinkList list){
    static PNode stack_bottom;
    static PNode firstNode;
    if(firstNode==0)
        firstNode = list;
    if(list->next==0){
        stack_bottom = list;
        return list;
    }
    PNode pre = list;
    PNode cur = linklist_reverse(list->next);
    cur->next = pre;
    pre->next = 0;
    return (firstNode==list)?stack_bottom:list;
}

bool linklist_inster(LinkList list,int insFlag,PNode insNode){
    PNode nxt;
    while(list){
        if(list->data==insFlag){
            nxt = list->next;
            list->next = insNode;
            insNode->next = nxt;
            return true;
        }
        list= list->next;
    }
    return false;
}

bool linklist_delete(LinkList *list,int delFlag){
    PNode pre = *list;
    PNode cur = *list;
    PNode nxt = 0;
    while (cur){
        if(cur->data == delFlag){
            nxt = cur->next;
            if(cur==(*list)){
                *list = nxt;
            }else{
                pre->next = nxt;
            }
            free(cur);
            return true;
        }
        pre = cur;
        cur = cur->next;
    }
    return false;
}

void linklist_merge(LinkList left,LinkList right){
    while(left){
        if(left->next==0){
            left->next = right;
            break;
        }
        left = left->next;
    }
}

void linklist_print(LinkList list){
    while(list){
        printf("%4d",list->data);
        list = list->next;
    }
    printf("\n");
}

int main(int agrc,char *argv[],char *envp[]) {

    LinkList list = linkList_create(3,CREATE_HEAD);
    linklist_print(list);
    list = linkList_inverse(list);
    linklist_print(list);
    list = linklist_reverse(list);
    linklist_print(list);

    PNode headInsterNode = (PNode) malloc(sizeof (struct Node));
    headInsterNode->data = 4;
    bool flag = linklist_inster(list,3,headInsterNode);

    if(flag)
        linklist_print(list);

    flag = linklist_delete(&list,1);
    if(flag)
        linklist_print(list);

    LinkList listAppend = linkList_create(5,CREATE_TATIL);
    linklist_merge(list,listAppend);
    linklist_print(list);
    linklist_delete(&list,5);
    linklist_print(list);
    return 0;
}
