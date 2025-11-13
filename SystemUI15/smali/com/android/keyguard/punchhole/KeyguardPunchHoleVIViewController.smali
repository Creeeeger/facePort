.class public final Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;
.super Lcom/android/systemui/util/ViewController;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/widget/SystemUIWidgetCallback;


# instance fields
.field public final mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

.field public final mConfigurationListener:Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController$5;

.field public final mDisplayLifeCycleObserver:Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController$4;

.field public final mDisplayLifecycle:Lcom/android/systemui/keyguard/DisplayLifecycle;

.field public final mEditModeListener:Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController$7;

.field public final mHandler:Landroid/os/Handler;

.field public mIsBouncerVI:Z

.field public mIsFaceRunning:Z

.field public mIsLockStarEnabled:Z

.field public final mKeyguardEditModeController:Lcom/android/systemui/keyguard/KeyguardEditModeController;

.field public final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public final mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field public mLastDensityDpi:I

.field public mLastLayoutDirection:I

.field public final mLockStarCallback:Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController$6;

.field public final mPluginLockStarManager:Lcom/android/systemui/lockstar/PluginLockStarManager;

.field public final mPunchHoleCallback:Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController$1;

.field private final mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field private final mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

.field public final mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

.field public final mWakefulnessObserver:Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController$3;


# direct methods
.method public static $r8$lambda$1DuoW-xem1eLxLd0EvhmzdXc9U0(Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;

    iget-boolean v0, v0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mIsAnimationPlaying:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;->stopVI()V

    goto :goto_0

    :cond_0
    const-class v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    sget-object v1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v1, v0}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceDetectionRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;->startVI()V

    :cond_1
    :goto_0
    return-void
.end method

