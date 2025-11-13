.class public final Landroidx/core/widget/NestedScrollView$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Landroidx/core/widget/NestedScrollView;


# direct methods
.method public synthetic constructor <init>(Landroidx/core/widget/NestedScrollView;I)V
    .locals 0

    iput p2, p0, Landroidx/core/widget/NestedScrollView$1;->$r8$classId:I

    iput-object p1, p0, Landroidx/core/widget/NestedScrollView$1;->this$0:Landroidx/core/widget/NestedScrollView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget v3, p0, Landroidx/core/widget/NestedScrollView$1;->$r8$classId:I

    packed-switch v3, :pswitch_data_0

    iget-object v0, p0, Landroidx/core/widget/NestedScrollView$1;->this$0:Landroidx/core/widget/NestedScrollView;

    iput-boolean v2, v0, Landroidx/core/widget/NestedScrollView;->mIsGoToTopPressed:Z

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "remove_animations"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_0

    iget-object p0, p0, Landroidx/core/widget/NestedScrollView$1;->this$0:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {p0, v1, v1}, Landroidx/core/widget/NestedScrollView;->scrollTo(II)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroidx/core/widget/NestedScrollView$1;->this$0:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollX()I

    move-result v0

    rsub-int/lit8 v0, v0, 0x0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v2

    sub-int/2addr v1, v2

    const/16 v2, 0x2bc

    invoke-virtual {p0, v0, v1, v2}, Landroidx/core/widget/NestedScrollView;->smoothScrollBy(III)V

    :goto_0
    return-void

    :pswitch_0
    iget-object p0, p0, Landroidx/core/widget/NestedScrollView$1;->this$0:Landroidx/core/widget/NestedScrollView;

    sget v0, Landroidx/core/widget/NestedScrollView;->DECELERATION_RATE:F

    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->setupGoToTop()V

    return-void

    :pswitch_1
    iget-object p0, p0, Landroidx/core/widget/NestedScrollView$1;->this$0:Landroidx/core/widget/NestedScrollView;

    sget v1, Landroidx/core/widget/NestedScrollView;->DECELERATION_RATE:F

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    throw v0

    :pswitch_2
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView$1;->this$0:Landroidx/core/widget/NestedScrollView;

    sget v3, Landroidx/core/widget/NestedScrollView;->DECELERATION_RATE:F

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Landroidx/core/widget/NestedScrollView$1;->this$0:Landroidx/core/widget/NestedScrollView;

    iget-boolean v0, p0, Landroidx/core/widget/NestedScrollView;->mHoverScrollEnabled:Z

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_4

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_4

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v4

    const-string v5, "NestedScrollView"

    if-ge v3, v4, :cond_1

    const-string v0, "GTT HSC not support : Small Height child"

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_1
    move v3, v1

    :goto_1
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_4

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v6

    const/16 v7, 0x8

    if-eq v6, v7, :cond_3

    invoke-virtual {v4, v2}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v6

    if-nez v6, :cond_2

    const/4 v6, -0x1

    invoke-virtual {v4, v6}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v6

    if-eqz v6, :cond_3

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "GTT HSC not support : Some child view can scroll index: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_3
    add-int/2addr v3, v2

    goto :goto_1

    :cond_4
    move v1, v2

    :goto_2
    iput-boolean v1, p0, Landroidx/core/widget/NestedScrollView;->mIsSupportHoverScroll:Z

    iput-boolean v1, p0, Landroidx/core/widget/NestedScrollView;->mIsSupportGoToTop:Z

    :cond_5
    return-void

    :pswitch_3
    iget-object p0, p0, Landroidx/core/widget/NestedScrollView$1;->this$0:Landroidx/core/widget/NestedScrollView;

    sget v1, Landroidx/core/widget/NestedScrollView;->DECELERATION_RATE:F

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
