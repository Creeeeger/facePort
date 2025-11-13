.class public final Lcom/android/systemui/unfold/UnfoldInitializationStartable$start$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final INSTANCE:Lcom/android/systemui/unfold/UnfoldInitializationStartable$start$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/unfold/UnfoldInitializationStartable$start$1;

    invoke-direct {v0}, Lcom/android/systemui/unfold/UnfoldInitializationStartable$start$1;-><init>()V

    sput-object v0, Lcom/android/systemui/unfold/UnfoldInitializationStartable$start$1;->INSTANCE:Lcom/android/systemui/unfold/UnfoldInitializationStartable$start$1;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Lcom/android/systemui/unfold/SysUIUnfoldComponent;

    invoke-interface {p1}, Lcom/android/systemui/unfold/SysUIUnfoldComponent;->getUnfoldTransitionWallpaperController()Lcom/android/systemui/unfold/UnfoldTransitionWallpaperController;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/android/systemui/unfold/UnfoldTransitionWallpaperController$TransitionListener;

    invoke-direct {v0, p0}, Lcom/android/systemui/unfold/UnfoldTransitionWallpaperController$TransitionListener;-><init>(Lcom/android/systemui/unfold/UnfoldTransitionWallpaperController;)V

    iget-object p0, p0, Lcom/android/systemui/unfold/UnfoldTransitionWallpaperController;->unfoldTransitionProgressProvider:Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider;

    invoke-interface {p0, v0}, Lcom/android/systemui/unfold/util/CallbackController;->addCallback(Ljava/lang/Object;)V

    invoke-interface {p1}, Lcom/android/systemui/unfold/SysUIUnfoldComponent;->getUnfoldHapticsPlayer()Lcom/android/systemui/unfold/UnfoldHapticsPlayer;

    invoke-interface {p1}, Lcom/android/systemui/unfold/SysUIUnfoldComponent;->getNaturalRotationUnfoldProgressProvider()Lcom/android/systemui/unfold/util/NaturalRotationUnfoldProgressProvider;

    move-result-object p0

    iget-object v0, p0, Lcom/android/systemui/unfold/util/NaturalRotationUnfoldProgressProvider;->rotationListener:Lcom/android/systemui/unfold/util/NaturalRotationUnfoldProgressProvider$rotationListener$1;

    iget-object v1, p0, Lcom/android/systemui/unfold/util/NaturalRotationUnfoldProgressProvider;->rotationChangeProvider:Lcom/android/systemui/unfold/updates/RotationChangeProvider;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/android/systemui/unfold/updates/RotationChangeProvider$addCallback$1;

    invoke-direct {v2, v1, v0}, Lcom/android/systemui/unfold/updates/RotationChangeProvider$addCallback$1;-><init>(Lcom/android/systemui/unfold/updates/RotationChangeProvider;Lcom/android/systemui/unfold/updates/RotationChangeProvider$RotationListener;)V

    iget-object v1, v1, Lcom/android/systemui/unfold/updates/RotationChangeProvider;->bgHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object p0, p0, Lcom/android/systemui/unfold/util/NaturalRotationUnfoldProgressProvider;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/Display;->getRotation()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/systemui/unfold/util/NaturalRotationUnfoldProgressProvider$rotationListener$1;->onRotationChanged(I)V

    :cond_0
    invoke-interface {p1}, Lcom/android/systemui/unfold/SysUIUnfoldComponent;->getUnfoldLatencyTracker()Lcom/android/systemui/unfold/UnfoldLatencyTracker;

    move-result-object p0

    iget-object p1, p0, Lcom/android/systemui/unfold/UnfoldLatencyTracker;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x1070103

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p1

    array-length p1, p1

    const/4 v0, 0x1

    if-nez p1, :cond_1

    move p1, v0

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    xor-int/2addr p1, v0

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/android/systemui/unfold/UnfoldLatencyTracker;->deviceStateManager:Landroid/hardware/devicestate/DeviceStateManager;

    iget-object v0, p0, Lcom/android/systemui/unfold/UnfoldLatencyTracker;->uiBgExecutor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lcom/android/systemui/unfold/UnfoldLatencyTracker;->foldStateListener:Lcom/android/systemui/unfold/UnfoldLatencyTracker$FoldStateListener;

    invoke-virtual {p1, v0, v1}, Landroid/hardware/devicestate/DeviceStateManager;->registerCallback(Ljava/util/concurrent/Executor;Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;)V

    iget-object p1, p0, Lcom/android/systemui/unfold/UnfoldLatencyTracker;->screenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

    invoke-virtual {p1, p0}, Lcom/android/systemui/keyguard/SecLifecycle;->addObserver(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/unfold/UnfoldLatencyTracker;->transitionProgressProvider:Ljava/util/Optional;

    invoke-virtual {p1}, Ljava/util/Optional;->isPresent()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/systemui/unfold/UnfoldLatencyTracker;->transitionProgressProvider:Ljava/util/Optional;

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider;

    invoke-interface {p1, p0}, Lcom/android/systemui/unfold/util/CallbackController;->addCallback(Ljava/lang/Object;)V

    :cond_3
    :goto_1
    return-void
.end method
