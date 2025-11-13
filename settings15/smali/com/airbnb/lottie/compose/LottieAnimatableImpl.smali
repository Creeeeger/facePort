.class public final Lcom/airbnb/lottie/compose/LottieAnimatableImpl;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/airbnb/lottie/compose/LottieAnimatable;


# instance fields
.field public final clipSpec$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

.field public final composition$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

.field public final endProgress$delegate:Landroidx/compose/runtime/DerivedSnapshotState;

.field public final isPlaying$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

.field public final iteration$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

.field public final iterations$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

.field public final lastFrameNanos$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

.field public final mutex:Landroidx/compose/foundation/MutatorMutex;

.field public final progress$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

.field public final speed$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v1, Landroidx/compose/runtime/StructuralEqualityPolicy;->INSTANCE:Landroidx/compose/runtime/StructuralEqualityPolicy;

    invoke-static {v0, v1}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/compose/LottieAnimatableImpl;->isPlaying$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0, v1}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/compose/LottieAnimatableImpl;->progress$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0, v1}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object v2

    iput-object v2, p0, Lcom/airbnb/lottie/compose/LottieAnimatableImpl;->iteration$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-static {v0, v1}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/compose/LottieAnimatableImpl;->iterations$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    const/4 v0, 0x0

    invoke-static {v0, v1}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object v2

    iput-object v2, p0, Lcom/airbnb/lottie/compose/LottieAnimatableImpl;->clipSpec$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v2, v1}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object v2

    iput-object v2, p0, Lcom/airbnb/lottie/compose/LottieAnimatableImpl;->speed$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-static {v0, v1}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/compose/LottieAnimatableImpl;->composition$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    const-wide/high16 v2, -0x8000000000000000L

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0, v1}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/compose/LottieAnimatableImpl;->lastFrameNanos$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    new-instance v0, Lcom/airbnb/lottie/compose/LottieAnimatableImpl$endProgress$2;

    invoke-direct {v0, p0}, Lcom/airbnb/lottie/compose/LottieAnimatableImpl$endProgress$2;-><init>(Lcom/airbnb/lottie/compose/LottieAnimatableImpl;)V

    invoke-static {v0}, Landroidx/compose/runtime/SnapshotStateKt;->derivedStateOf(Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/DerivedSnapshotState;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/compose/LottieAnimatableImpl;->endProgress$delegate:Landroidx/compose/runtime/DerivedSnapshotState;

    new-instance v0, Lcom/airbnb/lottie/compose/LottieAnimatableImpl$isAtEnd$2;

    invoke-direct {v0, p0}, Lcom/airbnb/lottie/compose/LottieAnimatableImpl$isAtEnd$2;-><init>(Lcom/airbnb/lottie/compose/LottieAnimatableImpl;)V

    invoke-static {v0}, Landroidx/compose/runtime/SnapshotStateKt;->derivedStateOf(Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/DerivedSnapshotState;

    new-instance v0, Landroidx/compose/foundation/MutatorMutex;

    invoke-direct {v0}, Landroidx/compose/foundation/MutatorMutex;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/compose/LottieAnimatableImpl;->mutex:Landroidx/compose/foundation/MutatorMutex;

    return-void
.end method

.method public static final access$onFrame(Lcom/airbnb/lottie/compose/LottieAnimatableImpl;IJ)Z
    .locals 7

    iget-object v0, p0, Lcom/airbnb/lottie/compose/LottieAnimatableImpl;->composition$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v0}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/LottieComposition;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object v2, p0, Lcom/airbnb/lottie/compose/LottieAnimatableImpl;->lastFrameNanos$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v2}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    const-wide/high16 v5, -0x8000000000000000L

    cmp-long v3, v3, v5

    if-nez v3, :cond_1

    const-wide/16 v3, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    sub-long v3, p2, v3

    :goto_0
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v2, p2}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/airbnb/lottie/compose/LottieAnimatableImpl;->clipSpec$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {p2}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object p3

    invoke-static {p3}, Landroidx/appcompat/app/ToolbarActionBar$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    invoke-virtual {p2}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Landroidx/appcompat/app/ToolbarActionBar$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    const p2, 0xf4240

    int-to-long p2, p2

    div-long/2addr v3, p2

    long-to-float p2, v3

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieComposition;->getDuration()F

    move-result p3

    div-float/2addr p2, p3

    invoke-virtual {p0}, Lcom/airbnb/lottie/compose/LottieAnimatableImpl;->getSpeed()F

    move-result p3

    mul-float/2addr p3, p2

    invoke-virtual {p0}, Lcom/airbnb/lottie/compose/LottieAnimatableImpl;->getSpeed()F

    move-result p2

    const/4 v0, 0x0

    cmpg-float p2, p2, v0

    const/high16 v2, 0x3f800000    # 1.0f

    if-gez p2, :cond_2

    invoke-virtual {p0}, Lcom/airbnb/lottie/compose/LottieAnimatableImpl;->getProgress()F

    move-result p2

    add-float/2addr p2, p3

    sub-float p2, v0, p2

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/airbnb/lottie/compose/LottieAnimatableImpl;->getProgress()F

    move-result p2

    add-float/2addr p2, p3

    sub-float/2addr p2, v2

    :goto_1
    cmpg-float v3, p2, v0

    if-gez v3, :cond_3

    invoke-virtual {p0}, Lcom/airbnb/lottie/compose/LottieAnimatableImpl;->getProgress()F

    move-result p1

    invoke-static {p1, v0, v2}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result p1

    add-float/2addr p1, p3

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/compose/LottieAnimatableImpl;->setProgress$1(F)V

    goto :goto_3

    :cond_3
    div-float p3, p2, v2

    float-to-int p3, p3

    add-int/lit8 v3, p3, 0x1

    iget-object v4, p0, Lcom/airbnb/lottie/compose/LottieAnimatableImpl;->iteration$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v4}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    add-int/2addr v5, v3

    if-le v5, p1, :cond_4

    invoke-virtual {p0}, Lcom/airbnb/lottie/compose/LottieAnimatableImpl;->getEndProgress()F

    move-result p2

    invoke-virtual {p0, p2}, Lcom/airbnb/lottie/compose/LottieAnimatableImpl;->setProgress$1(F)V

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/compose/LottieAnimatableImpl;->setIteration(I)V

    const/4 v1, 0x0

    goto :goto_3

    :cond_4
    invoke-virtual {v4}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    add-int/2addr p1, v3

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/compose/LottieAnimatableImpl;->setIteration(I)V

    int-to-float p1, p3

    mul-float/2addr p1, v2

    sub-float/2addr p2, p1

    invoke-virtual {p0}, Lcom/airbnb/lottie/compose/LottieAnimatableImpl;->getSpeed()F

    move-result p1

    cmpg-float p1, p1, v0

    if-gez p1, :cond_5

    sub-float/2addr v2, p2

    goto :goto_2

    :cond_5
    add-float v2, v0, p2

    :goto_2
    invoke-virtual {p0, v2}, Lcom/airbnb/lottie/compose/LottieAnimatableImpl;->setProgress$1(F)V

    :goto_3
    return v1
.end method

.method public static final access$setPlaying(Lcom/airbnb/lottie/compose/LottieAnimatableImpl;Z)V
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/compose/LottieAnimatableImpl;->isPlaying$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final getEndProgress()F
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/compose/LottieAnimatableImpl;->endProgress$delegate:Landroidx/compose/runtime/DerivedSnapshotState;

    invoke-virtual {p0}, Landroidx/compose/runtime/DerivedSnapshotState;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    return p0
.end method

.method public final getProgress()F
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/compose/LottieAnimatableImpl;->progress$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {p0}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    return p0
.end method

.method public final getSpeed()F
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/compose/LottieAnimatableImpl;->speed$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {p0}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    return p0
.end method

.method public final getValue()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/airbnb/lottie/compose/LottieAnimatableImpl;->getProgress()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public final setIteration(I)V
    .locals 0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object p0, p0, Lcom/airbnb/lottie/compose/LottieAnimatableImpl;->iteration$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final setProgress$1(F)V
    .locals 0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iget-object p0, p0, Lcom/airbnb/lottie/compose/LottieAnimatableImpl;->progress$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    return-void
.end method
