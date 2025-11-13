.class public final Lcom/android/systemui/qs/tiles/SRotationLockTile;
.super Lcom/android/systemui/qs/tileimpl/SQSTileImpl;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;
.implements Lcom/android/systemui/util/QsResetSettingsManager$DemoResetSettingsApplier;


# instance fields
.field public final mAutoToLandscape:Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;

.field public final mAutoToPortrait:Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;

.field public final mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

.field public final mCallback:Lcom/android/systemui/qs/tiles/SRotationLockTile$4;

.field public final mController:Lcom/android/systemui/statusbar/policy/RotationLockController;

.field public final mDetailAdapter:Lcom/android/systemui/qs/tiles/detail/RotationLockDetailAdapter;

.field public final mLandscapeToAuto:Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;

.field public final mPluginLockMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

.field public final mPortraitToAuto:Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;

.field public final mPrivacyManager:Landroid/hardware/SensorPrivacyManager;

.field public final mResources:Landroid/content/res/Resources;

.field public final mRotationLockTilePrefEditor:Landroid/content/SharedPreferences$Editor;

.field public mRotationLocked:Z

.field public final mSensorPrivacyChangedListener:Lcom/android/systemui/qs/tiles/SRotationLockTile$$ExternalSyntheticLambda0;

.field public final mSetting:Lcom/android/systemui/qs/tiles/SRotationLockTile$2;

.field private mSettingsCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

.field private final mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field public final mStateBeforeClick:Lcom/android/systemui/plugins/qs/QSTile$BooleanState;


