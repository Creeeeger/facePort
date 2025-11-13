.class final Landroid/widget/SemHorizontalAbsListView$CheckForTap;
.super Ljava/lang/Object;
.source "SemHorizontalAbsListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/SemHorizontalAbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CheckForTap"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/widget/SemHorizontalAbsListView;

.field blacklist x:F

.field blacklist y:F


# direct methods
.method private constructor blacklist <init>(Landroid/widget/SemHorizontalAbsListView;)V
    .locals 0

    .line 4749
    iput-object p1, p0, Landroid/widget/SemHorizontalAbsListView$CheckForTap;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/widget/SemHorizontalAbsListView;Landroid/widget/SemHorizontalAbsListView$CheckForTap-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/SemHorizontalAbsListView$CheckForTap;-><init>(Landroid/widget/SemHorizontalAbsListView;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 8

    .line 4755
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$CheckForTap;->this$0:Landroid/widget/SemHorizontalAbsListView;

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    if-nez v0, :cond_7

    .line 4756
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$CheckForTap;->this$0:Landroid/widget/SemHorizontalAbsListView;

    const/4 v1, 0x1

    iput v1, v0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    .line 4757
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$CheckForTap;->this$0:Landroid/widget/SemHorizontalAbsListView;

    iget v2, v0, Landroid/widget/SemHorizontalAbsListView;->mMotionPosition:I

    iget-object v3, p0, Landroid/widget/SemHorizontalAbsListView$CheckForTap;->this$0:Landroid/widget/SemHorizontalAbsListView;

    iget v3, v3, Landroid/widget/SemHorizontalAbsListView;->mFirstPosition:I

    sub-int/2addr v2, v3

    invoke-virtual {v0, v2}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 4759
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 4760
    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView$CheckForTap;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v3

    invoke-static {v2, v3}, Landroid/widget/SemHorizontalAbsListView;->-$$Nest$fputmIsChildViewEnabled(Landroid/widget/SemHorizontalAbsListView;Z)V

    .line 4764
    :cond_0
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/view/View;->hasExplicitFocusable()Z

    move-result v2

    if-nez v2, :cond_7

    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView$CheckForTap;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v2}, Landroid/widget/SemHorizontalAbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView$CheckForTap;->this$0:Landroid/widget/SemHorizontalAbsListView;

    iget v2, v2, Landroid/widget/SemHorizontalAbsListView;->mMotionPosition:I

    if-ltz v2, :cond_7

    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView$CheckForTap;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v2}, Landroid/widget/SemHorizontalAbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v2

    check-cast v2, Landroid/widget/ListAdapter;

    iget-object v3, p0, Landroid/widget/SemHorizontalAbsListView$CheckForTap;->this$0:Landroid/widget/SemHorizontalAbsListView;

    iget v3, v3, Landroid/widget/SemHorizontalAbsListView;->mMotionPosition:I

    invoke-interface {v2, v3}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 4765
    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView$CheckForTap;->this$0:Landroid/widget/SemHorizontalAbsListView;

    const/4 v3, 0x0

    iput v3, v2, Landroid/widget/SemHorizontalAbsListView;->mLayoutMode:I

    .line 4767
    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView$CheckForTap;->this$0:Landroid/widget/SemHorizontalAbsListView;

    iget-boolean v2, v2, Landroid/widget/SemHorizontalAbsListView;->mDataChanged:Z

    const/4 v3, 0x2

    if-nez v2, :cond_6

    .line 4768
    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 4769
    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView$CheckForTap;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v2, v1}, Landroid/widget/SemHorizontalAbsListView;->setPressed(Z)V

    .line 4770
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView$CheckForTap;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v1}, Landroid/widget/SemHorizontalAbsListView;->layoutChildren()V

    .line 4771
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView$CheckForTap;->this$0:Landroid/widget/SemHorizontalAbsListView;

    iget v2, v1, Landroid/widget/SemHorizontalAbsListView;->mMotionPosition:I

    invoke-virtual {v1, v2, v0}, Landroid/widget/SemHorizontalAbsListView;->positionSelector(ILandroid/view/View;)V

    .line 4772
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView$CheckForTap;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v1}, Landroid/widget/SemHorizontalAbsListView;->refreshDrawableState()V

    .line 4774
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    .line 4775
    .local v1, "longPressTimeout":I
    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView$CheckForTap;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v2}, Landroid/widget/SemHorizontalAbsListView;->isLongClickable()Z

    move-result v2

    .line 4777
    .local v2, "longClickable":Z
    iget-object v4, p0, Landroid/widget/SemHorizontalAbsListView$CheckForTap;->this$0:Landroid/widget/SemHorizontalAbsListView;

    iget-object v4, v4, Landroid/widget/SemHorizontalAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_3

    .line 4778
    iget-object v4, p0, Landroid/widget/SemHorizontalAbsListView$CheckForTap;->this$0:Landroid/widget/SemHorizontalAbsListView;

    iget-object v4, v4, Landroid/widget/SemHorizontalAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 4779
    .local v4, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v4, :cond_2

    instance-of v5, v4, Landroid/graphics/drawable/TransitionDrawable;

    if-eqz v5, :cond_2

    .line 4780
    if-eqz v2, :cond_1

    .line 4781
    move-object v5, v4

    check-cast v5, Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v5, v1}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    goto :goto_0

    .line 4783
    :cond_1
    move-object v5, v4

    check-cast v5, Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    .line 4786
    :cond_2
    :goto_0
    iget-object v5, p0, Landroid/widget/SemHorizontalAbsListView$CheckForTap;->this$0:Landroid/widget/SemHorizontalAbsListView;

    iget-object v5, v5, Landroid/widget/SemHorizontalAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    iget v6, p0, Landroid/widget/SemHorizontalAbsListView$CheckForTap;->x:F

    iget v7, p0, Landroid/widget/SemHorizontalAbsListView$CheckForTap;->y:F

    invoke-virtual {v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 4789
    .end local v4    # "d":Landroid/graphics/drawable/Drawable;
    :cond_3
    if-eqz v2, :cond_5

    .line 4790
    iget-object v3, p0, Landroid/widget/SemHorizontalAbsListView$CheckForTap;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-static {v3}, Landroid/widget/SemHorizontalAbsListView;->-$$Nest$fgetmPendingCheckForLongPress(Landroid/widget/SemHorizontalAbsListView;)Landroid/widget/SemHorizontalAbsListView$CheckForLongPress;

    move-result-object v3

    if-nez v3, :cond_4

    .line 4791
    iget-object v3, p0, Landroid/widget/SemHorizontalAbsListView$CheckForTap;->this$0:Landroid/widget/SemHorizontalAbsListView;

    new-instance v4, Landroid/widget/SemHorizontalAbsListView$CheckForLongPress;

    const/4 v5, 0x0

    invoke-direct {v4, v3, v5}, Landroid/widget/SemHorizontalAbsListView$CheckForLongPress;-><init>(Landroid/widget/SemHorizontalAbsListView;Landroid/widget/SemHorizontalAbsListView$CheckForLongPress-IA;)V

    invoke-static {v3, v4}, Landroid/widget/SemHorizontalAbsListView;->-$$Nest$fputmPendingCheckForLongPress(Landroid/widget/SemHorizontalAbsListView;Landroid/widget/SemHorizontalAbsListView$CheckForLongPress;)V

    .line 4793
    :cond_4
    iget-object v3, p0, Landroid/widget/SemHorizontalAbsListView$CheckForTap;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-static {v3}, Landroid/widget/SemHorizontalAbsListView;->-$$Nest$fgetmPendingCheckForLongPress(Landroid/widget/SemHorizontalAbsListView;)Landroid/widget/SemHorizontalAbsListView$CheckForLongPress;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/SemHorizontalAbsListView$CheckForLongPress;->rememberWindowAttachCount()V

    .line 4794
    iget-object v3, p0, Landroid/widget/SemHorizontalAbsListView$CheckForTap;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-static {v3}, Landroid/widget/SemHorizontalAbsListView;->-$$Nest$fgetmPendingCheckForLongPress(Landroid/widget/SemHorizontalAbsListView;)Landroid/widget/SemHorizontalAbsListView$CheckForLongPress;

    move-result-object v4

    int-to-long v5, v1

    invoke-virtual {v3, v4, v5, v6}, Landroid/widget/SemHorizontalAbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 4796
    :cond_5
    iget-object v4, p0, Landroid/widget/SemHorizontalAbsListView$CheckForTap;->this$0:Landroid/widget/SemHorizontalAbsListView;

    iput v3, v4, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    .line 4798
    .end local v1    # "longPressTimeout":I
    .end local v2    # "longClickable":Z
    :goto_1
    goto :goto_2

    .line 4799
    :cond_6
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView$CheckForTap;->this$0:Landroid/widget/SemHorizontalAbsListView;

    iput v3, v1, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    .line 4803
    .end local v0    # "child":Landroid/view/View;
    :cond_7
    :goto_2
    return-void
.end method
