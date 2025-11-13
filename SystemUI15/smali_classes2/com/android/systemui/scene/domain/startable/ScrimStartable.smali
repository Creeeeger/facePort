.class public final Lcom/android/systemui/scene/domain/startable/ScrimStartable;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/CoreStartable;


# instance fields
.field public final alternateBouncerInteractor:Lcom/android/systemui/bouncer/domain/interactor/AlternateBouncerInteractor;

.field public final dozeServiceHost:Lcom/android/systemui/statusbar/phone/DozeServiceHost;

.field public final scrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

.field public final scrimState:Lcom/android/systemui/scene/domain/startable/ScrimStartable$special$$inlined$map$1;

.field public final statusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CoroutineScope;Lcom/android/systemui/statusbar/phone/ScrimController;Lcom/android/systemui/scene/domain/interactor/SceneInteractor;Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryInteractor;Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;Lcom/android/systemui/scene/domain/interactor/SceneContainerOcclusionInteractor;Lcom/android/systemui/keyguard/domain/interactor/BiometricUnlockInteractor;Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;Lcom/android/systemui/bouncer/domain/interactor/AlternateBouncerInteractor;Lcom/android/systemui/settings/brightness/domain/interactor/BrightnessMirrorShowingInteractor;Lcom/android/systemui/statusbar/phone/DozeServiceHost;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/scene/domain/startable/ScrimStartable;->scrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    iput-object p8, p0, Lcom/android/systemui/scene/domain/startable/ScrimStartable;->statusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    iput-object p9, p0, Lcom/android/systemui/scene/domain/startable/ScrimStartable;->alternateBouncerInteractor:Lcom/android/systemui/bouncer/domain/interactor/AlternateBouncerInteractor;

    iput-object p11, p0, Lcom/android/systemui/scene/domain/startable/ScrimStartable;->dozeServiceHost:Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    iget-object p8, p3, Lcom/android/systemui/scene/domain/interactor/SceneInteractor;->currentScene:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object p9, p5, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;->isDreaming:Lkotlinx/coroutines/flow/MutableStateFlow;

    iget-object p10, p10, Lcom/android/systemui/settings/brightness/domain/interactor/BrightnessMirrorShowingInteractor;->isShowing:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance p1, Lcom/android/systemui/scene/domain/startable/ScrimStartable$scrimState$1;

    const/4 p11, 0x0

    invoke-direct {p1, p0, p11}, Lcom/android/systemui/scene/domain/startable/ScrimStartable$scrimState$1;-><init>(Lcom/android/systemui/scene/domain/startable/ScrimStartable;Lkotlin/coroutines/Continuation;)V

    invoke-static {p1}, Lcom/android/systemui/utils/coroutines/flow/FlowConflatedKt;->conflatedCallbackFlow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    iget-object p1, p4, Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryInteractor;->isDeviceEntered:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object p2, p6, Lcom/android/systemui/scene/domain/interactor/SceneContainerOcclusionInteractor;->invisibleDueToOcclusion:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object p6, p5, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;->isDozing:Lkotlinx/coroutines/flow/StateFlow;

    iget-object p7, p7, Lcom/android/systemui/keyguard/domain/interactor/BiometricUnlockInteractor;->unlockState:Lkotlinx/coroutines/flow/StateFlow;

    iget-object p4, p3, Lcom/android/systemui/scene/domain/interactor/SceneInteractor;->transitionState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object v1, p5, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;->isPulsing:Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor$special$$inlined$map$1;

    move-object p3, p8

    move-object p5, p6

    move-object p6, p9

    move-object p8, p10

    move-object p9, v1

    move-object p10, v0

    filled-new-array/range {p1 .. p10}, [Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    new-instance p2, Lcom/android/systemui/scene/domain/startable/ScrimStartable$special$$inlined$combine$1;

    invoke-direct {p2, p1, p0}, Lcom/android/systemui/scene/domain/startable/ScrimStartable$special$$inlined$combine$1;-><init>([Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/scene/domain/startable/ScrimStartable;)V

    new-instance p1, Lcom/android/systemui/scene/domain/startable/ScrimStartable$scrimState$3;

    invoke-direct {p1, p0, p11}, Lcom/android/systemui/scene/domain/startable/ScrimStartable$scrimState$3;-><init>(Lcom/android/systemui/scene/domain/startable/ScrimStartable;Lkotlin/coroutines/Continuation;)V

    new-instance p0, Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1;

    invoke-direct {p0, p2, p1}, Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;)V

    new-instance p1, Lcom/android/systemui/scene/domain/startable/ScrimStartable$special$$inlined$map$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/scene/domain/startable/ScrimStartable$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    return-void
.end method

.method public static final access$isShade(Lcom/android/systemui/scene/domain/startable/ScrimStartable;Lcom/android/compose/animation/scene/SceneKey;)Z
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/android/systemui/scene/shared/model/Scenes;->Shade:Lcom/android/compose/animation/scene/SceneKey;

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    sget-object p0, Lcom/android/systemui/scene/shared/model/Scenes;->QuickSettings:Lcom/android/compose/animation/scene/SceneKey;

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    sget-object p0, Lcom/android/systemui/scene/shared/model/Scenes;->NotificationsShade:Lcom/android/compose/animation/scene/SceneKey;

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    sget-object p0, Lcom/android/systemui/scene/shared/model/Scenes;->QuickSettingsShade:Lcom/android/compose/animation/scene/SceneKey;

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static synthetic getScrimState$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final start()V
    .locals 0

    invoke-static {}, Lcom/android/systemui/Flags;->sceneContainer()V

    return-void
.end method
