.class public final Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardRootViewModel;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final _burnInModel:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final alphaOnShadeExpansion:Lkotlinx/coroutines/flow/Flow;

.field public final alternateBouncerToGoneTransitionViewModel:Lcom/android/systemui/keyguard/ui/viewmodel/AlternateBouncerToGoneTransitionViewModel;

.field public final aodBurnInViewModel:Lcom/android/systemui/keyguard/ui/viewmodel/AodBurnInViewModel;

.field public final aodToGoneTransitionViewModel:Lcom/android/systemui/keyguard/ui/viewmodel/AodToGoneTransitionViewModel;

.field public final aodToLockscreenTransitionViewModel:Lcom/android/systemui/keyguard/ui/viewmodel/AodToLockscreenTransitionViewModel;

.field public final aodToOccludedTransitionViewModel:Lcom/android/systemui/keyguard/ui/viewmodel/AodToOccludedTransitionViewModel;

.field public final applicationScope:Lkotlinx/coroutines/CoroutineScope;

.field public burnInJob:Lkotlinx/coroutines/Job;

.field public final burnInLayerAlpha:Lkotlinx/coroutines/flow/SafeFlow;

.field public final burnInLayerVisibility:Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardRootViewModel$special$$inlined$map$1;

.field public final burnInModel:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final dozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

.field public final dozingToGoneTransitionViewModel:Lcom/android/systemui/keyguard/ui/viewmodel/DozingToGoneTransitionViewModel;

.field public final dozingToLockscreenTransitionViewModel:Lcom/android/systemui/keyguard/ui/viewmodel/DozingToLockscreenTransitionViewModel;

.field public final dozingToOccludedTransitionViewModel:Lcom/android/systemui/keyguard/ui/viewmodel/DozingToOccludedTransitionViewModel;

.field public final dreamingToGoneTransitionViewModel:Lcom/android/systemui/keyguard/ui/viewmodel/DreamingToGoneTransitionViewModel;

.field public final dreamingToLockscreenTransitionViewModel:Lcom/android/systemui/keyguard/ui/viewmodel/DreamingToLockscreenTransitionViewModel;

.field public final glanceableHubToLockscreenTransitionViewModel:Lcom/android/systemui/keyguard/ui/viewmodel/GlanceableHubToLockscreenTransitionViewModel;

.field public final goneToAodTransition:Lkotlinx/coroutines/flow/Flow;

.field public final goneToAodTransitionViewModel:Lcom/android/systemui/keyguard/ui/viewmodel/GoneToAodTransitionViewModel;

.field public final goneToDozingTransitionViewModel:Lcom/android/systemui/keyguard/ui/viewmodel/GoneToDozingTransitionViewModel;

.field public final goneToDreamingTransitionViewModel:Lcom/android/systemui/keyguard/ui/viewmodel/GoneToDreamingTransitionViewModel;

.field public final goneToLockscreenTransitionViewModel:Lcom/android/systemui/keyguard/ui/viewmodel/GoneToLockscreenTransitionViewModel;

.field public final hideKeyguard:Lkotlinx/coroutines/flow/Flow;

.field public final isNotifIconContainerVisible:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final keyguardInteractor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;

.field public final lastRootViewTapPosition:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final lockscreenToAodTransitionViewModel:Lcom/android/systemui/keyguard/ui/viewmodel/LockscreenToAodTransitionViewModel;

.field public final lockscreenToDozingTransitionViewModel:Lcom/android/systemui/keyguard/ui/viewmodel/LockscreenToDozingTransitionViewModel;

.field public final lockscreenToDreamingTransitionViewModel:Lcom/android/systemui/keyguard/ui/viewmodel/LockscreenToDreamingTransitionViewModel;

.field public final lockscreenToGlanceableHubTransitionViewModel:Lcom/android/systemui/keyguard/ui/viewmodel/LockscreenToGlanceableHubTransitionViewModel;

.field public final lockscreenToGoneTransitionViewModel:Lcom/android/systemui/keyguard/ui/viewmodel/LockscreenToGoneTransitionViewModel;

.field public final lockscreenToOccludedTransitionViewModel:Lcom/android/systemui/keyguard/ui/viewmodel/LockscreenToOccludedTransitionViewModel;

.field public final lockscreenToPrimaryBouncerTransitionViewModel:Lcom/android/systemui/keyguard/ui/viewmodel/LockscreenToPrimaryBouncerTransitionViewModel;

.field public final occludedToAodTransitionViewModel:Lcom/android/systemui/keyguard/ui/viewmodel/OccludedToAodTransitionViewModel;

.field public final occludedToDozingTransitionViewModel:Lcom/android/systemui/keyguard/ui/viewmodel/OccludedToDozingTransitionViewModel;

.field public final occludedToLockscreenTransitionViewModel:Lcom/android/systemui/keyguard/ui/viewmodel/OccludedToLockscreenTransitionViewModel;

.field public final primaryBouncerToAodTransitionViewModel:Lcom/android/systemui/keyguard/ui/viewmodel/PrimaryBouncerToAodTransitionViewModel;

.field public final primaryBouncerToGoneTransitionViewModel:Lcom/android/systemui/keyguard/ui/viewmodel/PrimaryBouncerToGoneTransitionViewModel;

.field public final primaryBouncerToLockscreenTransitionViewModel:Lcom/android/systemui/keyguard/ui/viewmodel/PrimaryBouncerToLockscreenTransitionViewModel;

.field public final scale:Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardRootViewModel$special$$inlined$map$8;

.field public final screenOffAnimationController:Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;

.field public final topClippingBounds:Lkotlinx/coroutines/flow/Flow;

.field public final translationX:Lkotlinx/coroutines/flow/internal/ChannelLimitedFlowMerge;

