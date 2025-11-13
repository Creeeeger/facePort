.class public final Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final componentCallbacks:Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor$componentCallbacks$1;

.field public final context:Landroid/content/Context;

.field public coverTask:Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor$CoverTask;

.field public coverTaskCache:Z

.field public final deviceStateManager:Landroid/hardware/devicestate/DeviceStateManager;

.field public final displayListener:Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor$displayListener$1;

.field public final displayManager:Landroid/hardware/display/DisplayManager;

.field public foldCache:Z

.field public foldStateListener:Landroid/hardware/devicestate/DeviceStateManager$FoldStateListener;

.field public final handler:Landroid/os/Handler;

.field public largeCoverRotationCallback:Ljava/util/function/Consumer;

.field public lastCoverRotation:I

.field public lastRotation:I

.field public multimodalTask:Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor$MultimodalTask;

.field private final settingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field public final windowContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/util/SettingsHelper;Landroid/os/Handler;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    iput-object p3, p0, Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor;->handler:Landroid/os/Handler;

    const-class p2, Landroid/hardware/devicestate/DeviceStateManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/hardware/devicestate/DeviceStateManager;

    iput-object p2, p0, Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor;->deviceStateManager:Landroid/hardware/devicestate/DeviceStateManager;

    const-string p2, "display"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/hardware/display/DisplayManager;

    iput-object p2, p0, Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor;->displayManager:Landroid/hardware/display/DisplayManager;

    new-instance p3, Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor$displayListener$1;

    invoke-direct {p3, p0}, Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor$displayListener$1;-><init>(Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor;)V

    iput-object p3, p0, Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor;->displayListener:Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor$displayListener$1;

    invoke-static {}, Lcom/samsung/android/view/SemWindowManager;->getInstance()Lcom/samsung/android/view/SemWindowManager;

    move-result-object p3

    invoke-virtual {p3}, Lcom/samsung/android/view/SemWindowManager;->isFolded()Z

    move-result p3

    iput-boolean p3, p0, Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor;->foldCache:Z

    const/4 p3, -0x1

    iput p3, p0, Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor;->lastRotation:I

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object p2

    const/4 p3, 0x0

    if-eqz p2, :cond_0

    const/4 v0, 0x2

    invoke-virtual {p1, p2, v0, p3}, Landroid/content/Context;->createWindowContext(Landroid/view/Display;ILandroid/os/Bundle;)Landroid/content/Context;

    move-result-object p3

    :cond_0
    iput-object p3, p0, Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor;->windowContext:Landroid/content/Context;

    new-instance p1, Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor$componentCallbacks$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor$componentCallbacks$1;-><init>(Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor;)V

    iput-object p1, p0, Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor;->componentCallbacks:Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor$componentCallbacks$1;

    return-void
.end method


# virtual methods
.method public final getSettingsHelper()Lcom/android/systemui/util/SettingsHelper;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    return-object p0
.end method
