.class public final Lcom/android/systemui/keyguard/ui/viewmodel/LockscreenToGlanceableHubTransitionViewModel;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final keyguardAlpha:Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$FlowBuilder$sharedFlow-74qcysc$$inlined$mapNotNull$1;

.field public final keyguardTranslationX:Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

.field public final notificationAlpha:Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$FlowBuilder$sharedFlow-74qcysc$$inlined$mapNotNull$1;

.field public final notificationTranslationX:Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;

.field public final shortcutsAlpha:Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$FlowBuilder$sharedFlow-74qcysc$$inlined$mapNotNull$1;

.field public final showUmo:Lcom/android/systemui/keyguard/ui/viewmodel/LockscreenToGlanceableHubTransitionViewModel$special$$inlined$map$1;

.field public final transitionAnimation:Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$FlowBuilder;


# direct methods
.method public constructor <init>(Lcom/android/systemui/common/ui/domain/interactor/ConfigurationInteractor;Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow;)V
    .locals 17

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    sget-object v1, Lcom/android/systemui/keyguard/domain/interactor/FromLockscreenTransitionInteractor;->Companion:Lcom/android/systemui/keyguard/domain/interactor/FromLockscreenTransitionInteractor$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide v1, Lcom/android/systemui/keyguard/domain/interactor/FromLockscreenTransitionInteractor;->TO_GLANCEABLE_HUB_DURATION:J

    sget-object v3, Lcom/android/systemui/keyguard/shared/model/Edge;->Companion:Lcom/android/systemui/keyguard/shared/model/Edge$Companion;

    sget-object v4, Lcom/android/systemui/keyguard/shared/model/KeyguardState;->LOCKSCREEN:Lcom/android/systemui/keyguard/shared/model/KeyguardState;

    sget-object v5, Lcom/android/systemui/scene/shared/model/Scenes;->Communal:Lcom/android/compose/animation/scene/SceneKey;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/android/systemui/keyguard/shared/model/Edge$StateToScene;

    invoke-direct {v3, v4, v5}, Lcom/android/systemui/keyguard/shared/model/Edge$StateToScene;-><init>(Lcom/android/systemui/keyguard/shared/model/KeyguardState;Lcom/android/compose/animation/scene/SceneKey;)V

    move-object/from16 v5, p2

    invoke-virtual {v5, v1, v2, v3}, Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow;->setup-VtjQ1oo(JLcom/android/systemui/keyguard/shared/model/Edge;)Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$FlowBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/keyguard/shared/model/KeyguardState;->GLANCEABLE_HUB:Lcom/android/systemui/keyguard/shared/model/KeyguardState;

    invoke-static {v4, v2, v1}, Lcom/android/systemui/keyguard/ui/viewmodel/AlternateBouncerToGoneTransitionViewModel$$ExternalSyntheticOutline0;->m(Lcom/android/systemui/keyguard/shared/model/KeyguardState;Lcom/android/systemui/keyguard/shared/model/KeyguardState;Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$FlowBuilder;)Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$FlowBuilder;

    move-result-object v5

    iput-object v5, v0, Lcom/android/systemui/keyguard/ui/viewmodel/LockscreenToGlanceableHubTransitionViewModel;->transitionAnimation:Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$FlowBuilder;

    sget-object v1, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    const/16 v1, 0xa7

    sget-object v2, Lkotlin/time/DurationUnit;->MILLISECONDS:Lkotlin/time/DurationUnit;

    invoke-static {v1, v2}, Lkotlin/time/DurationKt;->toDuration(ILkotlin/time/DurationUnit;)J

    move-result-wide v6

    sget-object v8, Lcom/android/systemui/keyguard/ui/viewmodel/LockscreenToGlanceableHubTransitionViewModel$keyguardAlpha$1;->INSTANCE:Lcom/android/systemui/keyguard/ui/viewmodel/LockscreenToGlanceableHubTransitionViewModel$keyguardAlpha$1;

    sget-object v12, Lcom/android/systemui/keyguard/ui/viewmodel/LockscreenToGlanceableHubTransitionViewModel$keyguardAlpha$2;->INSTANCE:Lcom/android/systemui/keyguard/ui/viewmodel/LockscreenToGlanceableHubTransitionViewModel$keyguardAlpha$2;

    sget-object v13, Lcom/android/systemui/keyguard/ui/viewmodel/LockscreenToGlanceableHubTransitionViewModel$keyguardAlpha$3;->INSTANCE:Lcom/android/systemui/keyguard/ui/viewmodel/LockscreenToGlanceableHubTransitionViewModel$keyguardAlpha$3;

    const/4 v14, 0x0

    const-string v15, "LOCKSCREEN->GLANCEABLE_HUB: keyguardAlpha"

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    const/16 v16, 0x4c

    invoke-static/range {v5 .. v16}, Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$FlowBuilder;->sharedFlow-74qcysc$default(Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$FlowBuilder;JLkotlin/jvm/functions/Function1;JLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroid/view/animation/Interpolator;Ljava/lang/String;I)Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$FlowBuilder$sharedFlow-74qcysc$$inlined$mapNotNull$1;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/keyguard/ui/viewmodel/LockscreenToGlanceableHubTransitionViewModel;->keyguardAlpha:Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$FlowBuilder$sharedFlow-74qcysc$$inlined$mapNotNull$1;

    new-instance v2, Lcom/android/systemui/keyguard/ui/viewmodel/LockscreenToGlanceableHubTransitionViewModel$special$$inlined$map$1;

    invoke-direct {v2, v1}, Lcom/android/systemui/keyguard/ui/viewmodel/LockscreenToGlanceableHubTransitionViewModel$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    iput-object v2, v0, Lcom/android/systemui/keyguard/ui/viewmodel/LockscreenToGlanceableHubTransitionViewModel;->showUmo:Lcom/android/systemui/keyguard/ui/viewmodel/LockscreenToGlanceableHubTransitionViewModel$special$$inlined$map$1;

    const v2, 0x7f070767

    move-object/from16 v3, p1

    invoke-virtual {v3, v2}, Lcom/android/systemui/common/ui/domain/interactor/ConfigurationInteractor;->dimensionPixelSize(I)Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/keyguard/ui/viewmodel/LockscreenToGlanceableHubTransitionViewModel$special$$inlined$flatMapLatest$1;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v0}, Lcom/android/systemui/keyguard/ui/viewmodel/LockscreenToGlanceableHubTransitionViewModel$special$$inlined$flatMapLatest$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/android/systemui/keyguard/ui/viewmodel/LockscreenToGlanceableHubTransitionViewModel;)V

    invoke-static {v2, v3}, Lkotlinx/coroutines/flow/FlowKt;->transformLatest(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/keyguard/ui/viewmodel/LockscreenToGlanceableHubTransitionViewModel;->keyguardTranslationX:Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    iput-object v1, v0, Lcom/android/systemui/keyguard/ui/viewmodel/LockscreenToGlanceableHubTransitionViewModel;->notificationAlpha:Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$FlowBuilder$sharedFlow-74qcysc$$inlined$mapNotNull$1;

    iput-object v1, v0, Lcom/android/systemui/keyguard/ui/viewmodel/LockscreenToGlanceableHubTransitionViewModel;->shortcutsAlpha:Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$FlowBuilder$sharedFlow-74qcysc$$inlined$mapNotNull$1;

    new-instance v1, Lcom/android/systemui/keyguard/ui/viewmodel/LockscreenToGlanceableHubTransitionViewModel$special$$inlined$map$2;

    invoke-direct {v1, v2}, Lcom/android/systemui/keyguard/ui/viewmodel/LockscreenToGlanceableHubTransitionViewModel$special$$inlined$map$2;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    new-instance v2, Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;

    invoke-direct {v2, v1}, Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    iput-object v2, v0, Lcom/android/systemui/keyguard/ui/viewmodel/LockscreenToGlanceableHubTransitionViewModel;->notificationTranslationX:Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;

    return-void
.end method
