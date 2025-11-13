.class public final Lcom/android/systemui/statusbar/phone/DozeParameters;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/tuner/TunerService$Tunable;
.implements Lcom/android/systemui/plugins/statusbar/DozeParameters;
.implements Lcom/android/systemui/Dumpable;
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;
.implements Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;
.implements Lcom/android/systemui/unfold/FoldAodAnimationController$FoldAodAnimationStatus;


# static fields
.field public static final FORCE_BLANKING:Z

.field public static final FORCE_NO_BLANKING:Z


# instance fields
.field public final mAODParameters:Lcom/android/systemui/doze/AODParameters;

.field public final mAlwaysOnPolicy:Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;

.field public final mAmbientDisplayConfiguration:Landroid/hardware/display/AmbientDisplayConfiguration;

.field public mControlScreenOffAnimation:Z

.field public final mDozeInteractor:Lcom/android/systemui/keyguard/domain/interactor/DozeInteractor;

.field public mIsQuickPickupEnabled:Z

.field final mKeyguardVisibilityCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field public mKeyguardVisible:Z

.field public final mPowerManager:Landroid/os/PowerManager;

.field public final mResources:Landroid/content/res/Resources;

.field public final mScreenOffAnimationController:Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;

.field public final mUnlockedScreenOffAnimationController:Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;

