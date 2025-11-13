.class public final Landroidx/compose/material3/SliderState;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroidx/compose/foundation/gestures/DraggableState;


# instance fields
.field public final dragScope:Landroidx/compose/material3/SliderState$dragScope$1;

.field public final gestureEndAction:Lkotlin/jvm/functions/Function0;

.field public final isDragging$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

.field public isRtl:Z

.field public onValueChange:Lkotlin/jvm/functions/Function1;

.field public onValueChangeFinished:Lkotlin/jvm/functions/Function0;

.field public final pressOffset$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

.field public final rawOffset$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

.field public final scrollMutex:Landroidx/compose/foundation/MutatorMutex;

.field public final steps:I

.field public final thumbWidth$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

.field public final tickFractions:[F

.field public final totalWidth$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

.field public final trackHeight$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

.field public final valueRange:Lkotlin/ranges/ClosedFloatingPointRange;

.field public final valueState$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;


# direct methods
.method public constructor <init>()V
    .locals 7

    const/16 v5, 0xf

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Landroidx/compose/material3/SliderState;-><init>(FILkotlin/jvm/functions/Function0;Lkotlin/ranges/ClosedFloatingPointRange;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(FILkotlin/jvm/functions/Function0;Lkotlin/ranges/ClosedFloatingPointRange;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FI",
            "Lkotlin/jvm/functions/Function0;",
            "Lkotlin/ranges/ClosedFloatingPointRange;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Landroidx/compose/material3/SliderState;->steps:I

    iput-object p3, p0, Landroidx/compose/material3/SliderState;->onValueChangeFinished:Lkotlin/jvm/functions/Function0;

    iput-object p4, p0, Landroidx/compose/material3/SliderState;->valueRange:Lkotlin/ranges/ClosedFloatingPointRange;

    invoke-static {p1}, Landroidx/compose/runtime/PrimitiveSnapshotStateKt;->mutableFloatStateOf(F)Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    move-result-object p3

    iput-object p3, p0, Landroidx/compose/material3/SliderState;->valueState$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    sget p3, Landroidx/compose/material3/SliderKt;->TrackHeight:F

    const/4 p3, 0x0

    if-nez p2, :cond_0

    new-array p2, p3, [F

    goto :goto_1

    :cond_0
    add-int/lit8 p4, p2, 0x2

    new-array v0, p4, [F

    move v1, p3

    :goto_0
    if-ge v1, p4, :cond_1

    int-to-float v2, v1

    add-int/lit8 v3, p2, 0x1

    int-to-float v3, v3

    div-float/2addr v2, v3

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move-object p2, v0

    :goto_1
    iput-object p2, p0, Landroidx/compose/material3/SliderState;->tickFractions:[F

    invoke-static {p3}, Landroidx/compose/runtime/SnapshotIntStateKt;->mutableIntStateOf(I)Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    move-result-object p2

    iput-object p2, p0, Landroidx/compose/material3/SliderState;->totalWidth$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    const/4 p2, 0x0

    invoke-static {p2}, Landroidx/compose/runtime/PrimitiveSnapshotStateKt;->mutableFloatStateOf(F)Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    move-result-object p3

    iput-object p3, p0, Landroidx/compose/material3/SliderState;->trackHeight$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    invoke-static {p2}, Landroidx/compose/runtime/PrimitiveSnapshotStateKt;->mutableFloatStateOf(F)Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    move-result-object p3

    iput-object p3, p0, Landroidx/compose/material3/SliderState;->thumbWidth$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    sget-object p3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object p4, Landroidx/compose/runtime/StructuralEqualityPolicy;->INSTANCE:Landroidx/compose/runtime/StructuralEqualityPolicy;

    invoke-static {p3, p4}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object p3

    iput-object p3, p0, Landroidx/compose/material3/SliderState;->isDragging$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    new-instance p3, Landroidx/compose/material3/SliderState$gestureEndAction$1;

    invoke-direct {p3, p0}, Landroidx/compose/material3/SliderState$gestureEndAction$1;-><init>(Landroidx/compose/material3/SliderState;)V

    iput-object p3, p0, Landroidx/compose/material3/SliderState;->gestureEndAction:Lkotlin/jvm/functions/Function0;

    iget-object p3, p0, Landroidx/compose/material3/SliderState;->valueRange:Lkotlin/ranges/ClosedFloatingPointRange;

    check-cast p3, Lkotlin/ranges/ClosedFloatRange;

    iget p4, p3, Lkotlin/ranges/ClosedFloatRange;->_start:F

    iget p3, p3, Lkotlin/ranges/ClosedFloatRange;->_endInclusive:F

    sub-float/2addr p3, p4

    cmpg-float v0, p3, p2

    if-nez v0, :cond_2

    move p1, p2

    goto :goto_2

    :cond_2
    sub-float/2addr p1, p4

    div-float/2addr p1, p3

    :goto_2
    const/high16 p3, 0x3f800000    # 1.0f

    invoke-static {p1, p2, p3}, Lkotlin/ranges/RangesKt___RangesKt;->coerceIn(FFF)F

    move-result p1

    invoke-static {p2, p2, p1}, Landroidx/compose/ui/util/MathHelpersKt;->lerp(FFF)F

    move-result p1

    invoke-static {p1}, Landroidx/compose/runtime/PrimitiveSnapshotStateKt;->mutableFloatStateOf(F)Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/material3/SliderState;->rawOffset$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    invoke-static {p2}, Landroidx/compose/runtime/PrimitiveSnapshotStateKt;->mutableFloatStateOf(F)Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/material3/SliderState;->pressOffset$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    new-instance p1, Landroidx/compose/material3/SliderState$dragScope$1;

    invoke-direct {p1, p0}, Landroidx/compose/material3/SliderState$dragScope$1;-><init>(Landroidx/compose/material3/SliderState;)V

    iput-object p1, p0, Landroidx/compose/material3/SliderState;->dragScope:Landroidx/compose/material3/SliderState$dragScope$1;

    new-instance p1, Landroidx/compose/foundation/MutatorMutex;

    invoke-direct {p1}, Landroidx/compose/foundation/MutatorMutex;-><init>()V

    iput-object p1, p0, Landroidx/compose/material3/SliderState;->scrollMutex:Landroidx/compose/foundation/MutatorMutex;

    return-void
.end method

.method public constructor <init>(FILkotlin/jvm/functions/Function0;Lkotlin/ranges/ClosedFloatingPointRange;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p6, p5, 0x1

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    move p1, v0

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    const/4 p2, 0x0

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    const/4 p3, 0x0

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    new-instance p4, Lkotlin/ranges/ClosedFloatRange;

    const/high16 p5, 0x3f800000    # 1.0f

    invoke-direct {p4, v0, p5}, Lkotlin/ranges/ClosedFloatRange;-><init>(FF)V

    :cond_3
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/compose/material3/SliderState;-><init>(FILkotlin/jvm/functions/Function0;Lkotlin/ranges/ClosedFloatingPointRange;)V

    return-void
.end method


# virtual methods
.method public final dispatchRawDelta(F)V
    .locals 6

    iget-object v0, p0, Landroidx/compose/material3/SliderState;->totalWidth$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    invoke-virtual {v0}, Landroidx/compose/runtime/SnapshotMutableIntStateImpl;->getIntValue()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Landroidx/compose/material3/SliderState;->thumbWidth$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    invoke-virtual {v1}, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl;->getFloatValue()F

    move-result v2

    const/4 v3, 0x2

    int-to-float v3, v3

    div-float/2addr v2, v3

    sub-float/2addr v0, v2

    const/4 v2, 0x0

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-virtual {v1}, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl;->getFloatValue()F

    move-result v1

    div-float/2addr v1, v3

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iget-object v3, p0, Landroidx/compose/material3/SliderState;->rawOffset$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    invoke-virtual {v3}, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl;->getFloatValue()F

    move-result v4

    add-float/2addr v4, p1

    iget-object p1, p0, Landroidx/compose/material3/SliderState;->pressOffset$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    invoke-virtual {p1}, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl;->getFloatValue()F

    move-result v5

    add-float/2addr v5, v4

    invoke-virtual {v3, v5}, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl;->setFloatValue(F)V

    invoke-virtual {p1, v2}, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl;->setFloatValue(F)V

    invoke-virtual {v3}, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl;->getFloatValue()F

    move-result p1

    iget-object v3, p0, Landroidx/compose/material3/SliderState;->tickFractions:[F

    invoke-static {p1, v1, v0, v3}, Landroidx/compose/material3/SliderKt;->access$snapValueToTick(FFF[F)F

    move-result p1

    iget-object v3, p0, Landroidx/compose/material3/SliderState;->valueRange:Lkotlin/ranges/ClosedFloatingPointRange;

    check-cast v3, Lkotlin/ranges/ClosedFloatRange;

    iget v4, v3, Lkotlin/ranges/ClosedFloatRange;->_start:F

    sub-float/2addr v0, v1

    cmpg-float v5, v0, v2

    if-nez v5, :cond_0

    move p1, v2

    goto :goto_0

    :cond_0
    sub-float/2addr p1, v1

    div-float/2addr p1, v0

    :goto_0
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, v2, v0}, Lkotlin/ranges/RangesKt___RangesKt;->coerceIn(FFF)F

    move-result p1

    iget v0, v3, Lkotlin/ranges/ClosedFloatRange;->_endInclusive:F

    invoke-static {v4, v0, p1}, Landroidx/compose/ui/util/MathHelpersKt;->lerp(FFF)F

    move-result p1

    iget-object v0, p0, Landroidx/compose/material3/SliderState;->valueState$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    invoke-virtual {v0}, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl;->getFloatValue()F

    move-result v0

    cmpg-float v0, p1, v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Landroidx/compose/material3/SliderState;->onValueChange:Lkotlin/jvm/functions/Function1;

    if-eqz v0, :cond_2

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-interface {v0, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    invoke-virtual {p0, p1}, Landroidx/compose/material3/SliderState;->setValue(F)V

    :goto_1
    return-void
.end method

.method public final drag(Landroidx/compose/foundation/MutatePriority;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2

    new-instance v0, Landroidx/compose/material3/SliderState$drag$2;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Landroidx/compose/material3/SliderState$drag$2;-><init>(Landroidx/compose/material3/SliderState;Landroidx/compose/foundation/MutatePriority;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, p3}, Lkotlinx/coroutines/CoroutineScopeKt;->coroutineScope(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final getCoercedValueAsFraction$material3_release()F
    .locals 4

    iget-object v0, p0, Landroidx/compose/material3/SliderState;->valueRange:Lkotlin/ranges/ClosedFloatingPointRange;

    check-cast v0, Lkotlin/ranges/ClosedFloatRange;

    iget v1, v0, Lkotlin/ranges/ClosedFloatRange;->_start:F

    iget v2, v0, Lkotlin/ranges/ClosedFloatRange;->_endInclusive:F

    iget-object p0, p0, Landroidx/compose/material3/SliderState;->valueState$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    invoke-virtual {p0}, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl;->getFloatValue()F

    move-result p0

    iget v3, v0, Lkotlin/ranges/ClosedFloatRange;->_start:F

    iget v0, v0, Lkotlin/ranges/ClosedFloatRange;->_endInclusive:F

    invoke-static {p0, v3, v0}, Lkotlin/ranges/RangesKt___RangesKt;->coerceIn(FFF)F

    move-result p0

    sget v0, Landroidx/compose/material3/SliderKt;->TrackHeight:F

    sub-float/2addr v2, v1

    const/4 v0, 0x0

    cmpg-float v3, v2, v0

    if-nez v3, :cond_0

    move p0, v0

    goto :goto_0

    :cond_0
    sub-float/2addr p0, v1

    div-float/2addr p0, v2

    :goto_0
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p0, v0, v1}, Lkotlin/ranges/RangesKt___RangesKt;->coerceIn(FFF)F

    move-result p0

    return p0
.end method

.method public final getValue()F
    .locals 0

    iget-object p0, p0, Landroidx/compose/material3/SliderState;->valueState$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    invoke-virtual {p0}, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl;->getFloatValue()F

    move-result p0

    return p0
.end method

.method public final setValue(F)V
    .locals 3

    iget-object v0, p0, Landroidx/compose/material3/SliderState;->valueRange:Lkotlin/ranges/ClosedFloatingPointRange;

    check-cast v0, Lkotlin/ranges/ClosedFloatRange;

    iget v1, v0, Lkotlin/ranges/ClosedFloatRange;->_start:F

    iget v2, v0, Lkotlin/ranges/ClosedFloatRange;->_endInclusive:F

    invoke-static {p1, v1, v2}, Lkotlin/ranges/RangesKt___RangesKt;->coerceIn(FFF)F

    move-result p1

    iget v1, v0, Lkotlin/ranges/ClosedFloatRange;->_start:F

    iget v0, v0, Lkotlin/ranges/ClosedFloatRange;->_endInclusive:F

    iget-object v2, p0, Landroidx/compose/material3/SliderState;->tickFractions:[F

    invoke-static {p1, v1, v0, v2}, Landroidx/compose/material3/SliderKt;->access$snapValueToTick(FFF[F)F

    move-result p1

    iget-object p0, p0, Landroidx/compose/material3/SliderState;->valueState$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl;->setFloatValue(F)V

    return-void
.end method
