.class final Landroidx/compose/foundation/MarqueeModifierElement;
.super Landroidx/compose/ui/node/ModifierNodeElement;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/compose/ui/node/ModifierNodeElement;"
    }
.end annotation


# instance fields
.field public final animationMode:I

.field public final delayMillis:I

.field public final initialDelayMillis:I

.field public final iterations:I

.field public final spacing:Landroidx/compose/foundation/MarqueeSpacing;

.field public final velocity:F


# direct methods
.method private constructor <init>(IIIILandroidx/compose/foundation/MarqueeSpacing;F)V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/ui/node/ModifierNodeElement;-><init>()V

    iput p1, p0, Landroidx/compose/foundation/MarqueeModifierElement;->iterations:I

    iput p2, p0, Landroidx/compose/foundation/MarqueeModifierElement;->animationMode:I

    iput p3, p0, Landroidx/compose/foundation/MarqueeModifierElement;->delayMillis:I

    iput p4, p0, Landroidx/compose/foundation/MarqueeModifierElement;->initialDelayMillis:I

    iput-object p5, p0, Landroidx/compose/foundation/MarqueeModifierElement;->spacing:Landroidx/compose/foundation/MarqueeSpacing;

    iput p6, p0, Landroidx/compose/foundation/MarqueeModifierElement;->velocity:F

    return-void
.end method

