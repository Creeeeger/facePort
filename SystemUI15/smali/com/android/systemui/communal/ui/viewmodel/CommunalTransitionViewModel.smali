.class public final Lcom/android/systemui/communal/ui/viewmodel/CommunalTransitionViewModel;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final isUmoOnCommunal:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final recentsBackgroundColor:Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

.field public final showCommunalFromOccluded:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final showUmoFromGlanceableHubToOccluded:Lcom/android/systemui/communal/ui/viewmodel/CommunalTransitionViewModel$special$$inlined$map$2;

.field public final showUmoFromOccludedToGlanceableHub:Lcom/android/systemui/communal/ui/viewmodel/CommunalTransitionViewModel$special$$inlined$map$1;

.field public final transitionFromOccludedEnded:Lcom/android/systemui/communal/ui/viewmodel/CommunalTransitionViewModel$special$$inlined$filter$3;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CoroutineScope;Lcom/android/systemui/communal/util/CommunalColors;Lcom/android/systemui/keyguard/ui/viewmodel/GlanceableHubToLockscreenTransitionViewModel;Lcom/android/systemui/keyguard/ui/viewmodel/LockscreenToGlanceableHubTransitionViewModel;Lcom/android/systemui/keyguard/ui/viewmodel/DreamingToGlanceableHubTransitionViewModel;Lcom/android/systemui/keyguard/ui/viewmodel/GlanceableHubToDreamingTransitionViewModel;Lcom/android/systemui/communal/domain/interactor/CommunalInteractor;Lcom/android/systemui/communal/domain/interactor/CommunalSceneInteractor;Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;)V
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p8

    move-object/from16 v2, p9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v3, Lcom/android/systemui/keyguard/shared/model/Edge;->Companion:Lcom/android/systemui/keyguard/shared/model/Edge$Companion;

    sget-object v4, Lcom/android/systemui/keyguard/shared/model/KeyguardState;->OCCLUDED:Lcom/android/systemui/keyguard/shared/model/KeyguardState;

    sget-object v5, Lcom/android/systemui/keyguard/shared/model/KeyguardState;->GLANCEABLE_HUB:Lcom/android/systemui/keyguard/shared/model/KeyguardState;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Lcom/android/systemui/keyguard/shared/model/Edge$StateToState;

    invoke-direct {v6, v4, v5}, Lcom/android/systemui/keyguard/shared/model/Edge$StateToState;-><init>(Lcom/android/systemui/keyguard/shared/model/KeyguardState;Lcom/android/systemui/keyguard/shared/model/KeyguardState;)V

    invoke-virtual {v2, v6}, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;->transition(Lcom/android/systemui/keyguard/shared/model/Edge;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v6

    new-instance v7, Lcom/android/systemui/communal/ui/viewmodel/CommunalTransitionViewModel$special$$inlined$filter$1;

    invoke-direct {v7, v6}, Lcom/android/systemui/communal/ui/viewmodel/CommunalTransitionViewModel$special$$inlined$filter$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    new-instance v12, Lcom/android/systemui/communal/ui/viewmodel/CommunalTransitionViewModel$special$$inlined$map$1;

    invoke-direct {v12, v7}, Lcom/android/systemui/communal/ui/viewmodel/CommunalTransitionViewModel$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    sget-object v6, Lcom/android/systemui/scene/shared/model/Scenes;->Communal:Lcom/android/compose/animation/scene/SceneKey;

    new-instance v7, Lcom/android/systemui/keyguard/shared/model/Edge$SceneToState;

    const/4 v14, 0x0

    invoke-direct {v7, v6, v14}, Lcom/android/systemui/keyguard/shared/model/Edge$SceneToState;-><init>(Lcom/android/compose/animation/scene/SceneKey;Lcom/android/systemui/keyguard/shared/model/KeyguardState;)V

    const/4 v6, 0x2

    invoke-static {v3, v5, v14, v6}, Lcom/android/systemui/keyguard/shared/model/Edge$Companion;->create$default(Lcom/android/systemui/keyguard/shared/model/Edge$Companion;Lcom/android/systemui/keyguard/shared/model/KeyguardState;Lcom/android/systemui/keyguard/shared/model/KeyguardState;I)Lcom/android/systemui/keyguard/shared/model/Edge$StateToState;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;->transition(Lcom/android/systemui/keyguard/shared/model/Edge$StateToState;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v5

    new-instance v7, Lcom/android/systemui/communal/ui/viewmodel/CommunalTransitionViewModel$special$$inlined$filter$2;

    invoke-direct {v7, v5}, Lcom/android/systemui/communal/ui/viewmodel/CommunalTransitionViewModel$special$$inlined$filter$2;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    new-instance v13, Lcom/android/systemui/communal/ui/viewmodel/CommunalTransitionViewModel$special$$inlined$map$2;

    invoke-direct {v13, v7}, Lcom/android/systemui/communal/ui/viewmodel/CommunalTransitionViewModel$special$$inlined$map$2;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    sget-object v5, Lcom/android/systemui/util/kotlin/BooleanFlowOperators;->INSTANCE:Lcom/android/systemui/util/kotlin/BooleanFlowOperators;

    iget-object v7, v1, Lcom/android/systemui/communal/domain/interactor/CommunalSceneInteractor;->isIdleOnCommunal:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-object/from16 v8, p4

    iget-object v8, v8, Lcom/android/systemui/keyguard/ui/viewmodel/LockscreenToGlanceableHubTransitionViewModel;->showUmo:Lcom/android/systemui/keyguard/ui/viewmodel/LockscreenToGlanceableHubTransitionViewModel$special$$inlined$map$1;

    move-object/from16 v9, p3

    iget-object v9, v9, Lcom/android/systemui/keyguard/ui/viewmodel/GlanceableHubToLockscreenTransitionViewModel;->showUmo:Lcom/android/systemui/keyguard/ui/viewmodel/GlanceableHubToLockscreenTransitionViewModel$special$$inlined$map$1;

    move-object/from16 v10, p5

    iget-object v10, v10, Lcom/android/systemui/keyguard/ui/viewmodel/DreamingToGlanceableHubTransitionViewModel;->showUmo:Lcom/android/systemui/keyguard/ui/viewmodel/DreamingToGlanceableHubTransitionViewModel$special$$inlined$map$1;

    move-object/from16 v11, p6

    iget-object v11, v11, Lcom/android/systemui/keyguard/ui/viewmodel/GlanceableHubToDreamingTransitionViewModel;->showUmo:Lcom/android/systemui/keyguard/ui/viewmodel/GlanceableHubToDreamingTransitionViewModel$special$$inlined$map$1;

    filled-new-array/range {v8 .. v13}, [Lkotlinx/coroutines/flow/Flow;

    move-result-object v8

    invoke-static {v8}, Lkotlinx/coroutines/flow/FlowKt;->merge([Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/internal/ChannelLimitedFlowMerge;

    move-result-object v8

    new-instance v9, Lcom/android/systemui/communal/ui/viewmodel/CommunalTransitionViewModel$isUmoOnCommunal$1;

    invoke-direct {v9, v14}, Lcom/android/systemui/communal/ui/viewmodel/CommunalTransitionViewModel$isUmoOnCommunal$1;-><init>(Lkotlin/coroutines/Continuation;)V

    new-instance v10, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;

    invoke-direct {v10, v9, v8}, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;-><init>(Lkotlin/jvm/functions/Function2;Lkotlinx/coroutines/flow/Flow;)V

    iget-object v1, v1, Lcom/android/systemui/communal/domain/interactor/CommunalSceneInteractor;->isCommunalVisible:Lcom/android/systemui/communal/domain/interactor/CommunalSceneInteractor$special$$inlined$map$2;

    filled-new-array {v1, v10}, [Lkotlinx/coroutines/flow/Flow;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/android/systemui/util/kotlin/BooleanFlowOperators;->allOf([Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v1

    filled-new-array {v7, v1}, [Lkotlinx/coroutines/flow/Flow;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/android/systemui/util/kotlin/BooleanFlowOperators;->anyOf([Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v1

    sget-object v5, Lkotlinx/coroutines/flow/SharingStarted;->Companion:Lkotlinx/coroutines/flow/SharingStarted$Companion;

    const/4 v7, 0x3

    invoke-static {v5, v7}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default(Lkotlinx/coroutines/flow/SharingStarted$Companion;I)Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    move-result-object v5

    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v8, p1

    invoke-static {v1, v8, v5, v7}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/communal/ui/viewmodel/CommunalTransitionViewModel;->isUmoOnCommunal:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-object/from16 v1, p7

    iget-object v1, v1, Lcom/android/systemui/communal/domain/interactor/CommunalInteractor;->showCommunalFromOccluded:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iput-object v1, v0, Lcom/android/systemui/communal/ui/viewmodel/CommunalTransitionViewModel;->showCommunalFromOccluded:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    invoke-static {v3, v4, v14, v6}, Lcom/android/systemui/keyguard/shared/model/Edge$Companion;->create$default(Lcom/android/systemui/keyguard/shared/model/Edge$Companion;Lcom/android/systemui/keyguard/shared/model/KeyguardState;Lcom/android/systemui/keyguard/shared/model/KeyguardState;I)Lcom/android/systemui/keyguard/shared/model/Edge$StateToState;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;->transition(Lcom/android/systemui/keyguard/shared/model/Edge;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/communal/ui/viewmodel/CommunalTransitionViewModel$special$$inlined$filter$3;

    invoke-direct {v3, v2}, Lcom/android/systemui/communal/ui/viewmodel/CommunalTransitionViewModel$special$$inlined$filter$3;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    iput-object v3, v0, Lcom/android/systemui/communal/ui/viewmodel/CommunalTransitionViewModel;->transitionFromOccludedEnded:Lcom/android/systemui/communal/ui/viewmodel/CommunalTransitionViewModel$special$$inlined$filter$3;

    move-object/from16 v2, p2

    check-cast v2, Lcom/android/systemui/communal/util/CommunalColorsImpl;

    iget-object v2, v2, Lcom/android/systemui/communal/util/CommunalColorsImpl;->backgroundColor:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance v3, Lcom/android/systemui/communal/ui/viewmodel/CommunalTransitionViewModel$recentsBackgroundColor$1;

    invoke-direct {v3, v14}, Lcom/android/systemui/communal/ui/viewmodel/CommunalTransitionViewModel$recentsBackgroundColor$1;-><init>(Lkotlin/coroutines/Continuation;)V

    new-instance v4, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    invoke-direct {v4, v1, v2, v3}, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)V

    iput-object v4, v0, Lcom/android/systemui/communal/ui/viewmodel/CommunalTransitionViewModel;->recentsBackgroundColor:Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    return-void
.end method
