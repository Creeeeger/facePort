.class Lcom/android/internal/widget/RecyclerView$6;
.super Ljava/lang/Object;
.source "RecyclerView.java"

# interfaces
.implements Lcom/android/internal/widget/AdapterHelper$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/RecyclerView;->initAdapterManager()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/widget/RecyclerView;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/widget/RecyclerView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/widget/RecyclerView;

    .line 784
    iput-object p1, p0, Lcom/android/internal/widget/RecyclerView$6;->this$0:Lcom/android/internal/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method blacklist dispatchUpdate(Lcom/android/internal/widget/AdapterHelper$UpdateOp;)V
    .locals 5
    .param p1, "op"    # Lcom/android/internal/widget/AdapterHelper$UpdateOp;

    .line 828
    iget v0, p1, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->cmd:I

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 840
    :sswitch_0
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$6;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView$6;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget v2, p1, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v3, p1, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->onItemsMoved(Lcom/android/internal/widget/RecyclerView;III)V

    goto :goto_0

    .line 836
    :sswitch_1
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$6;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView$6;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget v2, p1, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v3, p1, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget-object v4, p1, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->onItemsUpdated(Lcom/android/internal/widget/RecyclerView;IILjava/lang/Object;)V

    .line 838
    goto :goto_0

    .line 833
    :sswitch_2
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$6;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView$6;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget v2, p1, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v3, p1, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->onItemsRemoved(Lcom/android/internal/widget/RecyclerView;II)V

    .line 834
    goto :goto_0

    .line 830
    :sswitch_3
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$6;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView$6;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget v2, p1, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v3, p1, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->onItemsAdded(Lcom/android/internal/widget/RecyclerView;II)V

    .line 831
    nop

    .line 843
    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x2 -> :sswitch_2
        0x4 -> :sswitch_1
        0x8 -> :sswitch_0
    .end sparse-switch
.end method

.method public blacklist findViewHolder(I)Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .locals 4
    .param p1, "position"    # I

    .line 787
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$6;->this$0:Lcom/android/internal/widget/RecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/widget/RecyclerView;->findViewHolderForPosition(IZ)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 788
    .local v0, "vh":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 789
    return-object v1

    .line 793
    :cond_0
    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView$6;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v2, v2, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    iget-object v3, v0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/ChildHelper;->isHidden(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 797
    return-object v1

    .line 799
    :cond_1
    return-object v0
.end method

.method public blacklist markViewHoldersUpdated(IILjava/lang/Object;)V
    .locals 2
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I
    .param p3, "payload"    # Ljava/lang/Object;

    .line 818
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$6;->this$0:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/widget/RecyclerView;->viewRangeUpdate(IILjava/lang/Object;)V

    .line 819
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$6;->this$0:Lcom/android/internal/widget/RecyclerView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/internal/widget/RecyclerView;->mItemsChanged:Z

    .line 820
    return-void
.end method

.method public blacklist offsetPositionsForAdd(II)V
    .locals 2
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .line 852
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$6;->this$0:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/RecyclerView;->offsetPositionRecordsForInsert(II)V

    .line 853
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$6;->this$0:Lcom/android/internal/widget/RecyclerView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/internal/widget/RecyclerView;->mItemsAddedOrRemoved:Z

    .line 854
    return-void
.end method

.method public blacklist offsetPositionsForMove(II)V
    .locals 2
    .param p1, "from"    # I
    .param p2, "to"    # I

    .line 858
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$6;->this$0:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/RecyclerView;->offsetPositionRecordsForMove(II)V

    .line 860
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$6;->this$0:Lcom/android/internal/widget/RecyclerView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/internal/widget/RecyclerView;->mItemsAddedOrRemoved:Z

    .line 861
    return-void
.end method

.method public blacklist offsetPositionsForRemovingInvisible(II)V
    .locals 2
    .param p1, "start"    # I
    .param p2, "count"    # I

    .line 804
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$6;->this$0:Lcom/android/internal/widget/RecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/internal/widget/RecyclerView;->offsetPositionRecordsForRemove(IIZ)V

    .line 805
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$6;->this$0:Lcom/android/internal/widget/RecyclerView;

    iput-boolean v1, v0, Lcom/android/internal/widget/RecyclerView;->mItemsAddedOrRemoved:Z

    .line 806
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$6;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    iget v1, v0, Lcom/android/internal/widget/RecyclerView$State;->mDeletedInvisibleItemCountSincePreviousLayout:I

    add-int/2addr v1, p2

    iput v1, v0, Lcom/android/internal/widget/RecyclerView$State;->mDeletedInvisibleItemCountSincePreviousLayout:I

    .line 807
    return-void
.end method

.method public blacklist offsetPositionsForRemovingLaidOutOrNewView(II)V
    .locals 2
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .line 812
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$6;->this$0:Lcom/android/internal/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/internal/widget/RecyclerView;->offsetPositionRecordsForRemove(IIZ)V

    .line 813
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$6;->this$0:Lcom/android/internal/widget/RecyclerView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/internal/widget/RecyclerView;->mItemsAddedOrRemoved:Z

    .line 814
    return-void
.end method

.method public blacklist onDispatchFirstPass(Lcom/android/internal/widget/AdapterHelper$UpdateOp;)V
    .locals 0
    .param p1, "op"    # Lcom/android/internal/widget/AdapterHelper$UpdateOp;

    .line 824
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/RecyclerView$6;->dispatchUpdate(Lcom/android/internal/widget/AdapterHelper$UpdateOp;)V

    .line 825
    return-void
.end method

.method public blacklist onDispatchSecondPass(Lcom/android/internal/widget/AdapterHelper$UpdateOp;)V
    .locals 0
    .param p1, "op"    # Lcom/android/internal/widget/AdapterHelper$UpdateOp;

    .line 847
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/RecyclerView$6;->dispatchUpdate(Lcom/android/internal/widget/AdapterHelper$UpdateOp;)V

    .line 848
    return-void
.end method
