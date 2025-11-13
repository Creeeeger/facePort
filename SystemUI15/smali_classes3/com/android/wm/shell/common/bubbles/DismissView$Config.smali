.class public final Lcom/android/wm/shell/common/bubbles/DismissView$Config;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final backgroundResId:I

.field public final bottomMarginResId:I

.field public final dismissViewResId:I

.field public final floatingGradientColorResId:I

.field public final floatingGradientHeightResId:I

.field public final iconResId:I

.field public final iconSizeResId:I

.field public final targetSizeResId:I


# direct methods
.method public constructor <init>(IIIIIIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/wm/shell/common/bubbles/DismissView$Config;->dismissViewResId:I

    iput p2, p0, Lcom/android/wm/shell/common/bubbles/DismissView$Config;->targetSizeResId:I

    iput p3, p0, Lcom/android/wm/shell/common/bubbles/DismissView$Config;->iconSizeResId:I

    iput p4, p0, Lcom/android/wm/shell/common/bubbles/DismissView$Config;->bottomMarginResId:I

    iput p5, p0, Lcom/android/wm/shell/common/bubbles/DismissView$Config;->floatingGradientHeightResId:I

    iput p6, p0, Lcom/android/wm/shell/common/bubbles/DismissView$Config;->floatingGradientColorResId:I

    iput p7, p0, Lcom/android/wm/shell/common/bubbles/DismissView$Config;->backgroundResId:I

    iput p8, p0, Lcom/android/wm/shell/common/bubbles/DismissView$Config;->iconResId:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/wm/shell/common/bubbles/DismissView$Config;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/wm/shell/common/bubbles/DismissView$Config;

    iget v1, p1, Lcom/android/wm/shell/common/bubbles/DismissView$Config;->dismissViewResId:I

    iget v3, p0, Lcom/android/wm/shell/common/bubbles/DismissView$Config;->dismissViewResId:I

    if-eq v3, v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/android/wm/shell/common/bubbles/DismissView$Config;->targetSizeResId:I

    iget v3, p1, Lcom/android/wm/shell/common/bubbles/DismissView$Config;->targetSizeResId:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/android/wm/shell/common/bubbles/DismissView$Config;->iconSizeResId:I

    iget v3, p1, Lcom/android/wm/shell/common/bubbles/DismissView$Config;->iconSizeResId:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lcom/android/wm/shell/common/bubbles/DismissView$Config;->bottomMarginResId:I

    iget v3, p1, Lcom/android/wm/shell/common/bubbles/DismissView$Config;->bottomMarginResId:I

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget v1, p0, Lcom/android/wm/shell/common/bubbles/DismissView$Config;->floatingGradientHeightResId:I

    iget v3, p1, Lcom/android/wm/shell/common/bubbles/DismissView$Config;->floatingGradientHeightResId:I

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget v1, p0, Lcom/android/wm/shell/common/bubbles/DismissView$Config;->floatingGradientColorResId:I

    iget v3, p1, Lcom/android/wm/shell/common/bubbles/DismissView$Config;->floatingGradientColorResId:I

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget v1, p0, Lcom/android/wm/shell/common/bubbles/DismissView$Config;->backgroundResId:I

    iget v3, p1, Lcom/android/wm/shell/common/bubbles/DismissView$Config;->backgroundResId:I

    if-eq v1, v3, :cond_8

    return v2

    :cond_8
    iget p0, p0, Lcom/android/wm/shell/common/bubbles/DismissView$Config;->iconResId:I

    iget p1, p1, Lcom/android/wm/shell/common/bubbles/DismissView$Config;->iconResId:I

    if-eq p0, p1, :cond_9

    return v2

    :cond_9
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget v0, p0, Lcom/android/wm/shell/common/bubbles/DismissView$Config;->dismissViewResId:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget v2, p0, Lcom/android/wm/shell/common/bubbles/DismissView$Config;->targetSizeResId:I

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget v2, p0, Lcom/android/wm/shell/common/bubbles/DismissView$Config;->iconSizeResId:I

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget v2, p0, Lcom/android/wm/shell/common/bubbles/DismissView$Config;->bottomMarginResId:I

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget v2, p0, Lcom/android/wm/shell/common/bubbles/DismissView$Config;->floatingGradientHeightResId:I

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget v2, p0, Lcom/android/wm/shell/common/bubbles/DismissView$Config;->floatingGradientColorResId:I

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget v2, p0, Lcom/android/wm/shell/common/bubbles/DismissView$Config;->backgroundResId:I

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget p0, p0, Lcom/android/wm/shell/common/bubbles/DismissView$Config;->iconResId:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Config(dismissViewResId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/wm/shell/common/bubbles/DismissView$Config;->dismissViewResId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", targetSizeResId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/wm/shell/common/bubbles/DismissView$Config;->targetSizeResId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", iconSizeResId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/wm/shell/common/bubbles/DismissView$Config;->iconSizeResId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", bottomMarginResId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/wm/shell/common/bubbles/DismissView$Config;->bottomMarginResId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", floatingGradientHeightResId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/wm/shell/common/bubbles/DismissView$Config;->floatingGradientHeightResId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", floatingGradientColorResId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/wm/shell/common/bubbles/DismissView$Config;->floatingGradientColorResId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", backgroundResId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/wm/shell/common/bubbles/DismissView$Config;->backgroundResId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", iconResId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/wm/shell/common/bubbles/DismissView$Config;->iconResId:I

    const-string v1, ")"

    invoke-static {p0, v1, v0}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
