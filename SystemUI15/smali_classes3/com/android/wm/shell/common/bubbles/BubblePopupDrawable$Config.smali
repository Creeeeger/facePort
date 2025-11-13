.class public final Lcom/android/wm/shell/common/bubbles/BubblePopupDrawable$Config;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final arrowHeight:F

.field public final arrowRadius:F

.field public final arrowWidth:F

.field public final color:I

.field public final contentPadding:I

.field public final cornerRadius:F


# direct methods
.method public constructor <init>(IFIFFF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/wm/shell/common/bubbles/BubblePopupDrawable$Config;->color:I

    iput p2, p0, Lcom/android/wm/shell/common/bubbles/BubblePopupDrawable$Config;->cornerRadius:F

    iput p3, p0, Lcom/android/wm/shell/common/bubbles/BubblePopupDrawable$Config;->contentPadding:I

    iput p4, p0, Lcom/android/wm/shell/common/bubbles/BubblePopupDrawable$Config;->arrowWidth:F

    iput p5, p0, Lcom/android/wm/shell/common/bubbles/BubblePopupDrawable$Config;->arrowHeight:F

    iput p6, p0, Lcom/android/wm/shell/common/bubbles/BubblePopupDrawable$Config;->arrowRadius:F

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/wm/shell/common/bubbles/BubblePopupDrawable$Config;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/wm/shell/common/bubbles/BubblePopupDrawable$Config;

    iget v1, p1, Lcom/android/wm/shell/common/bubbles/BubblePopupDrawable$Config;->color:I

    iget v3, p0, Lcom/android/wm/shell/common/bubbles/BubblePopupDrawable$Config;->color:I

    if-eq v3, v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/android/wm/shell/common/bubbles/BubblePopupDrawable$Config;->cornerRadius:F

    iget v3, p1, Lcom/android/wm/shell/common/bubbles/BubblePopupDrawable$Config;->cornerRadius:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/android/wm/shell/common/bubbles/BubblePopupDrawable$Config;->contentPadding:I

    iget v3, p1, Lcom/android/wm/shell/common/bubbles/BubblePopupDrawable$Config;->contentPadding:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lcom/android/wm/shell/common/bubbles/BubblePopupDrawable$Config;->arrowWidth:F

    iget v3, p1, Lcom/android/wm/shell/common/bubbles/BubblePopupDrawable$Config;->arrowWidth:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_5

    return v2

    :cond_5
    iget v1, p0, Lcom/android/wm/shell/common/bubbles/BubblePopupDrawable$Config;->arrowHeight:F

    iget v3, p1, Lcom/android/wm/shell/common/bubbles/BubblePopupDrawable$Config;->arrowHeight:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_6

    return v2

    :cond_6
    iget p0, p0, Lcom/android/wm/shell/common/bubbles/BubblePopupDrawable$Config;->arrowRadius:F

    iget p1, p1, Lcom/android/wm/shell/common/bubbles/BubblePopupDrawable$Config;->arrowRadius:F

    invoke-static {p0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    if-eqz p0, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget v0, p0, Lcom/android/wm/shell/common/bubbles/BubblePopupDrawable$Config;->color:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget v2, p0, Lcom/android/wm/shell/common/bubbles/BubblePopupDrawable$Config;->cornerRadius:F

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/FlingCalculator$FlingInfo$$ExternalSyntheticOutline0;->m(FII)I

    move-result v0

    iget v2, p0, Lcom/android/wm/shell/common/bubbles/BubblePopupDrawable$Config;->contentPadding:I

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget v2, p0, Lcom/android/wm/shell/common/bubbles/BubblePopupDrawable$Config;->arrowWidth:F

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/FlingCalculator$FlingInfo$$ExternalSyntheticOutline0;->m(FII)I

    move-result v0

    iget v2, p0, Lcom/android/wm/shell/common/bubbles/BubblePopupDrawable$Config;->arrowHeight:F

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/FlingCalculator$FlingInfo$$ExternalSyntheticOutline0;->m(FII)I

    move-result v0

    iget p0, p0, Lcom/android/wm/shell/common/bubbles/BubblePopupDrawable$Config;->arrowRadius:F

    invoke-static {p0}, Ljava/lang/Float;->hashCode(F)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Config(color="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/wm/shell/common/bubbles/BubblePopupDrawable$Config;->color:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", cornerRadius="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/wm/shell/common/bubbles/BubblePopupDrawable$Config;->cornerRadius:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", contentPadding="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/wm/shell/common/bubbles/BubblePopupDrawable$Config;->contentPadding:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", arrowWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/wm/shell/common/bubbles/BubblePopupDrawable$Config;->arrowWidth:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", arrowHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/wm/shell/common/bubbles/BubblePopupDrawable$Config;->arrowHeight:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", arrowRadius="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/wm/shell/common/bubbles/BubblePopupDrawable$Config;->arrowRadius:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