# direct methods
.method public static -$$Nest$mgetBackupData(Lcom/android/systemui/qs/tiles/SRotationLockTile;Z)Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TAG::autorotate_rotationlock::"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/SRotationLockTile;->mController:Lcom/android/systemui/statusbar/policy/RotationLockController;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/policy/RotationLockController;->isRotationLocked()Z

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/SRotationLockTile;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v3}, Lcom/android/systemui/util/SettingsHelper;->isHomeScreenRotationAllowed()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/SRotationLockTile;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v4}, Lcom/android/systemui/util/SettingsHelper;->isLockScreenRotationAllowed()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/SRotationLockTile;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper;->isCallScreenRotationAllowed()Z

    move-result p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, 0x0

    move-object p0, p1

    move-object v2, p0

    move-object v3, v2

    :goto_0
    const-string v1, "::TAG::autorotate_homescreen::"

    const-string v4, "::TAG::autorotate_lockscreen::"

    invoke-static {v0, p1, v1, v2, v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "::TAG::autorotate_voicecallscreen::"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "getBackupData: "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SRotationLockTile"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static -$$Nest$msetRestoreData(Lcom/android/systemui/qs/tiles/SRotationLockTile;Ljava/lang/String;)V
    .locals 7

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "::"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "restoreData: "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "SRotationLockTile"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    array-length p1, v0

    const/4 v2, 0x1

    if-le p1, v2, :cond_7

    const/4 p1, 0x0

    aget-object v3, v0, p1

    const-string v4, "autorotate_rotationlock"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string/jumbo v4, "true"

    if-eqz v3, :cond_1

    aget-object v3, v0, v2

    if-nez v3, :cond_0

    const-string/jumbo p0, "restoredRotationLock is null"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v5, "SRotationLockTile #setRestoreData"

    iget-object v6, p0, Lcom/android/systemui/qs/tiles/SRotationLockTile;->mController:Lcom/android/systemui/statusbar/policy/RotationLockController;

    invoke-interface {v6, v5, v3}, Lcom/android/systemui/statusbar/policy/RotationLockController;->setRotationLocked(Ljava/lang/String;Z)V

    :cond_1
    aget-object v3, v0, p1

    const-string v5, "autorotate_homescreen"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    aget-object v3, v0, v2

    if-nez v3, :cond_2

    const-string/jumbo p0, "restoredHomeScreenSetting is null"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/SRotationLockTile;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v5, v3}, Lcom/android/systemui/util/SettingsHelper;->setHomeScreenRotationAllowed(Z)V

    :cond_3
    aget-object v3, v0, p1

    const-string v5, "autorotate_lockscreen"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    aget-object v3, v0, v2

    if-nez v3, :cond_4

    const-string/jumbo p0, "restoredLockScreenSetting is null"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/SRotationLockTile;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v5, v3}, Lcom/android/systemui/util/SettingsHelper;->setLockScreenRotationAllowed(Z)V

    :cond_5
    aget-object p1, v0, p1

    const-string v3, "autorotate_voicecallscreen"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    aget-object p1, v0, v2

    if-nez p1, :cond_6

    const-string/jumbo p0, "restoredCallScreenRotateSetting is null"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_6
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/SRotationLockTile;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/util/SettingsHelper;->setCallScreenRotationAllowed(Z)V

    :cond_7
    :goto_0
    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/qs/QSHost;Lcom/android/systemui/qs/QsEventLogger;Landroid/os/Looper;Landroid/os/Handler;Landroid/content/res/Resources;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/internal/logging/MetricsLogger;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/qs/logging/QSLogger;Lcom/android/systemui/util/SettingsHelper;Lcom/android/systemui/statusbar/policy/RotationLockController;Landroid/hardware/SensorPrivacyManager;Lcom/android/systemui/statusbar/policy/BatteryController;Lcom/android/systemui/util/settings/SecureSettings;Lcom/android/systemui/pluginlock/PluginLockMediator;)V
    .locals 14

    move-object v10, p0

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p14

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    move-object/from16 v9, p10

    invoke-direct/range {v0 .. v9}, Lcom/android/systemui/qs/tileimpl/SQSTileImpl;-><init>(Lcom/android/systemui/qs/QSHost;Lcom/android/systemui/qs/QsEventLogger;Landroid/os/Looper;Landroid/os/Handler;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/internal/logging/MetricsLogger;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/qs/logging/QSLogger;)V

    const v0, 0x10805aa

    invoke-static {v0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    new-instance v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;

    const v1, 0x7f080ef7

    const v2, 0x7f080f0c

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;-><init>(II)V

    iput-object v0, v10, Lcom/android/systemui/qs/tiles/SRotationLockTile;->mAutoToPortrait:Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;

    new-instance v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;

    const v1, 0x7f080f23

    const v2, 0x7f080f38

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;-><init>(II)V

    iput-object v0, v10, Lcom/android/systemui/qs/tiles/SRotationLockTile;->mPortraitToAuto:Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;

    new-instance v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;

    const v1, 0x7f080ee1

    const v2, 0x7f080ef6

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;-><init>(II)V

    iput-object v0, v10, Lcom/android/systemui/qs/tiles/SRotationLockTile;->mAutoToLandscape:Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;

    new-instance v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;

    const v1, 0x7f080f0d

    const v2, 0x7f080f22

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;-><init>(II)V

    iput-object v0, v10, Lcom/android/systemui/qs/tiles/SRotationLockTile;->mLandscapeToAuto:Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;

    new-instance v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-direct {v0}, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;-><init>()V

    iput-object v0, v10, Lcom/android/systemui/qs/tiles/SRotationLockTile;->mStateBeforeClick:Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/net/Uri;

    const-string v1, "accelerometer_rotation"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lcom/android/systemui/qs/tiles/SRotationLockTile$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/tiles/SRotationLockTile$1;-><init>(Lcom/android/systemui/qs/tiles/SRotationLockTile;)V

    iput-object v1, v10, Lcom/android/systemui/qs/tiles/SRotationLockTile;->mSettingsCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    new-instance v1, Lcom/android/systemui/qs/tiles/SRotationLockTile$4;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/tiles/SRotationLockTile$4;-><init>(Lcom/android/systemui/qs/tiles/SRotationLockTile;)V

    new-instance v3, Lcom/android/systemui/qs/tiles/SRotationLockTile$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/android/systemui/qs/tiles/SRotationLockTile$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/tiles/SRotationLockTile;)V

    iput-object v3, v10, Lcom/android/systemui/qs/tiles/SRotationLockTile;->mSensorPrivacyChangedListener:Lcom/android/systemui/qs/tiles/SRotationLockTile$$ExternalSyntheticLambda0;

    iput-object v12, v10, Lcom/android/systemui/qs/tiles/SRotationLockTile;->mController:Lcom/android/systemui/statusbar/policy/RotationLockController;

    invoke-virtual/range {p12 .. p12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v10, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mLifecycle:Landroidx/lifecycle/LifecycleRegistry;

    invoke-interface {v12, v3, v1}, Lcom/android/systemui/statusbar/policy/CallbackController;->observe(Landroidx/lifecycle/Lifecycle;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v1, p13

    iput-object v1, v10, Lcom/android/systemui/qs/tiles/SRotationLockTile;->mPrivacyManager:Landroid/hardware/SensorPrivacyManager;

    iput-object v13, v10, Lcom/android/systemui/qs/tiles/SRotationLockTile;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    iput-object v11, v10, Lcom/android/systemui/qs/tiles/SRotationLockTile;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    move-object/from16 v1, p5

    iput-object v1, v10, Lcom/android/systemui/qs/tiles/SRotationLockTile;->mResources:Landroid/content/res/Resources;

    move-object/from16 v1, p16

    iput-object v1, v10, Lcom/android/systemui/qs/tiles/SRotationLockTile;->mPluginLockMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    invoke-interface {p1}, Lcom/android/systemui/qs/QSHost;->getUserContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getUserId()I

    move-result v3

    new-instance v4, Lcom/android/systemui/qs/tiles/SRotationLockTile$2;

    iget-object v5, v10, Lcom/android/systemui/qs/tileimpl/SQSTileImpl;->mHandler:Lcom/android/systemui/qs/tileimpl/SQSTileImpl$SHandler;

    const-string v6, "camera_autorotate"

    move-object p1, v4

    move-object/from16 p2, p0

    move-object/from16 p3, p15

    move-object/from16 p4, v5

    move-object/from16 p5, v6

    move/from16 p6, v3

    invoke-direct/range {p1 .. p6}, Lcom/android/systemui/qs/tiles/SRotationLockTile$2;-><init>(Lcom/android/systemui/qs/tiles/SRotationLockTile;Lcom/android/systemui/util/settings/SettingsProxy;Landroid/os/Handler;Ljava/lang/String;I)V

    iput-object v4, v10, Lcom/android/systemui/qs/tiles/SRotationLockTile;->mSetting:Lcom/android/systemui/qs/tiles/SRotationLockTile$2;

    iget-object v3, v10, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mLifecycle:Landroidx/lifecycle/LifecycleRegistry;

    invoke-interface {v13, v3, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->observe(Landroidx/lifecycle/Lifecycle;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v10, Lcom/android/systemui/qs/tiles/SRotationLockTile;->mSettingsCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    invoke-virtual {v11, v3, v0}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    iget-object v0, v10, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    const-string v3, "quick_pref"

    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, v10, Lcom/android/systemui/qs/tiles/SRotationLockTile;->mRotationLockTilePrefEditor:Landroid/content/SharedPreferences$Editor;

    sget-boolean v2, Lcom/android/systemui/QpRune;->QUICK_TILE_ROTATION_MANUAL:Z

    if-eqz v2, :cond_0

    const-string v2, "QPDS1009"

    invoke-virtual/range {p11 .. p11}, Lcom/android/systemui/util/SettingsHelper;->isNavigationBarRotateSuggestionEnabled()Z

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    :cond_0
    const-string v2, "QPDS1010"

    invoke-virtual/range {p11 .. p11}, Lcom/android/systemui/util/SettingsHelper;->isHomeScreenRotationAllowed()Z

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v2, "QPDS1011"

    invoke-virtual/range {p11 .. p11}, Lcom/android/systemui/util/SettingsHelper;->isLockScreenRotationAllowed()Z

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v2, "QPDS1012"

    invoke-virtual/range {p11 .. p11}, Lcom/android/systemui/util/SettingsHelper;->isCallScreenRotationAllowed()Z

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_1
    new-instance v0, Lcom/android/systemui/qs/tiles/detail/RotationLockDetailAdapter;

    iget-object v2, v10, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    iget-object v3, v10, Lcom/android/systemui/qs/tileimpl/SQSTileImpl;->mHandler:Lcom/android/systemui/qs/tileimpl/SQSTileImpl$SHandler;

    iget-object v4, v10, Lcom/android/systemui/qs/tiles/SRotationLockTile;->mRotationLockTilePrefEditor:Landroid/content/SharedPreferences$Editor;

    move-object p1, v0

    move-object/from16 p2, v2

    move-object/from16 p3, v3

    move-object/from16 p4, p11

    move-object/from16 p5, p12

    move-object/from16 p6, p16

    move-object/from16 p7, v4

    move-object/from16 p8, p0

    invoke-direct/range {p1 .. p8}, Lcom/android/systemui/qs/tiles/detail/RotationLockDetailAdapter;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/systemui/util/SettingsHelper;Lcom/android/systemui/statusbar/policy/RotationLockController;Lcom/android/systemui/pluginlock/PluginLockMediator;Landroid/content/SharedPreferences$Editor;Lcom/android/systemui/qs/tiles/SRotationLockTile;)V

    iput-object v0, v10, Lcom/android/systemui/qs/tiles/SRotationLockTile;->mDetailAdapter:Lcom/android/systemui/qs/tiles/detail/RotationLockDetailAdapter;

    sget-boolean v0, Lcom/android/systemui/QpRune;->QUICK_TABLET:Z

    if-nez v0, :cond_2

    new-instance v0, Lcom/android/systemui/qs/tiles/SRotationLockTile$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/SRotationLockTile$3;-><init>(Lcom/android/systemui/qs/tiles/SRotationLockTile;)V

    sget-object v1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v2, Lcom/android/systemui/qs/QSBackupRestoreManager;

    invoke-virtual {v1, v2}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/QSBackupRestoreManager;

    const-string v2, "AutoRotate"

    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/qs/QSBackupRestoreManager;->addCallback(Ljava/lang/String;Lcom/android/systemui/qs/QSBackupRestoreManager$Callback;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public final applyDemoResetSetting()V
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "accelerometer_rotation"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public final destroy()V
    .locals 1

    invoke-super {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->destroy()V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SRotationLockTile;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/SRotationLockTile;->mSettingsCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    invoke-virtual {v0, p0}, Lcom/android/systemui/util/SettingsHelper;->unregisterCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;)V

    return-void
.end method

.method public final getDetailAdapter()Lcom/android/systemui/plugins/qs/DetailAdapter;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/SRotationLockTile;->mDetailAdapter:Lcom/android/systemui/qs/tiles/detail/RotationLockDetailAdapter;

    return-object p0
.end method

.method public final getLongClickIntent()Landroid/content/Intent;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0x7b

    return p0
.end method

.method public final getSearchWords()Ljava/util/ArrayList;
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    const v2, 0x7f1310de

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\\n"

    const-string v3, " "

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    const v2, 0x7f1310dd

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    const v1, 0x7f1310dc

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public final getState()Lcom/android/systemui/plugins/qs/QSTile$State;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast p0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    return-object p0
.end method

.method public final getTileLabel()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast p0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-object p0, p0, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public final handleClick(Lcom/android/systemui/animation/Expandable;)V
    .locals 3

    const-string p1, " handleClick is called:++++ "

    const-string v0, "SRotationLockTile"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v1, Lcom/android/systemui/knox/KnoxStateMonitor;

    invoke-virtual {p1, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/knox/KnoxStateMonitor;

    check-cast p1, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    invoke-virtual {p1}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->isRotationLockTileBlocked()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-super {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->showItPolicyToast()V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget p1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    if-nez p1, :cond_1

    return-void

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "handleClick "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget v1, v1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    invoke-static {v1, v0, p1}, Landroidx/recyclerview/widget/RecyclerView$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)V

    iget-boolean p1, p0, Lcom/android/systemui/qs/tiles/SRotationLockTile;->mRotationLocked:Z

    xor-int/lit8 v0, p1, 0x1

    const-string v1, "RotationLockTile#handleClick"

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/SRotationLockTile;->mController:Lcom/android/systemui/statusbar/policy/RotationLockController;

    invoke-interface {v2, v1, v0}, Lcom/android/systemui/statusbar/policy/RotationLockController;->setRotationLocked(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SRotationLockTile;->mStateBeforeClick:Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-virtual {v0, v1}, Lcom/android/systemui/plugins/qs/QSTile$AdapterState;->copyTo(Lcom/android/systemui/plugins/qs/QSTile$State;)Z

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method public final handleDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleDestroy()V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SRotationLockTile;->mSetting:Lcom/android/systemui/qs/tiles/SRotationLockTile$2;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/SettingObserver;->setListening(Z)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SRotationLockTile;->mPrivacyManager:Landroid/hardware/SensorPrivacyManager;

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/SRotationLockTile;->mSensorPrivacyChangedListener:Lcom/android/systemui/qs/tiles/SRotationLockTile$$ExternalSyntheticLambda0;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p0}, Landroid/hardware/SensorPrivacyManager;->removeSensorPrivacyListener(ILandroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener;)V

    return-void
.end method

.method public final handleInitialize()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SRotationLockTile;->mPrivacyManager:Landroid/hardware/SensorPrivacyManager;

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/SRotationLockTile;->mSensorPrivacyChangedListener:Lcom/android/systemui/qs/tiles/SRotationLockTile$$ExternalSyntheticLambda0;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p0}, Landroid/hardware/SensorPrivacyManager;->addSensorPrivacyListener(ILandroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener;)V

    return-void
.end method

.method public final handleSecondaryClick(Lcom/android/systemui/animation/Expandable;)V
    .locals 1

    const-string p1, "SRotationLockTile"

    const-string v0, " handleSecondaryClick is called:++++ "

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v0, Lcom/android/systemui/knox/KnoxStateMonitor;

    invoke-virtual {p1, v0}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/knox/KnoxStateMonitor;

    check-cast p1, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    invoke-virtual {p1}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->isRotationLockTileBlocked()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-super {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->showItPolicyToast()V

    return-void

    :cond_0
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tileimpl/SQSTileImpl;->showDetail(Z)V

    return-void
.end method

.method public final handleSetListening(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleSetListening(Z)V

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/SRotationLockTile;->mSetting:Lcom/android/systemui/qs/tiles/SRotationLockTile$2;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/SettingObserver;->setListening(Z)V

    return-void
.end method

.method public final handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 5

    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-object p2, p0, Lcom/android/systemui/qs/tiles/SRotationLockTile;->mController:Lcom/android/systemui/statusbar/policy/RotationLockController;

    invoke-interface {p2}, Lcom/android/systemui/statusbar/policy/RotationLockController;->isRotationLocked()Z

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SRotationLockTile;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    check-cast v1, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mPowerSave:Z

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/SRotationLockTile;->mPrivacyManager:Landroid/hardware/SensorPrivacyManager;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/hardware/SensorPrivacyManager;->isSensorPrivacyEnabled(I)Z

    move-result v2

    if-nez v1, :cond_0

    if-nez v2, :cond_0

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/PackageManager;->getRotationResolverPackageName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v4, "android.permission.CAMERA"

    invoke-virtual {v1, v4, v2}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {p2}, Lcom/android/systemui/statusbar/policy/RotationLockController;->isCameraRotationEnabled()Z

    move-result v1

    :cond_0
    xor-int/lit8 v1, v0, 0x1

    iput-boolean v1, p1, Lcom/android/systemui/plugins/qs/QSTile$AdapterState;->value:Z

    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->dualTarget:Z

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/SRotationLockTile;->mResources:Landroid/content/res/Resources;

    invoke-interface {p2}, Lcom/android/systemui/statusbar/policy/RotationLockController;->getRotationLockOrientation()I

    move-result p2

    const/4 v4, 0x0

    if-nez p2, :cond_1

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    iget p2, p2, Landroid/content/res/Configuration;->orientation:I

    if-eq p2, v3, :cond_2

    :goto_0
    move v4, v1

    goto :goto_1

    :cond_1
    if-eq p2, v3, :cond_2

    goto :goto_0

    :cond_2
    :goto_1
    if-eqz v0, :cond_5

    if-eqz v4, :cond_3

    const p2, 0x7f1310dd

    goto :goto_2

    :cond_3
    const p2, 0x7f1310dc

    :goto_2
    if-eqz v4, :cond_4

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/SRotationLockTile;->mAutoToPortrait:Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;

    goto :goto_3

    :cond_4
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/SRotationLockTile;->mAutoToLandscape:Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;

    :goto_3
    iput-object v2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    goto :goto_5

    :cond_5
    if-eqz v4, :cond_6

    iget-object p2, p0, Lcom/android/systemui/qs/tiles/SRotationLockTile;->mPortraitToAuto:Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;

    goto :goto_4

    :cond_6
    iget-object p2, p0, Lcom/android/systemui/qs/tiles/SRotationLockTile;->mLandscapeToAuto:Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;

    :goto_4
    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    const p2, 0x7f1310de

    :goto_5
    iget-object v2, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    iget-boolean v2, p1, Lcom/android/systemui/plugins/qs/QSTile$AdapterState;->value:Z

    if-eqz v2, :cond_7

    goto :goto_6

    :cond_7
    move v3, v1

    :goto_6
    iput v3, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->contentDescription:Ljava/lang/CharSequence;

    iput-boolean v0, p0, Lcom/android/systemui/qs/tiles/SRotationLockTile;->mRotationLocked:Z

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, " mRotationLocked: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean p0, p0, Lcom/android/systemui/qs/tiles/SRotationLockTile;->mRotationLocked:Z

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, " handleUpdateState: "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p1, Lcom/android/systemui/plugins/qs/QSTile$AdapterState;->value:Z

    const-string p1, " orientation = "

    const-string v0, "SRotationLockTile"

    invoke-static {p2, p0, p1, v4, v0}, Lcom/android/keyguard/KeyguardCarrierViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

.method public final handleUserSwitch(I)V
    .locals 0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleRefreshState(Ljava/lang/Object;)V

    return-void
.end method

.method public final newTileState()Lcom/android/systemui/plugins/qs/QSTile$State;
    .locals 0

    new-instance p0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-direct {p0}, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;-><init>()V

    return-object p0
.end method

.method public final onPowerSaveChanged(Z)V
    .locals 0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method public final sendTileStatusLog()V
    .locals 6

    invoke-super {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->getTileMapKey()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/android/systemui/qs/QSTileHost$TilesMap;->SID_TILE_STATE:I

    iget-object v2, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mTilesMap:Lcom/android/systemui/qs/QSTileHost$TilesMap;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v0}, Lcom/android/systemui/qs/QSTileHost$TilesMap;->getId(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/SRotationLockTile;->mController:Lcom/android/systemui/statusbar/policy/RotationLockController;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/policy/RotationLockController;->getRotationLockOrientation()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-eq v1, v5, :cond_1

    :goto_0
    move v4, v3

    goto :goto_1

    :cond_0
    if-eq v2, v5, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SRotationLockTile;->mRotationLockTilePrefEditor:Landroid/content/SharedPreferences$Editor;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->getTileMapValue()I

    move-result v2

    if-ne v2, v3, :cond_2

    const-string v2, "On"

    goto :goto_2

    :cond_2
    if-eqz v4, :cond_3

    const-string v2, "portrait"

    goto :goto_2

    :cond_3
    const-string v2, "landscape"

    :goto_2
    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/SRotationLockTile;->mRotationLockTilePrefEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_4
    return-void
.end method
