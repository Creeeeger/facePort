.class public final Landroidx/recyclerview/widget/ItemTouchHelper$4;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Landroidx/recyclerview/widget/ItemTouchHelper;

.field public final synthetic val$anim:Landroidx/recyclerview/widget/ItemTouchHelper$3;

.field public final synthetic val$swipeDir:I


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/ItemTouchHelper;Landroidx/recyclerview/widget/ItemTouchHelper$3;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/recyclerview/widget/ItemTouchHelper$4;->this$0:Landroidx/recyclerview/widget/ItemTouchHelper;

    iput-object p2, p0, Landroidx/recyclerview/widget/ItemTouchHelper$4;->val$anim:Landroidx/recyclerview/widget/ItemTouchHelper$3;

    iput p3, p0, Landroidx/recyclerview/widget/ItemTouchHelper$4;->val$swipeDir:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper$4;->this$0:Landroidx/recyclerview/widget/ItemTouchHelper;

    iget-object v0, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    const-string v2, "ItemTouchHelper"

    if-eqz v0, :cond_4

    iget-boolean v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mIsAttached:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper$4;->val$anim:Landroidx/recyclerview/widget/ItemTouchHelper$3;

    iget-boolean v3, v0, Landroidx/recyclerview/widget/ItemTouchHelper$3;->mOverridden:Z

    if-nez v3, :cond_4

    iget-object v0, v0, Landroidx/recyclerview/widget/ItemTouchHelper$3;->mViewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAbsoluteAdapterPosition()I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "postDispatchSwipe$run: mRecyclerView = "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Landroidx/recyclerview/widget/ItemTouchHelper$4;->this$0:Landroidx/recyclerview/widget/ItemTouchHelper;

    iget-object v3, v3, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", isAttachedToWindow = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroidx/recyclerview/widget/ItemTouchHelper$4;->this$0:Landroidx/recyclerview/widget/ItemTouchHelper;

    iget-object v3, v3, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-boolean v3, v3, Landroidx/recyclerview/widget/RecyclerView;->mIsAttached:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", !anim.mOverridden = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroidx/recyclerview/widget/ItemTouchHelper$4;->val$anim:Landroidx/recyclerview/widget/ItemTouchHelper$3;

    iget-boolean v3, v3, Landroidx/recyclerview/widget/ItemTouchHelper$3;->mOverridden:Z

    xor-int/lit8 v3, v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", anim.mViewHolder.getAdapterPosition() = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroidx/recyclerview/widget/ItemTouchHelper$4;->val$anim:Landroidx/recyclerview/widget/ItemTouchHelper$3;

    iget-object v3, v3, Landroidx/recyclerview/widget/ItemTouchHelper$3;->mViewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper$4;->this$0:Landroidx/recyclerview/widget/ItemTouchHelper;

    iget-object v0, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper$4;->this$0:Landroidx/recyclerview/widget/ItemTouchHelper;

    iget-object v3, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v4, v1

    :goto_0
    if-ge v4, v3, :cond_3

    iget-object v5, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/recyclerview/widget/ItemTouchHelper$3;

    iget-boolean v5, v5, Landroidx/recyclerview/widget/ItemTouchHelper$3;->mEnded:Z

    if-nez v5, :cond_2

    :cond_1
    iget-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper$4;->this$0:Landroidx/recyclerview/widget/ItemTouchHelper;

    iget-object v0, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "postDispatchSwipe$run: mCallback.onSwiped anim.mViewHolder = "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Landroidx/recyclerview/widget/ItemTouchHelper$4;->val$anim:Landroidx/recyclerview/widget/ItemTouchHelper$3;

    iget-object v3, v3, Landroidx/recyclerview/widget/ItemTouchHelper$3;->mViewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", anim.mViewHolder.itemView = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroidx/recyclerview/widget/ItemTouchHelper$4;->val$anim:Landroidx/recyclerview/widget/ItemTouchHelper$3;

    iget-object v3, v3, Landroidx/recyclerview/widget/ItemTouchHelper$3;->mViewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " swipeDir="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Landroidx/recyclerview/widget/ItemTouchHelper$4;->val$swipeDir:I

    invoke-static {v0, v3, v2}, Landroidx/appcompat/widget/TooltipPopup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper$4;->this$0:Landroidx/recyclerview/widget/ItemTouchHelper;

    iget-object v0, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mCallback:Landroidx/recyclerview/widget/ItemTouchHelper$Callback;

    iget-object v2, p0, Landroidx/recyclerview/widget/ItemTouchHelper$4;->val$anim:Landroidx/recyclerview/widget/ItemTouchHelper$3;

    iget-object v2, v2, Landroidx/recyclerview/widget/ItemTouchHelper$3;->mViewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->onSwiped(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    iget-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper$4;->this$0:Landroidx/recyclerview/widget/ItemTouchHelper;

    iget-object p0, p0, Landroidx/recyclerview/widget/ItemTouchHelper$4;->val$anim:Landroidx/recyclerview/widget/ItemTouchHelper$3;

    iget-object p0, p0, Landroidx/recyclerview/widget/ItemTouchHelper$3;->mViewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {v0, p0, v1}, Landroidx/recyclerview/widget/ItemTouchHelper;->endRecoverAnimation(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Z)V

    goto :goto_1

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Failed to call mCallback.onSwiped()!, call seslOnSwipeFailed, flag = 0x"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Landroidx/recyclerview/widget/ItemTouchHelper$4;->val$anim:Landroidx/recyclerview/widget/ItemTouchHelper$3;

    iget-object v3, v3, Landroidx/recyclerview/widget/ItemTouchHelper$3;->mViewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget v3, v3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper$4;->this$0:Landroidx/recyclerview/widget/ItemTouchHelper;

    iget-object v0, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mCallback:Landroidx/recyclerview/widget/ItemTouchHelper$Callback;

    iget-object v2, p0, Landroidx/recyclerview/widget/ItemTouchHelper$4;->val$anim:Landroidx/recyclerview/widget/ItemTouchHelper$3;

    iget-object v2, v2, Landroidx/recyclerview/widget/ItemTouchHelper$3;->mViewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper$4;->this$0:Landroidx/recyclerview/widget/ItemTouchHelper;

    iget-object p0, p0, Landroidx/recyclerview/widget/ItemTouchHelper$4;->val$anim:Landroidx/recyclerview/widget/ItemTouchHelper$3;

    iget-object p0, p0, Landroidx/recyclerview/widget/ItemTouchHelper$3;->mViewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {v0, p0, v1}, Landroidx/recyclerview/widget/ItemTouchHelper;->endRecoverAnimation(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Z)V

    :goto_1
    return-void
.end method
