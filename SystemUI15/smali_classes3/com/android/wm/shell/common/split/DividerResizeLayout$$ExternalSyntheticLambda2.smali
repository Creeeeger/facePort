.class public final synthetic Lcom/android/wm/shell/common/split/DividerResizeLayout$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/common/split/DividerResizeLayout;

.field public final synthetic f$1:I

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/common/split/DividerResizeLayout;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$$ExternalSyntheticLambda2;->f$0:Lcom/android/wm/shell/common/split/DividerResizeLayout;

    iput p2, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$$ExternalSyntheticLambda2;->f$1:I

    iput p3, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$$ExternalSyntheticLambda2;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    iget-object v0, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$$ExternalSyntheticLambda2;->f$0:Lcom/android/wm/shell/common/split/DividerResizeLayout;

    iget v1, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$$ExternalSyntheticLambda2;->f$1:I

    iget p0, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$$ExternalSyntheticLambda2;->f$2:I

    iget-object v2, v0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mResizeTargets:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    :goto_0
    if-ltz v2, :cond_3

    iget-object v4, v0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mResizeTargets:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;

    if-eqz v4, :cond_2

    iget-object v5, v4, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v4, v1, v5}, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->calculateBoundsForPosition(ILandroid/graphics/Rect;)V

    iget v5, v4, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mSplitDismissSide:I

    if-eq v5, p0, :cond_0

    iput p0, v4, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mSplitDismissSide:I

    :cond_0
    const/4 v5, 0x0

    if-nez p0, :cond_1

    move v6, v3

    goto :goto_1

    :cond_1
    move v6, v5

    :goto_1
    invoke-virtual {v4, v6}, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->startOutlineInsetsAnimation(Z)V

    iget-object v6, v4, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mTmpBounds:Landroid/graphics/Rect;

    const-wide/16 v7, 0x12c

    invoke-virtual {v4, v6, v5, v7, v8}, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->startBoundsAnimation(Landroid/graphics/Rect;ZJ)V

    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_3
    return-void
.end method
