.class public final Lcom/android/systemui/statusbar/KeyguardShortcutManager;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;
.implements Lcom/android/systemui/Dumpable;


# static fields
.field public static final Companion:Lcom/android/systemui/statusbar/KeyguardShortcutManager$Companion;

.field public static final EMPTY_CONFIG:Lcom/android/systemui/statusbar/KeyguardShortcutManager$Companion$EMPTY_CONFIG$1;

.field public static final INSECURE_CAMERA_INTENT:Landroid/content/Intent;

.field public static final PHONE_INTENT:Landroid/content/Intent;

.field public static final SAMSUNG_EXPERT_RAW_CAMERA_INTENT:Landroid/content/Intent;

.field public static final SAMSUNG_LIVE_ICON_PACKAGES:[Ljava/lang/String;

.field public static final SECURE_CAMERA_INTENT:Landroid/content/Intent;


# instance fields
.field public final context:Landroid/content/Context;

.field public final dumpManager:Lcom/android/systemui/dump/DumpManager;

.field public final executor:Ljava/util/concurrent/Executor;

.field public final handler:Landroid/os/Handler;

.field public final intentReceiver:Lcom/android/systemui/statusbar/KeyguardShortcutManager$intentReceiver$1;

.field public isLockTaskMode:Z

.field public isNowBarVisible:Z

.field public isPermDisabled:Z

.field public isReduceTransparencyEnabled:Z

.field public isShortcutVisibleForMDM:Z

.field public final keyguardBottomAreaShortcutTask:[Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardQuickAffordanceConfig;

.field public final keyguardShortcutDialerUpdateManager:Lcom/android/systemui/statusbar/KeyguardShortcutDialerUpdateManager;

.field public final keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field public final keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public final packageManager:Landroid/content/pm/PackageManager;

.field public final selectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

.field private final settingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field public final shortcutCallbacks:Ljava/util/ArrayList;

.field public shortcutIconSize:I

.field public final shortcutsData:[Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;

.field public final stringBuilder:Ljava/lang/StringBuilder;

.field public final taskConfigs:Ljava/util/Set;

.field public final themeShortcutHashMap:Ljava/util/HashMap;

.field public final updateShortcutsRunnable:Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateShortcutsRunnable$1;

.field public final userSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

.field public final userTracker:Lcom/android/systemui/settings/UserTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/KeyguardShortcutManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->Companion:Lcom/android/systemui/statusbar/KeyguardShortcutManager$Companion;

    const-string v0, "com.sec.android.app.clockpackage"

    const-string v1, "com.samsung.android.calendar"

    const-string v2, "com.android.calendar"

    filled-new-array {v1, v2, v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->SAMSUNG_LIVE_ICON_PACKAGES:[Ljava/lang/String;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v3, "com.sec.android.app.camera"

    const-string v4, "com.sec.android.app.camera.Camera"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->SECURE_CAMERA_INTENT:Landroid/content/Intent;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->INSECURE_CAMERA_INTENT:Landroid/content/Intent;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.samsung.android.app.galaxyraw"

    const-string v2, "com.samsung.android.app.galaxyraw.GalaxyRaw"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->SAMSUNG_EXPERT_RAW_CAMERA_INTENT:Landroid/content/Intent;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DIAL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.samsung.android.dialer"

    const-string v2, "com.samsung.android.dialer.DialtactsActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->PHONE_INTENT:Landroid/content/Intent;

    new-instance v0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$Companion$EMPTY_CONFIG$1;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/KeyguardShortcutManager$Companion$EMPTY_CONFIG$1;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->EMPTY_CONFIG:Lcom/android/systemui/statusbar/KeyguardShortcutManager$Companion$EMPTY_CONFIG$1;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/broadcast/BroadcastDispatcher;Ljava/util/concurrent/Executor;Landroid/os/Handler;Lcom/android/systemui/settings/UserTracker;Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/util/SettingsHelper;Landroid/content/pm/PackageManager;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Ljava/util/Set;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/qs/QSTileHost;Lcom/android/systemui/statusbar/policy/UserSwitcherController;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/systemui/broadcast/BroadcastDispatcher;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/Handler;",
            "Lcom/android/systemui/settings/UserTracker;",
            "Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;",
            "Lcom/android/keyguard/KeyguardUpdateMonitor;",
            "Lcom/android/systemui/util/SettingsHelper;",
            "Landroid/content/pm/PackageManager;",
            "Lcom/android/systemui/statusbar/policy/KeyguardStateController;",
            "Ljava/util/Set<",
            "Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardQuickAffordanceConfig;",
            ">;",
            "Lcom/android/systemui/dump/DumpManager;",
            "Lcom/android/systemui/qs/QSTileHost;",
            "Lcom/android/systemui/statusbar/policy/UserSwitcherController;",
            ")V"
        }
    .end annotation

    move-object v1, p0

    move-object v0, p1

    move-object/from16 v2, p8

    move-object/from16 v3, p13

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    iput-object v0, v1, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->context:Landroid/content/Context;

    move-object v4, p3

    iput-object v4, v1, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->executor:Ljava/util/concurrent/Executor;

    move-object v4, p4

    iput-object v4, v1, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->handler:Landroid/os/Handler;

    move-object v4, p5

    iput-object v4, v1, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->userTracker:Lcom/android/systemui/settings/UserTracker;

    move-object/from16 v4, p6

    iput-object v4, v1, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->selectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    move-object/from16 v4, p7

    iput-object v4, v1, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iput-object v2, v1, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    move-object/from16 v4, p9

    iput-object v4, v1, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->packageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v4, p10

    iput-object v4, v1, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    move-object/from16 v4, p11

    iput-object v4, v1, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->taskConfigs:Ljava/util/Set;

    move-object/from16 v4, p12

    iput-object v4, v1, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->dumpManager:Lcom/android/systemui/dump/DumpManager;

    move-object/from16 v4, p14

    iput-object v4, v1, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->userSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    sget-object v4, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->EMPTY_CONFIG:Lcom/android/systemui/statusbar/KeyguardShortcutManager$Companion$EMPTY_CONFIG$1;

    filled-new-array {v4, v4}, [Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardQuickAffordanceConfig;

    move-result-object v4

    iput-object v4, v1, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->keyguardBottomAreaShortcutTask:[Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardQuickAffordanceConfig;

    new-instance v4, Lcom/android/systemui/statusbar/KeyguardShortcutDialerUpdateManager;

    invoke-direct {v4, p1, v2}, Lcom/android/systemui/statusbar/KeyguardShortcutDialerUpdateManager;-><init>(Landroid/content/Context;Lcom/android/systemui/util/SettingsHelper;)V

    iput-object v4, v1, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->keyguardShortcutDialerUpdateManager:Lcom/android/systemui/statusbar/KeyguardShortcutDialerUpdateManager;

    new-instance v4, Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;

    invoke-direct {v4}, Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;-><init>()V

    new-instance v5, Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;

    invoke-direct {v5}, Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;-><init>()V

    filled-new-array {v4, v5}, [Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;

    move-result-object v4

    iput-object v4, v1, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->shortcutsData:[Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v4, v1, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->stringBuilder:Ljava/lang/StringBuilder;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v1, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->shortcutCallbacks:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateShortcutsRunnable$1;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateShortcutsRunnable$1;-><init>(Lcom/android/systemui/statusbar/KeyguardShortcutManager;)V

    iput-object v4, v1, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->updateShortcutsRunnable:Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateShortcutsRunnable$1;

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, v1, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->themeShortcutHashMap:Ljava/util/HashMap;

    invoke-virtual/range {p8 .. p8}, Lcom/android/systemui/util/SettingsHelper;->isReduceTransparencyEnabled()Z

    move-result v2

    iput-boolean v2, v1, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->isReduceTransparencyEnabled:Z

    new-instance v2, Lcom/android/systemui/statusbar/KeyguardShortcutManager$intentReceiver$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/KeyguardShortcutManager$intentReceiver$1;-><init>(Lcom/android/systemui/statusbar/KeyguardShortcutManager;)V

    iput-object v2, v1, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->intentReceiver:Lcom/android/systemui/statusbar/KeyguardShortcutManager$intentReceiver$1;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    sget-object v4, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const-string v4, "KeyguardShortcutManager"

    if-eqz v2, :cond_2

    new-instance v2, Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardSecTilesQuickAffordanceConfig;

    invoke-direct {v2, p1, v3}, Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardSecTilesQuickAffordanceConfig;-><init>(Landroid/content/Context;Lcom/android/systemui/qs/QSTileHost;)V

    new-instance v5, Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardSecTilesQuickAffordanceConfig;

    invoke-direct {v5, p1, v3}, Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardSecTilesQuickAffordanceConfig;-><init>(Landroid/content/Context;Lcom/android/systemui/qs/QSTileHost;)V

    filled-new-array {v2, v5}, [Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardQuickAffordanceConfig;

    move-result-object v2

    iput-object v2, v1, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->keyguardBottomAreaShortcutTask:[Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardQuickAffordanceConfig;

    const-string/jumbo v2, "themeAppIconDrawableArray error :"

    const-string/jumbo v3, "themeAppIconPackageArray error :"

    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f030082

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v7, 0x7f030081

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    array-length v7, v6

    array-length v8, v0

    if-ne v7, v8, :cond_0

    array-length v2, v0

    move v3, v5

    :goto_0
    if-ge v3, v2, :cond_1

    iget-object v7, v1, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->themeShortcutHashMap:Ljava/util/HashMap;

    aget-object v8, v6, v3

    aget-object v9, v0, v3

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    array-length v6, v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    array-length v0, v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Arrays must have the same size"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Making theme hash error : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, v1, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f070484

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, v1, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->shortcutIconSize:I

    iget-object v0, v1, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isShortcutsVisibleForMDM()Z

    move-result v0

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->isShortcutVisibleForMDM:Z

    iget-object v0, v1, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    const/4 v2, 0x4

    new-array v2, v2, [Landroid/net/Uri;

    const-string v3, "lock_application_shortcut"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    aput-object v3, v2, v5

    const-string/jumbo v3, "set_shortcuts_mode"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const-string v3, "current_sec_appicon_theme_package"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v5, 0x2

    aput-object v3, v2, v5

    const-string v3, "accessibility_reduce_transparency"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v5, 0x3

    aput-object v3, v2, v5

    invoke-virtual {v0, p0, v2}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    iget-object v0, v1, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "package"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v2, v1, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->intentReceiver:Lcom/android/systemui/statusbar/KeyguardShortcutManager$intentReceiver$1;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x30

    move-object p3, p2

    move-object p4, v2

    move-object p5, v0

    move-object/from16 p6, v7

    move-object/from16 p7, v3

    move/from16 p8, v5

    move-object/from16 p9, v6

    move/from16 p10, v8

    invoke-static/range {p3 .. p10}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver$default(Lcom/android/systemui/broadcast/BroadcastDispatcher;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;ILjava/lang/String;I)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "com.samsung.intent.action.EMERGENCY_STATE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, v1, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->intentReceiver:Lcom/android/systemui/statusbar/KeyguardShortcutManager$intentReceiver$1;

    move-object p4, v2

    move-object p5, v0

    invoke-static/range {p3 .. p10}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver$default(Lcom/android/systemui/broadcast/BroadcastDispatcher;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;ILjava/lang/String;I)V

    const-string v0, "android.intent.action.PACKAGES_SUSPENDED"

    const-string v2, "android.intent.action.PACKAGES_UNSUSPENDED"

    invoke-static {v0, v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/content/IntentFilter;

    move-result-object v0

    iget-object v2, v1, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->intentReceiver:Lcom/android/systemui/statusbar/KeyguardShortcutManager$intentReceiver$1;

    move-object p4, v2

    move-object p5, v0

    invoke-static/range {p3 .. p10}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver$default(Lcom/android/systemui/broadcast/BroadcastDispatcher;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;ILjava/lang/String;I)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "com.samsung.applock.intent.action.APPLOCK_ENABLE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "com.samsung.applock.intent.action.SSECURE_UPDATE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "com.samsung.android.action.LOCK_TASK_MODE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, v1, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->intentReceiver:Lcom/android/systemui/statusbar/KeyguardShortcutManager$intentReceiver$1;

    move-object p4, v2

    move-object p5, v0

    invoke-static/range {p3 .. p10}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver$default(Lcom/android/systemui/broadcast/BroadcastDispatcher;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;ILjava/lang/String;I)V

    const-string v0, "android.telecom.action.DEFAULT_DIALER_CHANGED"

    const-string v2, "com.sec.android.app.secsetupwizard.SETUPWIZARD_COMPLETE"

    invoke-static {v0, v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/content/IntentFilter;

    move-result-object v0

    iget-object v2, v1, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->intentReceiver:Lcom/android/systemui/statusbar/KeyguardShortcutManager$intentReceiver$1;

    move-object p1, p2

    move-object p2, v2

    move-object p3, v0

    move-object p4, v7

    move-object p5, v3

    move/from16 p6, v5

    move-object/from16 p7, v6

    move/from16 p8, v8

    invoke-static/range {p1 .. p8}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver$default(Lcom/android/systemui/broadcast/BroadcastDispatcher;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;ILjava/lang/String;I)V

    iget-object v0, v1, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->dumpManager:Lcom/android/systemui/dump/DumpManager;

    invoke-static {v0, v4, p0}, Lcom/android/systemui/dump/DumpManager;->registerDumpable$default(Lcom/android/systemui/dump/DumpManager;Ljava/lang/String;Lcom/android/systemui/Dumpable;)V

    goto :goto_2

    :cond_2
    const-string v0, "dont initialize for other than system user"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void
.end method

.method public static final synthetic access$getSettingsHelper$p(Lcom/android/systemui/statusbar/KeyguardShortcutManager;)Lcom/android/systemui/util/SettingsHelper;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    return-object p0
.end method

.method public static final access$getShortcutIcon(Lcom/android/systemui/statusbar/KeyguardShortcutManager;Landroid/content/pm/ActivityInfo;ZI)Landroid/graphics/drawable/Drawable;
    .locals 8

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->shortcutsData:[Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;

    aget-object v0, v0, p3

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;->isMonotoneIcon:Z

    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v2}, Lcom/android/systemui/util/SettingsHelper;->getActiveIconPackage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->getSamsungAppIconDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_1

    :cond_0
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->themeShortcutHashMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_1

    move-object v2, v4

    :cond_1
    if-eqz v2, :cond_2

    iget-object v5, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "drawable"

    invoke-virtual {v5, v2, v7, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_2

    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-boolean v3, v5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    iget-object v6, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-static {v6, v2, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-boolean v3, v5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    iget-object v6, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-static {v6, v2, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget v5, v5, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-eq v5, v3, :cond_2

    iget-object v5, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->context:Landroid/content/Context;

    invoke-virtual {v5, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_0

    :cond_2
    move-object v2, v4

    :goto_0
    if-nez v2, :cond_3

    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-boolean v3, v5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    iget-object v6, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f080b00

    invoke-static {v6, v7, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget v5, v5, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-eq v5, v3, :cond_3

    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->packageManager:Landroid/content/pm/PackageManager;

    const/16 v5, 0x100

    invoke-virtual {p1, v2, v3, v5}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;ZI)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    :cond_3
    :goto_1
    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->packageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v2, v3, v3}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;ZI)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    :cond_4
    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->packageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v2}, Landroid/content/pm/ActivityInfo;->loadDefaultIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    :cond_5
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->isNowBarVisible:Z

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->getShortcutIconSizeValue(Z)I

    move-result p1

    if-eqz v0, :cond_b

    :try_start_0
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v5, "com.sec.android.app.camera"

    invoke-virtual {v5, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v5}, Lcom/android/systemui/util/SettingsHelper;->getActiveIconPackage()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_6

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->getSamsungAppIconDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    goto :goto_3

    :catch_0
    move-exception v5

    goto :goto_6

    :cond_6
    move-object v5, v2

    check-cast v5, Landroid/graphics/drawable/DrawableWrapper;

    if-eqz v5, :cond_7

    invoke-virtual {v5}, Landroid/graphics/drawable/DrawableWrapper;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    goto :goto_2

    :cond_7
    move-object v5, v4

    :goto_2
    check-cast v5, Landroid/graphics/drawable/AdaptiveIconDrawable;

    if-eqz v5, :cond_8

    invoke-virtual {v5}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getMonochrome()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    goto :goto_3

    :cond_8
    move-object v5, v4

    :goto_3
    if-eqz v5, :cond_9

    :goto_4
    move-object v2, v5

    goto :goto_7

    :cond_9
    invoke-static {v1}, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->isARShortcutIcon(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b

    move-object v5, v2

    check-cast v5, Landroid/graphics/drawable/DrawableWrapper;

    if-eqz v5, :cond_a

    invoke-virtual {v5}, Landroid/graphics/drawable/DrawableWrapper;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    goto :goto_5

    :cond_a
    move-object v5, v4

    :goto_5
    check-cast v5, Landroid/graphics/drawable/AdaptiveIconDrawable;

    if-eqz v5, :cond_b

    invoke-virtual {v5}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v5, :cond_b

    goto :goto_4

    :goto_6
    const-string v6, "Making samsung Icon error : "

    const-string v7, "KeyguardShortcutManager"

    invoke-static {v6, v5, v7}, Landroidx/picker/adapter/AbsAdapter$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    :cond_b
    :goto_7
    if-eqz v2, :cond_c

    invoke-static {v2}, Landroidx/core/graphics/drawable/DrawableKt;->toBitmap$default(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_8

    :cond_c
    move-object v2, v4

    :goto_8
    iget-object v5, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v5}, Lcom/android/systemui/util/SettingsHelper;->getActiveIconPackage()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_d

    invoke-virtual {p0, p3}, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->isTaskType(I)Z

    move-result p3

    if-eqz p3, :cond_18

    :cond_d
    if-eqz v0, :cond_14

    if-eqz v2, :cond_18

    const/4 p1, 0x0

    invoke-virtual {p0, v2, p1}, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->scaleIcon(Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    const/4 p3, 0x0

    invoke-static {p1, p3}, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->getCircleBitmap(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v2

    if-nez p2, :cond_13

    sget-boolean p1, Lcom/android/systemui/LsRune;->LOCKUI_SHORTCUT_BLUR_BG:Z

    const p2, 0x7f06093b

    const p3, 0x7f06093a

    const-string v0, "navibar"

    if-eqz p1, :cond_10

    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {p1, v3, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-static {v0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isWhiteKeyguardWallpaper(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v1}, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->isARShortcutIcon(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1a

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->isReduceTransparencyEnabled:Z

    if-nez v1, :cond_e

    goto :goto_9

    :cond_e
    if-nez v0, :cond_f

    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->context:Landroid/content/Context;

    invoke-virtual {p0, p3}, Landroid/content/Context;->getColor(I)I

    move-result p0

    goto :goto_a

    :cond_f
    :goto_9
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->context:Landroid/content/Context;

    invoke-virtual {p0, p2}, Landroid/content/Context;->getColor(I)I

    move-result p0

    :goto_a
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    new-instance p3, Landroid/graphics/BlendModeColorFilter;

    sget-object v0, Landroid/graphics/BlendMode;->SRC_ATOP:Landroid/graphics/BlendMode;

    invoke-direct {p3, p0, v0}, Landroid/graphics/BlendModeColorFilter;-><init>(ILandroid/graphics/BlendMode;)V

    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto/16 :goto_10

    :cond_10
    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isWhiteKeyguardWallpaper(Ljava/lang/String;)Z

    move-result v0

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->isReduceTransparencyEnabled:Z

    if-nez v3, :cond_11

    goto :goto_b

    :cond_11
    if-nez v0, :cond_12

    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->context:Landroid/content/Context;

    invoke-virtual {p0, p3}, Landroid/content/Context;->getColor(I)I

    move-result p0

    goto :goto_c

    :cond_12
    :goto_b
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->context:Landroid/content/Context;

    invoke-virtual {p0, p2}, Landroid/content/Context;->getColor(I)I

    move-result p0

    :goto_c
    invoke-static {v2, p0}, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->imgShadow(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-direct {p1, v1, p0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    goto :goto_10

    :cond_13
    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object p2, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->context:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-direct {p1, p2, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    goto :goto_f

    :cond_14
    iget-object p2, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->context:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->density:F

    const/4 p3, 0x2

    int-to-float p3, p3

    mul-float/2addr p2, p3

    if-eqz v2, :cond_15

    if-lez p1, :cond_16

    iget-object p3, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->context:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p3

    iget p3, p3, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v2, p3}, Landroid/graphics/Bitmap;->setDensity(I)V

    int-to-float p1, p1

    add-float/2addr p1, p2

    float-to-int p1, p1

    invoke-static {v2, p1, p1, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_d

    :cond_15
    move-object v2, v4

    :cond_16
    :goto_d
    if-eqz v2, :cond_17

    invoke-static {v2, p2}, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->getCircleBitmap(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object p1

    move-object v2, p1

    goto :goto_e

    :cond_17
    move-object v2, v4

    :goto_e
    if-eqz v2, :cond_18

    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v2, p1}, Landroid/graphics/Bitmap;->setDensity(I)V

    :cond_18
    :goto_f
    if-eqz v2, :cond_19

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-direct {v4, p0, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    :cond_19
    move-object p1, v4

    :cond_1a
    :goto_10
    return-object p1
.end method

.method public static final access$handleUpdateShortcuts(Lcom/android/systemui/statusbar/KeyguardShortcutManager;)V
    .locals 13

    const/4 v0, 0x2

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v2}, Lcom/android/systemui/util/SettingsHelper;->getShortcutAppList()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->shortcutsData:[Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;

    const/16 v8, 0xa

    const/4 v9, 0x0

    if-nez v3, :cond_9

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->stringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v10

    move v11, v5

    :goto_0
    if-ge v11, v10, :cond_1

    rem-int/lit8 v12, v11, 0x5

    if-nez v12, :cond_0

    invoke-virtual {v2, v11}, Ljava/lang/String;->codePointAt(I)I

    move-result v12

    add-int/2addr v12, v1

    int-to-char v12, v12

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    invoke-virtual {v2, v11}, Ljava/lang/String;->charAt(I)C

    move-result v12

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1
    add-int/2addr v11, v1

    goto :goto_0

    :cond_1
    new-instance v3, Lkotlin/text/Regex;

    const-string v10, ";"

    invoke-direct {v3, v10}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Lkotlin/text/Regex;->split(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v3}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_2

    goto :goto_2

    :cond_2
    check-cast v2, Ljava/lang/Iterable;

    invoke-interface {v3}, Ljava/util/ListIterator;->nextIndex()I

    move-result v3

    add-int/2addr v3, v1

    invoke-static {v2, v3}, Lkotlin/collections/CollectionsKt___CollectionsKt;->take(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v2

    goto :goto_3

    :cond_3
    sget-object v2, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    :goto_3
    check-cast v2, Ljava/util/Collection;

    new-array v3, v5, [Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    array-length v3, v2

    if-ge v3, v0, :cond_5

    filled-new-array {v6, v4}, [Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    new-instance v3, Ljava/util/ArrayList;

    invoke-static {v2, v8}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    aget-object v4, v7, v4

    iput-object v9, v4, Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;->taskName:Ljava/lang/String;

    iput-object v9, v4, Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;->componentName:Landroid/content/ComponentName;

    iput-boolean v5, v4, Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;->enabled:Z

    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_4
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto/16 :goto_8

    :cond_5
    array-length v3, v2

    div-int/2addr v3, v0

    move v4, v5

    :goto_5
    if-ge v4, v3, :cond_a

    if-ge v4, v0, :cond_a

    mul-int/lit8 v6, v4, 0x2

    aget-object v8, v2, v6

    const-string v10, "1"

    invoke-virtual {v10, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    add-int/2addr v6, v1

    aget-object v8, v2, v6

    if-eqz v8, :cond_6

    const-string v10, "NoUnlockNeeded"

    invoke-static {v8, v10, v5}, Lkotlin/text/StringsKt__StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v8

    if-eqz v8, :cond_6

    aget-object v8, v7, v4

    iput v1, v8, Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;->shortcutProperty:I

    aget-object v10, v2, v6

    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    aget-object v6, v2, v6

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v11, 0x6

    const-string v12, "/"

    invoke-static {v6, v12, v11}, Lkotlin/text/StringsKt__StringsKt;->lastIndexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;I)I

    move-result v6

    add-int/2addr v6, v1

    invoke-virtual {v10, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v8, Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;->taskName:Ljava/lang/String;

    goto :goto_6

    :cond_6
    aget-object v8, v7, v4

    iput v5, v8, Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;->shortcutProperty:I

    aget-object v8, v2, v6

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v8}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v8

    if-nez v8, :cond_7

    iget-object v10, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->packageManager:Landroid/content/pm/PackageManager;

    aget-object v6, v2, v6

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v10, v6}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    if-eqz v6, :cond_7

    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    :cond_7
    aget-object v6, v7, v4

    iput-object v8, v6, Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;->componentName:Landroid/content/ComponentName;

    goto :goto_6

    :cond_8
    aget-object v6, v2, v6

    aget-object v6, v7, v4

    iput-object v9, v6, Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;->taskName:Ljava/lang/String;

    iput-object v9, v6, Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;->componentName:Landroid/content/ComponentName;

    iput-boolean v5, v6, Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;->enabled:Z

    :goto_6
    add-int/2addr v4, v1

    goto :goto_5

    :cond_9
    filled-new-array {v6, v4}, [Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    new-instance v3, Ljava/util/ArrayList;

    invoke-static {v2, v8}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    aget-object v4, v7, v4

    iput-object v9, v4, Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;->taskName:Ljava/lang/String;

    iput-object v9, v4, Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;->componentName:Landroid/content/ComponentName;

    iput-boolean v5, v4, Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;->enabled:Z

    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_a
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_8
    if-ge v5, v0, :cond_c

    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->isTaskType(I)Z

    move-result v2

    if-eqz v2, :cond_b

    aget-object v2, v7, v5

    iget-object v2, v2, Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;->taskName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->executor:Ljava/util/concurrent/Executor;

    new-instance v4, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateTaskShortcut$1;

    invoke-direct {v4, v2, p0, v5}, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateTaskShortcut$1;-><init>(Ljava/lang/String;Lcom/android/systemui/statusbar/KeyguardShortcutManager;I)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_9

    :cond_b
    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->keyguardBottomAreaShortcutTask:[Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardQuickAffordanceConfig;

    aget-object v2, v2, v5

    const-string v3, ""

    invoke-interface {v2, v3}, Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardQuickAffordanceConfig;->setSpecName(Ljava/lang/String;)V

    aget-object v2, v7, v5

    iget-object v2, v2, Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;->componentName:Landroid/content/ComponentName;

    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->executor:Ljava/util/concurrent/Executor;

    new-instance v4, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateShortcut$1;

    invoke-direct {v4, v2, p0, v5}, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateShortcut$1;-><init>(Landroid/content/ComponentName;Lcom/android/systemui/statusbar/KeyguardShortcutManager;I)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :goto_9
    add-int/2addr v5, v1

    goto :goto_8

    :cond_c
    return-void
.end method

.method public static final access$isMonotoneIconRequired(Lcom/android/systemui/statusbar/KeyguardShortcutManager;I)Z
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->getActiveIconPackage()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto/16 :goto_7

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->packageManager:Landroid/content/pm/PackageManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->shortcutsData:[Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;

    aget-object v2, v2, p1

    iget-object v2, v2, Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;->componentName:Landroid/content/ComponentName;

    invoke-static {v2}, Landroid/content/Intent;->makeMainActivity(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->userTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast v3, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v3}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    move-result v3

    const/16 v4, 0x81

    invoke-virtual {v0, v2, v4, v3}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    goto :goto_0

    :cond_1
    move-object v3, v2

    :goto_0
    if-eqz v3, :cond_d

    iget-object p1, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->getActiveIconPackage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->getSamsungAppIconDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_1

    :cond_2
    move-object p1, v2

    :goto_1
    const/4 v0, 0x1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->packageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, p1, v0, v0}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;ZI)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    :cond_3
    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->packageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, p1}, Landroid/content/pm/ActivityInfo;->loadDefaultIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    :cond_4
    iget-object v4, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v5, "com.sec.android.app.camera"

    invoke-virtual {v5, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper;->getActiveIconPackage()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_5

    goto :goto_2

    :cond_5
    iget-object p0, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {p0}, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->isARShortcutIcon(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_6

    :goto_2
    move v1, v0

    goto :goto_7

    :cond_6
    iget-object p0, v3, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz p0, :cond_7

    const-string v3, "com.sec.android.app.launcher.icon_theme"

    invoke-virtual {p0, v3, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_3

    :cond_7
    move-object p0, v2

    :goto_3
    if-eqz p0, :cond_e

    instance-of p0, p1, Landroid/graphics/drawable/DrawableWrapper;

    if-eqz p0, :cond_8

    move-object p0, p1

    check-cast p0, Landroid/graphics/drawable/DrawableWrapper;

    goto :goto_4

    :cond_8
    move-object p0, v2

    :goto_4
    if-eqz p0, :cond_a

    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableWrapper;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    if-nez p0, :cond_9

    goto :goto_5

    :cond_9
    move-object p1, p0

    :cond_a
    :goto_5
    instance-of p0, p1, Landroid/graphics/drawable/AdaptiveIconDrawable;

    if-eqz p0, :cond_b

    check-cast p1, Landroid/graphics/drawable/AdaptiveIconDrawable;

    goto :goto_6

    :cond_b
    move-object p1, v2

    :goto_6
    if-eqz p1, :cond_c

    invoke-virtual {p1}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getMonochrome()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    :cond_c
    if-eqz v2, :cond_e

    goto :goto_2

    :cond_d
    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "updateShortcut : "

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " activityInfo is null, resolveInfo is : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ",  return FALSE"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "KeyguardShortcutManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    :goto_7
    return v1
.end method

.method public static final access$resetShortcut(Lcom/android/systemui/statusbar/KeyguardShortcutManager;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->shortcutsData:[Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;

    aget-object v0, v0, p1

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;->enabled:Z

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;->drawable:Landroid/graphics/drawable/Drawable;

    iput-object v1, v0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;->panelDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v1, v0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;->panelTransitDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v1, v0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;->appLabel:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->sendUpdateShortcutViewToCallback(I)V

    return-void
.end method

.method public static final access$sendUpdateIconOnlyToCallback(Lcom/android/systemui/statusbar/KeyguardShortcutManager;I)V
    .locals 3

    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->shortcutCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutCallback;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutCallback;

    check-cast v0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController$shortcutManagerCallback$1;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController$shortcutManagerCallback$1;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->access$getMView$p$s2038760804(Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;

    new-instance v2, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController$shortcutManagerCallback$1$updateShortcutIconOnly$1;

    invoke-direct {v2, p1, v0}, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController$shortcutManagerCallback$1$updateShortcutIconOnly$1;-><init>(ILcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;)V

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static getCircleBitmap(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    .locals 5

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float v4, v0, p1

    sub-float p1, v1, p1

    invoke-static {v4, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    sget-object v4, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v3, v0, v1, p1, v4}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    new-instance p1, Landroid/graphics/Canvas;

    invoke-direct {p1, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, p0, v0, v0, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-object v2
.end method

.method public static synthetic getIntentReceiver$annotations()V
    .locals 0

    return-void
.end method

.method public static imgShadow(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 11

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    new-instance v4, Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    const/4 v7, 0x0

    invoke-direct {v4, v7, v7, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v5, Landroid/graphics/RectF;

    int-to-float v6, v0

    int-to-float v8, v1

    invoke-direct {v5, v7, v7, v6, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    sget-object v6, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v3, v4, v5, v6}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4, v3}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    invoke-virtual {v4, v7, v7}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v6, Landroid/graphics/Paint;

    const/4 v8, 0x1

    invoke-direct {v6, v8}, Landroid/graphics/Paint;-><init>(I)V

    invoke-virtual {v5, p0, v3, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    new-instance v9, Landroid/graphics/PorterDuffXfermode;

    sget-object v10, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v9, v10}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v6, v9}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    invoke-virtual {v5, p0, v4, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    new-instance v4, Landroid/graphics/BlurMaskFilter;

    const/high16 v5, 0x40000000    # 2.0f

    sget-object v9, Landroid/graphics/BlurMaskFilter$Blur;->OUTER:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v4, v5, v9}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    invoke-virtual {v6}, Landroid/graphics/Paint;->reset()V

    invoke-virtual {v6, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/high16 v5, -0x1000000

    invoke-virtual {v6, v5}, Landroid/graphics/Paint;->setColor(I)V

    const/16 v5, 0x33

    invoke-virtual {v6, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {v6, v4}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    invoke-virtual {v6, v8}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4, v8}, Landroid/graphics/Paint;-><init>(I)V

    invoke-virtual {v4, v8}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    new-instance v5, Landroid/graphics/BlendModeColorFilter;

    sget-object v8, Landroid/graphics/BlendMode;->SRC_ATOP:Landroid/graphics/BlendMode;

    invoke-direct {v5, p1, v8}, Landroid/graphics/BlendModeColorFilter;-><init>(ILandroid/graphics/BlendMode;)V

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    sget-object p1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, p1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v2, v7, v7, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {v0, p0, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    return-object p1
.end method

.method public static isARShortcutIcon(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "com.samsung.android.aremoji"

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.sec.android.mimage.avatarstickers"

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

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

.method public static isAllowNonPlatformKeyApp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 11

    const/4 v0, 0x1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :try_start_0
    const-string v3, "SHA-256"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/high16 v4, 0x8000000

    invoke-virtual {p0, p1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/content/pm/SigningInfo;->hasMultipleSigners()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/content/pm/SigningInfo;->getApkContentsSigners()[Landroid/content/pm/Signature;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_3

    :cond_0
    invoke-virtual {p0}, Landroid/content/pm/SigningInfo;->getSigningCertificateHistory()[Landroid/content/pm/Signature;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    :goto_0
    array-length p1, p0

    move v4, v2

    :goto_1
    if-ge v4, p1, :cond_2

    aget-object v5, p0, v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v5

    array-length v7, v5

    move v8, v2

    :goto_2
    if-ge v8, v7, :cond_1

    aget-byte v9, v5, v8

    and-int/lit16 v9, v9, 0xff

    add-int/lit16 v9, v9, 0x100

    const/16 v10, 0x10

    invoke-static {v10}, Lkotlin/text/CharsKt__CharJVMKt;->checkRadix(I)V

    invoke-static {v9, v10}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/2addr v8, v0

    goto :goto_2

    :cond_1
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr v4, v0

    goto :goto_1

    :goto_3
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string p1, "isAllowNonPlatformKeyApp : "

    const-string v3, "AppSignature"

    invoke-static {p1, p0, v3}, Landroidx/constraintlayout/motion/widget/MotionLayout$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_4

    :cond_4
    move v0, v2

    :goto_4
    return v0
.end method

.method public static isSamsungCameraPackage(Landroid/content/ComponentName;)Z
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "com.sec.android.app.camera"

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    :goto_0
    return p0
.end method


# virtual methods
.method public final addListener$1()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->keyguardBottomAreaShortcutTask:[Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardQuickAffordanceConfig;

    aget-object v1, v1, v0

    invoke-interface {v1}, Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardQuickAffordanceConfig;->addListener()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final convertTaskDrawable(Landroid/graphics/drawable/Drawable;ZZZZ)Landroid/graphics/drawable/Drawable;
    .locals 3

    if-eqz p1, :cond_7

    const v0, 0x7f060940

    const v1, 0x7f060937

    if-eqz p4, :cond_1

    if-eqz p2, :cond_4

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->isReduceTransparencyEnabled:Z

    if-eqz v2, :cond_2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_2
    if-eqz p3, :cond_3

    if-nez p2, :cond_3

    const v0, 0x7f06093a

    goto :goto_0

    :cond_3
    const v0, 0x7f06093b

    :cond_4
    :goto_0
    iget-object p2, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->context:Landroid/content/Context;

    invoke-virtual {p2, v0}, Landroid/content/Context;->getColor(I)I

    move-result p2

    invoke-static {p1}, Landroidx/core/graphics/drawable/DrawableKt;->toBitmap$default(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p0, p1, p5}, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->scaleIcon(Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    sget-boolean p3, Lcom/android/systemui/LsRune;->LOCKUI_SHORTCUT_BLUR_BG:Z

    if-nez p3, :cond_6

    if-eqz p4, :cond_5

    goto :goto_1

    :cond_5
    new-instance p3, Landroid/graphics/drawable/BitmapDrawable;

    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {p1, p2}, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->imgShadow(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-direct {p3, p0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object p3

    :cond_6
    :goto_1
    new-instance p3, Landroid/graphics/drawable/BitmapDrawable;

    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-direct {p3, p0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {p3}, Landroid/graphics/drawable/BitmapDrawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    invoke-virtual {p3}, Landroid/graphics/drawable/BitmapDrawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    new-instance p0, Landroid/graphics/BlendModeColorFilter;

    sget-object p1, Landroid/graphics/BlendMode;->SRC_ATOP:Landroid/graphics/BlendMode;

    invoke-direct {p0, p2, p1}, Landroid/graphics/BlendModeColorFilter;-><init>(ILandroid/graphics/BlendMode;)V

    invoke-virtual {p3, p0}, Landroid/graphics/drawable/BitmapDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-object p3

    :cond_7
    const/4 p0, 0x0

    return-object p0
.end method

.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6

    const-string p2, "KeyguardShortcutManager state:"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->selectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId(Z)I

    move-result p2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "  CurrentUserId = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p2, "  Shortcut count = 2"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p2}, Lcom/android/systemui/util/SettingsHelper;->isShortcutMasterEnabled()Z

    move-result p2

    const-string v1, "  Master switch = "

    invoke-static {v1, p2, p1}, Lcom/android/keyguard/ActiveUnlockConfig$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/io/PrintWriter;)V

    iget-boolean p2, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->isShortcutVisibleForMDM:Z

    xor-int/lit8 p2, p2, 0x1

    const-string v1, "  disabled shortcut by MDM = "

    invoke-static {v1, p2, p1}, Lcom/android/keyguard/ActiveUnlockConfig$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/io/PrintWriter;)V

    iget-object p2, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->shortcutsData:[Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;

    array-length v1, p2

    :goto_0
    if-ge v0, v1, :cond_4

    const-string v2, "  Shortcut "

    invoke-static {v2, v0, p1}, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/io/PrintWriter;)V

    aget-object v2, p2, v0

    if-nez v2, :cond_0

    const-string v2, "    null"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    :cond_0
    iget-boolean v3, v2, Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;->enabled:Z

    const-string v4, "    enabled = "

    invoke-static {v4, v3, p1}, Lcom/android/keyguard/ActiveUnlockConfig$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/io/PrintWriter;)V

    iget-object v3, v2, Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;->componentName:Landroid/content/ComponentName;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "    component = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v3, v2, Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;->appLabel:Ljava/lang/String;

    const-string v4, "    label = "

    invoke-static {p1, v4, v3}, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v3, v2, Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;->noUnlockNeeded:Z

    const-string v4, "    noUnlock = "

    invoke-static {v4, v3, p1}, Lcom/android/keyguard/ActiveUnlockConfig$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/io/PrintWriter;)V

    iget-boolean v3, v2, Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;->isMonotoneIcon:Z

    const-string v4, "    monotone = "

    invoke-static {v4, v3, p1}, Lcom/android/keyguard/ActiveUnlockConfig$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/io/PrintWriter;)V

    iget-boolean v3, v2, Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;->launchInsecureMain:Z

    const-string v4, "    launchInsecureMain = "

    invoke-static {v4, v3, p1}, Lcom/android/keyguard/ActiveUnlockConfig$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/io/PrintWriter;)V

    iget-object v3, v2, Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;->componentName:Landroid/content/ComponentName;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    const-string v3, ""

    :cond_1
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->getSuspended(Ljava/lang/String;)Z

    move-result v3

    const-string v4, "    isSuspended = "

    invoke-static {v4, v3, p1}, Lcom/android/keyguard/ActiveUnlockConfig$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/io/PrintWriter;)V

    iget-object v2, v2, Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;->componentName:Landroid/content/ComponentName;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->isLockTaskPermitted(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "    isLockTaskPermitted = "

    invoke-static {v3, v2, p1}, Lcom/android/keyguard/ActiveUnlockConfig$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/io/PrintWriter;)V

    :cond_3
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public final getIntent(I)Landroid/content/Intent;
    .locals 7

    const-string v0, "KeyguardShortcutManager"

    const/4 v1, 0x0

    if-ltz p1, :cond_9

    const/4 v2, 0x2

    if-lt p1, v2, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->shortcutsData:[Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;

    aget-object v3, v2, p1

    iget-object v3, v3, Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;->componentName:Landroid/content/ComponentName;

    invoke-static {v3}, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->isSamsungCameraPackage(Landroid/content/ComponentName;)Z

    move-result v3

    const-string/jumbo v4, "th = "

    if-eqz v3, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is camera package"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->isSecure()Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->SECURE_CAMERA_INTENT:Landroid/content/Intent;

    goto/16 :goto_3

    :cond_1
    sget-object p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->INSECURE_CAMERA_INTENT:Landroid/content/Intent;

    goto/16 :goto_3

    :cond_2
    aget-object v3, v2, p1

    iget-object v3, v3, Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;->componentName:Landroid/content/ComponentName;

    const/4 v5, 0x0

    if-nez v3, :cond_3

    move v3, v5

    goto :goto_0

    :cond_3
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v6, "com.samsung.android.app.galaxyraw"

    invoke-virtual {v6, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    :goto_0
    if-eqz v3, :cond_4

    const-string p0, " is expert raw camera package"

    invoke-static {p1, v4, p0, v0}, Landroidx/core/app/NotificationManagerCompat$SideChannelManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->SAMSUNG_EXPERT_RAW_CAMERA_INTENT:Landroid/content/Intent;

    goto :goto_3

    :cond_4
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->isSecure()Z

    move-result v3

    if-nez v3, :cond_8

    aget-object v4, v2, p1

    iget-boolean v4, v4, Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;->launchInsecureMain:Z

    if-eqz v4, :cond_8

    const-string v4, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    aget-object v4, v2, p1

    iget-object v4, v4, Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;->componentName:Landroid/content/ComponentName;

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_5
    move-object v4, v1

    :goto_1
    invoke-virtual {v0, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->packageManager:Landroid/content/pm/PackageManager;

    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->selectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    invoke-virtual {p0, v5}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId(Z)I

    move-result p0

    const/4 v5, 0x1

    invoke-virtual {v4, v0, v5, p0}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object p0

    if-eqz p0, :cond_6

    iget-object v1, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    :cond_6
    if-eqz v1, :cond_7

    new-instance p1, Landroid/content/ComponentName;

    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, p0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {p1, v1, p0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_2

    :cond_7
    aget-object p0, v2, p1

    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_2

    :cond_8
    aget-object p0, v2, p1

    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :goto_2
    const-string p0, "isSecure"

    invoke-virtual {v0, p0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 p0, 0x10010000

    invoke-virtual {v0, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p0

    :goto_3
    return-object p0

    :cond_9
    :goto_4
    const-string p0, "getIntent wrong param : "

    invoke-static {p1, p0, v0}, Lcom/android/keyguard/ClockEventController$zenModeCallback$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public final getKeyguardBottomAreaShortcutTask(ILjava/lang/String;)Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardQuickAffordanceConfig;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->isTaskType(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->keyguardBottomAreaShortcutTask:[Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardQuickAffordanceConfig;

    aget-object v0, p0, p1

    invoke-interface {v0, p2}, Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardQuickAffordanceConfig;->setSpecName(Ljava/lang/String;)V

    aget-object p0, p0, p1

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->taskConfigs:Ljava/util/Set;

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardQuickAffordanceConfig;

    invoke-interface {v0}, Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardQuickAffordanceConfig;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    check-cast p1, Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardQuickAffordanceConfig;

    if-nez p1, :cond_3

    sget-object p1, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->EMPTY_CONFIG:Lcom/android/systemui/statusbar/KeyguardShortcutManager$Companion$EMPTY_CONFIG$1;

    :cond_3
    return-object p1
.end method

.method public final getNowBarCollapsedHeight()I
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v1, v1

    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    invoke-static {}, Lcom/android/systemui/util/DeviceState;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v0, 0x3e

    int-to-float v0, v0

    mul-float/2addr v0, p0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    goto :goto_0

    :cond_0
    sget-boolean v2, Lcom/android/systemui/LsRune;->LOCKUI_SUB_DISPLAY_LOCK:Z

    if-eqz v2, :cond_1

    sget-object v2, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v3, Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-virtual {v2, v3}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/keyguard/DisplayLifecycle;

    iget-boolean v2, v2, Lcom/android/systemui/keyguard/DisplayLifecycle;->mIsFolderOpened:Z

    if-eqz v2, :cond_1

    const/16 v0, 0x38

    int-to-float v0, v0

    mul-float/2addr v0, p0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-static {v0, v1}, Lkotlin/ranges/RangesKt___RangesKt;->coerceAtLeast(FF)F

    move-result p0

    const v0, 0x3d8f5c29    # 0.07f

    mul-float/2addr p0, v0

    float-to-int p0, p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method public final getQuickAffordanceConfigList()Ljava/util/List;
    .locals 9

    invoke-static {}, Lcom/android/systemui/keyguard/shared/quickaffordance/KeyguardQuickAffordancePosition;->values()[Lcom/android/systemui/keyguard/shared/quickaffordance/KeyguardQuickAffordancePosition;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, v0, v3

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->shortcutsData:[Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;

    aget-object v7, v6, v5

    if-eqz v7, :cond_2

    iget-boolean v8, v7, Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;->enabled:Z

    if-eqz v8, :cond_2

    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->isTaskType(I)Z

    move-result v8

    if-nez v8, :cond_0

    iget-object v8, v7, Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;->componentName:Landroid/content/ComponentName;

    if-eqz v8, :cond_2

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->isTaskType(I)Z

    move-result v8

    if-eqz v8, :cond_1

    aget-object v5, v6, v5

    iget-object v5, v5, Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;->taskName:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    invoke-virtual {p0, v4, v5}, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->getKeyguardBottomAreaShortcutTask(ILjava/lang/String;)Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardQuickAffordanceConfig;

    move-result-object v4

    goto :goto_2

    :cond_1
    new-instance v4, Lcom/android/systemui/statusbar/KeyguardShortcutManager$generateQuickAffordanceConfig$1$1;

    invoke-direct {v4, v7, p0, v5}, Lcom/android/systemui/statusbar/KeyguardShortcutManager$generateQuickAffordanceConfig$1$1;-><init>(Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;Lcom/android/systemui/statusbar/KeyguardShortcutManager;I)V

    goto :goto_2

    :cond_2
    :goto_1
    sget-object v4, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->EMPTY_CONFIG:Lcom/android/systemui/statusbar/KeyguardShortcutManager$Companion$EMPTY_CONFIG$1;

    :goto_2
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-object v1
.end method

.method public final getSamsungAppIconDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const-string v1, "com.sec.android.app.camera"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f0807a0

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_2
    return-object v0
.end method

.method public final getShortcutBottomMargin(Z)I
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    sget-boolean v2, Lcom/android/systemui/LsRune;->LOCKUI_SUB_DISPLAY_LOCK:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v4, Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-virtual {v2, v4}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/keyguard/DisplayLifecycle;

    iget-boolean v2, v2, Lcom/android/systemui/keyguard/DisplayLifecycle;->mIsFolderOpened:Z

    if-eqz v2, :cond_0

    const-wide v1, 0x3faa1cac083126e9L    # 0.051

    goto :goto_0

    :cond_0
    if-ne v1, v3, :cond_2

    invoke-static {}, Lcom/android/systemui/util/DeviceState;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_1

    const-wide v1, 0x3fa70a3d70a3d70aL    # 0.045

    goto :goto_0

    :cond_1
    const-wide v1, 0x3fa374bc6a7ef9dbL    # 0.038

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/android/systemui/util/DeviceState;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_3

    const-wide v1, 0x3fb1a9fbe76c8b44L    # 0.069

    goto :goto_0

    :cond_3
    const-wide v1, 0x3fab22d0e5604189L    # 0.053

    :goto_0
    int-to-double v4, v0

    mul-double/2addr v4, v1

    double-to-int v0, v4

    if-eqz p1, :cond_4

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->getShortcutIconSizeValue(Z)I

    move-result p1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->getNowBarCollapsedHeight()I

    move-result p0

    sub-int/2addr p0, p1

    div-int/lit8 p0, p0, 0x2

    add-int/2addr p0, v0

    return p0

    :cond_4
    return v0
.end method

.method public final getShortcutContentDescription(I)Ljava/lang/CharSequence;
    .locals 1

    if-ltz p1, :cond_2

    const/4 v0, 0x2

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->shortcutsData:[Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;

    aget-object v0, p0, p1

    iget-object v0, v0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;->appLabel:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "Shortcut"

    goto :goto_1

    :cond_1
    aget-object p0, p0, p1

    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;->appLabel:Ljava/lang/String;

    goto :goto_1

    :cond_2
    :goto_0
    const-string p0, "IllegalArgument : "

    const-string v0, "KeyguardShortcutManager"

    invoke-static {p1, p0, v0}, Lcom/android/keyguard/ClockEventController$zenModeCallback$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    :goto_1
    return-object p0
.end method

.method public final getShortcutDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 1

    if-ltz p1, :cond_1

    const/4 v0, 0x2

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->shortcutsData:[Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;

    aget-object p0, p0, p1

    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;->drawable:Landroid/graphics/drawable/Drawable;

    return-object p0

    :cond_1
    :goto_0
    const-string p0, "IllegalArgument : "

    const-string v0, "KeyguardShortcutManager"

    invoke-static {p1, p0, v0}, Lcom/android/keyguard/ClockEventController$zenModeCallback$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getShortcutIconSizeValue(Z)I
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    sget-boolean v2, Lcom/android/systemui/LsRune;->LOCKUI_SUB_DISPLAY_LOCK:Z

    if-eqz v2, :cond_1

    sget-object v2, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v3, Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-virtual {v2, v3}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/keyguard/DisplayLifecycle;

    iget-boolean v2, v2, Lcom/android/systemui/keyguard/DisplayLifecycle;->mIsFolderOpened:Z

    if-eqz v2, :cond_1

    if-eqz p1, :cond_0

    const/16 p1, 0x28

    goto :goto_0

    :cond_0
    const/16 p1, 0x32

    :goto_0
    int-to-float p1, p1

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->shortcutIconSize:I

    goto :goto_3

    :cond_1
    invoke-static {}, Lcom/android/systemui/util/DeviceState;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_3

    if-eqz p1, :cond_2

    const/16 p1, 0x30

    goto :goto_1

    :cond_2
    const/16 p1, 0x3c

    :goto_1
    int-to-float p1, p1

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->shortcutIconSize:I

    goto :goto_3

    :cond_3
    if-eqz p1, :cond_4

    const-wide v2, 0x3fbc6a7ef9db22d1L    # 0.111

    goto :goto_2

    :cond_4
    const-wide v2, 0x3fc1cac083126e98L    # 0.139

    :goto_2
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    int-to-double v0, p1

    mul-double/2addr v0, v2

    double-to-int p1, v0

    iput p1, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->shortcutIconSize:I

    :goto_3
    iget p0, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->shortcutIconSize:I

    return p0
.end method

.method public final getShortcutSideMargin()I
    .locals 10

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->getShortcutIconSizeValue(Z)I

    move-result p0

    const/4 v4, 0x2

    mul-int/2addr p0, v4

    sub-int p0, v0, p0

    const/4 v5, 0x0

    if-ne v2, v4, :cond_0

    move v6, v3

    goto :goto_0

    :cond_0
    move v6, v5

    :goto_0
    sget-boolean v7, Lcom/android/systemui/LsRune;->LOCKUI_SUB_DISPLAY_LOCK:Z

    const-class v8, Lcom/android/systemui/keyguard/DisplayLifecycle;

    if-eqz v7, :cond_1

    sget-object v9, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v9, v8}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/systemui/keyguard/DisplayLifecycle;

    iget-boolean v9, v9, Lcom/android/systemui/keyguard/DisplayLifecycle;->mIsFolderOpened:Z

    if-eqz v9, :cond_1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-float v1, v1

    const v6, 0x3ebf7cee    # 0.374f

    :goto_1
    mul-float/2addr v1, v6

    goto :goto_3

    :cond_1
    invoke-static {}, Lcom/android/systemui/util/DeviceState;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz v6, :cond_2

    const v1, 0x3e86a7f0    # 0.263f

    goto :goto_2

    :cond_2
    const v1, 0x3ed70a3d    # 0.42f

    :goto_2
    int-to-float v6, v0

    goto :goto_1

    :cond_3
    if-eqz v6, :cond_4

    const v1, 0x3ecccccd    # 0.4f

    goto :goto_2

    :cond_4
    const v1, 0x3f16c8b4    # 0.589f

    goto :goto_2

    :goto_3
    float-to-int v1, v1

    sub-int/2addr p0, v1

    if-ne v2, v4, :cond_5

    goto :goto_4

    :cond_5
    move v3, v5

    :goto_4
    if-eqz v7, :cond_6

    sget-object v1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v1, v8}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/keyguard/DisplayLifecycle;

    iget-boolean v1, v1, Lcom/android/systemui/keyguard/DisplayLifecycle;->mIsFolderOpened:Z

    if-eqz v1, :cond_6

    const v1, 0x3e28f5c3    # 0.165f

    int-to-float v0, v0

    mul-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_6

    :cond_6
    invoke-static {}, Lcom/android/systemui/util/DeviceState;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_8

    if-eqz v3, :cond_7

    const v1, 0x3d89374c    # 0.067f

    goto :goto_5

    :cond_7
    const v1, 0x3ddb22d1    # 0.107f

    :goto_5
    int-to-float v0, v0

    mul-float/2addr v1, v0

    float-to-int v0, v1

    goto :goto_6

    :cond_8
    if-eqz v3, :cond_9

    const v1, 0x3de978d5    # 0.114f

    goto :goto_5

    :cond_9
    const v1, 0x3ce56042    # 0.028f

    goto :goto_5

    :goto_6
    mul-int/2addr v0, v4

    sub-int/2addr p0, v0

    div-int/2addr p0, v4

    return p0
.end method

.method public final getSuspended(Ljava/lang/String;)Z
    .locals 1

    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->packageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->isPackageSuspended(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const-string p0, "getSuspended() - Not found package name = "

    const-string v0, "KeyguardShortcutManager"

    invoke-static {p0, p1, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public final hasShortcut(I)Z
    .locals 2

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v1, Lcom/android/systemui/util/DesktopManager;

    invoke-virtual {v0, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/DesktopManager;

    invoke-interface {v0}, Lcom/android/systemui/util/DesktopManager;->isStandalone()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x2

    if-gt v0, p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isShortcutMasterEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->shortcutsData:[Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;

    aget-object v1, v0, p1

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;->enabled:Z

    if-eqz v1, :cond_3

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->isTaskType(I)Z

    move-result v1

    if-eqz v1, :cond_1

    aget-object v1, v0, p1

    iget-object v1, v1, Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;->taskName:Ljava/lang/String;

    if-nez v1, :cond_2

    :cond_1
    aget-object p1, v0, p1

    iget-object p1, p1, Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;->componentName:Landroid/content/ComponentName;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->isLockTaskPermitted(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_2
    const/4 p0, 0x1

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public final isDarkPanel(I)Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->shortcutsData:[Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;

    aget-object p1, v0, p1

    iget-object p1, p1, Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;->componentName:Landroid/content/ComponentName;

    invoke-static {p1}, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->isSamsungCameraPackage(Landroid/content/ComponentName;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper;->isDarkTheme()Z

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

.method public final isLockTaskPermitted(Ljava/lang/String;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->isLockTaskMode:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->context:Landroid/content/Context;

    const-string v0, "device_policy"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0, p1}, Landroid/app/admin/DevicePolicyManager;->isLockTaskPermitted(Ljava/lang/String;)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method public final isMonotoneIcon(I)Z
    .locals 1

    if-ltz p1, :cond_1

    const/4 v0, 0x2

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->shortcutsData:[Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;

    aget-object p0, p0, p1

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;->isMonotoneIcon:Z

    return p0

    :cond_1
    :goto_0
    const-string p0, "IllegalArgument : "

    const-string v0, "KeyguardShortcutManager"

    invoke-static {p1, p0, v0}, Lcom/android/keyguard/ClockEventController$zenModeCallback$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public final isNoUnlockNeeded(I)Z
    .locals 2

    const/4 v0, 0x0

    if-ltz p1, :cond_2

    const/4 v1, 0x2

    if-lt p1, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->shortcutsData:[Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;

    aget-object v1, v1, p1

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;->noUnlockNeeded:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->isUnlockWaitNeeded(I)Z

    move-result p0

    if-nez p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0

    :cond_2
    :goto_0
    const-string p0, "isNoUnlockNeeded wrong param: "

    const-string v1, "KeyguardShortcutManager"

    invoke-static {p1, p0, v1}, Lcom/android/keyguard/ClockEventController$zenModeCallback$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public final isSecure()Z
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    move-object v0, p0

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mCanDismissLockScreen:Z

    check-cast p0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mSecure:Z

    if-eqz p0, :cond_0

    if-nez v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isShortcutForLiveIcon(I)Z
    .locals 4

    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->shortcutsData:[Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;

    aget-object p0, p0, p1

    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;->componentName:Landroid/content/ComponentName;

    const/4 p1, 0x0

    if-nez p0, :cond_0

    return p1

    :cond_0
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->SAMSUNG_LIVE_ICON_PACKAGES:[Ljava/lang/String;

    array-length v1, v0

    move v2, p1

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    invoke-static {v3, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return p1
.end method

.method public final isShortcutForPhone(I)Z
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->shortcutsData:[Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;

    aget-object p0, p0, p1

    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;->componentName:Landroid/content/ComponentName;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.samsung.android.dialer"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p0

    const-string p1, "com.samsung.android.dialer.DialtactsActivity"

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isShortcutPermission(Ljava/lang/String;)Z
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->packageManager:Landroid/content/pm/PackageManager;

    const-string v1, "com.samsung.keyguard.SHORTCUT_PERMISSION"

    invoke-virtual {v0, v1, p1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v2, 0x0

    const v3, -0x27755efa

    const-string v4, "com.snapchat.android"

    if-eq v0, v3, :cond_4

    const v3, 0x3ae42c58

    if-eq v0, v3, :cond_2

    const v3, 0x7cd40770

    if-eq v0, v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->context:Landroid/content/Context;

    const-string v0, "9c1c8918e17cc686d3274f41cd04154b4cbe6a5272700de3f4f30c2c62ae2ad4"

    invoke-static {p0, p1, v0}, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->isAllowNonPlatformKeyApp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    goto :goto_2

    :cond_2
    const-string v0, "com.sec.android.app.popupcalculator"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    :goto_0
    move p0, v1

    goto :goto_2

    :cond_4
    const-string v0, "com.instagram.android"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    :goto_1
    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->context:Landroid/content/Context;

    const-string v0, "2f4eaa0c67e2a670935ca79164f3ba4b426988b6997a97bb31152cc317dc648a"

    invoke-static {p0, p1, v0}, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->isAllowNonPlatformKeyApp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    goto :goto_2

    :cond_5
    move p0, v2

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->context:Landroid/content/Context;

    const-string v3, "a044dbdb712ab81e76949f5d76ada4dd7035643b462cb7ea2b75ecae637c2da3"

    invoke-static {v0, p1, v3}, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->isAllowNonPlatformKeyApp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->context:Landroid/content/Context;

    const-string v0, "9e92121f90ad13d9f1085b06ea9e7c72ca6d5b603cdfd6adaff7b3071792d71f"

    invoke-static {p0, p1, v0}, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->isAllowNonPlatformKeyApp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_5

    goto :goto_0

    :goto_2
    if-eqz p0, :cond_7

    goto :goto_3

    :cond_7
    move v1, v2

    :cond_8
    :goto_3
    return v1
.end method

.method public final isSupportBlur()Z
    .locals 1

    sget-boolean v0, Lcom/android/systemui/LsRune;->LOCKUI_SHORTCUT_BLUR_BG:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->isReduceTransparencyEnabled:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isTaskType(I)Z
    .locals 2

    const/4 v0, 0x0

    if-ltz p1, :cond_2

    const/4 v1, 0x2

    if-lt p1, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->shortcutsData:[Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;

    aget-object p0, p0, p1

    iget p0, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;->shortcutProperty:I

    const/4 p1, 0x1

    if-ne p0, p1, :cond_1

    move v0, p1

    :cond_1
    return v0

    :cond_2
    :goto_0
    const-string p0, "isTaskType wrong param: "

    const-string v1, "KeyguardShortcutManager"

    invoke-static {p1, p0, v1}, Lcom/android/keyguard/ClockEventController$zenModeCallback$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public final isTaskTypeEnabled(I)Z
    .locals 2

    if-ltz p1, :cond_1

    const/4 v0, 0x2

    if-ge p1, v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->keyguardBottomAreaShortcutTask:[Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardQuickAffordanceConfig;

    aget-object v0, p0, p1

    sget-object v1, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->EMPTY_CONFIG:Lcom/android/systemui/statusbar/KeyguardShortcutManager$Companion$EMPTY_CONFIG$1;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    aget-object p0, p0, p1

    invoke-interface {p0}, Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardQuickAffordanceConfig;->isTaskEnabled()Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const-string p0, "IllegalArgument : "

    const-string v0, "KeyguardShortcutManager"

    invoke-static {p1, p0, v0}, Lcom/android/keyguard/ClockEventController$zenModeCallback$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public final isUnlockWaitNeeded(I)Z
    .locals 1

    if-ltz p1, :cond_1

    const/4 v0, 0x2

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->shortcutsData:[Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;

    aget-object p0, p0, p1

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;->isUnlockWaitNeeded:Z

    return p0

    :cond_1
    :goto_0
    const-string p0, "IllegalArgument : "

    const-string v0, "KeyguardShortcutManager"

    invoke-static {p1, p0, v0}, Lcom/android/keyguard/ClockEventController$zenModeCallback$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public final onChanged(Landroid/net/Uri;)V
    .locals 4

    const-string v0, "lock_application_shortcut"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "current_sec_appicon_theme_package"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "set_shortcuts_mode"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->isShortcutVisibleForMDM:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isShortcutsVisibleForMDM()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->isShortcutVisibleForMDM:Z

    const-string v1, "onSystemSettingsChanged oldShortcutVisibleForMDM = "

    const-string v2, ", isShortcutVisibleForMDM = "

    const-string v3, "KeyguardShortcutManager"

    invoke-static {v1, v2, v3, p1, v0}, Lcom/android/keyguard/KeyguardKnoxGuardViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->isShortcutVisibleForMDM:Z

    if-eq p1, v0, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->updateShortcuts()V

    goto :goto_1

    :cond_1
    const-string v0, "accessibility_reduce_transparency"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p1}, Lcom/android/systemui/util/SettingsHelper;->isReduceTransparencyEnabled()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->isReduceTransparencyEnabled:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->updateShortcutIcons()V

    goto :goto_1

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->updateShortcuts()V

    :cond_3
    :goto_1
    return-void
.end method

.method public final onKeyguardVisibilityChanged(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-boolean p1, p1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceInteractive:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->addListener$1()V

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/4 v0, 0x2

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->keyguardBottomAreaShortcutTask:[Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardQuickAffordanceConfig;

    aget-object v0, v0, p1

    invoke-interface {v0}, Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardQuickAffordanceConfig;->removeListener()V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public final onSimStateChanged(III)V
    .locals 0

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->isPermDisabled:Z

    sget-boolean p2, Lcom/android/systemui/CscRune;->SECURITY_SIM_PERM_DISABLED:Z

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {p2}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isIccBlockedPermanently()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->isPermDisabled:Z

    if-eq p1, p2, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->updateShortcuts()V

    :cond_1
    return-void
.end method

.method public final onStartedGoingToSleep(I)V
    .locals 1

    const/4 p1, 0x0

    :goto_0
    const/4 v0, 0x2

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->keyguardBottomAreaShortcutTask:[Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardQuickAffordanceConfig;

    aget-object v0, v0, p1

    invoke-interface {v0}, Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardQuickAffordanceConfig;->removeListener()V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onStartedWakingUp()V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->isShortcutForLiveIcon(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->updateShortcutIcon(I)V

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->isShortcutForLiveIcon(I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->updateShortcutIcon(I)V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->addListener$1()V

    :cond_2
    return-void
.end method

.method public final onUserSwitchComplete(I)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->updateShortcuts()V

    return-void
.end method

.method public final onUserUnlocked()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->updateShortcuts()V

    return-void
.end method

.method public final scaleIcon(Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->getShortcutIconSizeValue(Z)I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3f59999a    # 0.85f

    mul-float/2addr v0, v1

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->context:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->density:F

    const/16 v1, 0xf

    int-to-float v1, v1

    mul-float/2addr p2, v1

    sub-float/2addr v0, p2

    :cond_0
    const/4 p2, 0x0

    cmpl-float p2, v0, p2

    if-lez p2, :cond_1

    float-to-int p2, v0

    const/4 v0, 0x1

    invoke-static {p1, p2, p2, v0}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    :cond_1
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {p1, p0}, Landroid/graphics/Bitmap;->setDensity(I)V

    return-object p1
.end method

.method public final sendUpdateShortcutViewToCallback(I)V
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->shortcutCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutCallback;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutCallback;

    check-cast v0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController$shortcutManagerCallback$1;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController$shortcutManagerCallback$1;->updateShortcutView(I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final updateShortcutIcon(I)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->isTaskType(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->executor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateShortcutIcon$1;

    invoke-direct {v1, p1, p0}, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateShortcutIcon$1;-><init>(ILcom/android/systemui/statusbar/KeyguardShortcutManager;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->shortcutsData:[Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;->componentName:Landroid/content/ComponentName;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->executor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateShortcutIcon$2;

    invoke-direct {v1, p1, p0}, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateShortcutIcon$2;-><init>(ILcom/android/systemui/statusbar/KeyguardShortcutManager;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final updateShortcutIcons()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->updateShortcutIcon(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final updateShortcuts()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->handler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->updateShortcutsRunnable:Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateShortcutsRunnable$1;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
