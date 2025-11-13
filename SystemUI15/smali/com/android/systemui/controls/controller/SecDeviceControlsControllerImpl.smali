.class public final Lcom/android/systemui/controls/controller/SecDeviceControlsControllerImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/controls/controller/SecDeviceControlsController;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public callback:Lcom/android/systemui/qs/bar/MediaDevicesBar$1;

.field public final context:Landroid/content/Context;

.field public final controlsActivityStarter:Lcom/android/systemui/controls/ui/util/ControlsActivityStarter;

.field public final controlsComponent:Lcom/android/systemui/controls/dagger/ControlsComponent;

.field public final keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public final listingCallback:Lcom/android/systemui/controls/controller/SecDeviceControlsControllerImpl$listingCallback$1;

.field public final saLogger:Lcom/android/systemui/controls/util/SALogger;

.field public final secureSettings:Lcom/android/systemui/util/settings/SecureSettings;

.field public final userContextProvider:Lcom/android/systemui/settings/UserContextProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/controls/controller/SecDeviceControlsControllerImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/controls/controller/SecDeviceControlsControllerImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/controls/dagger/ControlsComponent;Lcom/android/systemui/settings/UserContextProvider;Lcom/android/systemui/util/settings/SecureSettings;Lcom/android/systemui/controls/ui/util/ControlsActivityStarter;Lcom/android/systemui/controls/util/SALogger;Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/controls/controller/SecDeviceControlsControllerImpl;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/controls/controller/SecDeviceControlsControllerImpl;->controlsComponent:Lcom/android/systemui/controls/dagger/ControlsComponent;

    iput-object p3, p0, Lcom/android/systemui/controls/controller/SecDeviceControlsControllerImpl;->userContextProvider:Lcom/android/systemui/settings/UserContextProvider;

    iput-object p4, p0, Lcom/android/systemui/controls/controller/SecDeviceControlsControllerImpl;->secureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    iput-object p5, p0, Lcom/android/systemui/controls/controller/SecDeviceControlsControllerImpl;->controlsActivityStarter:Lcom/android/systemui/controls/ui/util/ControlsActivityStarter;

    iput-object p6, p0, Lcom/android/systemui/controls/controller/SecDeviceControlsControllerImpl;->saLogger:Lcom/android/systemui/controls/util/SALogger;

    iput-object p7, p0, Lcom/android/systemui/controls/controller/SecDeviceControlsControllerImpl;->keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    new-instance p1, Lcom/android/systemui/controls/controller/SecDeviceControlsControllerImpl$listingCallback$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/controls/controller/SecDeviceControlsControllerImpl$listingCallback$1;-><init>(Lcom/android/systemui/controls/controller/SecDeviceControlsControllerImpl;)V

    iput-object p1, p0, Lcom/android/systemui/controls/controller/SecDeviceControlsControllerImpl;->listingCallback:Lcom/android/systemui/controls/controller/SecDeviceControlsControllerImpl$listingCallback$1;

    return-void
.end method

.method public static addPackageToSeededSet(Landroid/content/SharedPreferences;Ljava/lang/String;)Lkotlin/Unit;
    .locals 2

    sget-object v0, Lkotlin/collections/EmptySet;->INSTANCE:Lkotlin/collections/EmptySet;

    const-string v1, "SeedingCompleted"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toMutableSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public final start(Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "start controller = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SecDeviceControlsControllerImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/android/systemui/BasicRune;->CONTROLS_BLOCK_START_BEFORE_SECURE_BOOT_UNLOCK:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/controls/controller/SecDeviceControlsControllerImpl;->keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isUserUnlocked$1()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "Not user unlocked yet"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/controls/controller/SecDeviceControlsControllerImpl;->saLogger:Lcom/android/systemui/controls/util/SALogger;

    sget-object v1, Lcom/android/systemui/controls/util/SALogger$Event$LaunchDevices;->INSTANCE:Lcom/android/systemui/controls/util/SALogger$Event$LaunchDevices;

    invoke-virtual {v0, v1}, Lcom/android/systemui/controls/util/SALogger;->sendEvent(Lcom/android/systemui/controls/util/SALogger$Event;)V

    iget-object v0, p0, Lcom/android/systemui/controls/controller/SecDeviceControlsControllerImpl;->context:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/systemui/controls/controller/SecDeviceControlsControllerImpl;->controlsActivityStarter:Lcom/android/systemui/controls/ui/util/ControlsActivityStarter;

    check-cast p0, Lcom/android/systemui/controls/ui/util/ControlsActivityStarterImpl;

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/controls/ui/util/ControlsActivityStarterImpl;->startSecControlsActivity(Landroid/content/Context;Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller;)V

    return-void
.end method
