.class public final Lcom/android/systemui/qs/bar/VideoCallMicModeResources;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final betweenMargin:I

.field public final defaultMargin:I

.field public final defaultStartPadding:I

.field public final dividerPadding:I

.field public final iconPadding:I

.field public final iconSize:I

.field public final startPadding:I

.field public final textContainerPaddingEnd:I

.field public final textContainerPaddingStart:I


# direct methods
.method public constructor <init>(IIIIIIIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/systemui/qs/bar/VideoCallMicModeResources;->iconPadding:I

    iput p2, p0, Lcom/android/systemui/qs/bar/VideoCallMicModeResources;->iconSize:I

    iput p3, p0, Lcom/android/systemui/qs/bar/VideoCallMicModeResources;->defaultStartPadding:I

    iput p4, p0, Lcom/android/systemui/qs/bar/VideoCallMicModeResources;->startPadding:I

    iput p5, p0, Lcom/android/systemui/qs/bar/VideoCallMicModeResources;->textContainerPaddingStart:I

    iput p6, p0, Lcom/android/systemui/qs/bar/VideoCallMicModeResources;->textContainerPaddingEnd:I

    iput p7, p0, Lcom/android/systemui/qs/bar/VideoCallMicModeResources;->defaultMargin:I

    iput p8, p0, Lcom/android/systemui/qs/bar/VideoCallMicModeResources;->betweenMargin:I

    iput p9, p0, Lcom/android/systemui/qs/bar/VideoCallMicModeResources;->dividerPadding:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/systemui/qs/bar/VideoCallMicModeResources;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/systemui/qs/bar/VideoCallMicModeResources;

    iget v1, p1, Lcom/android/systemui/qs/bar/VideoCallMicModeResources;->iconPadding:I

    iget v3, p0, Lcom/android/systemui/qs/bar/VideoCallMicModeResources;->iconPadding:I

    if-eq v3, v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/android/systemui/qs/bar/VideoCallMicModeResources;->iconSize:I

    iget v3, p1, Lcom/android/systemui/qs/bar/VideoCallMicModeResources;->iconSize:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/android/systemui/qs/bar/VideoCallMicModeResources;->defaultStartPadding:I

    iget v3, p1, Lcom/android/systemui/qs/bar/VideoCallMicModeResources;->defaultStartPadding:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lcom/android/systemui/qs/bar/VideoCallMicModeResources;->startPadding:I

    iget v3, p1, Lcom/android/systemui/qs/bar/VideoCallMicModeResources;->startPadding:I

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget v1, p0, Lcom/android/systemui/qs/bar/VideoCallMicModeResources;->textContainerPaddingStart:I

    iget v3, p1, Lcom/android/systemui/qs/bar/VideoCallMicModeResources;->textContainerPaddingStart:I

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget v1, p0, Lcom/android/systemui/qs/bar/VideoCallMicModeResources;->textContainerPaddingEnd:I

    iget v3, p1, Lcom/android/systemui/qs/bar/VideoCallMicModeResources;->textContainerPaddingEnd:I

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget v1, p0, Lcom/android/systemui/qs/bar/VideoCallMicModeResources;->defaultMargin:I

    iget v3, p1, Lcom/android/systemui/qs/bar/VideoCallMicModeResources;->defaultMargin:I

    if-eq v1, v3, :cond_8

    return v2

    :cond_8
    iget v1, p0, Lcom/android/systemui/qs/bar/VideoCallMicModeResources;->betweenMargin:I

    iget v3, p1, Lcom/android/systemui/qs/bar/VideoCallMicModeResources;->betweenMargin:I

    if-eq v1, v3, :cond_9

    return v2

    :cond_9
    iget p0, p0, Lcom/android/systemui/qs/bar/VideoCallMicModeResources;->dividerPadding:I

    iget p1, p1, Lcom/android/systemui/qs/bar/VideoCallMicModeResources;->dividerPadding:I

    if-eq p0, p1, :cond_a

    return v2

    :cond_a
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget v0, p0, Lcom/android/systemui/qs/bar/VideoCallMicModeResources;->iconPadding:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget v2, p0, Lcom/android/systemui/qs/bar/VideoCallMicModeResources;->iconSize:I

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget v2, p0, Lcom/android/systemui/qs/bar/VideoCallMicModeResources;->defaultStartPadding:I

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget v2, p0, Lcom/android/systemui/qs/bar/VideoCallMicModeResources;->startPadding:I

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget v2, p0, Lcom/android/systemui/qs/bar/VideoCallMicModeResources;->textContainerPaddingStart:I

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget v2, p0, Lcom/android/systemui/qs/bar/VideoCallMicModeResources;->textContainerPaddingEnd:I

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget v2, p0, Lcom/android/systemui/qs/bar/VideoCallMicModeResources;->defaultMargin:I

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget v2, p0, Lcom/android/systemui/qs/bar/VideoCallMicModeResources;->betweenMargin:I

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget p0, p0, Lcom/android/systemui/qs/bar/VideoCallMicModeResources;->dividerPadding:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "VideoCallMicModeResources(iconPadding="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/systemui/qs/bar/VideoCallMicModeResources;->iconPadding:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", iconSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/qs/bar/VideoCallMicModeResources;->iconSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", defaultStartPadding="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/qs/bar/VideoCallMicModeResources;->defaultStartPadding:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", startPadding="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/qs/bar/VideoCallMicModeResources;->startPadding:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", textContainerPaddingStart="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/qs/bar/VideoCallMicModeResources;->textContainerPaddingStart:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", textContainerPaddingEnd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/qs/bar/VideoCallMicModeResources;->textContainerPaddingEnd:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", defaultMargin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/qs/bar/VideoCallMicModeResources;->defaultMargin:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", betweenMargin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/qs/bar/VideoCallMicModeResources;->betweenMargin:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", dividerPadding="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/systemui/qs/bar/VideoCallMicModeResources;->dividerPadding:I

    const-string v1, ")"

    invoke-static {p0, v1, v0}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
