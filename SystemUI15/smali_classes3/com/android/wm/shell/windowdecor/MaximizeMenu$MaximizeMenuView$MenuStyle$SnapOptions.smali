.class public final Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView$MenuStyle$SnapOptions;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final activeBackgroundColor:I

.field public final activeSnapSideColor:I

.field public final activeStrokeColor:I

.field public final inactiveBackgroundColor:I

.field public final inactiveSnapSideColor:I

.field public final inactiveStrokeColor:I

.field public final semiActiveSnapSideColor:I


# direct methods
.method public constructor <init>(IIIIIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView$MenuStyle$SnapOptions;->inactiveSnapSideColor:I

    iput p2, p0, Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView$MenuStyle$SnapOptions;->semiActiveSnapSideColor:I

    iput p3, p0, Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView$MenuStyle$SnapOptions;->activeSnapSideColor:I

    iput p4, p0, Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView$MenuStyle$SnapOptions;->inactiveStrokeColor:I

    iput p5, p0, Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView$MenuStyle$SnapOptions;->activeStrokeColor:I

    iput p6, p0, Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView$MenuStyle$SnapOptions;->inactiveBackgroundColor:I

    iput p7, p0, Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView$MenuStyle$SnapOptions;->activeBackgroundColor:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView$MenuStyle$SnapOptions;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView$MenuStyle$SnapOptions;

    iget v1, p1, Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView$MenuStyle$SnapOptions;->inactiveSnapSideColor:I

    iget v3, p0, Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView$MenuStyle$SnapOptions;->inactiveSnapSideColor:I

    if-eq v3, v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView$MenuStyle$SnapOptions;->semiActiveSnapSideColor:I

    iget v3, p1, Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView$MenuStyle$SnapOptions;->semiActiveSnapSideColor:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView$MenuStyle$SnapOptions;->activeSnapSideColor:I

    iget v3, p1, Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView$MenuStyle$SnapOptions;->activeSnapSideColor:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView$MenuStyle$SnapOptions;->inactiveStrokeColor:I

    iget v3, p1, Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView$MenuStyle$SnapOptions;->inactiveStrokeColor:I

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget v1, p0, Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView$MenuStyle$SnapOptions;->activeStrokeColor:I

    iget v3, p1, Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView$MenuStyle$SnapOptions;->activeStrokeColor:I

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget v1, p0, Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView$MenuStyle$SnapOptions;->inactiveBackgroundColor:I

    iget v3, p1, Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView$MenuStyle$SnapOptions;->inactiveBackgroundColor:I

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget p0, p0, Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView$MenuStyle$SnapOptions;->activeBackgroundColor:I

    iget p1, p1, Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView$MenuStyle$SnapOptions;->activeBackgroundColor:I

    if-eq p0, p1, :cond_8

    return v2

    :cond_8
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget v0, p0, Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView$MenuStyle$SnapOptions;->inactiveSnapSideColor:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget v2, p0, Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView$MenuStyle$SnapOptions;->semiActiveSnapSideColor:I

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget v2, p0, Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView$MenuStyle$SnapOptions;->activeSnapSideColor:I

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget v2, p0, Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView$MenuStyle$SnapOptions;->inactiveStrokeColor:I

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget v2, p0, Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView$MenuStyle$SnapOptions;->activeStrokeColor:I

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget v2, p0, Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView$MenuStyle$SnapOptions;->inactiveBackgroundColor:I

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget p0, p0, Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView$MenuStyle$SnapOptions;->activeBackgroundColor:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SnapOptions(inactiveSnapSideColor="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView$MenuStyle$SnapOptions;->inactiveSnapSideColor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", semiActiveSnapSideColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView$MenuStyle$SnapOptions;->semiActiveSnapSideColor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", activeSnapSideColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView$MenuStyle$SnapOptions;->activeSnapSideColor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", inactiveStrokeColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView$MenuStyle$SnapOptions;->inactiveStrokeColor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", activeStrokeColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView$MenuStyle$SnapOptions;->activeStrokeColor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", inactiveBackgroundColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView$MenuStyle$SnapOptions;->inactiveBackgroundColor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", activeBackgroundColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView$MenuStyle$SnapOptions;->activeBackgroundColor:I

    const-string v1, ")"

    invoke-static {p0, v1, v0}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
