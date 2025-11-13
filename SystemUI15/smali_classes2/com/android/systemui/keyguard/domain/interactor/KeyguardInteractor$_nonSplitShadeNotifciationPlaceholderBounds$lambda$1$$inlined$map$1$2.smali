.class public final Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor$_nonSplitShadeNotifciationPlaceholderBounds$lambda$1$$inlined$map$1$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic $lastChangeStep$inlined:Lcom/android/systemui/keyguard/shared/model/TransitionStep;

.field public final synthetic $newBounds$inlined:Lcom/android/systemui/common/shared/model/NotificationContainerBounds;

.field public final synthetic $oldBounds$inlined:Lcom/android/systemui/common/shared/model/NotificationContainerBounds;

.field public final synthetic $this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/FlowCollector;Lcom/android/systemui/keyguard/shared/model/TransitionStep;Lcom/android/systemui/common/shared/model/NotificationContainerBounds;Lcom/android/systemui/common/shared/model/NotificationContainerBounds;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor$_nonSplitShadeNotifciationPlaceholderBounds$lambda$1$$inlined$map$1$2;->$this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

    iput-object p2, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor$_nonSplitShadeNotifciationPlaceholderBounds$lambda$1$$inlined$map$1$2;->$lastChangeStep$inlined:Lcom/android/systemui/keyguard/shared/model/TransitionStep;

    iput-object p3, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor$_nonSplitShadeNotifciationPlaceholderBounds$lambda$1$$inlined$map$1$2;->$oldBounds$inlined:Lcom/android/systemui/common/shared/model/NotificationContainerBounds;

    iput-object p4, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor$_nonSplitShadeNotifciationPlaceholderBounds$lambda$1$$inlined$map$1$2;->$newBounds$inlined:Lcom/android/systemui/common/shared/model/NotificationContainerBounds;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    instance-of v2, v1, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor$_nonSplitShadeNotifciationPlaceholderBounds$lambda$1$$inlined$map$1$2$1;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor$_nonSplitShadeNotifciationPlaceholderBounds$lambda$1$$inlined$map$1$2$1;

    iget v3, v2, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor$_nonSplitShadeNotifciationPlaceholderBounds$lambda$1$$inlined$map$1$2$1;->label:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor$_nonSplitShadeNotifciationPlaceholderBounds$lambda$1$$inlined$map$1$2$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor$_nonSplitShadeNotifciationPlaceholderBounds$lambda$1$$inlined$map$1$2$1;

    invoke-direct {v2, v0, v1}, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor$_nonSplitShadeNotifciationPlaceholderBounds$lambda$1$$inlined$map$1$2$1;-><init>(Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor$_nonSplitShadeNotifciationPlaceholderBounds$lambda$1$$inlined$map$1$2;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v1, v2, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor$_nonSplitShadeNotifciationPlaceholderBounds$lambda$1$$inlined$map$1$2$1;->result:Ljava/lang/Object;

    sget-object v3, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v4, v2, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor$_nonSplitShadeNotifciationPlaceholderBounds$lambda$1$$inlined$map$1$2$1;->label:I

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    if-ne v4, v5, :cond_1

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v1, p1

    check-cast v1, Lcom/android/systemui/keyguard/shared/model/TransitionStep;

    iget-object v4, v0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor$_nonSplitShadeNotifciationPlaceholderBounds$lambda$1$$inlined$map$1$2;->$lastChangeStep$inlined:Lcom/android/systemui/keyguard/shared/model/TransitionStep;

    iget v4, v4, Lcom/android/systemui/keyguard/shared/model/TransitionStep;->value:F

    iget v6, v1, Lcom/android/systemui/keyguard/shared/model/TransitionStep;->value:F

    sget-object v7, Lcom/android/systemui/keyguard/shared/model/KeyguardState;->AOD:Lcom/android/systemui/keyguard/shared/model/KeyguardState;

    iget-object v8, v0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor$_nonSplitShadeNotifciationPlaceholderBounds$lambda$1$$inlined$map$1$2;->$newBounds$inlined:Lcom/android/systemui/common/shared/model/NotificationContainerBounds;

    iget-object v1, v1, Lcom/android/systemui/keyguard/shared/model/TransitionStep;->to:Lcom/android/systemui/keyguard/shared/model/KeyguardState;

    if-ne v1, v7, :cond_3

    cmpl-float v1, v6, v4

    if-ltz v1, :cond_3

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v7, v4, v1

    if-gez v7, :cond_3

    sub-float/2addr v6, v4

    sub-float v4, v1, v4

    div-float/2addr v6, v4

    const/4 v4, 0x0

    invoke-static {v6, v4, v1}, Lkotlin/ranges/RangesKt___RangesKt;->coerceIn(FFF)F

    move-result v6

    iget-object v7, v0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor$_nonSplitShadeNotifciationPlaceholderBounds$lambda$1$$inlined$map$1$2;->$oldBounds$inlined:Lcom/android/systemui/common/shared/model/NotificationContainerBounds;

    iget v9, v7, Lcom/android/systemui/common/shared/model/NotificationContainerBounds;->top:F

    iget v10, v8, Lcom/android/systemui/common/shared/model/NotificationContainerBounds;->top:F

    invoke-static {v9, v10, v6}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v12

    iget v7, v7, Lcom/android/systemui/common/shared/model/NotificationContainerBounds;->bottom:F

    iget v8, v8, Lcom/android/systemui/common/shared/model/NotificationContainerBounds;->bottom:F

    invoke-static {v6, v4, v1}, Lkotlin/ranges/RangesKt___RangesKt;->coerceIn(FFF)F

    move-result v1

    invoke-static {v7, v8, v1}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v13

    new-instance v8, Lcom/android/systemui/common/shared/model/NotificationContainerBounds;

    const/4 v15, 0x4

    const/16 v16, 0x0

    const/4 v14, 0x0

    move-object v11, v8

    invoke-direct/range {v11 .. v16}, Lcom/android/systemui/common/shared/model/NotificationContainerBounds;-><init>(FFZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :cond_3
    iput v5, v2, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor$_nonSplitShadeNotifciationPlaceholderBounds$lambda$1$$inlined$map$1$2$1;->label:I

    iget-object v0, v0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor$_nonSplitShadeNotifciationPlaceholderBounds$lambda$1$$inlined$map$1$2;->$this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

    invoke-interface {v0, v8, v2}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_4

    return-object v3

    :cond_4
    :goto_1
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
