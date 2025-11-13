.class public final synthetic Landroidx/constraintlayout/motion/widget/ViewTransition$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/constraintlayout/motion/widget/ViewTransition;

.field public final synthetic f$1:[Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Landroidx/constraintlayout/motion/widget/ViewTransition;[Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$$ExternalSyntheticLambda0;->f$0:Landroidx/constraintlayout/motion/widget/ViewTransition;

    iput-object p2, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$$ExternalSyntheticLambda0;->f$1:[Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$$ExternalSyntheticLambda0;->f$0:Landroidx/constraintlayout/motion/widget/ViewTransition;

    iget-object p0, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$$ExternalSyntheticLambda0;->f$1:[Landroid/view/View;

    iget v1, v0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mSetsTag:I

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    array-length v1, p0

    move v4, v2

    :goto_0
    if-ge v4, v1, :cond_0

    aget-object v5, p0, v4

    iget v6, v0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mSetsTag:I

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    iget v1, v0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mClearsTag:I

    if-eq v1, v3, :cond_1

    array-length v1, p0

    :goto_1
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    iget v4, v0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mClearsTag:I

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method