.field public final translationY:Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardRootViewModel$special$$inlined$map$6;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardRootViewModel$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardRootViewModel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lkotlinx/coroutines/CoroutineScope;Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryInteractor;Lcom/android/systemui/statusbar/phone/DozeParameters;Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;Lcom/android/systemui/communal/domain/interactor/CommunalInteractor;Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;Lcom/android/systemui/statusbar/notification/domain/interactor/NotificationsKeyguardInteractor;Lcom/android/systemui/keyguard/ui/viewmodel/AlternateBouncerToGoneTransitionViewModel;Lcom/android/systemui/keyguard/ui/viewmodel/AodToGoneTransitionViewModel;Lcom/android/systemui/keyguard/ui/viewmodel/AodToLockscreenTransitionViewModel;Lcom/android/systemui/keyguard/ui/viewmodel/AodToOccludedTransitionViewModel;Lcom/android/systemui/keyguard/ui/viewmodel/DozingToGoneTransitionViewModel;Lcom/android/systemui/keyguard/ui/viewmodel/DozingToLockscreenTransitionViewModel;Lcom/android/systemui/keyguard/ui/viewmodel/DozingToOccludedTransitionViewModel;Lcom/android/systemui/keyguard/ui/viewmodel/DreamingToLockscreenTransitionViewModel;Lcom/android/systemui/keyguard/ui/viewmodel/DreamingToGoneTransitionViewModel;Lcom/android/systemui/keyguard/ui/viewmodel/GlanceableHubToLockscreenTransitionViewModel;Lcom/android/systemui/keyguard/ui/viewmodel/GoneToAodTransitionViewModel;Lcom/android/systemui/keyguard/ui/viewmodel/GoneToDozingTransitionViewModel;Lcom/android/systemui/keyguard/ui/viewmodel/GoneToDreamingTransitionViewModel;Lcom/android/systemui/keyguard/ui/viewmodel/GoneToLockscreenTransitionViewModel;Lcom/android/systemui/keyguard/ui/viewmodel/LockscreenToAodTransitionViewModel;Lcom/android/systemui/keyguard/ui/viewmodel/LockscreenToDozingTransitionViewModel;Lcom/android/systemui/keyguard/ui/viewmodel/LockscreenToDreamingTransitionViewModel;Lcom/android/systemui/keyguard/ui/viewmodel/LockscreenToGlanceableHubTransitionViewModel;Lcom/android/systemui/keyguard/ui/viewmodel/LockscreenToGoneTransitionViewModel;Lcom/android/systemui/keyguard/ui/viewmodel/LockscreenToOccludedTransitionViewModel;Lcom/android/systemui/keyguard/ui/viewmodel/LockscreenToPrimaryBouncerTransitionViewModel;Lcom/android/systemui/keyguard/ui/viewmodel/OccludedToAodTransitionViewModel;Lcom/android/systemui/keyguard/ui/viewmodel/OccludedToDozingTransitionViewModel;Lcom/android/systemui/keyguard/ui/viewmodel/OccludedToLockscreenTransitionViewModel;Lcom/android/systemui/keyguard/ui/viewmodel/PrimaryBouncerToAodTransitionViewModel;Lcom/android/systemui/keyguard/ui/viewmodel/PrimaryBouncerToGoneTransitionViewModel;Lcom/android/systemui/keyguard/ui/viewmodel/PrimaryBouncerToLockscreenTransitionViewModel;Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;Lcom/android/systemui/keyguard/ui/viewmodel/AodBurnInViewModel;Lcom/android/systemui/keyguard/ui/viewmodel/AodAlphaViewModel;Lcom/android/systemui/shade/domain/interactor/ShadeInteractor;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    move-object/from16 v3, p6

    move-object/from16 v4, p7

    move-object/from16 v5, p17

    move-object/from16 v6, p25

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardRootViewModel;->applicationScope:Lkotlinx/coroutines/CoroutineScope;

    move-object/from16 v7, p3

    iput-object v7, v0, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardRootViewModel;->dozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    iput-object v2, v0, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardRootViewModel;->keyguardInteractor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;

    move-object/from16 v7, p8

    iput-object v7, v0, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardRootViewModel;->alternateBouncerToGoneTransitionViewModel:Lcom/android/systemui/keyguard/ui/viewmodel/AlternateBouncerToGoneTransitionViewModel;

    move-object/from16 v7, p9

    iput-object v7, v0, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardRootViewModel;->aodToGoneTransitionViewModel:Lcom/android/systemui/keyguard/ui/viewmodel/AodToGoneTransitionViewModel;

    move-object/from16 v7, p10

    iput-object v7, v0, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardRootViewModel;->aodToLockscreenTransitionViewModel:Lcom/android/systemui/keyguard/ui/viewmodel/AodToLockscreenTransitionViewModel;

    move-object/from16 v7, p11

    iput-object v7, v0, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardRootViewModel;->aodToOccludedTransitionViewModel:Lcom/android/systemui/keyguard/ui/viewmodel/AodToOccludedTransitionViewModel;

    move-object/from16 v7, p12

    iput-object v7, v0, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardRootViewModel;->dozingToGoneTransitionViewModel:Lcom/android/systemui/keyguard/ui/viewmodel/DozingToGoneTransitionViewModel;

    move-object/from16 v7, p13

    iput-object v7, v0, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardRootViewModel;->dozingToLockscreenTransitionViewModel:Lcom/android/systemui/keyguard/ui/viewmodel/DozingToLockscreenTransitionViewModel;

    move-object/from16 v7, p14

    iput-object v7, v0, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardRootViewModel;->dozingToOccludedTransitionViewModel:Lcom/android/systemui/keyguard/ui/viewmodel/DozingToOccludedTransitionViewModel;

    move-object/from16 v7, p15

    iput-object v7, v0, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardRootViewModel;->dreamingToLockscreenTransitionViewModel:Lcom/android/systemui/keyguard/ui/viewmodel/DreamingToLockscreenTransitionViewModel;

    move-object/from16 v7, p16

    iput-object v7, v0, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardRootViewModel;->dreamingToGoneTransitionViewModel:Lcom/android/systemui/keyguard/ui/viewmodel/DreamingToGoneTransitionViewModel;

    iput-object v5, v0, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardRootViewModel;->glanceableHubToLockscreenTransitionViewModel:Lcom/android/systemui/keyguard/ui/viewmodel/GlanceableHubToLockscreenTransitionViewModel;

    move-object/from16 v7, p18

    iput-object v7, v0, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardRootViewModel;->goneToAodTransitionViewModel:Lcom/android/systemui/keyguard/ui/viewmodel/GoneToAodTransitionViewModel;

    move-object/from16 v7, p19

    iput-object v7, v0, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardRootViewModel;->goneToDozingTransitionViewModel:Lcom/android/systemui/keyguard/ui/viewmodel/GoneToDozingTransitionViewModel;

    move-object/from16 v7, p20

    iput-object v7, v0, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardRootViewModel;->goneToDreamingTransitionViewModel:Lcom/android/systemui/keyguard/ui/viewmodel/GoneToDreamingTransitionViewModel;

    move-object/from16 v7, p21

    iput-object v7, v0, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardRootViewModel;->goneToLockscreenTransitionViewModel:Lcom/android/systemui/keyguard/ui/viewmodel/GoneToLockscreenTransitionViewModel;

    move-object/from16 v7, p22

    iput-object v7, v0, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardRootViewModel;->lockscreenToAodTransitionViewModel:Lcom/android/systemui/keyguard/ui/viewmodel/LockscreenToAodTransitionViewModel;

    move-object/from16 v7, p23

    iput-object v7, v0, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardRootViewModel;->lockscreenToDozingTransitionViewModel:Lcom/android/systemui/keyguard/ui/viewmodel/LockscreenToDozingTransitionViewModel;

    move-object/from16 v7, p24

    iput-object v7, v0, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardRootViewModel;->lockscreenToDreamingTransitionViewModel:Lcom/android/systemui/keyguard/ui/viewmodel/LockscreenToDreamingTransitionViewModel;

    iput-object v6, v0, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardRootViewModel;->lockscreenToGlanceableHubTransitionViewModel:Lcom/android/systemui/keyguard/ui/viewmodel/LockscreenToGlanceableHubTransitionViewModel;

    move-object/from16 v7, p26

    iput-object v7, v0, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardRootViewModel;->lockscreenToGoneTransitionViewModel:Lcom/android/systemui/keyguard/ui/viewmodel/LockscreenToGoneTransitionViewModel;

    move-object/from16 v7, p27

    iput-object v7, v0, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardRootViewModel;->lockscreenToOccludedTransitionViewModel:Lcom/android/systemui/keyguard/ui/viewmodel/LockscreenToOccludedTransitionViewModel;

    move-object/from16 v7, p28

    iput-object v7, v0, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardRootViewModel;->lockscreenToPrimaryBouncerTransitionViewModel:Lcom/android/systemui/keyguard/ui/viewmodel/LockscreenToPrimaryBouncerTransitionViewModel;

    move-object/from16 v7, p29

    iput-object v7, v0, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardRootViewModel;->occludedToAodTransitionViewModel:Lcom/android/systemui/keyguard/ui/viewmodel/OccludedToAodTransitionViewModel;

    move-object/from16 v7, p30

    iput-object v7, v0, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardRootViewModel;->occludedToDozingTransitionViewModel:Lcom/android/systemui/keyguard/ui/viewmodel/OccludedToDozingTransitionViewModel;

    move-object/from16 v7, p31

    iput-object v7, v0, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardRootViewModel;->occludedToLockscreenTransitionViewModel:Lcom/android/systemui/keyguard/ui/viewmodel/OccludedToLockscreenTransitionViewModel;

    move-object/from16 v7, p32

    iput-object v7, v0, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardRootViewModel;->primaryBouncerToAodTransitionViewModel:Lcom/android/systemui/keyguard/ui/viewmodel/PrimaryBouncerToAodTransitionViewModel;

    move-object/from16 v7, p33

    iput-object v7, v0, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardRootViewModel;->primaryBouncerToGoneTransitionViewModel:Lcom/android/systemui/keyguard/ui/viewmodel/PrimaryBouncerToGoneTransitionViewModel;

    move-object/from16 v7, p34

    iput-object v7, v0, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardRootViewModel;->primaryBouncerToLockscreenTransitionViewModel:Lcom/android/systemui/keyguard/ui/viewmodel/PrimaryBouncerToLockscreenTransitionViewModel;

    move-object/from16 v7, p35

    iput-object v7, v0, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardRootViewModel;->screenOffAnimationController:Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;

    move-object/from16 v7, p36

    iput-object v7, v0, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardRootViewModel;->aodBurnInViewModel:Lcom/android/systemui/keyguard/ui/viewmodel/AodBurnInViewModel;

    new-instance v7, Lcom/android/systemui/keyguard/shared/model/BurnInModel;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0xf

    const/4 v13, 0x0

    move-object/from16 p8, v7

    move/from16 p9, v10

    move/from16 p10, v11

    move/from16 p11, v8

    move/from16 p12, v9

    move/from16 p13, v12

    move-object/from16 p14, v13

    invoke-direct/range {p8 .. p14}, Lcom/android/systemui/keyguard/shared/model/BurnInModel;-><init>(IIFZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v7}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object v7

    iput-object v7, v0, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardRootViewModel;->_burnInModel:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-static {v7}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object v7

    iput-object v7, v0, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardRootViewModel;->burnInModel:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object v8, v3, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;->startedKeyguardState:Lkotlinx/coroutines/flow/ReadonlySharedFlow;

    new-instance v9, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardRootViewModel$special$$inlined$filter$1;

    invoke-direct {v9, v8}, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardRootViewModel$special$$inlined$filter$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    new-instance v8, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardRootViewModel$special$$inlined$map$1;

    invoke-direct {v8, v9}, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardRootViewModel$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    sget-object v8, Lcom/android/systemui/keyguard/shared/model/Edge;->Companion:Lcom/android/systemui/keyguard/shared/model/Edge$Companion;

    sget-object v9, Lcom/android/systemui/scene/shared/model/Scenes;->Gone:Lcom/android/compose/animation/scene/SceneKey;

    sget-object v10, Lcom/android/systemui/keyguard/shared/model/KeyguardState;->AOD:Lcom/android/systemui/keyguard/shared/model/KeyguardState;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v11, Lcom/android/systemui/keyguard/shared/model/Edge$SceneToState;

    invoke-direct {v11, v9, v10}, Lcom/android/systemui/keyguard/shared/model/Edge$SceneToState;-><init>(Lcom/android/compose/animation/scene/SceneKey;Lcom/android/systemui/keyguard/shared/model/KeyguardState;)V

    sget-object v11, Lcom/android/systemui/keyguard/shared/model/KeyguardState;->GONE:Lcom/android/systemui/keyguard/shared/model/KeyguardState;

    new-instance v12, Lcom/android/systemui/keyguard/shared/model/Edge$StateToState;

    invoke-direct {v12, v11, v10}, Lcom/android/systemui/keyguard/shared/model/Edge$StateToState;-><init>(Lcom/android/systemui/keyguard/shared/model/KeyguardState;Lcom/android/systemui/keyguard/shared/model/KeyguardState;)V

    invoke-virtual {v3, v12}, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;->transition(Lcom/android/systemui/keyguard/shared/model/Edge$StateToState;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v10

    new-instance v12, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardRootViewModel$special$$inlined$map$2;

    invoke-direct {v12, v10}, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardRootViewModel$special$$inlined$map$2;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    new-instance v10, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardRootViewModel$goneToAodTransitionRunning$2;

    const/4 v13, 0x0

    invoke-direct {v10, v13}, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardRootViewModel$goneToAodTransitionRunning$2;-><init>(Lkotlin/coroutines/Continuation;)V

    new-instance v14, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;

    invoke-direct {v14, v10, v12}, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;-><init>(Lkotlin/jvm/functions/Function2;Lkotlinx/coroutines/flow/Flow;)V

    invoke-static {v14}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v10

    sget-object v12, Lcom/android/systemui/keyguard/shared/model/KeyguardState;->LOCKSCREEN:Lcom/android/systemui/keyguard/shared/model/KeyguardState;

    invoke-virtual {v3, v12}, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;->isFinishedInState(Lcom/android/systemui/keyguard/shared/model/KeyguardState;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v14

    new-instance v15, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardRootViewModel$isOnLockscreen$1;

    invoke-direct {v15, v13}, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardRootViewModel$isOnLockscreen$1;-><init>(Lkotlin/coroutines/Continuation;)V

    new-instance v13, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;

    invoke-direct {v13, v15, v14}, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;-><init>(Lkotlin/jvm/functions/Function2;Lkotlinx/coroutines/flow/Flow;)V

    sget-object v14, Lcom/android/systemui/util/kotlin/BooleanFlowOperators;->INSTANCE:Lcom/android/systemui/util/kotlin/BooleanFlowOperators;

    const/4 v15, 0x1

    const/4 v1, 0x0

    invoke-static {v8, v1, v12, v15}, Lcom/android/systemui/keyguard/shared/model/Edge$Companion;->create$default(Lcom/android/systemui/keyguard/shared/model/Edge$Companion;Lcom/android/systemui/keyguard/shared/model/KeyguardState;Lcom/android/systemui/keyguard/shared/model/KeyguardState;I)Lcom/android/systemui/keyguard/shared/model/Edge$StateToState;

    move-result-object v15

    invoke-virtual {v3, v15, v1}, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;->isInTransition(Lcom/android/systemui/keyguard/shared/model/Edge;Lcom/android/systemui/keyguard/shared/model/Edge;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v15

    move-object/from16 p8, v10

    const/4 v10, 0x2

    invoke-static {v8, v12, v1, v10}, Lcom/android/systemui/keyguard/shared/model/Edge$Companion;->create$default(Lcom/android/systemui/keyguard/shared/model/Edge$Companion;Lcom/android/systemui/keyguard/shared/model/KeyguardState;Lcom/android/systemui/keyguard/shared/model/KeyguardState;I)Lcom/android/systemui/keyguard/shared/model/Edge$StateToState;

    move-result-object v8

    invoke-virtual {v3, v8, v1}, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;->isInTransition(Lcom/android/systemui/keyguard/shared/model/Edge;Lcom/android/systemui/keyguard/shared/model/Edge;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v8

    filled-new-array {v15, v8}, [Lkotlinx/coroutines/flow/Flow;

    move-result-object v8

    invoke-virtual {v14, v8}, Lcom/android/systemui/util/kotlin/BooleanFlowOperators;->anyOf([Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v8

    new-instance v10, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardRootViewModel$isOnLockscreen$2;

    invoke-direct {v10, v1}, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardRootViewModel$isOnLockscreen$2;-><init>(Lkotlin/coroutines/Continuation;)V

    new-instance v1, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    invoke-direct {v1, v13, v8, v10}, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)V

    invoke-static {v1}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v1

    new-instance v8, Lcom/android/systemui/keyguard/shared/model/Edge$StateToScene;

    invoke-direct {v8, v12, v9}, Lcom/android/systemui/keyguard/shared/model/Edge$StateToScene;-><init>(Lcom/android/systemui/keyguard/shared/model/KeyguardState;Lcom/android/compose/animation/scene/SceneKey;)V

    new-instance v9, Lcom/android/systemui/keyguard/shared/model/Edge$StateToState;

    invoke-direct {v9, v12, v11}, Lcom/android/systemui/keyguard/shared/model/Edge$StateToState;-><init>(Lcom/android/systemui/keyguard/shared/model/KeyguardState;Lcom/android/systemui/keyguard/shared/model/KeyguardState;)V

    invoke-virtual {v3, v8, v9}, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;->isInTransition(Lcom/android/systemui/keyguard/shared/model/Edge;Lcom/android/systemui/keyguard/shared/model/Edge;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v8

    sget-object v9, Lcom/android/systemui/keyguard/shared/model/KeyguardState;->PRIMARY_BOUNCER:Lcom/android/systemui/keyguard/shared/model/KeyguardState;

    sget-object v10, Lcom/android/systemui/scene/shared/model/Scenes;->Lockscreen:Lcom/android/compose/animation/scene/SceneKey;

    new-instance v13, Lcom/android/systemui/keyguard/shared/model/Edge$StateToScene;

    invoke-direct {v13, v9, v10}, Lcom/android/systemui/keyguard/shared/model/Edge$StateToScene;-><init>(Lcom/android/systemui/keyguard/shared/model/KeyguardState;Lcom/android/compose/animation/scene/SceneKey;)V

    new-instance v10, Lcom/android/systemui/keyguard/shared/model/Edge$StateToState;

    invoke-direct {v10, v9, v12}, Lcom/android/systemui/keyguard/shared/model/Edge$StateToState;-><init>(Lcom/android/systemui/keyguard/shared/model/KeyguardState;Lcom/android/systemui/keyguard/shared/model/KeyguardState;)V

    invoke-virtual {v3, v13, v10}, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;->isInTransition(Lcom/android/systemui/keyguard/shared/model/Edge;Lcom/android/systemui/keyguard/shared/model/Edge;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v9

    move-object/from16 v10, p38

    check-cast v10, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorImpl;

    iget-object v12, v10, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorImpl;->baseShadeInteractor:Lcom/android/systemui/shade/domain/interactor/BaseShadeInteractor;

    invoke-interface {v12}, Lcom/android/systemui/shade/domain/interactor/BaseShadeInteractor;->getQsExpansion()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v12

    iget-object v10, v10, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorImpl;->baseShadeInteractor:Lcom/android/systemui/shade/domain/interactor/BaseShadeInteractor;

    invoke-interface {v10}, Lcom/android/systemui/shade/domain/interactor/BaseShadeInteractor;->getShadeExpansion()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v10

    new-instance v13, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardRootViewModel$alphaOnShadeExpansion$1;

    const/4 v14, 0x0

    invoke-direct {v13, v14}, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardRootViewModel$alphaOnShadeExpansion$1;-><init>(Lkotlin/coroutines/Continuation;)V

    filled-new-array {v8, v9, v1, v12, v10}, [Lkotlinx/coroutines/flow/Flow;

    move-result-object v1

    new-instance v8, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combineTransform$$inlined$combineTransformUnsafe$FlowKt__ZipKt$5;

    invoke-direct {v8, v1, v14, v13}, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combineTransform$$inlined$combineTransformUnsafe$FlowKt__ZipKt$5;-><init>([Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;Lkotlin/jvm/functions/Function7;)V

    new-instance v1, Lkotlinx/coroutines/flow/SafeFlow;

    invoke-direct {v1, v8}, Lkotlinx/coroutines/flow/SafeFlow;-><init>(Lkotlin/jvm/functions/Function2;)V

    invoke-static {v1}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardRootViewModel;->alphaOnShadeExpansion:Lkotlinx/coroutines/flow/Flow;

    move-object/from16 v1, p5

    iget-object v1, v1, Lcom/android/systemui/communal/domain/interactor/CommunalInteractor;->isIdleOnCommunal:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    invoke-static {}, Lcom/android/systemui/Flags;->sceneContainer()V

    invoke-virtual {v3, v11}, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;->transitionValue(Lcom/android/systemui/keyguard/shared/model/KeyguardState;)Lkotlinx/coroutines/flow/MutableSharedFlow;

    move-result-object v8

    new-instance v9, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardRootViewModel$special$$inlined$map$3;

    invoke-direct {v9, v8}, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardRootViewModel$special$$inlined$map$3;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    new-instance v8, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardRootViewModel$hideKeyguard$2;

    const/4 v10, 0x0

    invoke-direct {v8, v10}, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardRootViewModel$hideKeyguard$2;-><init>(Lkotlin/coroutines/Continuation;)V

    new-instance v11, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;

    invoke-direct {v11, v8, v9}, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;-><init>(Lkotlin/jvm/functions/Function2;Lkotlinx/coroutines/flow/Flow;)V

    sget-object v8, Lcom/android/systemui/keyguard/shared/model/KeyguardState;->OCCLUDED:Lcom/android/systemui/keyguard/shared/model/KeyguardState;

    invoke-virtual {v3, v8}, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;->transitionValue(Lcom/android/systemui/keyguard/shared/model/KeyguardState;)Lkotlinx/coroutines/flow/MutableSharedFlow;

    move-result-object v8

    new-instance v9, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardRootViewModel$special$$inlined$map$4;

    invoke-direct {v9, v8}, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardRootViewModel$special$$inlined$map$4;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    new-instance v8, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardRootViewModel$hideKeyguard$4;

    invoke-direct {v8, v10}, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardRootViewModel$hideKeyguard$4;-><init>(Lkotlin/coroutines/Continuation;)V

    new-instance v12, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;

    invoke-direct {v12, v8, v9}, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;-><init>(Lkotlin/jvm/functions/Function2;Lkotlinx/coroutines/flow/Flow;)V

    sget-object v8, Lcom/android/systemui/keyguard/shared/model/KeyguardState;->DREAMING:Lcom/android/systemui/keyguard/shared/model/KeyguardState;

    invoke-virtual {v3, v8}, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;->transitionValue(Lcom/android/systemui/keyguard/shared/model/KeyguardState;)Lkotlinx/coroutines/flow/MutableSharedFlow;

    move-result-object v8

    new-instance v9, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardRootViewModel$special$$inlined$map$5;

    invoke-direct {v9, v8}, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardRootViewModel$special$$inlined$map$5;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    new-instance v8, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardRootViewModel$hideKeyguard$6;

    invoke-direct {v8, v10}, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardRootViewModel$hideKeyguard$6;-><init>(Lkotlin/coroutines/Continuation;)V

    new-instance v13, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;

    invoke-direct {v13, v8, v9}, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;-><init>(Lkotlin/jvm/functions/Function2;Lkotlinx/coroutines/flow/Flow;)V

    new-instance v8, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardRootViewModel$hideKeyguard$7;

    invoke-direct {v8, v10}, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardRootViewModel$hideKeyguard$7;-><init>(Lkotlin/coroutines/Continuation;)V

    invoke-static {v1, v11, v12, v13, v8}, Lkotlinx/coroutines/flow/FlowKt;->combine(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function5;)Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$2;

    move-result-object v1

    invoke-static {v1}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardRootViewModel;->hideKeyguard:Lkotlinx/coroutines/flow/Flow;

    iget-object v1, v2, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;->lastRootViewTapPosition:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object v1, v2, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;->topClippingBounds$delegate:Lkotlin/Lazy;

    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlinx/coroutines/flow/Flow;

    move-object/from16 v1, p37

    iget-object v1, v1, Lcom/android/systemui/keyguard/ui/viewmodel/AodAlphaViewModel;->alpha:Lkotlinx/coroutines/flow/SafeFlow;

    new-instance v1, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardRootViewModel$special$$inlined$map$6;

    invoke-direct {v1, v7}, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardRootViewModel$special$$inlined$map$6;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    new-instance v1, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardRootViewModel$special$$inlined$map$7;

    invoke-direct {v1, v7}, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardRootViewModel$special$$inlined$map$7;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    iget-object v2, v6, Lcom/android/systemui/keyguard/ui/viewmodel/LockscreenToGlanceableHubTransitionViewModel;->keyguardTranslationX:Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    iget-object v5, v5, Lcom/android/systemui/keyguard/ui/viewmodel/GlanceableHubToLockscreenTransitionViewModel;->keyguardTranslationX:Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    filled-new-array {v1, v2, v5}, [Lkotlinx/coroutines/flow/Flow;

    move-result-object v1

    invoke-static {v1}, Lkotlinx/coroutines/flow/FlowKt;->merge([Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/internal/ChannelLimitedFlowMerge;

    new-instance v1, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardRootViewModel$special$$inlined$map$8;

    invoke-direct {v1, v7}, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardRootViewModel$special$$inlined$map$8;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    new-instance v1, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardRootViewModel$special$$inlined$map$9;

    iget-object v2, v3, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;->finishedKeyguardState:Lkotlinx/coroutines/flow/ReadonlySharedFlow;

    invoke-direct {v1, v2}, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardRootViewModel$special$$inlined$map$9;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    move-object/from16 v2, p2

    iget-object v2, v2, Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryInteractor;->isBypassEnabled:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object v3, v4, Lcom/android/systemui/statusbar/notification/domain/interactor/NotificationsKeyguardInteractor;->areNotificationsFullyHidden:Lkotlinx/coroutines/flow/StateFlowImpl;

    const/4 v5, 0x0

    invoke-static {v3, v5}, Lcom/android/systemui/util/kotlin/FlowKt;->pairwise(Lkotlinx/coroutines/flow/Flow;Ljava/lang/Object;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v3

    new-instance v6, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardRootViewModel$areNotifsFullyHiddenAnimated$1;

    invoke-direct {v6, v0, v5}, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardRootViewModel$areNotifsFullyHiddenAnimated$1;-><init>(Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardRootViewModel;Lkotlin/coroutines/Continuation;)V

    invoke-static {v3, v2, v6}, Lcom/android/systemui/util/kotlin/FlowKt;->sample(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v3

    invoke-static {v3}, Lcom/android/systemui/util/ui/AnimatedValueKt;->toAnimatedValueFlow(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v3

    iget-object v4, v4, Lcom/android/systemui/statusbar/notification/domain/interactor/NotificationsKeyguardInteractor;->isPulseExpanding:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-static {v4, v5}, Lcom/android/systemui/util/kotlin/FlowKt;->pairwise(Lkotlinx/coroutines/flow/Flow;Ljava/lang/Object;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v4

    new-instance v6, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardRootViewModel$isPulseExpandingAnimated$$inlined$map$1;

    invoke-direct {v6, v4}, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardRootViewModel$isPulseExpandingAnimated$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    invoke-static {v6}, Lcom/android/systemui/util/ui/AnimatedValueKt;->toAnimatedValueFlow(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v4

    new-instance v6, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardRootViewModel$isNotifIconContainerVisible$2;

    invoke-direct {v6, v0, v5}, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardRootViewModel$isNotifIconContainerVisible$2;-><init>(Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardRootViewModel;Lkotlin/coroutines/Continuation;)V

    move-object/from16 p2, p8

    move-object/from16 p3, v1

    move-object/from16 p4, v2

    move-object/from16 p5, v3

    move-object/from16 p6, v4

    move-object/from16 p7, v6

    invoke-static/range {p2 .. p7}, Lkotlinx/coroutines/flow/FlowKt;->combine(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function6;)Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$3;

    move-result-object v0

    sget-object v1, Lkotlinx/coroutines/flow/SharingStarted;->Companion:Lkotlinx/coroutines/flow/SharingStarted$Companion;

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default(Lkotlinx/coroutines/flow/SharingStarted$Companion;I)Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/util/ui/AnimatedValue$NotAnimating;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v2, v3}, Lcom/android/systemui/util/ui/AnimatedValue$NotAnimating;-><init>(Ljava/lang/Object;)V

    move-object/from16 v3, p1

    invoke-static {v0, v3, v1, v2}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    return-void
.end method


# virtual methods
.method public final alpha(Lcom/android/systemui/keyguard/ui/viewmodel/ViewStateAccessor;)Lkotlinx/coroutines/flow/Flow;
    .locals 39

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/16 v2, 0x64

    const/16 v3, 0xfa

    const/16 v4, 0x1f4

    const/high16 v5, 0x3f800000    # 1.0f

    iget-object v6, v0, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardRootViewModel;->keyguardInteractor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;

    iget-object v8, v6, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;->dismissAlpha:Lkotlinx/coroutines/flow/Flow;

    iget-object v6, v0, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardRootViewModel;->alternateBouncerToGoneTransitionViewModel:Lcom/android/systemui/keyguard/ui/viewmodel/AlternateBouncerToGoneTransitionViewModel;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v7, Lkotlin/jvm/internal/Ref$FloatRef;

    invoke-direct {v7}, Lkotlin/jvm/internal/Ref$FloatRef;-><init>()V

    iput v5, v7, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    sget-object v9, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    sget-object v9, Lkotlin/time/DurationUnit;->MILLISECONDS:Lkotlin/time/DurationUnit;

    const/16 v10, 0xc8

    invoke-static {v10, v9}, Lkotlin/time/DurationKt;->toDuration(ILkotlin/time/DurationUnit;)J

    move-result-wide v12

    new-instance v14, Lcom/android/systemui/keyguard/ui/viewmodel/AlternateBouncerToGoneTransitionViewModel$lockscreenAlpha$1;

    invoke-direct {v14, v7}, Lcom/android/systemui/keyguard/ui/viewmodel/AlternateBouncerToGoneTransitionViewModel$lockscreenAlpha$1;-><init>(Lkotlin/jvm/internal/Ref$FloatRef;)V

    new-instance v15, Lcom/android/systemui/keyguard/ui/viewmodel/AlternateBouncerToGoneTransitionViewModel$lockscreenAlpha$2;

    invoke-direct {v15, v7, v1}, Lcom/android/systemui/keyguard/ui/viewmodel/AlternateBouncerToGoneTransitionViewModel$lockscreenAlpha$2;-><init>(Lkotlin/jvm/internal/Ref$FloatRef;Lcom/android/systemui/keyguard/ui/viewmodel/ViewStateAccessor;)V

    new-instance v11, Lcom/android/systemui/keyguard/ui/viewmodel/AlternateBouncerToGoneTransitionViewModel$lockscreenAlpha$3;

    invoke-direct {v11, v7}, Lcom/android/systemui/keyguard/ui/viewmodel/AlternateBouncerToGoneTransitionViewModel$lockscreenAlpha$3;-><init>(Lkotlin/jvm/internal/Ref$FloatRef;)V

    sget-object v19, Lcom/android/systemui/keyguard/ui/viewmodel/AlternateBouncerToGoneTransitionViewModel$lockscreenAlpha$4;->INSTANCE:Lcom/android/systemui/keyguard/ui/viewmodel/AlternateBouncerToGoneTransitionViewModel$lockscreenAlpha$4;

    const-wide/16 v16, 0x0

    const/16 v22, 0xc4

    iget-object v6, v6, Lcom/android/systemui/keyguard/ui/viewmodel/AlternateBouncerToGoneTransitionViewModel;->transitionAnimation:Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$FlowBuilder;

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object v7, v11

    move-object v11, v6

    move-object v6, v15

    move-wide/from16 v15, v16

    move-object/from16 v17, v6

    move-object/from16 v18, v7

    invoke-static/range {v11 .. v22}, Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$FlowBuilder;->sharedFlow-74qcysc$default(Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$FlowBuilder;JLkotlin/jvm/functions/Function1;JLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroid/view/animation/Interpolator;Ljava/lang/String;I)Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$FlowBuilder$sharedFlow-74qcysc$$inlined$mapNotNull$1;

    move-result-object v6

    iget-object v7, v0, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardRootViewModel;->aodToGoneTransitionViewModel:Lcom/android/systemui/keyguard/ui/viewmodel/AodToGoneTransitionViewModel;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v11, Lkotlin/jvm/internal/Ref$FloatRef;

    invoke-direct {v11}, Lkotlin/jvm/internal/Ref$FloatRef;-><init>()V

    iput v5, v11, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    invoke-static {v10, v9}, Lkotlin/time/DurationKt;->toDuration(ILkotlin/time/DurationUnit;)J

    move-result-wide v13

    new-instance v15, Lcom/android/systemui/keyguard/ui/viewmodel/AodToGoneTransitionViewModel$lockscreenAlpha$1;

    invoke-direct {v15, v11}, Lcom/android/systemui/keyguard/ui/viewmodel/AodToGoneTransitionViewModel$lockscreenAlpha$1;-><init>(Lkotlin/jvm/internal/Ref$FloatRef;)V

    new-instance v12, Lcom/android/systemui/keyguard/ui/viewmodel/AodToGoneTransitionViewModel$lockscreenAlpha$2;

    invoke-direct {v12, v11, v1}, Lcom/android/systemui/keyguard/ui/viewmodel/AodToGoneTransitionViewModel$lockscreenAlpha$2;-><init>(Lkotlin/jvm/internal/Ref$FloatRef;Lcom/android/systemui/keyguard/ui/viewmodel/ViewStateAccessor;)V

    sget-object v20, Lcom/android/systemui/keyguard/ui/viewmodel/AodToGoneTransitionViewModel$lockscreenAlpha$3;->INSTANCE:Lcom/android/systemui/keyguard/ui/viewmodel/AodToGoneTransitionViewModel$lockscreenAlpha$3;

    const/16 v19, 0x0

    const/16 v23, 0xd4

    iget-object v7, v7, Lcom/android/systemui/keyguard/ui/viewmodel/AodToGoneTransitionViewModel;->transitionAnimation:Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$FlowBuilder;

    const-wide/16 v16, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object v11, v12

    move-object v12, v7

    move-object/from16 v18, v11

    invoke-static/range {v12 .. v23}, Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$FlowBuilder;->sharedFlow-74qcysc$default(Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$FlowBuilder;JLkotlin/jvm/functions/Function1;JLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroid/view/animation/Interpolator;Ljava/lang/String;I)Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$FlowBuilder$sharedFlow-74qcysc$$inlined$mapNotNull$1;

    move-result-object v11

    iget-object v7, v0, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardRootViewModel;->aodToLockscreenTransitionViewModel:Lcom/android/systemui/keyguard/ui/viewmodel/AodToLockscreenTransitionViewModel;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v12, Lkotlin/jvm/internal/Ref$FloatRef;

    invoke-direct {v12}, Lkotlin/jvm/internal/Ref$FloatRef;-><init>()V

    iput v5, v12, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    sget-object v13, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    sget-object v13, Lkotlin/time/DurationUnit;->MILLISECONDS:Lkotlin/time/DurationUnit;

    invoke-static {v4, v13}, Lkotlin/time/DurationKt;->toDuration(ILkotlin/time/DurationUnit;)J

    move-result-wide v15

    new-instance v13, Lcom/android/systemui/keyguard/ui/viewmodel/AodToLockscreenTransitionViewModel$lockscreenAlpha$1;

    invoke-direct {v13, v12}, Lcom/android/systemui/keyguard/ui/viewmodel/AodToLockscreenTransitionViewModel$lockscreenAlpha$1;-><init>(Lkotlin/jvm/internal/Ref$FloatRef;)V

    new-instance v14, Lcom/android/systemui/keyguard/ui/viewmodel/AodToLockscreenTransitionViewModel$lockscreenAlpha$2;

    invoke-direct {v14, v12, v1}, Lcom/android/systemui/keyguard/ui/viewmodel/AodToLockscreenTransitionViewModel$lockscreenAlpha$2;-><init>(Lkotlin/jvm/internal/Ref$FloatRef;Lcom/android/systemui/keyguard/ui/viewmodel/ViewStateAccessor;)V

    const/16 v23, 0x0

    const/16 v24, 0x0

    iget-object v7, v7, Lcom/android/systemui/keyguard/ui/viewmodel/AodToLockscreenTransitionViewModel;->transitionAnimation:Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$FlowBuilder;

    const-wide/16 v18, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v25, 0xf4

    move-object v12, v14

    move-object v14, v7

    move-object/from16 v17, v13

    move-object/from16 v20, v12

    invoke-static/range {v14 .. v25}, Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$FlowBuilder;->sharedFlow-74qcysc$default(Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$FlowBuilder;JLkotlin/jvm/functions/Function1;JLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroid/view/animation/Interpolator;Ljava/lang/String;I)Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$FlowBuilder$sharedFlow-74qcysc$$inlined$mapNotNull$1;

    move-result-object v12

    iget-object v7, v0, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardRootViewModel;->aodToOccludedTransitionViewModel:Lcom/android/systemui/keyguard/ui/viewmodel/AodToOccludedTransitionViewModel;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v13, Lkotlin/jvm/internal/Ref$FloatRef;

    invoke-direct {v13}, Lkotlin/jvm/internal/Ref$FloatRef;-><init>()V

    sget-object v14, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    sget-object v14, Lkotlin/time/DurationUnit;->MILLISECONDS:Lkotlin/time/DurationUnit;

    invoke-static {v3, v14}, Lkotlin/time/DurationKt;->toDuration(ILkotlin/time/DurationUnit;)J

    move-result-wide v16

    invoke-static {v2, v14}, Lkotlin/time/DurationKt;->toDuration(ILkotlin/time/DurationUnit;)J

    move-result-wide v19

    new-instance v14, Lcom/android/systemui/keyguard/ui/viewmodel/AodToOccludedTransitionViewModel$lockscreenAlpha$1;

    invoke-direct {v14, v13}, Lcom/android/systemui/keyguard/ui/viewmodel/AodToOccludedTransitionViewModel$lockscreenAlpha$1;-><init>(Lkotlin/jvm/internal/Ref$FloatRef;)V

    new-instance v15, Lcom/android/systemui/keyguard/ui/viewmodel/AodToOccludedTransitionViewModel$lockscreenAlpha$2;

    invoke-direct {v15, v13, v1}, Lcom/android/systemui/keyguard/ui/viewmodel/AodToOccludedTransitionViewModel$lockscreenAlpha$2;-><init>(Lkotlin/jvm/internal/Ref$FloatRef;Lcom/android/systemui/keyguard/ui/viewmodel/ViewStateAccessor;)V

    sget-object v22, Lcom/android/systemui/keyguard/ui/viewmodel/AodToOccludedTransitionViewModel$lockscreenAlpha$3;->INSTANCE:Lcom/android/systemui/keyguard/ui/viewmodel/AodToOccludedTransitionViewModel$lockscreenAlpha$3;

    const/16 v24, 0x0

    const/16 v25, 0x0

    iget-object v7, v7, Lcom/android/systemui/keyguard/ui/viewmodel/AodToOccludedTransitionViewModel;->transitionAnimation:Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$FlowBuilder;

    const/16 v23, 0x0

    const/16 v26, 0xe0

    move-object v13, v15

    move-object v15, v7

    move-object/from16 v18, v14

    move-object/from16 v21, v13

    invoke-static/range {v15 .. v26}, Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$FlowBuilder;->sharedFlow-74qcysc$default(Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$FlowBuilder;JLkotlin/jvm/functions/Function1;JLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroid/view/animation/Interpolator;Ljava/lang/String;I)Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$FlowBuilder$sharedFlow-74qcysc$$inlined$mapNotNull$1;

    move-result-object v13

    iget-object v7, v0, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardRootViewModel;->dozingToGoneTransitionViewModel:Lcom/android/systemui/keyguard/ui/viewmodel/DozingToGoneTransitionViewModel;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v10, v9}, Lkotlin/time/DurationKt;->toDuration(ILkotlin/time/DurationUnit;)J

    move-result-wide v15

    sget-object v17, Lcom/android/systemui/keyguard/ui/viewmodel/DozingToGoneTransitionViewModel$lockscreenAlpha$1;->INSTANCE:Lcom/android/systemui/keyguard/ui/viewmodel/DozingToGoneTransitionViewModel$lockscreenAlpha$1;

    sget-object v20, Lcom/android/systemui/keyguard/ui/viewmodel/DozingToGoneTransitionViewModel$lockscreenAlpha$2;->INSTANCE:Lcom/android/systemui/keyguard/ui/viewmodel/DozingToGoneTransitionViewModel$lockscreenAlpha$2;

    const/16 v22, 0x0

    const/16 v25, 0xf4

    iget-object v14, v7, Lcom/android/systemui/keyguard/ui/viewmodel/DozingToGoneTransitionViewModel;->transitionAnimation:Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$FlowBuilder;

    const-wide/16 v18, 0x0

    const/16 v21, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-static/range {v14 .. v25}, Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$FlowBuilder;->sharedFlow-74qcysc$default(Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$FlowBuilder;JLkotlin/jvm/functions/Function1;JLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroid/view/animation/Interpolator;Ljava/lang/String;I)Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$FlowBuilder$sharedFlow-74qcysc$$inlined$mapNotNull$1;

    move-result-object v14

    iget-object v7, v0, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardRootViewModel;->dozingToLockscreenTransitionViewModel:Lcom/android/systemui/keyguard/ui/viewmodel/DozingToLockscreenTransitionViewModel;

    iget-object v15, v7, Lcom/android/systemui/keyguard/ui/viewmodel/DozingToLockscreenTransitionViewModel;->lockscreenAlpha:Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$FlowBuilder$sharedFlow-74qcysc$$inlined$mapNotNull$1;

    iget-object v7, v0, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardRootViewModel;->dozingToOccludedTransitionViewModel:Lcom/android/systemui/keyguard/ui/viewmodel/DozingToOccludedTransitionViewModel;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v10, Lkotlin/jvm/internal/Ref$FloatRef;

    invoke-direct {v10}, Lkotlin/jvm/internal/Ref$FloatRef;-><init>()V

    sget-object v17, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    sget-object v4, Lkotlin/time/DurationUnit;->MILLISECONDS:Lkotlin/time/DurationUnit;

    invoke-static {v3, v4}, Lkotlin/time/DurationKt;->toDuration(ILkotlin/time/DurationUnit;)J

    move-result-wide v19

    invoke-static {v2, v4}, Lkotlin/time/DurationKt;->toDuration(ILkotlin/time/DurationUnit;)J

    move-result-wide v22

    new-instance v2, Lcom/android/systemui/keyguard/ui/viewmodel/DozingToOccludedTransitionViewModel$lockscreenAlpha$1;

    invoke-direct {v2, v10}, Lcom/android/systemui/keyguard/ui/viewmodel/DozingToOccludedTransitionViewModel$lockscreenAlpha$1;-><init>(Lkotlin/jvm/internal/Ref$FloatRef;)V

    new-instance v3, Lcom/android/systemui/keyguard/ui/viewmodel/DozingToOccludedTransitionViewModel$lockscreenAlpha$2;

    invoke-direct {v3, v10, v1}, Lcom/android/systemui/keyguard/ui/viewmodel/DozingToOccludedTransitionViewModel$lockscreenAlpha$2;-><init>(Lkotlin/jvm/internal/Ref$FloatRef;Lcom/android/systemui/keyguard/ui/viewmodel/ViewStateAccessor;)V

    sget-object v25, Lcom/android/systemui/keyguard/ui/viewmodel/DozingToOccludedTransitionViewModel$lockscreenAlpha$3;->INSTANCE:Lcom/android/systemui/keyguard/ui/viewmodel/DozingToOccludedTransitionViewModel$lockscreenAlpha$3;

    const/16 v27, 0x0

    const/16 v28, 0x0

    iget-object v4, v7, Lcom/android/systemui/keyguard/ui/viewmodel/DozingToOccludedTransitionViewModel;->transitionAnimation:Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$FlowBuilder;

    const/16 v26, 0x0

    const/16 v29, 0xe0

    move-object/from16 v18, v4

    move-object/from16 v21, v2

    move-object/from16 v24, v3

    invoke-static/range {v18 .. v29}, Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$FlowBuilder;->sharedFlow-74qcysc$default(Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$FlowBuilder;JLkotlin/jvm/functions/Function1;JLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroid/view/animation/Interpolator;Ljava/lang/String;I)Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$FlowBuilder$sharedFlow-74qcysc$$inlined$mapNotNull$1;

    move-result-object v2

    iget-object v3, v0, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardRootViewModel;->dreamingToGoneTransitionViewModel:Lcom/android/systemui/keyguard/ui/viewmodel/DreamingToGoneTransitionViewModel;

    iget-object v3, v3, Lcom/android/systemui/keyguard/ui/viewmodel/DreamingToGoneTransitionViewModel;->lockscreenAlpha:Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$FlowBuilder$sharedFlow-74qcysc$$inlined$mapNotNull$1;

    iget-object v4, v0, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardRootViewModel;->dreamingToLockscreenTransitionViewModel:Lcom/android/systemui/keyguard/ui/viewmodel/DreamingToLockscreenTransitionViewModel;

    iget-object v4, v4, Lcom/android/systemui/keyguard/ui/viewmodel/DreamingToLockscreenTransitionViewModel;->lockscreenAlpha:Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$FlowBuilder$sharedFlow-74qcysc$$inlined$mapNotNull$1;

    iget-object v7, v0, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardRootViewModel;->glanceableHubToLockscreenTransitionViewModel:Lcom/android/systemui/keyguard/ui/viewmodel/GlanceableHubToLockscreenTransitionViewModel;

    iget-object v10, v7, Lcom/android/systemui/keyguard/ui/viewmodel/GlanceableHubToLockscreenTransitionViewModel;->keyguardAlpha:Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$FlowBuilder$sharedFlow-74qcysc$$inlined$mapNotNull$1;

    iget-object v7, v0, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardRootViewModel;->goneToAodTransitionViewModel:Lcom/android/systemui/keyguard/ui/viewmodel/GoneToAodTransitionViewModel;

    iget-object v7, v7, Lcom/android/systemui/keyguard/ui/viewmodel/GoneToAodTransitionViewModel;->enterFromTopAnimationAlpha:Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$FlowBuilder$sharedFlow-74qcysc$$inlined$mapNotNull$1;

    iget-object v5, v0, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardRootViewModel;->goneToDozingTransitionViewModel:Lcom/android/systemui/keyguard/ui/viewmodel/GoneToDozingTransitionViewModel;

    iget-object v5, v5, Lcom/android/systemui/keyguard/ui/viewmodel/GoneToDozingTransitionViewModel;->lockscreenAlpha:Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$FlowBuilder$sharedFlow-74qcysc$$inlined$mapNotNull$1;

    move-object/from16 v19, v7

    iget-object v7, v0, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardRootViewModel;->goneToDreamingTransitionViewModel:Lcom/android/systemui/keyguard/ui/viewmodel/GoneToDreamingTransitionViewModel;

    iget-object v7, v7, Lcom/android/systemui/keyguard/ui/viewmodel/GoneToDreamingTransitionViewModel;->lockscreenAlpha:Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$FlowBuilder$sharedFlow-74qcysc$$inlined$mapNotNull$1;

    move-object/from16 v20, v7

    iget-object v7, v0, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardRootViewModel;->goneToLockscreenTransitionViewModel:Lcom/android/systemui/keyguard/ui/viewmodel/GoneToLockscreenTransitionViewModel;

    iget-object v7, v7, Lcom/android/systemui/keyguard/ui/viewmodel/GoneToLockscreenTransitionViewModel;->lockscreenAlpha:Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$FlowBuilder$sharedFlow-74qcysc$$inlined$mapNotNull$1;

    move-object/from16 v21, v7

    iget-object v7, v0, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardRootViewModel;->lockscreenToAodTransitionViewModel:Lcom/android/systemui/keyguard/ui/viewmodel/LockscreenToAodTransitionViewModel;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v22, v10

    new-instance v10, Lkotlin/jvm/internal/Ref$FloatRef;

    invoke-direct {v10}, Lkotlin/jvm/internal/Ref$FloatRef;-><init>()V

    move-object/from16 v23, v5

    const/high16 v5, 0x3f800000    # 1.0f

    iput v5, v10, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    const/16 v5, 0x1f4

    invoke-static {v5, v9}, Lkotlin/time/DurationKt;->toDuration(ILkotlin/time/DurationUnit;)J

    move-result-wide v25

    new-instance v5, Lcom/android/systemui/keyguard/ui/viewmodel/LockscreenToAodTransitionViewModel$lockscreenAlpha$1;

    invoke-direct {v5, v10}, Lcom/android/systemui/keyguard/ui/viewmodel/LockscreenToAodTransitionViewModel$lockscreenAlpha$1;-><init>(Lkotlin/jvm/internal/Ref$FloatRef;)V

    move-object/from16 v17, v4

    new-instance v4, Lcom/android/systemui/keyguard/ui/viewmodel/LockscreenToAodTransitionViewModel$lockscreenAlpha$2;

    invoke-direct {v4, v10, v1}, Lcom/android/systemui/keyguard/ui/viewmodel/LockscreenToAodTransitionViewModel$lockscreenAlpha$2;-><init>(Lkotlin/jvm/internal/Ref$FloatRef;Lcom/android/systemui/keyguard/ui/viewmodel/ViewStateAccessor;)V

    const/16 v32, 0x0

    const/16 v35, 0xf4

    iget-object v7, v7, Lcom/android/systemui/keyguard/ui/viewmodel/LockscreenToAodTransitionViewModel;->transitionAnimation:Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$FlowBuilder;

    const-wide/16 v28, 0x0

    const/16 v31, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    move-object/from16 v24, v7

    move-object/from16 v27, v5

    move-object/from16 v30, v4

    invoke-static/range {v24 .. v35}, Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$FlowBuilder;->sharedFlow-74qcysc$default(Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$FlowBuilder;JLkotlin/jvm/functions/Function1;JLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroid/view/animation/Interpolator;Ljava/lang/String;I)Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$FlowBuilder$sharedFlow-74qcysc$$inlined$mapNotNull$1;

    move-result-object v4

    iget-object v5, v0, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardRootViewModel;->lockscreenToDozingTransitionViewModel:Lcom/android/systemui/keyguard/ui/viewmodel/LockscreenToDozingTransitionViewModel;

    iget-object v5, v5, Lcom/android/systemui/keyguard/ui/viewmodel/LockscreenToDozingTransitionViewModel;->lockscreenAlpha:Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$FlowBuilder$sharedFlow-74qcysc$$inlined$mapNotNull$1;

    iget-object v7, v0, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardRootViewModel;->lockscreenToDreamingTransitionViewModel:Lcom/android/systemui/keyguard/ui/viewmodel/LockscreenToDreamingTransitionViewModel;

    iget-object v10, v7, Lcom/android/systemui/keyguard/ui/viewmodel/LockscreenToDreamingTransitionViewModel;->lockscreenAlpha:Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$FlowBuilder$sharedFlow-74qcysc$$inlined$mapNotNull$1;

    iget-object v7, v0, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardRootViewModel;->lockscreenToGlanceableHubTransitionViewModel:Lcom/android/systemui/keyguard/ui/viewmodel/LockscreenToGlanceableHubTransitionViewModel;

    iget-object v7, v7, Lcom/android/systemui/keyguard/ui/viewmodel/LockscreenToGlanceableHubTransitionViewModel;->keyguardAlpha:Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$FlowBuilder$sharedFlow-74qcysc$$inlined$mapNotNull$1;

    move-object/from16 v24, v7

    iget-object v7, v0, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardRootViewModel;->lockscreenToGoneTransitionViewModel:Lcom/android/systemui/keyguard/ui/viewmodel/LockscreenToGoneTransitionViewModel;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v25, v10

    new-instance v10, Lkotlin/jvm/internal/Ref$FloatRef;

    invoke-direct {v10}, Lkotlin/jvm/internal/Ref$FloatRef;-><init>()V

    move-object/from16 v26, v5

    const/high16 v5, 0x3f800000    # 1.0f

    iput v5, v10, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    const/16 v5, 0xc8

    invoke-static {v5, v9}, Lkotlin/time/DurationKt;->toDuration(ILkotlin/time/DurationUnit;)J

    move-result-wide v28

    new-instance v5, Lcom/android/systemui/keyguard/ui/viewmodel/LockscreenToGoneTransitionViewModel$lockscreenAlpha$1;

    invoke-direct {v5, v10}, Lcom/android/systemui/keyguard/ui/viewmodel/LockscreenToGoneTransitionViewModel$lockscreenAlpha$1;-><init>(Lkotlin/jvm/internal/Ref$FloatRef;)V

    new-instance v9, Lcom/android/systemui/keyguard/ui/viewmodel/LockscreenToGoneTransitionViewModel$lockscreenAlpha$2;

    invoke-direct {v9, v10, v1}, Lcom/android/systemui/keyguard/ui/viewmodel/LockscreenToGoneTransitionViewModel$lockscreenAlpha$2;-><init>(Lkotlin/jvm/internal/Ref$FloatRef;Lcom/android/systemui/keyguard/ui/viewmodel/ViewStateAccessor;)V

    sget-object v34, Lcom/android/systemui/keyguard/ui/viewmodel/LockscreenToGoneTransitionViewModel$lockscreenAlpha$3;->INSTANCE:Lcom/android/systemui/keyguard/ui/viewmodel/LockscreenToGoneTransitionViewModel$lockscreenAlpha$3;

    sget-object v35, Lcom/android/systemui/keyguard/ui/viewmodel/LockscreenToGoneTransitionViewModel$lockscreenAlpha$4;->INSTANCE:Lcom/android/systemui/keyguard/ui/viewmodel/LockscreenToGoneTransitionViewModel$lockscreenAlpha$4;

    const-wide/16 v31, 0x0

    const/16 v38, 0xc4

    iget-object v1, v7, Lcom/android/systemui/keyguard/ui/viewmodel/LockscreenToGoneTransitionViewModel;->transitionAnimation:Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$FlowBuilder;

    const/16 v36, 0x0

    const/16 v37, 0x0

    move-object/from16 v27, v1

    move-object/from16 v30, v5

    move-object/from16 v33, v9

    invoke-static/range {v27 .. v38}, Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$FlowBuilder;->sharedFlow-74qcysc$default(Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$FlowBuilder;JLkotlin/jvm/functions/Function1;JLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroid/view/animation/Interpolator;Ljava/lang/String;I)Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$FlowBuilder$sharedFlow-74qcysc$$inlined$mapNotNull$1;

    move-result-object v27

    iget-object v1, v0, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardRootViewModel;->lockscreenToOccludedTransitionViewModel:Lcom/android/systemui/keyguard/ui/viewmodel/LockscreenToOccludedTransitionViewModel;

    iget-object v1, v1, Lcom/android/systemui/keyguard/ui/viewmodel/LockscreenToOccludedTransitionViewModel;->lockscreenAlpha:Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$FlowBuilder$sharedFlow-74qcysc$$inlined$mapNotNull$1;

    iget-object v5, v0, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardRootViewModel;->lockscreenToPrimaryBouncerTransitionViewModel:Lcom/android/systemui/keyguard/ui/viewmodel/LockscreenToPrimaryBouncerTransitionViewModel;

    iget-object v5, v5, Lcom/android/systemui/keyguard/ui/viewmodel/LockscreenToPrimaryBouncerTransitionViewModel;->lockscreenAlpha:Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$FlowBuilder$sharedFlow-74qcysc$$inlined$mapNotNull$1;

    iget-object v7, v0, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardRootViewModel;->occludedToAodTransitionViewModel:Lcom/android/systemui/keyguard/ui/viewmodel/OccludedToAodTransitionViewModel;

    iget-object v10, v7, Lcom/android/systemui/keyguard/ui/viewmodel/OccludedToAodTransitionViewModel;->lockscreenAlpha:Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$FlowBuilder$sharedFlow-74qcysc$$inlined$mapNotNull$1;

    iget-object v7, v0, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardRootViewModel;->occludedToDozingTransitionViewModel:Lcom/android/systemui/keyguard/ui/viewmodel/OccludedToDozingTransitionViewModel;

    iget-object v9, v7, Lcom/android/systemui/keyguard/ui/viewmodel/OccludedToDozingTransitionViewModel;->lockscreenAlpha:Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$FlowBuilder$sharedFlow-74qcysc$$inlined$mapNotNull$1;

    iget-object v7, v0, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardRootViewModel;->occludedToLockscreenTransitionViewModel:Lcom/android/systemui/keyguard/ui/viewmodel/OccludedToLockscreenTransitionViewModel;

    iget-object v7, v7, Lcom/android/systemui/keyguard/ui/viewmodel/OccludedToLockscreenTransitionViewModel;->lockscreenAlpha:Lkotlinx/coroutines/flow/internal/ChannelLimitedFlowMerge;

    move-object/from16 v16, v7

    iget-object v7, v0, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardRootViewModel;->primaryBouncerToAodTransitionViewModel:Lcom/android/systemui/keyguard/ui/viewmodel/PrimaryBouncerToAodTransitionViewModel;

    iget-object v7, v7, Lcom/android/systemui/keyguard/ui/viewmodel/PrimaryBouncerToAodTransitionViewModel;->lockscreenAlpha:Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$FlowBuilder$sharedFlow-74qcysc$$inlined$mapNotNull$1;

    move-object/from16 v18, v7

    iget-object v7, v0, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardRootViewModel;->primaryBouncerToGoneTransitionViewModel:Lcom/android/systemui/keyguard/ui/viewmodel/PrimaryBouncerToGoneTransitionViewModel;

    iget-object v7, v7, Lcom/android/systemui/keyguard/ui/viewmodel/PrimaryBouncerToGoneTransitionViewModel;->lockscreenAlpha:Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$FlowBuilder$sharedFlow-74qcysc$$inlined$mapNotNull$1;

    move-object/from16 v28, v7

    iget-object v7, v0, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardRootViewModel;->primaryBouncerToLockscreenTransitionViewModel:Lcom/android/systemui/keyguard/ui/viewmodel/PrimaryBouncerToLockscreenTransitionViewModel;

    iget-object v7, v7, Lcom/android/systemui/keyguard/ui/viewmodel/PrimaryBouncerToLockscreenTransitionViewModel;->lockscreenAlpha:Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$FlowBuilder$sharedFlow-74qcysc$$inlined$mapNotNull$1;

    move-object/from16 v29, v7

    iget-object v7, v0, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardRootViewModel;->alphaOnShadeExpansion:Lkotlinx/coroutines/flow/Flow;

    move-object/from16 v32, v16

    move-object/from16 v33, v18

    move-object/from16 v34, v28

    move-object/from16 v35, v29

    move-object/from16 v28, v24

    move-object/from16 v24, v21

    move-object/from16 v21, v20

    move-object/from16 v31, v9

    move-object v9, v6

    move-object/from16 v30, v10

    move-object/from16 v6, v22

    move-object v10, v11

    move-object v11, v12

    move-object v12, v13

    move-object v13, v14

    move-object v14, v15

    move-object v15, v2

    move-object/from16 v16, v3

    move-object/from16 v18, v6

    move-object/from16 v20, v23

    move-object/from16 v22, v24

    move-object/from16 v23, v4

    move-object/from16 v24, v26

    move-object/from16 v26, v28

    move-object/from16 v28, v1

    move-object/from16 v29, v5

    filled-new-array/range {v7 .. v35}, [Lkotlinx/coroutines/flow/Flow;

    move-result-object v1

    invoke-static {v1}, Lkotlinx/coroutines/flow/FlowKt;->merge([Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/internal/ChannelLimitedFlowMerge;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardRootViewModel$alpha$1;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardRootViewModel$alpha$1;-><init>(Lkotlin/coroutines/Continuation;)V

    new-instance v4, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;

    invoke-direct {v4, v2, v1}, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;-><init>(Lkotlin/jvm/functions/Function2;Lkotlinx/coroutines/flow/Flow;)V

    new-instance v1, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardRootViewModel$alpha$2;

    invoke-direct {v1, v3}, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardRootViewModel$alpha$2;-><init>(Lkotlin/coroutines/Continuation;)V

    new-instance v2, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    iget-object v0, v0, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardRootViewModel;->hideKeyguard:Lkotlinx/coroutines/flow/Flow;

    invoke-direct {v2, v0, v4, v1}, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)V

    invoke-static {v2}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    return-object v0
.end method