.field public final mUserTracker:Lcom/android/systemui/settings/UserTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "debug.force_no_blanking"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/phone/DozeParameters;->FORCE_NO_BLANKING:Z

    const-string v0, "debug.force_blanking"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/phone/DozeParameters;->FORCE_BLANKING:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;Lcom/android/systemui/util/SettingsHelper;Ldagger/Lazy;Lcom/android/internal/widget/LockPatternUtils;Landroid/content/Context;Landroid/os/Handler;Landroid/content/res/Resources;Landroid/hardware/display/AmbientDisplayConfiguration;Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;Landroid/os/PowerManager;Lcom/android/systemui/statusbar/policy/BatteryController;Lcom/android/systemui/tuner/TunerService;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;Ljava/util/Optional;Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/settings/UserTracker;Lcom/android/systemui/keyguard/domain/interactor/DozeInteractor;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;",
            "Lcom/android/systemui/util/SettingsHelper;",
            "Ldagger/Lazy;",
            "Lcom/android/internal/widget/LockPatternUtils;",
            "Landroid/content/Context;",
            "Landroid/os/Handler;",
            "Landroid/content/res/Resources;",
            "Landroid/hardware/display/AmbientDisplayConfiguration;",
            "Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;",
            "Landroid/os/PowerManager;",
            "Lcom/android/systemui/statusbar/policy/BatteryController;",
            "Lcom/android/systemui/tuner/TunerService;",
            "Lcom/android/systemui/dump/DumpManager;",
            "Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;",
            "Ljava/util/Optional<",
            "Lcom/android/systemui/unfold/SysUIUnfoldComponent;",
            ">;",
            "Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;",
            "Lcom/android/keyguard/KeyguardUpdateMonitor;",
            "Lcom/android/systemui/statusbar/policy/ConfigurationController;",
            "Lcom/android/systemui/plugins/statusbar/StatusBarStateController;",
            "Lcom/android/systemui/settings/UserTracker;",
            "Lcom/android/systemui/keyguard/domain/interactor/DozeInteractor;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v3, Lcom/android/systemui/statusbar/phone/DozeParameters$1;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/phone/DozeParameters$1;-><init>(Lcom/android/systemui/statusbar/phone/DozeParameters;)V

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mKeyguardVisibilityCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    move-object/from16 v3, p7

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mResources:Landroid/content/res/Resources;

    move-object/from16 v3, p8

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mAmbientDisplayConfiguration:Landroid/hardware/display/AmbientDisplayConfiguration;

    move-object/from16 v3, p9

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mAlwaysOnPolicy:Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;

    invoke-virtual/range {p13 .. p13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "DozeParameters"

    move-object/from16 v4, p13

    invoke-static {v4, v3, p0}, Lcom/android/systemui/dump/DumpManager;->registerDumpable$default(Lcom/android/systemui/dump/DumpManager;Ljava/lang/String;Lcom/android/systemui/Dumpable;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getDisplayNeedsBlanking()Z

    move-result v4

    const/4 v5, 0x1

    xor-int/2addr v4, v5

    iput-boolean v4, v0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mControlScreenOffAnimation:Z

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v4

    sget-object v6, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {v4, v6}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v4

    sget-boolean v6, Lcom/android/systemui/LsRune;->AOD_DISABLE_CLOCK_TRANSITION:Z

    const/4 v7, 0x0

    if-nez v6, :cond_5

    sget-boolean v6, Lcom/android/systemui/LsRune;->AOD_SAFEMODE:Z

    if-eqz v6, :cond_0

    goto :goto_3

    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {p1, v7}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId(Z)I

    move-result v1

    move-object/from16 v6, p4

    goto :goto_0

    :cond_1
    move-object/from16 v6, p4

    move v1, v7

    :goto_0
    invoke-virtual {v6, v1}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v1

    invoke-virtual {p2}, Lcom/android/systemui/util/SettingsHelper;->isAODShowLockWallpaper()Z

    move-result v6

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, " mControlScreenOffAnimation="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v9, v0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mControlScreenOffAnimation:Z

    const-string v10, " isLockScreenDisabled="

    const-string v11, " isAODShowLockScreenWallpaper="

    invoke-static {v8, v9, v10, v1, v11}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    invoke-static {v8, v6, v3}, Lcom/android/keyguard/KeyguardSecPasswordViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    if-eqz v4, :cond_4

    iget-boolean v3, v0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mControlScreenOffAnimation:Z

    if-eqz v3, :cond_3

    if-eqz v1, :cond_2

    sget-boolean v1, Lcom/android/systemui/LsRune;->AOD_FULLSCREEN:Z

    if-eqz v1, :cond_3

    if-nez v6, :cond_2

    goto :goto_1

    :cond_2
    move v5, v7

    :cond_3
    :goto_1
    invoke-virtual {v2, v5}, Landroid/os/PowerManager;->setDozeAfterScreenOff(Z)V

    :cond_4
    :goto_2
    move-object/from16 v1, p14

    goto :goto_4

    :cond_5
    :goto_3
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mControlScreenOffAnimation:Z

    if-eqz v1, :cond_6

    invoke-virtual {p0, v7}, Lcom/android/systemui/statusbar/phone/DozeParameters;->setControlScreenOffAnimation(Z)V

    goto :goto_2

    :cond_6
    invoke-virtual {v2, v5}, Landroid/os/PowerManager;->setDozeAfterScreenOff(Z)V

    goto :goto_2

    :goto_4
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mScreenOffAnimationController:Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mUnlockedScreenOffAnimationController:Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;

    move-object/from16 v1, p20

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    move-object/from16 v1, p21

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mDozeInteractor:Lcom/android/systemui/keyguard/domain/interactor/DozeInteractor;

    new-instance v1, Lcom/android/systemui/doze/AODParameters;

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p19

    invoke-direct {v1, p2, p3, v4}, Lcom/android/systemui/doze/AODParameters;-><init>(Lcom/android/systemui/util/SettingsHelper;Ldagger/Lazy;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;)V

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mAODParameters:Lcom/android/systemui/doze/AODParameters;

    return-void
.end method


# virtual methods
.method public final canControlUnlockedScreenOff()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getAlwaysOn()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getDisplayNeedsBlanking()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 7

    const-string p2, "getAlwaysOn(): "

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getAlwaysOn()Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Z)V

    const-string p2, "getDisplayStateSupported(): "

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mResources:Landroid/content/res/Resources;

    const v0, 0x7f050058

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    const-string v0, "doze.display.supported"

    invoke-static {v0, p2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Z)V

    const-string p2, "getPulseDuration(): "

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "doze.pulse.duration.in"

    const v0, 0x7f0b004b

    invoke-virtual {p0, v0, p2}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getInt$1(ILjava/lang/String;)I

    move-result v1

    const-string v2, "doze.pulse.duration.visible"

    const v3, 0x7f0b004d

    invoke-virtual {p0, v3, v2}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getInt$1(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v4, v1

    const-string v1, "doze.pulse.duration.out"

    const v5, 0x7f0b004c

    invoke-virtual {p0, v5, v1}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getInt$1(ILjava/lang/String;)I

    move-result v6

    add-int/2addr v6, v4

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(I)V

    const-string v4, "getPulseInDuration(): "

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getInt$1(ILjava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(I)V

    const-string p2, "getPulseInVisibleDuration(): "

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, v3, v2}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getInt$1(ILjava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(I)V

    const-string p2, "getPulseOutDuration(): "

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, v5, v1}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getInt$1(ILjava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(I)V

    const-string p2, "getPulseOnSigMotion(): "

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mResources:Landroid/content/res/Resources;

    const v0, 0x7f05005c

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    const-string v0, "doze.pulse.sigmotion"

    invoke-static {v0, p2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Z)V

    const-string p2, "getVibrateOnSigMotion(): "

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "doze.vibrate.sigmotion"

    const/4 v0, 0x0

    invoke-static {p2, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Z)V

    const-string p2, "getVibrateOnPickup(): "

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "doze.vibrate.pickup"

    invoke-static {p2, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Z)V

    const-string p2, "getProxCheckBeforePulse(): "

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mResources:Landroid/content/res/Resources;

    const v0, 0x7f05005b

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    const-string v0, "doze.pulse.proxcheck"

    invoke-static {v0, p2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Z)V

    const-string p2, "getPickupVibrationThreshold(): "

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "doze.pickup.vibration.threshold"

    const v0, 0x7f0b004a

    invoke-virtual {p0, v0, p2}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getInt$1(ILjava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(I)V

    const-string p2, "getSelectivelyRegisterSensorsUsingProx(): "

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mResources:Landroid/content/res/Resources;

    const v0, 0x7f05005d

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    const-string v0, "doze.prox.selectively_register"

    invoke-static {v0, p2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Z)V

    const-string p2, "isQuickPickupEnabled(): "

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mIsQuickPickupEnabled:Z

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Z)V

    return-void
.end method

.method public final getAlwaysOn()Z
    .locals 3

    const/4 v0, 0x0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mAODParameters:Lcom/android/systemui/doze/AODParameters;

    if-eqz p0, :cond_3

    iget-object v1, p0, Lcom/android/systemui/doze/AODParameters;->mPluginAODManagerLazy:Ldagger/Lazy;

    invoke-interface {v1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/doze/PluginAODManager;

    iget-object v2, v1, Lcom/android/systemui/doze/PluginAODManager;->mAODPlugin:Lcom/android/systemui/plugins/aod/PluginAOD;

    if-eqz v2, :cond_0

    invoke-interface {v2}, Lcom/android/systemui/plugins/aod/PluginAOD;->needDozeAlwaysOn()Z

    move-result v1

    goto :goto_0

    :cond_0
    iget-object v1, v1, Lcom/android/systemui/doze/PluginAODManager;->mClockPackPlugin:Lcom/android/systemui/plugins/clockpack/PluginClockPack;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/android/systemui/plugins/clockpack/PluginClockPack;->needDozeAlwaysOn()Z

    move-result v1

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_0
    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    iget-boolean v1, p0, Lcom/android/systemui/doze/AODParameters;->mDozeAlwaysOn:Z

    :goto_1
    if-eqz v1, :cond_3

    const/4 v0, 0x1

    :cond_3
    return v0
.end method

.method public final getDisplayNeedsBlanking()Z
    .locals 1

    sget-boolean v0, Lcom/android/systemui/statusbar/phone/DozeParameters;->FORCE_BLANKING:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/systemui/statusbar/phone/DozeParameters;->FORCE_NO_BLANKING:Z

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mResources:Landroid/content/res/Resources;

    const v0, 0x1110144

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

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

.method public final getInt$1(ILjava/lang/String;)I
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mResources:Landroid/content/res/Resources;

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    invoke-static {p2, p0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p0

    const/4 p1, 0x0

    const p2, 0xea60

    invoke-static {p0, p1, p2}, Landroid/util/MathUtils;->constrain(III)I

    move-result p0

    return p0
.end method

.method public final onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->updateControlScreenOff()V

    return-void
.end method

.method public final onFoldToAodAnimationChanged()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->updateControlScreenOff()V

    return-void
.end method

.method public final onStatePostChange()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->updateControlScreenOff()V

    return-void
.end method

.method public final onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mAmbientDisplayConfiguration:Landroid/hardware/display/AmbientDisplayConfiguration;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast v0, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/hardware/display/AmbientDisplayConfiguration;->alwaysOnEnabled(I)Z

    const-string p2, "doze_always_on"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->updateControlScreenOff()V

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getAlwaysOn()Z

    move-result p1

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mScreenOffAnimationController:Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;

    iget-object p2, p2, Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;->animations:Ljava/util/List;

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/ScreenOffAnimation;

    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/phone/ScreenOffAnimation;->onAlwaysOnChanged(Z)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getAlwaysOn()Z

    move-result p1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mDozeInteractor:Lcom/android/systemui/keyguard/domain/interactor/DozeInteractor;

    iget-object p0, p0, Lcom/android/systemui/keyguard/domain/interactor/DozeInteractor;->keyguardRepository:Lcom/android/systemui/keyguard/data/repository/KeyguardRepository;

    check-cast p0, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;->_isAodAvailable:Lkotlinx/coroutines/flow/StateFlowImpl;

    const/4 p2, 0x0

    invoke-virtual {p0, p2, p1}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method

.method public final setControlScreenOffAnimation(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mControlScreenOffAnimation:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mControlScreenOffAnimation:Z

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mPowerManager:Landroid/os/PowerManager;

    xor-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Landroid/os/PowerManager;->setDozeAfterScreenOff(Z)V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "setDozeAfterScreenOff "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DozeParameters"

    invoke-static {p1, p0}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final shouldAnimateDozingChange()Z
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mScreenOffAnimationController:Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;->animations:Ljava/util/List;

    instance-of v0, p0, Ljava/util/Collection;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/ScreenOffAnimation;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/ScreenOffAnimation;->shouldAnimateDozingChange()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1
.end method

.method public final shouldControlScreenOff()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mControlScreenOffAnimation:Z

    return p0
.end method

.method public final shouldShowLightRevealScrim()Z
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mScreenOffAnimationController:Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;->animations:Ljava/util/List;

    instance-of v0, p0, Ljava/util/Collection;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/ScreenOffAnimation;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/ScreenOffAnimation;->shouldPlayAnimation()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_2
    :goto_0
    return v1
.end method

.method public final updateControlScreenOff()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getDisplayNeedsBlanking()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getAlwaysOn()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mKeyguardVisible:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mUnlockedScreenOffAnimationController:Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;->shouldPlayUnlockedScreenOffAnimation()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->setControlScreenOffAnimation(Z)V

    :cond_2
    return-void
.end method