.method public synthetic constructor <init>(IIIILandroidx/compose/foundation/MarqueeSpacing;FLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Landroidx/compose/foundation/MarqueeModifierElement;-><init>(IIIILandroidx/compose/foundation/MarqueeSpacing;F)V

    return-void
.end method


# virtual methods
.method public final create()Landroidx/compose/ui/Modifier$Node;
    .locals 9

    new-instance v8, Landroidx/compose/foundation/MarqueeModifierNode;

    iget v4, p0, Landroidx/compose/foundation/MarqueeModifierElement;->initialDelayMillis:I

    iget-object v5, p0, Landroidx/compose/foundation/MarqueeModifierElement;->spacing:Landroidx/compose/foundation/MarqueeSpacing;

    iget v1, p0, Landroidx/compose/foundation/MarqueeModifierElement;->iterations:I

    iget v2, p0, Landroidx/compose/foundation/MarqueeModifierElement;->animationMode:I

    iget v3, p0, Landroidx/compose/foundation/MarqueeModifierElement;->delayMillis:I

    iget v6, p0, Landroidx/compose/foundation/MarqueeModifierElement;->velocity:F

    const/4 v7, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Landroidx/compose/foundation/MarqueeModifierNode;-><init>(IIIILandroidx/compose/foundation/MarqueeSpacing;FLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v8
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/compose/foundation/MarqueeModifierElement;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/compose/foundation/MarqueeModifierElement;

    iget v1, p1, Landroidx/compose/foundation/MarqueeModifierElement;->iterations:I

    iget v3, p0, Landroidx/compose/foundation/MarqueeModifierElement;->iterations:I

    if-eq v3, v1, :cond_2

    return v2

    :cond_2
    sget-object v1, Landroidx/compose/foundation/MarqueeAnimationMode;->Companion:Landroidx/compose/foundation/MarqueeAnimationMode$Companion;

    iget v1, p0, Landroidx/compose/foundation/MarqueeModifierElement;->animationMode:I

    iget v3, p1, Landroidx/compose/foundation/MarqueeModifierElement;->animationMode:I

    if-ne v1, v3, :cond_7

    iget v1, p0, Landroidx/compose/foundation/MarqueeModifierElement;->delayMillis:I

    iget v3, p1, Landroidx/compose/foundation/MarqueeModifierElement;->delayMillis:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget v1, p0, Landroidx/compose/foundation/MarqueeModifierElement;->initialDelayMillis:I

    iget v3, p1, Landroidx/compose/foundation/MarqueeModifierElement;->initialDelayMillis:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Landroidx/compose/foundation/MarqueeModifierElement;->spacing:Landroidx/compose/foundation/MarqueeSpacing;

    iget-object v3, p1, Landroidx/compose/foundation/MarqueeModifierElement;->spacing:Landroidx/compose/foundation/MarqueeSpacing;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget p0, p0, Landroidx/compose/foundation/MarqueeModifierElement;->velocity:F

    iget p1, p1, Landroidx/compose/foundation/MarqueeModifierElement;->velocity:F

    invoke-static {p0, p1}, Landroidx/compose/ui/unit/Dp;->equals-impl0(FF)Z

    move-result p0

    if-nez p0, :cond_6

    return v2

    :cond_6
    return v0

    :cond_7
    return v2
.end method

.method public final hashCode()I
    .locals 3

    iget v0, p0, Landroidx/compose/foundation/MarqueeModifierElement;->iterations:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    sget-object v2, Landroidx/compose/foundation/MarqueeAnimationMode;->Companion:Landroidx/compose/foundation/MarqueeAnimationMode$Companion;

    iget v2, p0, Landroidx/compose/foundation/MarqueeModifierElement;->animationMode:I

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget v2, p0, Landroidx/compose/foundation/MarqueeModifierElement;->delayMillis:I

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget v2, p0, Landroidx/compose/foundation/MarqueeModifierElement;->initialDelayMillis:I

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget-object v2, p0, Landroidx/compose/foundation/MarqueeModifierElement;->spacing:Landroidx/compose/foundation/MarqueeSpacing;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    sget-object v0, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    iget p0, p0, Landroidx/compose/foundation/MarqueeModifierElement;->velocity:F

    invoke-static {p0}, Ljava/lang/Float;->hashCode(F)I

    move-result p0

    add-int/2addr p0, v2

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MarqueeModifierElement(iterations="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroidx/compose/foundation/MarqueeModifierElement;->iterations:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", animationMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/compose/foundation/MarqueeModifierElement;->animationMode:I

    invoke-static {v1}, Landroidx/compose/foundation/MarqueeAnimationMode;->toString-impl(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", delayMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/compose/foundation/MarqueeModifierElement;->delayMillis:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", initialDelayMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/compose/foundation/MarqueeModifierElement;->initialDelayMillis:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", spacing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/compose/foundation/MarqueeModifierElement;->spacing:Landroidx/compose/foundation/MarqueeSpacing;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", velocity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroidx/compose/foundation/MarqueeModifierElement;->velocity:F

    invoke-static {p0}, Landroidx/compose/ui/unit/Dp;->toString-impl(F)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final update(Landroidx/compose/ui/Modifier$Node;)V
    .locals 4

    check-cast p1, Landroidx/compose/foundation/MarqueeModifierNode;

    iget-object v0, p1, Landroidx/compose/foundation/MarqueeModifierNode;->spacing$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    iget-object v1, p0, Landroidx/compose/foundation/MarqueeModifierElement;->spacing:Landroidx/compose/foundation/MarqueeSpacing;

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    iget v0, p0, Landroidx/compose/foundation/MarqueeModifierElement;->animationMode:I

    invoke-static {v0}, Landroidx/compose/foundation/MarqueeAnimationMode;->box-impl(I)Landroidx/compose/foundation/MarqueeAnimationMode;

    move-result-object v0

    iget-object v1, p1, Landroidx/compose/foundation/MarqueeModifierNode;->animationMode$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v1, v0}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    iget v0, p1, Landroidx/compose/foundation/MarqueeModifierNode;->iterations:I

    iget v1, p0, Landroidx/compose/foundation/MarqueeModifierElement;->iterations:I

    iget v2, p0, Landroidx/compose/foundation/MarqueeModifierElement;->delayMillis:I

    iget v3, p0, Landroidx/compose/foundation/MarqueeModifierElement;->initialDelayMillis:I

    iget p0, p0, Landroidx/compose/foundation/MarqueeModifierElement;->velocity:F

    if-ne v0, v1, :cond_0

    iget v0, p1, Landroidx/compose/foundation/MarqueeModifierNode;->delayMillis:I

    if-ne v0, v2, :cond_0

    iget v0, p1, Landroidx/compose/foundation/MarqueeModifierNode;->initialDelayMillis:I

    if-ne v0, v3, :cond_0

    iget v0, p1, Landroidx/compose/foundation/MarqueeModifierNode;->velocity:F

    invoke-static {v0, p0}, Landroidx/compose/ui/unit/Dp;->equals-impl0(FF)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iput v1, p1, Landroidx/compose/foundation/MarqueeModifierNode;->iterations:I

    iput v2, p1, Landroidx/compose/foundation/MarqueeModifierNode;->delayMillis:I

    iput v3, p1, Landroidx/compose/foundation/MarqueeModifierNode;->initialDelayMillis:I

    iput p0, p1, Landroidx/compose/foundation/MarqueeModifierNode;->velocity:F

    invoke-virtual {p1}, Landroidx/compose/foundation/MarqueeModifierNode;->restartAnimation()V

    :cond_1
    return-void
.end method
