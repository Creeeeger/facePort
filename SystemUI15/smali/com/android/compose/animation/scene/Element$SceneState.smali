.class public final Lcom/android/compose/animation/scene/Element$SceneState;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public alphaBeforeInterruption:F

.field public alphaInterruptionDelta:F

.field public lastAlpha:F

.field public lastOffset:J

.field public lastScale:Lcom/android/compose/animation/scene/Scale;

.field public lastSize:J

.field public final nodes:Ljava/util/Set;

.field public offsetBeforeInterruption:J

.field public offsetInterruptionDelta:J

.field public scaleBeforeInterruption:Lcom/android/compose/animation/scene/Scale;

.field public scaleInterruptionDelta:Lcom/android/compose/animation/scene/Scale;

.field public final scene:Lcom/android/compose/animation/scene/SceneKey;

.field public sizeBeforeInterruption:J

.field public sizeInterruptionDelta:J

.field public final targetOffset$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

.field public final targetSize$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;


# direct methods
.method public constructor <init>(Lcom/android/compose/animation/scene/SceneKey;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/compose/animation/scene/Element$SceneState;->scene:Lcom/android/compose/animation/scene/SceneKey;

    sget-object p1, Lcom/android/compose/animation/scene/Element;->Companion:Lcom/android/compose/animation/scene/Element$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide v0, Lcom/android/compose/animation/scene/Element;->SizeUnspecified:J

    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntSize;->box-impl(J)Landroidx/compose/ui/unit/IntSize;

    move-result-object p1

    sget-object v2, Landroidx/compose/runtime/StructuralEqualityPolicy;->INSTANCE:Landroidx/compose/runtime/StructuralEqualityPolicy;

    invoke-static {p1, v2}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object p1

    iput-object p1, p0, Lcom/android/compose/animation/scene/Element$SceneState;->targetSize$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    sget-object p1, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide v3, Landroidx/compose/ui/geometry/Offset;->Unspecified:J

    invoke-static {v3, v4}, Landroidx/compose/ui/geometry/Offset;->box-impl(J)Landroidx/compose/ui/geometry/Offset;

    move-result-object p1

    invoke-static {p1, v2}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object p1

    iput-object p1, p0, Lcom/android/compose/animation/scene/Element$SceneState;->targetOffset$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    iput-wide v3, p0, Lcom/android/compose/animation/scene/Element$SceneState;->lastOffset:J

    iput-wide v0, p0, Lcom/android/compose/animation/scene/Element$SceneState;->lastSize:J

    sget-object p1, Lcom/android/compose/animation/scene/Scale;->Companion:Lcom/android/compose/animation/scene/Scale$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lcom/android/compose/animation/scene/Scale;->Unspecified:Lcom/android/compose/animation/scene/Scale;

    iput-object p1, p0, Lcom/android/compose/animation/scene/Element$SceneState;->lastScale:Lcom/android/compose/animation/scene/Scale;

    sget v2, Lcom/android/compose/animation/scene/Element;->AlphaUnspecified:F

    iput v2, p0, Lcom/android/compose/animation/scene/Element$SceneState;->lastAlpha:F

    iput-wide v3, p0, Lcom/android/compose/animation/scene/Element$SceneState;->offsetBeforeInterruption:J

    iput-wide v0, p0, Lcom/android/compose/animation/scene/Element$SceneState;->sizeBeforeInterruption:J

    iput-object p1, p0, Lcom/android/compose/animation/scene/Element$SceneState;->scaleBeforeInterruption:Lcom/android/compose/animation/scene/Scale;

    iput v2, p0, Lcom/android/compose/animation/scene/Element$SceneState;->alphaBeforeInterruption:F

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/compose/animation/scene/Element$SceneState;->offsetInterruptionDelta:J

    sget-object p1, Landroidx/compose/ui/unit/IntSize;->Companion:Landroidx/compose/ui/unit/IntSize$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-wide v0, p0, Lcom/android/compose/animation/scene/Element$SceneState;->sizeInterruptionDelta:J

    sget-object p1, Lcom/android/compose/animation/scene/Scale;->Zero:Lcom/android/compose/animation/scene/Scale;

    iput-object p1, p0, Lcom/android/compose/animation/scene/Element$SceneState;->scaleInterruptionDelta:Lcom/android/compose/animation/scene/Scale;

    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Lcom/android/compose/animation/scene/Element$SceneState;->nodes:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final getTargetOffset-F1C5BW0()J
    .locals 2

    iget-object p0, p0, Lcom/android/compose/animation/scene/Element$SceneState;->targetOffset$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {p0}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/geometry/Offset;

    iget-wide v0, p0, Landroidx/compose/ui/geometry/Offset;->packedValue:J

    return-wide v0
.end method

.method public final getTargetSize-YbymL2g()J
    .locals 2

    iget-object p0, p0, Lcom/android/compose/animation/scene/Element$SceneState;->targetSize$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {p0}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/unit/IntSize;

    iget-wide v0, p0, Landroidx/compose/ui/unit/IntSize;->packedValue:J

    return-wide v0
.end method
