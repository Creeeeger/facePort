.class public Lcom/android/internal/widget/RemeasuringLinearLayout;
.super Lcom/android/internal/widget/NotificationOptimizedLinearLayout;
.source "RemeasuringLinearLayout.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation


# instance fields
.field private blacklist mMatchParentViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/RemeasuringLinearLayout;->mMatchParentViews:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/RemeasuringLinearLayout;->mMatchParentViews:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/RemeasuringLinearLayout;->mMatchParentViews:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/RemeasuringLinearLayout;->mMatchParentViews:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method protected whitelist onMeasure(II)V
    .locals 9

    invoke-super {p0, p1, p2}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->onMeasure(II)V

    invoke-virtual {p0}, Lcom/android/internal/widget/RemeasuringLinearLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/internal/widget/RemeasuringLinearLayout;->getOrientation()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/widget/RemeasuringLinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iget v5, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v6, -0x2

    if-ne v5, v6, :cond_1

    move v3, v4

    :cond_1
    const/4 v4, 0x0

    :goto_1
    if-ge v4, v0, :cond_7

    invoke-virtual {p0, v4}, Lcom/android/internal/widget/RemeasuringLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_6

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v6

    const/16 v7, 0x8

    if-ne v6, v7, :cond_2

    goto :goto_4

    :cond_2
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v3, :cond_4

    iget v7, v6, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/4 v8, -0x1

    if-ne v7, v8, :cond_4

    if-eqz v2, :cond_3

    goto :goto_2

    :cond_3
    iget-object v7, p0, Lcom/android/internal/widget/RemeasuringLinearLayout;->mMatchParentViews:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_4
    :goto_2
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    iget v8, v6, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v7, v8

    iget v8, v6, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v7, v8

    if-eqz v2, :cond_5

    add-int v8, v1, v7

    goto :goto_3

    :cond_5
    move v8, v7

    :goto_3
    invoke-static {v1, v8}, Ljava/lang/Math;->max(II)I

    move-result v1

    nop

    :cond_6
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_7
    iget-object v4, p0, Lcom/android/internal/widget/RemeasuringLinearLayout;->mMatchParentViews:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_8

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    iget-object v5, p0, Lcom/android/internal/widget/RemeasuringLinearLayout;->mMatchParentViews:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    nop

    invoke-virtual {p0}, Lcom/android/internal/widget/RemeasuringLinearLayout;->getPaddingStart()I

    move-result v7

    invoke-virtual {p0}, Lcom/android/internal/widget/RemeasuringLinearLayout;->getPaddingEnd()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    iget v8, v8, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {p1, v7, v8}, Lcom/android/internal/widget/RemeasuringLinearLayout;->getChildMeasureSpec(III)I

    move-result v7

    invoke-virtual {v6, v7, v4}, Landroid/view/View;->measure(II)V

    goto :goto_5

    :cond_8
    iget-object v4, p0, Lcom/android/internal/widget/RemeasuringLinearLayout;->mMatchParentViews:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p0}, Lcom/android/internal/widget/RemeasuringLinearLayout;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {p0, v4, v1}, Lcom/android/internal/widget/RemeasuringLinearLayout;->setMeasuredDimension(II)V

    return-void
.end method
