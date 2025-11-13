.class final Landroidx/compose/ui/layout/ApproachLayoutElement;
.super Landroidx/compose/ui/node/ModifierNodeElement;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/compose/ui/node/ModifierNodeElement;"
    }
.end annotation


# instance fields
.field public final approachMeasure:Lkotlin/jvm/functions/Function3;

.field public final isMeasurementApproachInProgress:Lkotlin/jvm/functions/Function1;

.field public final isPlacementApproachInProgress:Lkotlin/jvm/functions/Function2;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function3;",
            "Lkotlin/jvm/functions/Function1;",
            "Lkotlin/jvm/functions/Function2;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/compose/ui/node/ModifierNodeElement;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/layout/ApproachLayoutElement;->approachMeasure:Lkotlin/jvm/functions/Function3;

    iput-object p2, p0, Landroidx/compose/ui/layout/ApproachLayoutElement;->isMeasurementApproachInProgress:Lkotlin/jvm/functions/Function1;

    iput-object p3, p0, Landroidx/compose/ui/layout/ApproachLayoutElement;->isPlacementApproachInProgress:Lkotlin/jvm/functions/Function2;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    sget-object p3, Landroidx/compose/ui/layout/LookaheadScopeKt;->defaultPlacementApproachInProgress:Lkotlin/jvm/functions/Function2;

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/ui/layout/ApproachLayoutElement;-><init>(Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)V

    return-void
.end method


# virtual methods
.method public final create()Landroidx/compose/ui/Modifier$Node;
    .locals 3

    new-instance v0, Landroidx/compose/ui/layout/ApproachLayoutModifierNodeImpl;

    iget-object v1, p0, Landroidx/compose/ui/layout/ApproachLayoutElement;->isPlacementApproachInProgress:Lkotlin/jvm/functions/Function2;

    iget-object v2, p0, Landroidx/compose/ui/layout/ApproachLayoutElement;->approachMeasure:Lkotlin/jvm/functions/Function3;

    iget-object p0, p0, Landroidx/compose/ui/layout/ApproachLayoutElement;->isMeasurementApproachInProgress:Lkotlin/jvm/functions/Function1;

    invoke-direct {v0, v2, p0, v1}, Landroidx/compose/ui/layout/ApproachLayoutModifierNodeImpl;-><init>(Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/compose/ui/layout/ApproachLayoutElement;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/compose/ui/layout/ApproachLayoutElement;

    iget-object v1, p1, Landroidx/compose/ui/layout/ApproachLayoutElement;->approachMeasure:Lkotlin/jvm/functions/Function3;

    iget-object v3, p0, Landroidx/compose/ui/layout/ApproachLayoutElement;->approachMeasure:Lkotlin/jvm/functions/Function3;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Landroidx/compose/ui/layout/ApproachLayoutElement;->isMeasurementApproachInProgress:Lkotlin/jvm/functions/Function1;

    iget-object v3, p1, Landroidx/compose/ui/layout/ApproachLayoutElement;->isMeasurementApproachInProgress:Lkotlin/jvm/functions/Function1;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object p0, p0, Landroidx/compose/ui/layout/ApproachLayoutElement;->isPlacementApproachInProgress:Lkotlin/jvm/functions/Function2;

    iget-object p1, p1, Landroidx/compose/ui/layout/ApproachLayoutElement;->isPlacementApproachInProgress:Lkotlin/jvm/functions/Function2;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Landroidx/compose/ui/layout/ApproachLayoutElement;->approachMeasure:Lkotlin/jvm/functions/Function3;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/compose/ui/layout/ApproachLayoutElement;->isMeasurementApproachInProgress:Lkotlin/jvm/functions/Function1;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object p0, p0, Landroidx/compose/ui/layout/ApproachLayoutElement;->isPlacementApproachInProgress:Lkotlin/jvm/functions/Function2;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v1

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ApproachLayoutElement(approachMeasure="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/compose/ui/layout/ApproachLayoutElement;->approachMeasure:Lkotlin/jvm/functions/Function3;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isMeasurementApproachInProgress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/compose/ui/layout/ApproachLayoutElement;->isMeasurementApproachInProgress:Lkotlin/jvm/functions/Function1;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isPlacementApproachInProgress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroidx/compose/ui/layout/ApproachLayoutElement;->isPlacementApproachInProgress:Lkotlin/jvm/functions/Function2;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final update(Landroidx/compose/ui/Modifier$Node;)V
    .locals 1

    check-cast p1, Landroidx/compose/ui/layout/ApproachLayoutModifierNodeImpl;

    iget-object v0, p0, Landroidx/compose/ui/layout/ApproachLayoutElement;->approachMeasure:Lkotlin/jvm/functions/Function3;

    iput-object v0, p1, Landroidx/compose/ui/layout/ApproachLayoutModifierNodeImpl;->measureBlock:Lkotlin/jvm/functions/Function3;

    iget-object v0, p0, Landroidx/compose/ui/layout/ApproachLayoutElement;->isMeasurementApproachInProgress:Lkotlin/jvm/functions/Function1;

    iput-object v0, p1, Landroidx/compose/ui/layout/ApproachLayoutModifierNodeImpl;->isMeasurementApproachInProgress:Lkotlin/jvm/functions/Function1;

    iget-object p0, p0, Landroidx/compose/ui/layout/ApproachLayoutElement;->isPlacementApproachInProgress:Lkotlin/jvm/functions/Function2;

    iput-object p0, p1, Landroidx/compose/ui/layout/ApproachLayoutModifierNodeImpl;->isPlacementApproachInProgress:Lkotlin/jvm/functions/Function2;

    return-void
.end method
