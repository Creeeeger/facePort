.class public final Lcom/android/systemui/keyguard/ui/viewmodel/GlanceableHubToDreamingTransitionViewModel;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/keyguard/ui/transitions/DeviceEntryIconTransition;


# static fields
.field public static final FROM_GLANCEABLE_HUB_DURATION:J


# instance fields
.field public final deviceEntryParentViewAlpha:Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$FlowBuilder$sharedFlow-74qcysc$$inlined$mapNotNull$1;

.field public final dreamOverlayAlpha:Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$FlowBuilder$sharedFlow-74qcysc$$inlined$mapNotNull$1;

.field public final dreamOverlayTranslationX:Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

.field public final showUmo:Lcom/android/systemui/keyguard/ui/viewmodel/GlanceableHubToDreamingTransitionViewModel$special$$inlined$map$1;

.field public final transitionAnimation:Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$FlowBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/keyguard/ui/viewmodel/GlanceableHubToDreamingTransitionViewModel$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/keyguard/ui/viewmodel/GlanceableHubToDreamingTransitionViewModel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sget-object v0, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    const/4 v0, 0x1

    sget-object v1, Lkotlin/time/DurationUnit;->SECONDS:Lkotlin/time/DurationUnit;

    invoke-static {v0, v1}, Lkotlin/time/DurationKt;->toDuration(ILkotlin/time/DurationUnit;)J

    move-result-wide v0

    sput-wide v0, Lcom/android/systemui/keyguard/ui/viewmodel/GlanceableHubToDreamingTransitionViewModel;->FROM_GLANCEABLE_HUB_DURATION:J

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow;Lcom/android/systemui/common/ui/domain/interactor/ConfigurationInteractor;)V
    .locals 19

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    sget-object v1, Lcom/android/systemui/keyguard/shared/model/Edge;->Companion:Lcom/android/systemui/keyguard/shared/model/Edge$Companion;

    sget-object v2, Lcom/android/systemui/scene/shared/model/Scenes;->Communal:Lcom/android/compose/animation/scene/SceneKey;

    sget-object v3, Lcom/android/systemui/keyguard/shared/model/KeyguardState;->DREAMING:Lcom/android/systemui/keyguard/shared/model/KeyguardState;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/android/systemui/keyguard/shared/model/Edge$SceneToState;

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/keyguard/shared/model/Edge$SceneToState;-><init>(Lcom/android/compose/animation/scene/SceneKey;Lcom/android/systemui/keyguard/shared/model/KeyguardState;)V

    sget-wide v5, Lcom/android/systemui/keyguard/ui/viewmodel/GlanceableHubToDreamingTransitionViewModel;->FROM_GLANCEABLE_HUB_DURATION:J

    move-object/from16 v2, p1

    invoke-virtual {v2, v5, v6, v1}, Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow;->setup-VtjQ1oo(JLcom/android/systemui/keyguard/shared/model/Edge;)Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$FlowBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/keyguard/shared/model/KeyguardState;->GLANCEABLE_HUB:Lcom/android/systemui/keyguard/shared/model/KeyguardState;

    invoke-static {v2, v3, v1}, Lcom/android/systemui/keyguard/ui/viewmodel/AlternateBouncerToGoneTransitionViewModel$$ExternalSyntheticOutline0;->m(Lcom/android/systemui/keyguard/shared/model/KeyguardState;Lcom/android/systemui/keyguard/shared/model/KeyguardState;Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$FlowBuilder;)Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$FlowBuilder;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/keyguard/ui/viewmodel/GlanceableHubToDreamingTransitionViewModel;->transitionAnimation:Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$FlowBuilder;

    sget-object v2, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    sget-object v2, Lkotlin/time/DurationUnit;->MILLISECONDS:Lkotlin/time/DurationUnit;

    const/16 v3, 0xa7

    invoke-static {v3, v2}, Lkotlin/time/DurationKt;->toDuration(ILkotlin/time/DurationUnit;)J

    move-result-wide v8

    invoke-static {v3, v2}, Lkotlin/time/DurationKt;->toDuration(ILkotlin/time/DurationUnit;)J

    move-result-wide v11

    sget-object v10, Lcom/android/systemui/keyguard/ui/viewmodel/GlanceableHubToDreamingTransitionViewModel$dreamOverlayAlpha$1;->INSTANCE:Lcom/android/systemui/keyguard/ui/viewmodel/GlanceableHubToDreamingTransitionViewModel$dreamOverlayAlpha$1;

    const/16 v16, 0x0

    const-string v17, "GLANCEABLE_HUB->DREAMING: dreamOverlayAlpha"

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v18, 0x78

    move-object v7, v1

    invoke-static/range {v7 .. v18}, Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$FlowBuilder;->sharedFlow-74qcysc$default(Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$FlowBuilder;JLkotlin/jvm/functions/Function1;JLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroid/view/animation/Interpolator;Ljava/lang/String;I)Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$FlowBuilder$sharedFlow-74qcysc$$inlined$mapNotNull$1;

    move-result-object v4

    iput-object v4, v0, Lcom/android/systemui/keyguard/ui/viewmodel/GlanceableHubToDreamingTransitionViewModel;->dreamOverlayAlpha:Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$FlowBuilder$sharedFlow-74qcysc$$inlined$mapNotNull$1;

    const v4, 0x7f07046b

    move-object/from16 v7, p2

    invoke-virtual {v7, v4}, Lcom/android/systemui/common/ui/domain/interactor/ConfigurationInteractor;->dimensionPixelSize(I)Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    move-result-object v4

    new-instance v7, Lcom/android/systemui/keyguard/ui/viewmodel/GlanceableHubToDreamingTransitionViewModel$special$$inlined$flatMapLatest$1;

    const/4 v8, 0x0

    invoke-direct {v7, v8, v0}, Lcom/android/systemui/keyguard/ui/viewmodel/GlanceableHubToDreamingTransitionViewModel$special$$inlined$flatMapLatest$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/android/systemui/keyguard/ui/viewmodel/GlanceableHubToDreamingTransitionViewModel;)V

    invoke-static {v4, v7}, Lkotlinx/coroutines/flow/FlowKt;->transformLatest(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    move-result-object v4

    iput-object v4, v0, Lcom/android/systemui/keyguard/ui/viewmodel/GlanceableHubToDreamingTransitionViewModel;->dreamOverlayTranslationX:Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    sget-object v7, Lcom/android/systemui/keyguard/ui/viewmodel/GlanceableHubToDreamingTransitionViewModel$showUmo$1;->INSTANCE:Lcom/android/systemui/keyguard/ui/viewmodel/GlanceableHubToDreamingTransitionViewModel$showUmo$1;

    sget-object v11, Lcom/android/systemui/keyguard/ui/viewmodel/GlanceableHubToDreamingTransitionViewModel$showUmo$2;->INSTANCE:Lcom/android/systemui/keyguard/ui/viewmodel/GlanceableHubToDreamingTransitionViewModel$showUmo$2;

    sget-object v12, Lcom/android/systemui/keyguard/ui/viewmodel/GlanceableHubToDreamingTransitionViewModel$showUmo$3;->INSTANCE:Lcom/android/systemui/keyguard/ui/viewmodel/GlanceableHubToDreamingTransitionViewModel$showUmo$3;

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const/16 v15, 0xcc

    move-object v4, v1

    invoke-static/range {v4 .. v15}, Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$FlowBuilder;->sharedFlow-74qcysc$default(Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$FlowBuilder;JLkotlin/jvm/functions/Function1;JLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroid/view/animation/Interpolator;Ljava/lang/String;I)Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$FlowBuilder$sharedFlow-74qcysc$$inlined$mapNotNull$1;

    move-result-object v4

    new-instance v5, Lcom/android/systemui/keyguard/ui/viewmodel/GlanceableHubToDreamingTransitionViewModel$special$$inlined$map$1;

    invoke-direct {v5, v4}, Lcom/android/systemui/keyguard/ui/viewmodel/GlanceableHubToDreamingTransitionViewModel$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    iput-object v5, v0, Lcom/android/systemui/keyguard/ui/viewmodel/GlanceableHubToDreamingTransitionViewModel;->showUmo:Lcom/android/systemui/keyguard/ui/viewmodel/GlanceableHubToDreamingTransitionViewModel$special$$inlined$map$1;

    invoke-static {v3, v2}, Lkotlin/time/DurationKt;->toDuration(ILkotlin/time/DurationUnit;)J

    move-result-wide v8

    sget-object v10, Lcom/android/systemui/keyguard/ui/viewmodel/GlanceableHubToDreamingTransitionViewModel$deviceEntryParentViewAlpha$1;->INSTANCE:Lcom/android/systemui/keyguard/ui/viewmodel/GlanceableHubToDreamingTransitionViewModel$deviceEntryParentViewAlpha$1;

    sget-object v14, Lcom/android/systemui/keyguard/ui/viewmodel/GlanceableHubToDreamingTransitionViewModel$deviceEntryParentViewAlpha$2;->INSTANCE:Lcom/android/systemui/keyguard/ui/viewmodel/GlanceableHubToDreamingTransitionViewModel$deviceEntryParentViewAlpha$2;

    sget-object v15, Lcom/android/systemui/keyguard/ui/viewmodel/GlanceableHubToDreamingTransitionViewModel$deviceEntryParentViewAlpha$3;->INSTANCE:Lcom/android/systemui/keyguard/ui/viewmodel/GlanceableHubToDreamingTransitionViewModel$deviceEntryParentViewAlpha$3;

    const/16 v17, 0x0

    const-wide/16 v11, 0x0

    const/16 v18, 0xcc

    move-object v7, v1

    invoke-static/range {v7 .. v18}, Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$FlowBuilder;->sharedFlow-74qcysc$default(Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$FlowBuilder;JLkotlin/jvm/functions/Function1;JLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroid/view/animation/Interpolator;Ljava/lang/String;I)Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$FlowBuilder$sharedFlow-74qcysc$$inlined$mapNotNull$1;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/keyguard/ui/viewmodel/GlanceableHubToDreamingTransitionViewModel;->deviceEntryParentViewAlpha:Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$FlowBuilder$sharedFlow-74qcysc$$inlined$mapNotNull$1;

    return-void
.end method


# virtual methods
.method public final getDeviceEntryParentViewAlpha()Lkotlinx/coroutines/flow/Flow;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/keyguard/ui/viewmodel/GlanceableHubToDreamingTransitionViewModel;->deviceEntryParentViewAlpha:Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$FlowBuilder$sharedFlow-74qcysc$$inlined$mapNotNull$1;

    return-object p0
.end method
