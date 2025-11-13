.class public final synthetic Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger$PipToPipChanger$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/wm/shell/common/SyncTransactionQueue$TransactionRunnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger;I)V
    .locals 0

    iput p2, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger$PipToPipChanger$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger$PipToPipChanger$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final runWithTransaction(Landroid/view/SurfaceControl$Transaction;)V
    .locals 11

    iget-object v0, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger$PipToPipChanger$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger;

    iget p0, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger$PipToPipChanger$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    check-cast v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger$SplitToSplitChanger;

    iget-object p0, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger;->mSplitController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->updateSurfaceBoundsForNS(Landroid/view/SurfaceControl$Transaction;)V

    iget-object p0, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger;->mSplitController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    iget p1, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger;->mToPosition:I

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getStageTypeAtPosition(I)I

    move-result p0

    iget-object p1, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger;->mSplitController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-virtual {p1, p0}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getStageBounds(I)Landroid/graphics/Rect;

    move-result-object p1

    iget-object v1, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger;->mSplitController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-virtual {v1, p0}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getTargetLeash(I)Landroid/view/SurfaceControl;

    move-result-object v3

    iget-object v9, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object p0, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger;->mDropBounds:Landroid/graphics/Rect;

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, p0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    iget p1, p0, Landroid/graphics/Rect;->left:I

    iget v1, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr p1, v1

    int-to-float v5, p1

    iget p1, p0, Landroid/graphics/Rect;->top:I

    iget v1, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr p1, v1

    int-to-float v6, p1

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p1

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v1

    sub-int/2addr p1, v1

    int-to-float v7, p1

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result p1

    sub-int/2addr p0, p1

    int-to-float v8, p0

    const/4 p0, 0x2

    new-array p0, p0, [F

    fill-array-data p0, :array_0

    invoke-static {p0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p0

    new-instance p1, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger$SplitToSplitChanger$$ExternalSyntheticLambda1;

    move-object v2, p1

    invoke-direct/range {v2 .. v10}, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger$SplitToSplitChanger$$ExternalSyntheticLambda1;-><init>(Landroid/view/SurfaceControl;Landroid/graphics/Rect;FFFFLandroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;)V

    invoke-virtual {p0, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance p1, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger$SplitToSplitChanger$1;

    invoke-direct {p1, v0}, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger$SplitToSplitChanger$1;-><init>(Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger$SplitToSplitChanger;)V

    invoke-virtual {p0, p1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :pswitch_0
    check-cast v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger$FullToFreeformChanger;

    iget-object p0, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger;->mHideLayoutCallback:Ljava/util/function/Consumer;

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void

    :pswitch_1
    check-cast v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger$FreeformToFreeformChanger;

    iget-object p0, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger;->mHideLayoutCallback:Ljava/util/function/Consumer;

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void

    :pswitch_2
    check-cast v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger$PipToPipChanger;

    iget-object p0, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger;->mHideLayoutCallback:Ljava/util/function/Consumer;

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
