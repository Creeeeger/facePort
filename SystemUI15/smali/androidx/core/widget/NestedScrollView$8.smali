.class public final Landroidx/core/widget/NestedScrollView$8;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Landroidx/core/widget/NestedScrollView;


# direct methods
.method public constructor <init>(Landroidx/core/widget/NestedScrollView;)V
    .locals 0

    iput-object p1, p0, Landroidx/core/widget/NestedScrollView$8;->this$0:Landroidx/core/widget/NestedScrollView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Landroidx/core/widget/NestedScrollView$8;->this$0:Landroidx/core/widget/NestedScrollView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroidx/core/widget/NestedScrollView;->mIsGoToTopPressed:Z

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "remove_animations"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Landroidx/core/widget/NestedScrollView$8;->this$0:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {p0, v3, v3}, Landroidx/core/widget/NestedScrollView;->scrollTo(II)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroidx/core/widget/NestedScrollView$8;->this$0:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollX()I

    move-result v0

    rsub-int/lit8 v0, v0, 0x0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v1

    sub-int/2addr v3, v1

    const/16 v1, 0x2bc

    invoke-virtual {p0, v0, v3, v1}, Landroidx/core/widget/NestedScrollView;->smoothScrollBy(III)V

    :goto_0
    return-void
.end method
