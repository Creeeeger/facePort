.class public abstract Landroidx/compose/material3/AppBarKt;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final synthetic $r8$clinit:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Landroidx/compose/animation/core/CubicBezierEasing;

    const v1, 0x3e19999a    # 0.15f

    const v2, 0x3f4ccccd    # 0.8f

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v2, v1}, Landroidx/compose/animation/core/CubicBezierEasing;-><init>(FFFF)V

    return-void
.end method

.method public static final access$settleAppBar(Landroidx/compose/material3/TopAppBarState;FLandroidx/compose/animation/core/DecayAnimationSpecImpl;Landroidx/compose/animation/core/AnimationSpec;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9

    instance-of v0, p4, Landroidx/compose/material3/AppBarKt$settleAppBar$1;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Landroidx/compose/material3/AppBarKt$settleAppBar$1;

    iget v1, v0, Landroidx/compose/material3/AppBarKt$settleAppBar$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Landroidx/compose/material3/AppBarKt$settleAppBar$1;->label:I

    :goto_0
    move-object v6, v0

    goto :goto_1

    :cond_0
    new-instance v0, Landroidx/compose/material3/AppBarKt$settleAppBar$1;

    invoke-direct {v0, p4}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    goto :goto_0

    :goto_1
    iget-object p4, v6, Landroidx/compose/material3/AppBarKt$settleAppBar$1;->result:Ljava/lang/Object;

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, v6, Landroidx/compose/material3/AppBarKt$settleAppBar$1;->label:I

    const/4 v8, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    if-eq v1, v3, :cond_2

    if-ne v1, v2, :cond_1

    iget-object p0, v6, Landroidx/compose/material3/AppBarKt$settleAppBar$1;->L$0:Ljava/lang/Object;

    check-cast p0, Lkotlin/jvm/internal/Ref$FloatRef;

    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object p0, v6, Landroidx/compose/material3/AppBarKt$settleAppBar$1;->L$2:Ljava/lang/Object;

    check-cast p0, Lkotlin/jvm/internal/Ref$FloatRef;

    iget-object p1, v6, Landroidx/compose/material3/AppBarKt$settleAppBar$1;->L$1:Ljava/lang/Object;

    move-object p3, p1

    check-cast p3, Landroidx/compose/animation/core/AnimationSpec;

    iget-object p1, v6, Landroidx/compose/material3/AppBarKt$settleAppBar$1;->L$0:Ljava/lang/Object;

    check-cast p1, Landroidx/compose/material3/TopAppBarState;

    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p4, p0

    move-object p0, p1

    goto :goto_2

    :cond_3
    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroidx/compose/material3/TopAppBarState;->getCollapsedFraction()F

    move-result p4

    const v1, 0x3c23d70a    # 0.01f

    cmpg-float p4, p4, v1

    if-ltz p4, :cond_9

    invoke-virtual {p0}, Landroidx/compose/material3/TopAppBarState;->getCollapsedFraction()F

    move-result p4

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float p4, p4, v1

    if-nez p4, :cond_4

    goto/16 :goto_5

    :cond_4
    new-instance p4, Lkotlin/jvm/internal/Ref$FloatRef;

    invoke-direct {p4}, Lkotlin/jvm/internal/Ref$FloatRef;-><init>()V

    iput p1, p4, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    if-eqz p2, :cond_5

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v1, v4, v1

    if-lez v1, :cond_5

    new-instance v1, Lkotlin/jvm/internal/Ref$FloatRef;

    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$FloatRef;-><init>()V

    const/16 v4, 0x1c

    invoke-static {v8, p1, v4}, Landroidx/compose/animation/core/AnimationStateKt;->AnimationState$default(FFI)Landroidx/compose/animation/core/AnimationState;

    move-result-object p1

    new-instance v4, Landroidx/compose/material3/AppBarKt$settleAppBar$2;

    invoke-direct {v4, v1, p0, p4}, Landroidx/compose/material3/AppBarKt$settleAppBar$2;-><init>(Lkotlin/jvm/internal/Ref$FloatRef;Landroidx/compose/material3/TopAppBarState;Lkotlin/jvm/internal/Ref$FloatRef;)V

    iput-object p0, v6, Landroidx/compose/material3/AppBarKt$settleAppBar$1;->L$0:Ljava/lang/Object;

    iput-object p3, v6, Landroidx/compose/material3/AppBarKt$settleAppBar$1;->L$1:Ljava/lang/Object;

    iput-object p4, v6, Landroidx/compose/material3/AppBarKt$settleAppBar$1;->L$2:Ljava/lang/Object;

    iput v3, v6, Landroidx/compose/material3/AppBarKt$settleAppBar$1;->label:I

    const/4 v1, 0x0

    invoke-static {p1, p2, v1, v4, v6}, Landroidx/compose/animation/core/SuspendAnimationKt;->animateDecay(Landroidx/compose/animation/core/AnimationState;Landroidx/compose/animation/core/DecayAnimationSpecImpl;ZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    goto/16 :goto_6

    :cond_5
    :goto_2
    move-object v3, p3

    if-eqz v3, :cond_8

    iget-object p1, p0, Landroidx/compose/material3/TopAppBarState;->_heightOffset:Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    invoke-virtual {p1}, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl;->getFloatValue()F

    move-result p1

    cmpg-float p1, p1, v8

    if-gez p1, :cond_8

    iget-object p1, p0, Landroidx/compose/material3/TopAppBarState;->_heightOffset:Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    invoke-virtual {p1}, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl;->getFloatValue()F

    move-result p1

    iget-object p2, p0, Landroidx/compose/material3/TopAppBarState;->heightOffsetLimit$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    invoke-virtual {p2}, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl;->getFloatValue()F

    move-result p3

    cmpl-float p1, p1, p3

    if-lez p1, :cond_8

    iget-object p1, p0, Landroidx/compose/material3/TopAppBarState;->_heightOffset:Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    invoke-virtual {p1}, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl;->getFloatValue()F

    move-result p1

    const/16 p3, 0x1e

    invoke-static {p1, v8, p3}, Landroidx/compose/animation/core/AnimationStateKt;->AnimationState$default(FFI)Landroidx/compose/animation/core/AnimationState;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/compose/material3/TopAppBarState;->getCollapsedFraction()F

    move-result p1

    const/high16 p3, 0x3f000000    # 0.5f

    cmpg-float p1, p1, p3

    if-gez p1, :cond_6

    move p1, v8

    goto :goto_3

    :cond_6
    invoke-virtual {p2}, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl;->getFloatValue()F

    move-result p1

    :goto_3
    new-instance p2, Ljava/lang/Float;

    invoke-direct {p2, p1}, Ljava/lang/Float;-><init>(F)V

    new-instance v5, Landroidx/compose/material3/AppBarKt$settleAppBar$3;

    invoke-direct {v5, p0}, Landroidx/compose/material3/AppBarKt$settleAppBar$3;-><init>(Landroidx/compose/material3/TopAppBarState;)V

    iput-object p4, v6, Landroidx/compose/material3/AppBarKt$settleAppBar$1;->L$0:Ljava/lang/Object;

    const/4 p0, 0x0

    iput-object p0, v6, Landroidx/compose/material3/AppBarKt$settleAppBar$1;->L$1:Ljava/lang/Object;

    iput-object p0, v6, Landroidx/compose/material3/AppBarKt$settleAppBar$1;->L$2:Ljava/lang/Object;

    iput v2, v6, Landroidx/compose/material3/AppBarKt$settleAppBar$1;->label:I

    const/4 v7, 0x4

    const/4 v4, 0x0

    move-object v2, p2

    invoke-static/range {v1 .. v7}, Landroidx/compose/animation/core/SuspendAnimationKt;->animateTo$default(Landroidx/compose/animation/core/AnimationState;Ljava/lang/Object;Landroidx/compose/animation/core/AnimationSpec;ZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;I)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_7

    goto :goto_6

    :cond_7
    move-object p0, p4

    :goto_4
    move-object p4, p0

    :cond_8
    iget p0, p4, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    invoke-static {v8, p0}, Landroidx/compose/ui/unit/VelocityKt;->Velocity(FF)J

    move-result-wide p0

    new-instance v0, Landroidx/compose/ui/unit/Velocity;

    invoke-direct {v0, p0, p1}, Landroidx/compose/ui/unit/Velocity;-><init>(J)V

    goto :goto_6

    :cond_9
    :goto_5
    new-instance v0, Landroidx/compose/ui/unit/Velocity;

    const-wide/16 p0, 0x0

    invoke-direct {v0, p0, p1}, Landroidx/compose/ui/unit/Velocity;-><init>(J)V

    :goto_6
    return-object v0
.end method
