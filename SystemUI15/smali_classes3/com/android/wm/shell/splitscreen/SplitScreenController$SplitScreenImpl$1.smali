.class public final Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitScreenImpl$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/wm/shell/splitscreen/SplitScreen$SplitScreenListener;


# instance fields
.field public final synthetic this$1:Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitScreenImpl;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitScreenImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitScreenImpl$1;->this$1:Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitScreenImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSplitBoundsChanged(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 9

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitScreenImpl$1;->this$1:Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitScreenImpl;

    iget-object v2, v1, Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitScreenImpl;->mExecutors:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v1, v1, Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitScreenImpl;->mExecutors:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Ljava/util/concurrent/Executor;

    new-instance v8, Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitScreenImpl$1$$ExternalSyntheticLambda2;

    move-object v1, v8

    move-object v2, p0

    move v3, v0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitScreenImpl$1$$ExternalSyntheticLambda2;-><init>(Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitScreenImpl$1;ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    invoke-interface {v7, v8}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onSplitVisibilityChanged(Z)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitScreenImpl$1;->this$1:Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitScreenImpl;

    iget-object v2, v1, Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitScreenImpl;->mExecutors:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v1, v1, Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitScreenImpl;->mExecutors:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/android/wm/shell/splitscreen/SplitScreenController$Impl$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0, p1}, Lcom/android/wm/shell/splitscreen/SplitScreenController$Impl$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitScreenImpl$1;IZ)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onStagePositionChanged(II)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitScreenImpl$1;->this$1:Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitScreenImpl;

    iget-object v2, v1, Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitScreenImpl;->mExecutors:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v1, v1, Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitScreenImpl;->mExecutors:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitScreenImpl$1$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0, v0, p1, p2}, Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitScreenImpl$1$$ExternalSyntheticLambda3;-><init>(Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitScreenImpl$1;III)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onTaskStageChanged(IIZ)V
    .locals 9

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitScreenImpl$1;->this$1:Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitScreenImpl;

    iget-object v2, v1, Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitScreenImpl;->mExecutors:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v1, v1, Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitScreenImpl;->mExecutors:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Ljava/util/concurrent/Executor;

    new-instance v8, Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitScreenImpl$1$$ExternalSyntheticLambda0;

    move-object v1, v8

    move-object v2, p0

    move v3, v0

    move v4, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitScreenImpl$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitScreenImpl$1;IIIZ)V

    invoke-interface {v7, v8}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