.method public static $r8$lambda$ELksg8YKUHKs1dcJxyczqlKuknQ(Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;)V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;->mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    iget-object v1, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    iget-object v0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;->mWakefulnessObserver:Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController$3;

    iget-object v1, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    invoke-virtual {v1, v0}, Lcom/android/systemui/keyguard/SecLifecycle;->removeObserver(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    iget-object v1, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;->mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/SettingsHelper;->unregisterCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;)V

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/util/DeviceState;->shouldEnableKeyguardScreenRotation(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;->mDisplayLifeCycleObserver:Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController$4;

    iget-object v1, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;->mDisplayLifecycle:Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-virtual {v1, v0}, Lcom/android/systemui/keyguard/SecLifecycle;->removeObserver(Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    check-cast v0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    iget-object v1, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;->mConfigurationListener:Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController$5;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->removeCallback(Ljava/lang/Object;)V

    invoke-static {p0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->removeSystemUIWidgetCallback(Lcom/android/systemui/widget/SystemUIWidgetCallback;)V

    iget-object v0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;->mKeyguardEditModeController:Lcom/android/systemui/keyguard/KeyguardEditModeController;

    check-cast v0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;

    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->listeners:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;->mEditModeListener:Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController$7;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;

    iget-object v0, v0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->TAG:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;->mPluginLockStarManager:Lcom/android/systemui/lockstar/PluginLockStarManager;

    invoke-virtual {p0, v0}, Lcom/android/systemui/lockstar/PluginLockStarManager;->unregisterCallback(Ljava/lang/String;)V

    return-void
.end method

.method public static $r8$lambda$cNlzCeNAAKTX1ka2SNKtt0InTQI(Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;)V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;

    iget-object v1, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;->mPunchHoleCallback:Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController$1;

    iput-object v1, v0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mPunchHoleCallback:Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController$1;

    iget-object v0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;->mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    iget-object v1, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    iget-object v0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;->mWakefulnessObserver:Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController$3;

    iget-object v1, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    invoke-virtual {v1, v0}, Lcom/android/systemui/keyguard/SecLifecycle;->addObserver(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    iget-object v1, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;->mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/net/Uri;

    const-string v3, "any_screen_running"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/util/DeviceState;->shouldEnableKeyguardScreenRotation(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;->mDisplayLifeCycleObserver:Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController$4;

    iget-object v1, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;->mDisplayLifecycle:Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-virtual {v1, v0}, Lcom/android/systemui/keyguard/SecLifecycle;->addObserver(Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    check-cast v0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    iget-object v1, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;->mConfigurationListener:Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController$5;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->addCallback(Ljava/lang/Object;)V

    const-wide/16 v0, 0x210

    invoke-static {p0, v0, v1}, Lcom/android/systemui/wallpaper/WallpaperUtils;->registerSystemUIWidgetCallback(Lcom/android/systemui/widget/SystemUIWidgetCallback;J)V

    iget-object v0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;->mKeyguardEditModeController:Lcom/android/systemui/keyguard/KeyguardEditModeController;

    check-cast v0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;

    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->listeners:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;->mEditModeListener:Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController$7;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;

    iget-object v0, v0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->TAG:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;->mLockStarCallback:Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController$6;

    iget-object p0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;->mPluginLockStarManager:Lcom/android/systemui/lockstar/PluginLockStarManager;

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/lockstar/PluginLockStarManager;->registerCallback(Ljava/lang/String;Lcom/android/systemui/lockstar/PluginLockStarManager$LockStarCallback;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;Landroid/os/Handler;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/keyguard/WakefulnessLifecycle;Lcom/android/systemui/util/SettingsHelper;Lcom/android/systemui/keyguard/DisplayLifecycle;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/keyguard/KeyguardEditModeController;Lcom/android/systemui/lockstar/PluginLockStarManager;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/util/ViewController;-><init>(Landroid/view/View;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;->mIsBouncerVI:Z

    iput-boolean p1, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;->mIsFaceRunning:Z

    iput p1, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;->mLastLayoutDirection:I

    iput p1, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;->mLastDensityDpi:I

    iput-boolean p1, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;->mIsLockStarEnabled:Z

    new-instance p1, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController$1;

    invoke-direct {p1, p0}, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController$1;-><init>(Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;)V

    iput-object p1, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;->mPunchHoleCallback:Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController$1;

    new-instance p1, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController$2;

    invoke-direct {p1, p0}, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController$2;-><init>(Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;)V

    iput-object p1, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;->mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    new-instance p1, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController$3;

    invoke-direct {p1, p0}, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController$3;-><init>(Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;)V

    iput-object p1, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;->mWakefulnessObserver:Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController$3;

    new-instance p1, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController$$ExternalSyntheticLambda1;-><init>(Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;)V

    iput-object p1, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;->mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    new-instance p1, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController$4;

    invoke-direct {p1, p0}, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController$4;-><init>(Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;)V

    iput-object p1, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;->mDisplayLifeCycleObserver:Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController$4;

    new-instance p1, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController$5;

    invoke-direct {p1, p0}, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController$5;-><init>(Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;)V

    iput-object p1, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;->mConfigurationListener:Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController$5;

    new-instance p1, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController$6;

    invoke-direct {p1, p0}, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController$6;-><init>(Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;)V

    iput-object p1, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;->mLockStarCallback:Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController$6;

    new-instance p1, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController$7;

    invoke-direct {p1, p0}, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController$7;-><init>(Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;)V

    iput-object p1, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;->mEditModeListener:Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController$7;

    iput-object p2, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;->mHandler:Landroid/os/Handler;

    iput-object p3, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iput-object p4, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    iput-object p5, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    iput-object p6, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;->mDisplayLifecycle:Lcom/android/systemui/keyguard/DisplayLifecycle;

    iput-object p7, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    iput-object p8, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;->mKeyguardEditModeController:Lcom/android/systemui/keyguard/KeyguardEditModeController;

    iput-object p9, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;->mPluginLockStarManager:Lcom/android/systemui/lockstar/PluginLockStarManager;

    return-void
.end method

.method public static synthetic access$000(Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$1000(Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$1100(Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$1200(Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$1300(Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$1400(Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$1500(Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$1600(Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$1700(Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$1800(Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$1900(Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$2000(Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$600(Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$700(Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$800(Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$900(Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method


# virtual methods
.method public final onInit()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->bringToFront()V

    iget-boolean v0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;->mIsBouncerVI:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;

    iget-object v0, v0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mVIDirector:Lcom/android/keyguard/punchhole/VIDirector;

    if-eqz v0, :cond_2

    sget-boolean v1, Lcom/android/systemui/LsRune;->SECURITY_SUB_DISPLAY_LOCK:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;->mPluginLockStarManager:Lcom/android/systemui/lockstar/PluginLockStarManager;

    iget-object v1, v1, Lcom/android/systemui/lockstar/PluginLockStarManager;->mPluginLockStar:Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;->isLockStarEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;->mIsLockStarEnabled:Z

    :cond_1
    iput-boolean v2, v0, Lcom/android/keyguard/punchhole/VIDirector;->mIsBouncer:Z

    :cond_2
    return-void
.end method

.method public final onViewAttached()V
    .locals 2

    new-instance v0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController$$ExternalSyntheticLambda0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController$$ExternalSyntheticLambda0;-><init>(Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;I)V

    iget-object p0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onViewDetached()V
    .locals 2

    new-instance v0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController$$ExternalSyntheticLambda0;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController$$ExternalSyntheticLambda0;-><init>(Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;I)V

    iget-object p0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final playAnimation(Z)V
    .locals 2

    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_SUB_DISPLAY_LOCK:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;->mIsLockStarEnabled:Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;->mPluginLockStarManager:Lcom/android/systemui/lockstar/PluginLockStarManager;

    iget-object v0, v0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mPluginLockStar:Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;->isLockStarEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;->updatePunchHoleColor()V

    :cond_2
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;

    iget-object v0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mVIView:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x4

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    if-eqz p1, :cond_4

    iget-object p0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mVIView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    goto :goto_2

    :cond_4
    iget-object p0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mVIView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->pauseAnimation()V

    :goto_2
    return-void
.end method

.method public final setBouncer()V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;->mIsBouncerVI:Z

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;

    iget-object p0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->TAG:Ljava/lang/String;

    const-string v2, "_Bouncer"

    invoke-static {v1, p0, v2}, Landroidx/activity/ComponentActivity$1$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public final setPunchHoleVI()V
    .locals 7

    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_PUNCH_HOLE_FACE_VI:Z

    if-eqz v0, :cond_7

    iget-object v1, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isFaceOptionEnabled()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;

    iget-object v2, v1, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->TAG:Ljava/lang/String;

    const-string v3, "setFaceRecognitionVI()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    if-nez v0, :cond_0

    iget-object v0, v1, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->TAG:Ljava/lang/String;

    const-string v1, "setFaceRecognitionVI() return - face recognition vi is not supported by product feature"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_0
    iget-object v0, v1, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mVIDirector:Lcom/android/keyguard/punchhole/VIDirector;

    if-nez v0, :cond_1

    iget-object v0, v1, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "setFaceRecognitionVI() return - mVIDirector is null ("

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/android/keyguard/punchhole/VIDirectorFactory;->Companion:Lcom/android/keyguard/punchhole/VIDirectorFactory$Companion;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Lcom/android/keyguard/punchhole/VIDirectorFactory;->vendorName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_1
    iget v0, v1, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mCurrentAnimation:I

    const/4 v3, 0x1

    if-ne v0, v3, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, v1, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "setAnimation() "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, v1, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mCurrentAnimation:I

    const-string v6, " -> 1"

    invoke-static {v4, v5, v6, v0}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    iput v3, v1, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mCurrentAnimation:I

    :goto_0
    iget-object v0, v1, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mVIDirector:Lcom/android/keyguard/punchhole/VIDirector;

    iget-boolean v4, v0, Lcom/android/keyguard/punchhole/VIDirector;->mIsBouncer:Z

    if-eqz v4, :cond_3

    const-string v4, "background"

    goto :goto_1

    :cond_3
    const-string/jumbo v4, "statusbar"

    :goto_1
    invoke-static {v4}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isWhiteKeyguardWallpaper(Ljava/lang/String;)Z

    move-result v4

    const-string v5, "getFaceRecognitionVIFileName() - file name = "

    const-string v6, "KeyguardPunchHoleVIView_VIDirector"

    if-eqz v4, :cond_4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v0, Lcom/android/keyguard/punchhole/VIDirector;->mVIFileName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "_whitebg.json"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v0, Lcom/android/keyguard/punchhole/VIDirector;->mVIFileName:Ljava/lang/String;

    invoke-static {v4, v0, v5}, Landroidx/activity/ComponentActivity$1$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v0, Lcom/android/keyguard/punchhole/VIDirector;->mVIFileName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".json"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v0, Lcom/android/keyguard/punchhole/VIDirector;->mVIFileName:Ljava/lang/String;

    invoke-static {v4, v0, v5}, Landroidx/activity/ComponentActivity$1$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v1, v1, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->TAG:Ljava/lang/String;

    const-string v3, "prepareVI() - return, no VI file : "

    invoke-static {v3, v0, v1}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    iget-object v4, v1, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mAppliedVIFileName:Ljava/lang/String;

    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v1, v1, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->TAG:Ljava/lang/String;

    const-string v3, "prepareVI() - return, already applied : "

    invoke-static {v3, v0, v1}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_6
    iput-object v0, v1, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mAppliedVIFileName:Ljava/lang/String;

    :try_start_0
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromAsset(Landroid/content/Context;Ljava/lang/String;)Lcom/airbnb/lottie/LottieTask;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v5, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView$$ExternalSyntheticLambda1;

    invoke-direct {v5, v1}, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView$$ExternalSyntheticLambda1;-><init>(Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;)V

    invoke-virtual {v4, v5}, Lcom/airbnb/lottie/LottieTask;->addListener(Lcom/airbnb/lottie/LottieListener;)V

    new-instance v5, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView$$ExternalSyntheticLambda2;

    invoke-direct {v5, v1, v0}, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView$$ExternalSyntheticLambda2;-><init>(Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lcom/airbnb/lottie/LottieTask;->addFailureListener(Lcom/airbnb/lottie/LottieListener;)V

    iput-boolean v2, v1, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mIsAnimationPlaying:Z

    invoke-virtual {v1, v3}, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->setPrepareState(I)V

    goto :goto_3

    :catch_0
    move-exception v0

    iget-object v4, v1, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Failed to prepareVI : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v2, v1, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mIsAnimationPlaying:Z

    invoke-virtual {v1, v3}, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->setPrepareState(I)V

    :goto_3
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;

    iget-boolean v0, v0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mIsAnimationPlaying:Z

    if-nez v0, :cond_7

    invoke-virtual {p0, v2}, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;->playAnimation(Z)V

    :cond_7
    return-void
.end method

.method public final startVI()V
    .locals 5

    iget-object v0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceDetectionRunning()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;

    iget-object p0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "startVI() - return, face recognition is stopped"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    iget v0, v0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->mWakefulness:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;

    iget-object p0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "startVI() - return, WakefulnessLifecycle is not WAKEFULNESS_AWAKE"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_SUB_DISPLAY_LOCK:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    move-object v2, v0

    check-cast v2, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;

    iget-boolean v2, v2, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mIsConfigUpdateNecessary:Z

    if-eqz v2, :cond_2

    check-cast v0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;

    iget-object p0, v0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "startVI() - return, Fold open - necessary to update VI position"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    invoke-static {}, Lcom/android/systemui/util/DeviceState;->isSmartViewFitToActiveDisplay()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;

    iget-object p0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "startVI() - return, smart view"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    iget-object v0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isOneHandModeRunning()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;

    iget-object p0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "startVI() - return, one hand mode running"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    iget-object v0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;->mKeyguardEditModeController:Lcom/android/systemui/keyguard/KeyguardEditModeController;

    check-cast v0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->getVIRunning()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;

    iget-object p0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "startVI() - return, edit mode VI running"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_5
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;

    iget v2, v0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mPreparedState:I

    const/4 v3, 0x3

    const/4 v4, 0x1

    if-eq v2, v3, :cond_7

    if-ne v2, v4, :cond_6

    invoke-virtual {v0, v1}, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->setPrepareState(I)V

    :cond_6
    iget-object p0, v0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "startVI() - return, not prepared"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_7
    iget-boolean v1, v0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mIsAnimationPlaying:Z

    if-eqz v1, :cond_8

    iget-object v1, v0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mVIDirector:Lcom/android/keyguard/punchhole/VIDirector;

    if-eqz v1, :cond_8

    iget v2, v0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mLastUpdatedRotation:I

    invoke-virtual {v1}, Lcom/android/keyguard/punchhole/VIDirector;->getScreenRotation()I

    move-result v1

    if-ne v2, v1, :cond_8

    iget-object p0, v0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "startVI() - return, animation is already playing"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_8
    iget-object v1, v0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "startVI()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v4, v0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mIsAnimationPlaying:Z

    invoke-virtual {p0, v4}, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;->playAnimation(Z)V

    :goto_0
    return-void
.end method

.method public final stopVI()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;

    iget v1, v0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mPreparedState:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    iget-object p0, v0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "stopVI() - return, not prepared"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-boolean v1, v0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mIsAnimationPlaying:Z

    if-nez v1, :cond_1

    iget-object p0, v0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "stopVI() - return, animation is not playing"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object v1, v0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "stopVI()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mIsAnimationPlaying:Z

    invoke-virtual {p0, v1}, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;->playAnimation(Z)V

    :goto_0
    return-void
.end method

.method public final updatePunchHoleColor()V
    .locals 5

    iget-object v0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;->mPluginLockStarManager:Lcom/android/systemui/lockstar/PluginLockStarManager;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/systemui/lockstar/PluginLockStarManager;->getLockStarValues()Lcom/samsung/systemui/splugins/lockstar/LockStarValues;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-virtual {v0}, Lcom/android/systemui/lockstar/PluginLockStarManager;->getLockStarValues()Lcom/samsung/systemui/splugins/lockstar/LockStarValues;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/systemui/splugins/lockstar/LockStarValues;->getPunchHoleColor()I

    move-result v0

    invoke-static {v0}, Landroid/graphics/Color;->valueOf(I)Landroid/graphics/Color;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "getPunchHoleColor() failed "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LStar|PluginLockStarManager"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/graphics/Color;->toArgb()I

    move-result v0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;

    iget-object v1, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mVIView:Lcom/airbnb/lottie/LottieAnimationView;

    new-instance v2, Lcom/airbnb/lottie/model/KeyPath;

    const-string v3, "**"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/airbnb/lottie/model/KeyPath;-><init>([Ljava/lang/String;)V

    sget-object v3, Lcom/airbnb/lottie/LottieProperty;->COLOR_FILTER:Landroid/graphics/ColorFilter;

    new-instance v4, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView$1;

    invoke-direct {v4, p0, v0}, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView$1;-><init>(Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;I)V

    invoke-virtual {v1, v2, v3, v4}, Lcom/airbnb/lottie/LottieAnimationView;->addValueCallback(Lcom/airbnb/lottie/model/KeyPath;Ljava/lang/Object;Lcom/airbnb/lottie/value/SimpleLottieValueCallback;)V

    :cond_1
    return-void
.end method

.method public final updateStyle(JLandroid/app/SemWallpaperColors;)V
    .locals 0

    iget-object p1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p1, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;

    iget-object p1, p1, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->TAG:Ljava/lang/String;

    const-string/jumbo p2, "updateStyle setPunchHoleVI"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;->setPunchHoleVI()V

    return-void
.end method
