.class Lcom/android/internal/widget/RecyclerView$RecyclerViewDataObserver;
.super Lcom/android/internal/widget/RecyclerView$AdapterDataObserver;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RecyclerViewDataObserver"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/widget/RecyclerView;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/widget/RecyclerView;)V
    .locals 0

    .line 5023
    iput-object p1, p0, Lcom/android/internal/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Lcom/android/internal/widget/RecyclerView;

    invoke-direct {p0}, Lcom/android/internal/widget/RecyclerView$AdapterDataObserver;-><init>()V

    .line 5024
    return-void
.end method


# virtual methods
.method public blacklist onChanged()V
    .locals 2

    .line 5028
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Lcom/android/internal/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/RecyclerView;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 5029
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/internal/widget/RecyclerView$State;->mStructureChanged:Z

    .line 5031
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView;->setDataSetChangedAfterLayout()V

    .line 5032
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView;->mAdapterHelper:Lcom/android/internal/widget/AdapterHelper;

    invoke-virtual {v0}, Lcom/android/internal/widget/AdapterHelper;->hasPendingUpdates()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5033
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView;->requestLayout()V

    .line 5035
    :cond_0
    return-void
.end method

.method public blacklist onItemRangeChanged(IILjava/lang/Object;)V
    .locals 2
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I
    .param p3, "payload"    # Ljava/lang/Object;

    .line 5039
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Lcom/android/internal/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/RecyclerView;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 5040
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView;->mAdapterHelper:Lcom/android/internal/widget/AdapterHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/widget/AdapterHelper;->onItemRangeChanged(IILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5041
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$RecyclerViewDataObserver;->triggerUpdateProcessor()V

    .line 5043
    :cond_0
    return-void
.end method

.method public blacklist onItemRangeInserted(II)V
    .locals 2
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .line 5047
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Lcom/android/internal/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/RecyclerView;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 5048
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView;->mAdapterHelper:Lcom/android/internal/widget/AdapterHelper;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/AdapterHelper;->onItemRangeInserted(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5049
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$RecyclerViewDataObserver;->triggerUpdateProcessor()V

    .line 5051
    :cond_0
    return-void
.end method

.method public blacklist onItemRangeMoved(III)V
    .locals 2
    .param p1, "fromPosition"    # I
    .param p2, "toPosition"    # I
    .param p3, "itemCount"    # I

    .line 5063
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Lcom/android/internal/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/RecyclerView;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 5064
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView;->mAdapterHelper:Lcom/android/internal/widget/AdapterHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/widget/AdapterHelper;->onItemRangeMoved(III)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5065
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$RecyclerViewDataObserver;->triggerUpdateProcessor()V

    .line 5067
    :cond_0
    return-void
.end method

.method public blacklist onItemRangeRemoved(II)V
    .locals 2
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .line 5055
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Lcom/android/internal/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/RecyclerView;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 5056
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView;->mAdapterHelper:Lcom/android/internal/widget/AdapterHelper;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/AdapterHelper;->onItemRangeRemoved(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5057
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$RecyclerViewDataObserver;->triggerUpdateProcessor()V

    .line 5059
    :cond_0
    return-void
.end method

.method blacklist triggerUpdateProcessor()V
    .locals 2

    .line 5070
    sget-boolean v0, Lcom/android/internal/widget/RecyclerView;->POST_UPDATES_ON_ANIMATION:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-boolean v0, v0, Lcom/android/internal/widget/RecyclerView;->mHasFixedSize:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-boolean v0, v0, Lcom/android/internal/widget/RecyclerView;->mIsAttached:Z

    if-eqz v0, :cond_0

    .line 5071
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v1, v0, Lcom/android/internal/widget/RecyclerView;->mUpdateChildViewsRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/RecyclerView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 5073
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Lcom/android/internal/widget/RecyclerView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/internal/widget/RecyclerView;->mAdapterUpdateDuringMeasure:Z

    .line 5074
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView;->requestLayout()V

    .line 5076
    :goto_0
    return-void
.end method
