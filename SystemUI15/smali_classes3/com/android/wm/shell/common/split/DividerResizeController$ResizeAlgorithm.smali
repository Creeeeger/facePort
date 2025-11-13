.class public final Lcom/android/wm/shell/common/split/DividerResizeController$ResizeAlgorithm;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mDismissEndThreshold:I

.field public mDismissStartThreshold:I

.field public mDisplaySize:I

.field public mDividerSnapAlgorithm:Lcom/android/wm/shell/common/split/DividerSnapAlgorithm;

.field public mFirstFadeOutPosition:I

.field public mFirstSplitTargetPosition:I

.field public mLastFadeOutPosition:I

.field public mLastSplitTargetPosition:I

.field public mMiddleTargetPosition:I

.field public mSplitDismissSide:I

.field public mTouchPosition:I

.field public final synthetic this$0:Lcom/android/wm/shell/common/split/DividerResizeController;


# direct methods
.method public static -$$Nest$mupdate(Lcom/android/wm/shell/common/split/DividerResizeController$ResizeAlgorithm;I)V
    .locals 1

    iget v0, p0, Lcom/android/wm/shell/common/split/DividerResizeController$ResizeAlgorithm;->mTouchPosition:I

    if-eq v0, p1, :cond_2

    iput p1, p0, Lcom/android/wm/shell/common/split/DividerResizeController$ResizeAlgorithm;->mTouchPosition:I

    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/DividerResizeController$ResizeAlgorithm;->isInStartDismissZone()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/DividerResizeController$ResizeAlgorithm;->isInEndDismissZone()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x2

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iget v0, p0, Lcom/android/wm/shell/common/split/DividerResizeController$ResizeAlgorithm;->mSplitDismissSide:I

    if-eq v0, p1, :cond_2

    iput p1, p0, Lcom/android/wm/shell/common/split/DividerResizeController$ResizeAlgorithm;->mSplitDismissSide:I

    :cond_2
    return-void
.end method

.method public constructor <init>(Lcom/android/wm/shell/common/split/DividerResizeController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/common/split/DividerResizeController$ResizeAlgorithm;->this$0:Lcom/android/wm/shell/common/split/DividerResizeController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/wm/shell/common/split/DividerResizeController$ResizeAlgorithm;->mSplitDismissSide:I

    return-void
.end method


# virtual methods
.method public final getSnapTargetPosition()I
    .locals 2

    iget v0, p0, Lcom/android/wm/shell/common/split/DividerResizeController$ResizeAlgorithm;->mTouchPosition:I

    iget v1, p0, Lcom/android/wm/shell/common/split/DividerResizeController$ResizeAlgorithm;->mFirstSplitTargetPosition:I

    if-lt v0, v1, :cond_0

    iget v1, p0, Lcom/android/wm/shell/common/split/DividerResizeController$ResizeAlgorithm;->mLastSplitTargetPosition:I

    if-gt v0, v1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/DividerResizeController$ResizeAlgorithm;->isInStartDismissZone()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/wm/shell/common/split/DividerResizeController$ResizeAlgorithm;->this$0:Lcom/android/wm/shell/common/split/DividerResizeController;

    iget v0, v0, Lcom/android/wm/shell/common/split/DividerResizeController;->mDividerSize:I

    neg-int v0, v0

    iget-object p0, p0, Lcom/android/wm/shell/common/split/DividerResizeController$ResizeAlgorithm;->mDividerSnapAlgorithm:Lcom/android/wm/shell/common/split/DividerSnapAlgorithm;

    iget-object p0, p0, Lcom/android/wm/shell/common/split/DividerSnapAlgorithm;->mDismissStartTarget:Lcom/android/wm/shell/common/split/DividerSnapAlgorithm$SnapTarget;

    iget p0, p0, Lcom/android/wm/shell/common/split/DividerSnapAlgorithm$SnapTarget;->position:I

    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0

    :cond_1
    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/DividerResizeController$ResizeAlgorithm;->isInEndDismissZone()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/wm/shell/common/split/DividerResizeController$ResizeAlgorithm;->mDisplaySize:I

    iget-object p0, p0, Lcom/android/wm/shell/common/split/DividerResizeController$ResizeAlgorithm;->mDividerSnapAlgorithm:Lcom/android/wm/shell/common/split/DividerSnapAlgorithm;

    iget-object p0, p0, Lcom/android/wm/shell/common/split/DividerSnapAlgorithm;->mDismissEndTarget:Lcom/android/wm/shell/common/split/DividerSnapAlgorithm$SnapTarget;

    iget p0, p0, Lcom/android/wm/shell/common/split/DividerSnapAlgorithm$SnapTarget;->position:I

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0

    :cond_2
    iget v0, p0, Lcom/android/wm/shell/common/split/DividerResizeController$ResizeAlgorithm;->mTouchPosition:I

    iget v1, p0, Lcom/android/wm/shell/common/split/DividerResizeController$ResizeAlgorithm;->mFirstSplitTargetPosition:I

    if-ge v0, v1, :cond_3

    return v1

    :cond_3
    iget v1, p0, Lcom/android/wm/shell/common/split/DividerResizeController$ResizeAlgorithm;->mLastSplitTargetPosition:I

    if-le v0, v1, :cond_4

    return v1

    :cond_4
    iget-object p0, p0, Lcom/android/wm/shell/common/split/DividerResizeController$ResizeAlgorithm;->mDividerSnapAlgorithm:Lcom/android/wm/shell/common/split/DividerSnapAlgorithm;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/wm/shell/common/split/DividerSnapAlgorithm;->calculateSnapTarget(IZ)Lcom/android/wm/shell/common/split/DividerSnapAlgorithm$SnapTarget;

    move-result-object p0

    iget p0, p0, Lcom/android/wm/shell/common/split/DividerSnapAlgorithm$SnapTarget;->position:I

    return p0
.end method

.method public final isInEndDismissZone()Z
    .locals 1

    iget v0, p0, Lcom/android/wm/shell/common/split/DividerResizeController$ResizeAlgorithm;->mTouchPosition:I

    iget p0, p0, Lcom/android/wm/shell/common/split/DividerResizeController$ResizeAlgorithm;->mDismissEndThreshold:I

    if-le v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isInStartDismissZone()Z
    .locals 1

    iget v0, p0, Lcom/android/wm/shell/common/split/DividerResizeController$ResizeAlgorithm;->mTouchPosition:I

    iget p0, p0, Lcom/android/wm/shell/common/split/DividerResizeController$ResizeAlgorithm;->mDismissStartThreshold:I

    if-ge v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ResizeAlgorithm{ds="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/wm/shell/common/split/DividerResizeController$ResizeAlgorithm;->mDismissStartThreshold:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", ff="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/wm/shell/common/split/DividerResizeController$ResizeAlgorithm;->mFirstFadeOutPosition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", f="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/wm/shell/common/split/DividerResizeController$ResizeAlgorithm;->mFirstSplitTargetPosition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", m="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/wm/shell/common/split/DividerResizeController$ResizeAlgorithm;->mMiddleTargetPosition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", l="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/wm/shell/common/split/DividerResizeController$ResizeAlgorithm;->mLastSplitTargetPosition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", lf="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/wm/shell/common/split/DividerResizeController$ResizeAlgorithm;->mLastFadeOutPosition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", de="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/wm/shell/common/split/DividerResizeController$ResizeAlgorithm;->mDismissEndThreshold:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", touch="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/wm/shell/common/split/DividerResizeController$ResizeAlgorithm;->mTouchPosition:I

    const-string/jumbo v1, "}"

    invoke-static {p0, v1, v0}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
