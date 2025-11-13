.class public Lcom/android/systemui/pluginlock/PluginLockManagerImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/pluginlock/PluginLockManager;
.implements Lcom/android/systemui/pluginlock/listener/KeyguardListener$SPlugin;
.implements Lcom/android/systemui/pluginlock/listener/KeyguardListener$UserSwitch;
.implements Lcom/android/systemui/util/DesktopManager$Callback;
.implements Lcom/android/systemui/Dumpable;


# static fields
.field private static final DO_NOT_DISTURB_TASK:Ljava/lang/String; = "Dnd"

.field private static final FLASH_LIGHT_TASK:Ljava/lang/String; = "Flashlight"

.field private static final KEY_ACTION:Ljava/lang/String; = "action"

.field private static final KEY_EXTRAS:Ljava/lang/String; = "extras"

.field private static final KEY_NOTIFICATION_TYPE:Ljava/lang/String; = "notification_type"

.field private static final KEY_NOTIFICATION_VISIBILITY:Ljava/lang/String; = "notification_visibility"

.field private static final KEY_SHORTCUT_VISIBILITY:Ljava/lang/String; = "shortcut_visibility"

.field private static final LOCKSTAR_FACEWIDGET_AREA:Ljava/lang/String; = "lockstar_facewidget_area"

.field private static final NOTIFICATION_ENABLED:Ljava/lang/String; = "lock_screen_show_notifications"

.field private static final NOTIFICATION_TYPE:Ljava/lang/String; = "lockscreen_minimizing_notification"

.field private static final PLUGIN_LOCK_SETTINGS:Ljava/lang/String; = "lockstar_enabled"

.field private static final PLUGIN_LOCK_SETTINGS_SUB:Ljava/lang/String; = "plugin_lock_sub_enabled"

.field private static final SETTINGS_EMERGENCY_MODE:Ljava/lang/String; = "emergency_mode"

.field private static final SETTINGS_LONG_TOUCH_AND_HOLD_TO_EDIT:Ljava/lang/String; = "lock_editor_support_touch_hold"

.field private static final SETTINGS_SEM_MINIMAL_BATTERY_USE:Ljava/lang/String; = "minimal_battery_use"

.field private static final SETTINGS_SEM_ULTRA_POWERSAVING_MODE:Ljava/lang/String; = "ultra_powersaving_mode"

.field private static final SHORTCUT_ENABLED:Ljava/lang/String; = "lockscreen_show_shortcut"

.field private static final TAG:Ljava/lang/String; = "PluginLockManagerImpl"

.field private static final UPDATE_LOCKSTAR_DATA:Ljava/lang/String; = "update_lockstar_data"

.field private static final UPDATE_LOCKSTAR_DATA_ITEM:Ljava/lang/String; = "update_lockstar_data_item"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mCoverState:Lcom/samsung/android/cover/CoverState;

.field private final mCr:Landroid/content/ContentResolver;

.field private mCurrentPluginValueMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mDelegateApp:Lcom/android/systemui/pluginlock/PluginLockDelegateApp;

.field private final mDelegateSysUi:Lcom/android/systemui/pluginlock/PluginLockDelegateSysUi;

.field private mInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

.field private mIsDynamicEnabled:Z

.field private mIsMigrating:Z

.field private mIsSwitchingToSub:Z

.field private final mLockPluginMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/systemui/pluginlock/PluginLockInstanceState;",
            ">;"
        }
    .end annotation
.end field

.field private final mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

.field private mPluginLock:Lcom/samsung/systemui/splugins/pluginlock/PluginLock;

.field private final mPluginWallpaperManager:Lcom/android/systemui/pluginlock/PluginWallpaperManager;

.field private final mPolicy:Lcom/android/systemui/pluginlock/PluginLockInstancePolicy;

.field private mRemovedPackageName:Ljava/lang/String;

.field private final mScreenList:[I

.field private mScreenType:I

.field private final mSettingsCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

.field private final mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field private mTaskDnd:Lcom/android/systemui/pluginlock/component/PluginLockShortcutDnd;

.field private mTaskFlashLight:Lcom/android/systemui/pluginlock/component/PluginLockShortcutFlashLight;

.field private final mUris:[Landroid/net/Uri;

.field private mUserId:I

.field private final mUtils:Lcom/android/systemui/pluginlock/PluginLockUtils;


# direct methods
.method public static synthetic $r8$lambda$2eOCb4ZLOghY5qZ4JTCsJTEMpdE(Lcom/android/systemui/pluginlock/PluginLockManagerImpl;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->lambda$new$0(Landroid/net/Uri;)V

    return-void
.end method

.method public static synthetic $r8$lambda$R80ELKNBeOBRryCOCI8bdIVoqUA(Lcom/android/systemui/pluginlock/PluginLockManagerImpl;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->lambda$handleEnableStateChanged$1(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$Va8O9f3tyvgEysoKjHj_p_mAwl0(Lcom/android/systemui/pluginlock/PluginLockManagerImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->lambda$setPluginInstanceState$4()V

    return-void
.end method

.method public static synthetic $r8$lambda$ceIVBBQO2uzBkJw-jkqb-xKDujY(Lcom/android/systemui/pluginlock/PluginLockManagerImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->lambda$onUserSwitchComplete$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$pycnnkSB0oXpy4FB-MD42MJrdh4(Lcom/android/systemui/pluginlock/PluginLockManagerImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->disableByMode()V

    return-void
.end method

.method public static synthetic $r8$lambda$s1nxL9FvlNZFiw4eK-ZrtuPCnVk(Lcom/android/systemui/pluginlock/PluginLockManagerImpl;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->lambda$onUserSwitchComplete$3(I)V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/pluginlock/PluginLockMediator;Lcom/android/systemui/pluginlock/PluginLockInstancePolicy;Lcom/android/systemui/pluginlock/PluginLockDelegateApp;Lcom/android/systemui/pluginlock/PluginLockDelegateSysUi;Lcom/android/systemui/util/SettingsHelper;Lcom/android/systemui/pluginlock/PluginLockUtils;Lcom/android/systemui/pluginlock/PluginWallpaperManager;Lcom/android/systemui/keyguard/KeyguardFoldController;Lcom/android/systemui/util/DesktopManager;Landroid/content/Context;)V
    .locals 13

    move-object v1, p0

    move-object v0, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    move-object/from16 v5, p10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v6, 0x8

    new-array v6, v6, [Landroid/net/Uri;

    const-string v7, "lockstar_enabled"

    invoke-static {v7}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    const-string v7, "plugin_lock_sub_enabled"

    invoke-static {v7}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    const/4 v9, 0x1

    aput-object v7, v6, v9

    const-string v7, "emergency_mode"

    invoke-static {v7}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    const/4 v10, 0x2

    aput-object v7, v6, v10

    const-string/jumbo v7, "ultra_powersaving_mode"

    invoke-static {v7}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    const/4 v11, 0x3

    aput-object v7, v6, v11

    const-string v7, "minimal_battery_use"

    invoke-static {v7}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    const/4 v11, 0x4

    aput-object v7, v6, v11

    const-string v7, "lock_screen_show_notifications"

    invoke-static {v7}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    const/4 v11, 0x5

    aput-object v7, v6, v11

    const-string v7, "lockscreen_minimizing_notification"

    invoke-static {v7}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    const/4 v11, 0x6

    aput-object v7, v6, v11

    const-string v7, "lockscreen_show_shortcut"

    invoke-static {v7}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    const/4 v11, 0x7

    aput-object v7, v6, v11

    iput-object v6, v1, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mUris:[Landroid/net/Uri;

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iput-object v7, v1, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mLockPluginMap:Ljava/util/HashMap;

    const/4 v7, 0x0

    iput-object v7, v1, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mRemovedPackageName:Ljava/lang/String;

    iput-boolean v8, v1, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mIsMigrating:Z

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iput-object v7, v1, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mCurrentPluginValueMap:Ljava/util/HashMap;

    iput v8, v1, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mScreenType:I

    iput-boolean v8, v1, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mIsSwitchingToSub:Z

    iput v8, v1, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mUserId:I

    new-instance v7, Lcom/android/systemui/pluginlock/PluginLockManagerImpl$$ExternalSyntheticLambda3;

    invoke-direct {v7, p0}, Lcom/android/systemui/pluginlock/PluginLockManagerImpl$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/pluginlock/PluginLockManagerImpl;)V

    iput-object v7, v1, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mSettingsCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    iput-object v0, v1, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    move-object v11, p2

    iput-object v11, v1, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mPolicy:Lcom/android/systemui/pluginlock/PluginLockInstancePolicy;

    move-object/from16 v11, p4

    iput-object v11, v1, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mDelegateSysUi:Lcom/android/systemui/pluginlock/PluginLockDelegateSysUi;

    iput-object v2, v1, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mDelegateApp:Lcom/android/systemui/pluginlock/PluginLockDelegateApp;

    move-object/from16 v11, p7

    iput-object v11, v1, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mPluginWallpaperManager:Lcom/android/systemui/pluginlock/PluginWallpaperManager;

    iput-object v3, v1, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    iput-object v5, v1, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual/range {p10 .. p10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    iput-object v11, v1, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mCr:Landroid/content/ContentResolver;

    iput-object v4, v1, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mUtils:Lcom/android/systemui/pluginlock/PluginLockUtils;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "## PluginLockManager ##, "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, "PluginLockManagerImpl"

    invoke-virtual {v4, v12, v11}, Lcom/android/systemui/pluginlock/PluginLockUtils;->addDump(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, p0}, Lcom/android/systemui/pluginlock/PluginLockMediator;->setKeyguardSPluginListener(Lcom/android/systemui/pluginlock/listener/KeyguardListener$SPlugin;)V

    invoke-interface {p1, p0}, Lcom/android/systemui/pluginlock/PluginLockMediator;->setKeyguardUserSwitchListener(Lcom/android/systemui/pluginlock/listener/KeyguardListener$UserSwitch;)V

    invoke-interface {p1, v2}, Lcom/android/systemui/pluginlock/PluginLockMediator;->setKeyguardBasicListener(Lcom/android/systemui/pluginlock/listener/KeyguardListener$Basic;)V

    sget-boolean v0, Lcom/android/systemui/LsRune;->WALLPAPER_DESKTOP_STANDALONE_MODE_WALLPAPER:Z

    if-eqz v0, :cond_0

    move-object/from16 v0, p9

    invoke-interface {v0, p0}, Lcom/android/systemui/util/DesktopManager;->registerCallback(Lcom/android/systemui/util/DesktopManager$Callback;)V

    :cond_0
    sget-boolean v0, Lcom/android/systemui/LsRune;->PLUGIN_LOCK_MULTIPLE_ACTIVATION:Z

    if-eqz v0, :cond_1

    new-array v0, v10, [I

    iput-object v0, v1, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mScreenList:[I

    aput v8, v0, v8

    aput v9, v0, v9

    goto :goto_0

    :cond_1
    new-array v0, v9, [I

    iput-object v0, v1, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mScreenList:[I

    aput v8, v0, v8

    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->isOwnerProcess()Z

    move-result v0

    if-eqz v3, :cond_2

    if-eqz v0, :cond_2

    invoke-virtual {v3, v7, v6}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    :cond_2
    sget-boolean v0, Lcom/android/systemui/LsRune;->LOCKUI_SUB_DISPLAY_LOCK:Z

    if-nez v0, :cond_4

    sget-boolean v0, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_WATCHFACE:Z

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    sget-boolean v0, Lcom/android/systemui/LsRune;->WALLPAPER_VIRTUAL_DISPLAY:Z

    if-eqz v0, :cond_5

    new-instance v0, Lcom/samsung/android/sdk/cover/ScoverManager;

    invoke-direct {v0, v5}, Lcom/samsung/android/sdk/cover/ScoverManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/samsung/android/sdk/cover/ScoverManager;->getCoverState()Lcom/samsung/android/sdk/cover/ScoverState;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v0}, Lcom/samsung/android/sdk/cover/ScoverManager;->getCoverState()Lcom/samsung/android/sdk/cover/ScoverState;

    move-result-object v0

    iget-boolean v0, v0, Lcom/samsung/android/sdk/cover/ScoverState;->switchState:Z

    if-nez v0, :cond_5

    const-string v0, "PluginLockManager, virtual display: mScreenType = PluginLock.SCREEN_SUB"

    invoke-static {v12, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v9, v1, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mScreenType:I

    goto :goto_2

    :cond_4
    :goto_1
    :try_start_0
    invoke-static/range {p10 .. p10}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/WallpaperManager;->getLidState()I

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "PluginLockManager: mScreenType = PluginLock.SCREEN_SUB"

    invoke-static {v12, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v9, v1, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mScreenType:I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    :cond_5
    :goto_2
    sget-boolean v0, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_DISPLAY_MODE:Z

    if-eqz v0, :cond_6

    new-instance v0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/android/systemui/pluginlock/PluginLockManagerImpl$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/pluginlock/PluginLockManagerImpl;)V

    move-object/from16 v1, p8

    check-cast v1, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v8}, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;->addCallback(Lcom/android/systemui/keyguard/KeyguardFoldController$StateListener;IZ)Z

    :cond_6
    return-void
.end method

.method private disableByMode()V
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mScreenList:[I

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget v4, v0, v3

    invoke-direct {p0, v4}, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->isEnabledFromSettingHelper(I)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "disableByMode, screen: "

    const-string v6, "PluginLockManagerImpl"

    invoke-static {v4, v5, v6}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    const/16 v6, 0x4e20

    invoke-virtual {v5, v4, v6}, Lcom/android/systemui/util/SettingsHelper;->setPluginLockValue(II)V

    invoke-direct {p0, v4, v2, v2}, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->updatePluginLockMode(IZZ)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private disableByUser()V
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mScreenList:[I

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget v4, v0, v3

    invoke-direct {p0, v4}, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->isEnabledFromSettingHelper(I)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "disableByUser, screen: "

    const-string v6, "PluginLockManagerImpl"

    invoke-static {v4, v5, v6}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    const/16 v6, 0x7530

    invoke-virtual {v5, v4, v6}, Lcom/android/systemui/util/SettingsHelper;->setPluginLockValue(II)V

    invoke-direct {p0, v4, v2, v2}, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->updatePluginLockMode(IZZ)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private disableForcedIfNeed(I)Z
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/util/SettingsHelper;->getPluginLockValue(I)I

    move-result v0

    invoke-direct {p0, p1}, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->getCurrentPluginValue(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mPolicy:Lcom/android/systemui/pluginlock/PluginLockInstancePolicy;

    invoke-virtual {v2, v0}, Lcom/android/systemui/pluginlock/PluginLockInstancePolicy;->isEnable(I)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mPolicy:Lcom/android/systemui/pluginlock/PluginLockInstancePolicy;

    invoke-virtual {v2, v1}, Lcom/android/systemui/pluginlock/PluginLockInstancePolicy;->isEnable(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mPolicy:Lcom/android/systemui/pluginlock/PluginLockInstancePolicy;

    invoke-virtual {v2, v1, v0}, Lcom/android/systemui/pluginlock/PluginLockInstancePolicy;->isSameInstance(II)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->isEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "disableForcedIfNeed() disabled "

    const-string v2, "PluginLockManagerImpl"

    invoke-static {v1, v0, v2}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-direct {p0, p1, v3, v0}, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->updatePluginLockMode(IZZ)V

    return v0

    :cond_0
    return v3
.end method

.method private getCurrentPluginValue(I)I
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mCurrentPluginValueMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method private handleEmergencyModeChanged()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isEmergencyMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "PluginLockManagerImpl"

    const-string v1, "handleEmergencyModeChanged, enabled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->disableByMode()V

    :cond_0
    return-void
.end method

.method private handleEnableStateChanged(I)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/util/SettingsHelper;->getPluginLockValue(I)I

    move-result v0

    const-string v1, "handleEnableStateChanged screen:"

    const-string v2, ", value:"

    const-string v3, "PluginLockManagerImpl"

    invoke-static {p1, v0, v1, v2, v3}, Landroidx/appcompat/widget/SuggestionsAdapter$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x7530

    if-eq v0, v1, :cond_4

    const/16 v1, 0x4e20

    if-ne v0, v1, :cond_0

    goto :goto_1

    :cond_0
    sget-boolean v0, Lcom/android/systemui/LsRune;->PLUGIN_LOCK_MULTIPLE_ACTIVATION:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    if-ne p1, v1, :cond_1

    const-string p0, "handleEnableStateChanged: not supported, skip!"

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mIsMigrating:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    if-ne p1, v1, :cond_2

    const-string p1, "handleEnableStateChanged: migrating, skip!"

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v2, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mIsMigrating:Z

    return-void

    :cond_2
    invoke-direct {p0, p1}, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->disableForcedIfNeed(I)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/android/systemui/pluginlock/PluginLockManagerImpl$$ExternalSyntheticLambda0;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/android/systemui/pluginlock/PluginLockManagerImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/pluginlock/PluginLockManagerImpl;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_3
    invoke-direct {p0, p1}, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->isEnabledFromSettingHelper(I)Z

    move-result v0

    invoke-direct {p0, p1, v0, v2}, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->updatePluginLockMode(IZZ)V

    :goto_0
    return-void

    :cond_4
    :goto_1
    const-string p0, "handleEnableStateChanged: user switched or mode changed, ignore!"

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private handleLongTouchModeChanged()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isSupportTouchAndHoldToEdit()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "PluginLockManagerImpl"

    const-string v1, "handleLongTouchModeChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/android/systemui/pluginlock/PluginLockMediator;->updateWindowSecureState(Z)V

    :cond_0
    return-void
.end method

.method private handleMinimalBatteryModeChanged()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isUltraPowerSavingMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "PluginLockManagerImpl"

    const-string v1, "handleMinimalBatteryModeChanged, enabled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->disableByMode()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->setLatestPluginInstance(Z)V

    :goto_0
    return-void
.end method

.method private handleStandaloneDexMode(Z)V
    .locals 2

    const-string v0, "handleStandaloneDexMode, dexEnabled:"

    const-string v1, "PluginLockManagerImpl"

    invoke-static {v0, v1, p1}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz p1, :cond_0

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl$$ExternalSyntheticLambda1;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/pluginlock/PluginLockManagerImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/pluginlock/PluginLockManagerImpl;I)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->setLatestPluginInstance(Z)V

    :goto_0
    return-void
.end method

.method private isDynamicLockEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mIsDynamicEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mPluginLock:Lcom/samsung/systemui/splugins/pluginlock/PluginLock;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mUtils:Lcom/android/systemui/pluginlock/PluginLockUtils;

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/PluginLockUtils;->isGoingToRescueParty()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isEnabledFromSettingHelper(I)Z
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/util/SettingsHelper;->getPluginLockValue(I)I

    move-result v0

    const-string v1, "isEnabledFromSettingHelper, screen:"

    const-string v2, ", value:"

    const-string v3, "PluginLockManagerImpl"

    invoke-static {p1, v0, v1, v2, v3}, Landroidx/appcompat/widget/SuggestionsAdapter$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mPolicy:Lcom/android/systemui/pluginlock/PluginLockInstancePolicy;

    invoke-virtual {p0, v0}, Lcom/android/systemui/pluginlock/PluginLockInstancePolicy;->isEnable(I)Z

    move-result p0

    return p0
.end method

.method private isOwnerProcess()Z
    .locals 0

    invoke-static {}, Landroid/os/UserHandle;->semGetMyUserId()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isPluginLockPackage(Ljava/lang/String;)Z
    .locals 0

    const-string p0, "com.samsung.android.dynamiclock"

    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "com.samsung.android.mateagent"

    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

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

.method private synthetic lambda$handleEnableStateChanged$1(I)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->isEnabledFromSettingHelper(I)Z

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->updatePluginLockMode(IZZ)V

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/net/Uri;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SettingHelper changed uri: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PluginLockManagerImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    const-string/jumbo p0, "uri null"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v0, "lockstar_enabled"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->handleEnableStateChanged(I)V

    goto :goto_0

    :cond_1
    const-string v0, "plugin_lock_sub_enabled"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->handleEnableStateChanged(I)V

    goto :goto_0

    :cond_2
    const-string v0, "emergency_mode"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->handleEmergencyModeChanged()V

    goto :goto_0

    :cond_3
    const-string v0, "minimal_battery_use"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->handleMinimalBatteryModeChanged()V

    goto :goto_0

    :cond_4
    const-string v0, "lock_editor_support_touch_hold"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-direct {p0}, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->handleLongTouchModeChanged()V

    :cond_5
    :goto_0
    return-void
.end method

.method private synthetic lambda$onUserSwitchComplete$2()V
    .locals 2

    const-string v0, "PluginLockManagerImpl"

    const-string v1, "onUserSwitchComplete for owner"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->setLatestPluginInstance(Z)V

    iput-boolean v0, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mIsSwitchingToSub:Z

    return-void
.end method

.method private synthetic lambda$onUserSwitchComplete$3(I)V
    .locals 2

    const-string v0, "onUserSwitchComplete for "

    const-string v1, "PluginLockManagerImpl"

    invoke-static {p1, v0, v1}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mIsSwitchingToSub:Z

    return-void
.end method

.method private synthetic lambda$setPluginInstanceState$4()V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mPluginWallpaperManager:Lcom/android/systemui/pluginlock/PluginWallpaperManager;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/android/systemui/pluginlock/PluginWallpaperManager;->onLockWallpaperChanged(I)V

    return-void
.end method

.method private migration(Lcom/android/systemui/pluginlock/PluginLockInstanceState;)V
    .locals 6

    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->getDataVersion()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[migration] for ["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PluginLockManagerImpl"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "[migration] - savedVersion: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ", currVersion:3"

    invoke-static {v1, v0, v3, v2}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/SettingsHelper;->getPluginLockValue(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/android/systemui/util/SettingsHelper;->getPluginLockValue(I)I

    move-result v1

    const-string v4, "[migration] - mainValue: "

    const-string v5, ", subValue:"

    invoke-static {v0, v1, v4, v5, v2}, Landroidx/appcompat/widget/SuggestionsAdapter$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, -0x1

    if-eq v0, v4, :cond_1

    if-ne v1, v4, :cond_1

    iget-object v1, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mPolicy:Lcom/android/systemui/pluginlock/PluginLockInstancePolicy;

    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->getAllowedNumber()I

    move-result v4

    invoke-virtual {v1, v4, v0}, Lcom/android/systemui/pluginlock/PluginLockInstancePolicy;->isSameInstance(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mPolicy:Lcom/android/systemui/pluginlock/PluginLockInstancePolicy;

    invoke-virtual {v1, v0}, Lcom/android/systemui/pluginlock/PluginLockInstancePolicy;->isEnable(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "[migration] - start!"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mPolicy:Lcom/android/systemui/pluginlock/PluginLockInstancePolicy;

    invoke-virtual {v1, v0}, Lcom/android/systemui/pluginlock/PluginLockInstancePolicy;->isEnable(I)Z

    move-result v1

    invoke-virtual {p1, v3, v1}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->setStateData(IZ)V

    iput-boolean v3, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mIsMigrating:Z

    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p0, v3, v0}, Lcom/android/systemui/util/SettingsHelper;->setPluginLockValue(II)V

    goto :goto_0

    :cond_0
    const-string p0, "[migration] - not activated plugin"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method private notifyPluginLockModeChanged(Lcom/samsung/systemui/splugins/pluginlock/PluginLock;IZ)V
    .locals 1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/samsung/systemui/splugins/pluginlock/PluginLock;->getBasicManager()Lcom/samsung/systemui/splugins/pluginlock/PluginLockBasicManager;

    move-result-object p0

    if-eqz p0, :cond_1

    :try_start_0
    sget-boolean p0, Lcom/android/systemui/LsRune;->PLUGIN_LOCK_MULTIPLE_ACTIVATION:Z

    if-eqz p0, :cond_0

    invoke-interface {p1}, Lcom/samsung/systemui/splugins/pluginlock/PluginLock;->getBasicManager()Lcom/samsung/systemui/splugins/pluginlock/PluginLockBasicManager;

    move-result-object p0

    invoke-interface {p0, p2, p3}, Lcom/samsung/systemui/splugins/pluginlock/PluginLockBasicManager;->onPluginLockModeChanged(IZ)V

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lcom/samsung/systemui/splugins/pluginlock/PluginLock;->getBasicManager()Lcom/samsung/systemui/splugins/pluginlock/PluginLockBasicManager;

    move-result-object p0

    invoke-interface {p0, p3}, Lcom/samsung/systemui/splugins/pluginlock/PluginLockBasicManager;->onPluginLockModeChanged(Z)V
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "notifyPluginLockMode, "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/AbstractMethodError;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "PluginLockManagerImpl"

    invoke-static {p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p1}, Lcom/samsung/systemui/splugins/pluginlock/PluginLock;->getBasicManager()Lcom/samsung/systemui/splugins/pluginlock/PluginLockBasicManager;

    move-result-object p0

    invoke-interface {p0, p3}, Lcom/samsung/systemui/splugins/pluginlock/PluginLockBasicManager;->onPluginLockModeChanged(Z)V

    :cond_1
    :goto_1
    return-void
.end method

.method private putPluginInstanceToMap(Ljava/lang/String;Lcom/android/systemui/pluginlock/PluginLockInstanceState;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mLockPluginMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mLockPluginMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mLockPluginMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mPolicy:Lcom/android/systemui/pluginlock/PluginLockInstancePolicy;

    invoke-virtual {v0, p2}, Lcom/android/systemui/pluginlock/PluginLockInstancePolicy;->setCategory(Lcom/android/systemui/pluginlock/PluginLockInstanceState;)V

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "putPluginInstanceToMap, size "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mLockPluginMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->size()I

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", packageName "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PluginLockManagerImpl"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private resetConfigs()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    invoke-interface {p0}, Lcom/android/systemui/pluginlock/PluginLockMediator;->resetConfigs()V

    return-void
.end method

.method private setCurrentPluginValue(II)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mCurrentPluginValueMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setLatestPluginInstance(IZ)V
    .locals 10

    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mUtils:Lcom/android/systemui/pluginlock/PluginLockUtils;

    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/PluginLockUtils;->isCurrentOwner()Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "setLatestPluginInstance map size: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mLockPluginMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", isCurrentOwner:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PluginLockManagerImpl"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mLockPluginMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const-wide/16 v3, 0x0

    move-object v5, v1

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    invoke-virtual {v7}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->getData()Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;

    move-result-object v7

    if-eqz v7, :cond_1

    sget-boolean v8, Lcom/android/systemui/LsRune;->PLUGIN_LOCK_MULTIPLE_ACTIVATION:Z

    if-eqz v8, :cond_2

    invoke-virtual {v7, p1}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;->getTimeStamps(I)Ljava/lang/Long;

    move-result-object v7

    goto :goto_1

    :cond_2
    invoke-virtual {v7}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;->getTimeStamp()Ljava/lang/Long;

    move-result-object v7

    :goto_1
    if-eqz v7, :cond_1

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    cmp-long v8, v3, v8

    if-gez v8, :cond_1

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    move-object v5, v6

    goto :goto_0

    :cond_3
    if-eqz v5, :cond_5

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    invoke-virtual {p2}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->getAllowedNumber()I

    move-result p2

    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/util/SettingsHelper;->getPluginLockValue(I)I

    move-result v0

    rem-int/lit8 v0, v0, 0xa

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    const/4 v1, 0x2

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "setLatestPluginInstance() set value:"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/2addr p2, v1

    invoke-static {p2, v2, v0}, Landroidx/recyclerview/widget/RecyclerView$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)V

    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/util/SettingsHelper;->setPluginLockValue(II)V

    goto :goto_2

    :cond_5
    if-eqz p2, :cond_6

    iget-object p2, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mUtils:Lcom/android/systemui/pluginlock/PluginLockUtils;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "setLatestPluginInstance, screen:"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", DISABLED_ALL"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v2, v0}, Lcom/android/systemui/pluginlock/PluginLockUtils;->addDump(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, v1}, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->setPluginInstance(ILcom/android/systemui/pluginlock/PluginLockInstanceState;)V

    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/util/SettingsHelper;->setPluginLockValue(II)V

    goto :goto_2

    :cond_6
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mDelegateApp:Lcom/android/systemui/pluginlock/PluginLockDelegateApp;

    if-eqz p0, :cond_7

    invoke-virtual {p0, v1}, Lcom/android/systemui/pluginlock/PluginLockDelegateApp;->setBasicManager(Lcom/samsung/systemui/splugins/pluginlock/PluginLockBasicManager;)V

    :cond_7
    :goto_2
    return-void
.end method

.method private setLatestPluginInstance(Z)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mScreenList:[I

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, v0, v2

    invoke-direct {p0, v3, p1}, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->setLatestPluginInstance(IZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private setPluginInstance(ILcom/android/systemui/pluginlock/PluginLockInstanceState;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->setPluginInstance(ILcom/android/systemui/pluginlock/PluginLockInstanceState;Z)V

    return-void
.end method

.method private setPluginInstance(ILcom/android/systemui/pluginlock/PluginLockInstanceState;Z)V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mUtils:Lcom/android/systemui/pluginlock/PluginLockUtils;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "setPluginInstance() screen:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PluginLockManagerImpl"

    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/pluginlock/PluginLockUtils;->addDump(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-nez p2, :cond_5

    const/4 p3, 0x0

    iput-object p3, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mPluginLock:Lcom/samsung/systemui/splugins/pluginlock/PluginLock;

    iget-object v1, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    if-eqz v1, :cond_2

    sget-boolean v2, Lcom/android/systemui/LsRune;->PLUGIN_LOCK_MULTIPLE_ACTIVATION:Z

    if-eqz v2, :cond_0

    invoke-virtual {v1, p1, v0}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->setStateData(IZ)V

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v0}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->setTimeStamp(Z)V

    :goto_0
    if-eqz v2, :cond_1

    iget-object v1, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    invoke-virtual {v1, p1}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->isEnabledOtherScreen(I)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    invoke-virtual {v1}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->destroy()V

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    invoke-interface {v1, v0}, Lcom/android/systemui/pluginlock/PluginLockMediator;->updateWindowSecureState(Z)V

    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mDelegateApp:Lcom/android/systemui/pluginlock/PluginLockDelegateApp;

    if-eqz v0, :cond_4

    sget-boolean v0, Lcom/android/systemui/LsRune;->PLUGIN_LOCK_MULTIPLE_ACTIVATION:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->isEnabledOtherScreen(I)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mDelegateApp:Lcom/android/systemui/pluginlock/PluginLockDelegateApp;

    invoke-virtual {v0, p3}, Lcom/android/systemui/pluginlock/PluginLockDelegateApp;->setBasicManager(Lcom/samsung/systemui/splugins/pluginlock/PluginLockBasicManager;)V

    :cond_4
    iput-object p3, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    goto/16 :goto_4

    :cond_5
    iput-object p2, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    invoke-virtual {p2}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->getPluginLockInstance()Lcom/samsung/systemui/splugins/pluginlock/PluginLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mPluginLock:Lcom/samsung/systemui/splugins/pluginlock/PluginLock;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "setPluginInstance() mInstanceState: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p3, :cond_a

    iget-object p3, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mPolicy:Lcom/android/systemui/pluginlock/PluginLockInstancePolicy;

    iget-object v1, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    invoke-virtual {v1}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->getAllowedNumber()I

    move-result v1

    invoke-virtual {p3, v1}, Lcom/android/systemui/pluginlock/PluginLockInstancePolicy;->isDefaultInstance(I)Z

    move-result p3

    const/4 v1, 0x1

    if-eqz p3, :cond_7

    iget-object p3, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    invoke-virtual {p3, v0}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->hasEnabledPlugin(I)Z

    move-result p3

    if-nez p3, :cond_7

    iget-object p3, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    invoke-virtual {p3, v1}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->hasEnabledPlugin(I)Z

    move-result p3

    if-nez p3, :cond_7

    iget-object p3, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mScreenList:[I

    array-length v3, p3

    :goto_1
    if-ge v0, v3, :cond_9

    aget v4, p3, v0

    sget-boolean v5, Lcom/android/systemui/LsRune;->PLUGIN_LOCK_MULTIPLE_ACTIVATION:Z

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    invoke-virtual {v5, v4, v1}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->setStateData(IZ)V

    goto :goto_2

    :cond_6
    iget-object v4, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    invoke-virtual {v4, v1}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->setTimeStamp(Z)V

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_7
    sget-boolean p3, Lcom/android/systemui/LsRune;->PLUGIN_LOCK_MULTIPLE_ACTIVATION:Z

    if-eqz p3, :cond_8

    iget-object p3, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    invoke-virtual {p3, p1, v1}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->setStateData(IZ)V

    goto :goto_3

    :cond_8
    iget-object p3, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    invoke-virtual {p3, v1}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->setTimeStamp(Z)V

    :cond_9
    :goto_3
    iget-object p3, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mUtils:Lcom/android/systemui/pluginlock/PluginLockUtils;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setPluginInstance() set timestamp true for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v2, v0}, Lcom/android/systemui/pluginlock/PluginLockUtils;->addDump(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    iget-object p3, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mDelegateSysUi:Lcom/android/systemui/pluginlock/PluginLockDelegateSysUi;

    if-eqz p3, :cond_b

    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    invoke-virtual {p3, p1, v0}, Lcom/android/systemui/pluginlock/PluginLockDelegateSysUi;->setPluginLockInstanceState(ILcom/android/systemui/pluginlock/PluginLockInstanceState;)V

    :cond_b
    iget-object p3, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mPluginLock:Lcom/samsung/systemui/splugins/pluginlock/PluginLock;

    if-eqz p3, :cond_c

    invoke-interface {p3}, Lcom/samsung/systemui/splugins/pluginlock/PluginLock;->getBasicManager()Lcom/samsung/systemui/splugins/pluginlock/PluginLockBasicManager;

    move-result-object p3

    if-eqz p3, :cond_c

    iget-object p3, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mPluginLock:Lcom/samsung/systemui/splugins/pluginlock/PluginLock;

    invoke-interface {p3}, Lcom/samsung/systemui/splugins/pluginlock/PluginLock;->getBasicManager()Lcom/samsung/systemui/splugins/pluginlock/PluginLockBasicManager;

    move-result-object p3

    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mDelegateSysUi:Lcom/android/systemui/pluginlock/PluginLockDelegateSysUi;

    invoke-interface {p3, v0}, Lcom/samsung/systemui/splugins/pluginlock/PluginLockBasicManager;->setCallback(Lcom/samsung/systemui/splugins/pluginlock/PluginLockBasicManager$Callback;)V

    :cond_c
    iget-object p3, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mPluginLock:Lcom/samsung/systemui/splugins/pluginlock/PluginLock;

    invoke-interface {p3, v0}, Lcom/android/systemui/pluginlock/PluginLockMediator;->setPluginLock(Lcom/samsung/systemui/splugins/pluginlock/PluginLock;)V

    iget-object p3, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mDelegateApp:Lcom/android/systemui/pluginlock/PluginLockDelegateApp;

    if-eqz p3, :cond_d

    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mPluginLock:Lcom/samsung/systemui/splugins/pluginlock/PluginLock;

    if-eqz v0, :cond_d

    invoke-interface {v0}, Lcom/samsung/systemui/splugins/pluginlock/PluginLock;->getBasicManager()Lcom/samsung/systemui/splugins/pluginlock/PluginLockBasicManager;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/android/systemui/pluginlock/PluginLockDelegateApp;->setBasicManager(Lcom/samsung/systemui/splugins/pluginlock/PluginLockBasicManager;)V

    :cond_d
    iget-object p3, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    invoke-interface {p3}, Lcom/android/systemui/pluginlock/PluginLockMediator;->onBarStateChanged()V

    :goto_4
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    invoke-interface {p0, p1, p2}, Lcom/android/systemui/pluginlock/PluginLockMediator;->setInstanceState(ILcom/android/systemui/pluginlock/PluginLockInstanceState;)V

    return-void
.end method

.method private updateEnabledState(IZ)V
    .locals 5

    if-eqz p2, :cond_0

    invoke-direct {p0, p1}, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->getCurrentPluginValue(I)I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/util/SettingsHelper;->getPluginLockValue(I)I

    move-result v0

    :goto_0
    const-string/jumbo v1, "updateEnabledState getPluginLockValue = "

    const-string v2, "PluginLockManagerImpl"

    invoke-static {v0, v1, v2}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x2710

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-lt v0, v1, :cond_1

    move v0, v4

    goto :goto_1

    :cond_1
    move v0, v3

    :goto_1
    if-nez p2, :cond_2

    invoke-direct {p0, p1}, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->isEnabledFromSettingHelper(I)Z

    move-result p1

    if-eqz p1, :cond_2

    move p1, v4

    goto :goto_2

    :cond_2
    move p1, v3

    :goto_2
    const-string/jumbo p2, "updateEnabledState() isDynamicMode = "

    const-string v1, ", isEnabledFromSetting = "

    invoke-static {p2, v1, v2, v0, p1}, Lcom/android/keyguard/KeyguardKnoxGuardViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    move v3, v4

    :cond_3
    iput-boolean v3, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mIsDynamicEnabled:Z

    return-void
.end method

.method private updatePluginLockMode(IZZ)V
    .locals 11

    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mUtils:Lcom/android/systemui/pluginlock/PluginLockUtils;

    const-string v1, "[PluginLock Switching] start"

    const-string v2, "PluginLockManagerImpl"

    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/pluginlock/PluginLockUtils;->addDump(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_0

    invoke-direct {p0, p1}, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->getCurrentPluginValue(I)I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/util/SettingsHelper;->getPluginLockValue(I)I

    move-result v0

    :goto_0
    iget-boolean v1, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mIsDynamicEnabled:Z

    iget-object v3, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mUtils:Lcom/android/systemui/pluginlock/PluginLockUtils;

    invoke-virtual {v3}, Lcom/android/systemui/pluginlock/PluginLockUtils;->isCurrentOwner()Z

    move-result v3

    const/16 v4, 0x7530

    if-nez v3, :cond_1

    if-eq v0, v4, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "[PluginLock Switching] ignore, screen: "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", pluginValue:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-direct {p0, p1, p3}, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->updateEnabledState(IZ)V

    iget-object v3, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mUtils:Lcom/android/systemui/pluginlock/PluginLockUtils;

    const-string v5, "[PluginLock Switching]\n screen:"

    const-string v6, "\n enable:"

    const-string v7, "\n pluginValue(final):"

    invoke-static {v5, p1, v6, p2, v7}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "\n pluginValue(current):"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->getCurrentPluginValue(I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "\n pluginValue(setting):"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v6, p1}, Lcom/android/systemui/util/SettingsHelper;->getPluginLockValue(I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "\n wasEnabled:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, "\n isEnabled:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mIsDynamicEnabled:Z

    const-string v7, "\n isForcedDisable:"

    const-string v8, "\n isOwnerProcess:"

    invoke-static {v5, v6, v7, p3, v8}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    invoke-direct {p0}, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->isOwnerProcess()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, "\n isCurrentOwner:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mUtils:Lcom/android/systemui/pluginlock/PluginLockUtils;

    invoke-virtual {v6}, Lcom/android/systemui/pluginlock/PluginLockUtils;->isCurrentOwner()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v2, v5}, Lcom/android/systemui/pluginlock/PluginLockUtils;->addDump(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    if-eqz p2, :cond_2

    if-eqz v0, :cond_2

    iget-object v5, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mUtils:Lcom/android/systemui/pluginlock/PluginLockUtils;

    invoke-virtual {v5}, Lcom/android/systemui/pluginlock/PluginLockUtils;->isGoingToRescueParty()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mUtils:Lcom/android/systemui/pluginlock/PluginLockUtils;

    const-string v6, "[PluginLock Switching] getting disabled by the rescue party"

    invoke-virtual {v5, v2, v6}, Lcom/android/systemui/pluginlock/PluginLockUtils;->addDump(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v5, p1, v3}, Lcom/android/systemui/util/SettingsHelper;->setPluginLockValue(II)V

    :cond_2
    const-string v5, ", number:"

    const/4 v6, 0x1

    if-eqz p2, :cond_f

    iget-object p2, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    invoke-interface {p2, v6}, Lcom/android/systemui/pluginlock/PluginLockMediator;->setLockscreenEnabled(Z)V

    iget-object p2, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    invoke-interface {p2}, Lcom/android/systemui/pluginlock/PluginLockMediator;->registerUpdateMonitor()V

    iget-object p2, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mLockPluginMap:Ljava/util/HashMap;

    invoke-virtual {p2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_3
    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v7, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mLockPluginMap:Ljava/util/HashMap;

    invoke-virtual {v7, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    if-nez v4, :cond_4

    goto :goto_2

    :cond_4
    iget-object v7, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mPolicy:Lcom/android/systemui/pluginlock/PluginLockInstancePolicy;

    invoke-virtual {v4}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->getAllowedNumber()I

    move-result v8

    invoke-virtual {v7, v0, v8}, Lcom/android/systemui/pluginlock/PluginLockInstancePolicy;->isSameInstance(II)Z

    move-result v7

    if-nez v7, :cond_3

    iget-object v7, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mPolicy:Lcom/android/systemui/pluginlock/PluginLockInstancePolicy;

    invoke-virtual {v4}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->getAllowedNumber()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/android/systemui/pluginlock/PluginLockInstancePolicy;->isDefaultInstance(I)Z

    move-result v7

    if-nez v7, :cond_3

    iget-object v7, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    if-eqz v7, :cond_3

    invoke-virtual {v7, p1}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->isEnabled(I)Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mUtils:Lcom/android/systemui/pluginlock/PluginLockUtils;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "[PluginLock Switching] enable, set timestamp 0 for "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->getAllowedNumber()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v2, v8}, Lcom/android/systemui/pluginlock/PluginLockUtils;->addDump(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v7, Lcom/android/systemui/LsRune;->PLUGIN_LOCK_MULTIPLE_ACTIVATION:Z

    if-eqz v7, :cond_5

    invoke-virtual {v4, p1, v3}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->setStateData(IZ)V

    goto :goto_1

    :cond_5
    invoke-virtual {v4, v3}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->setTimeStamp(Z)V

    goto :goto_1

    :cond_6
    :goto_2
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_7
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1f

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    iget-object v3, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mLockPluginMap:Ljava/util/HashMap;

    invoke-virtual {v3, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    if-nez v3, :cond_8

    goto/16 :goto_8

    :cond_8
    iget-object v4, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mPolicy:Lcom/android/systemui/pluginlock/PluginLockInstancePolicy;

    invoke-virtual {v3}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->getAllowedNumber()I

    move-result v7

    invoke-virtual {v4, v0, v7}, Lcom/android/systemui/pluginlock/PluginLockInstancePolicy;->isSameInstance(II)Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object p2, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mUtils:Lcom/android/systemui/pluginlock/PluginLockUtils;

    const-string v4, "[PluginLock Switching] enable, screen: "

    const-string v7, ", mScreenType: "

    invoke-static {p1, v4, v7}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v7, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mScreenType:I

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", key:"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, v2, p3}, Lcom/android/systemui/pluginlock/PluginLockUtils;->addDump(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->getPluginLockInstance()Lcom/samsung/systemui/splugins/pluginlock/PluginLock;

    move-result-object p2

    sget-boolean p3, Lcom/android/systemui/LsRune;->PLUGIN_LOCK_MULTIPLE_ACTIVATION:Z

    if-eqz p3, :cond_b

    iget p3, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mScreenType:I

    if-ne p1, p3, :cond_9

    goto :goto_3

    :cond_9
    invoke-virtual {v3, p1, v6}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->setStateData(IZ)V

    iget-object p3, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mDelegateApp:Lcom/android/systemui/pluginlock/PluginLockDelegateApp;

    if-eqz p3, :cond_a

    if-eqz p2, :cond_a

    invoke-interface {p2}, Lcom/samsung/systemui/splugins/pluginlock/PluginLock;->getBasicManager()Lcom/samsung/systemui/splugins/pluginlock/PluginLockBasicManager;

    move-result-object v1

    invoke-virtual {p3, v1}, Lcom/android/systemui/pluginlock/PluginLockDelegateApp;->setPanelView(Lcom/samsung/systemui/splugins/pluginlock/PluginLockBasicManager;)V

    :cond_a
    if-eqz p2, :cond_e

    invoke-interface {p2}, Lcom/samsung/systemui/splugins/pluginlock/PluginLock;->getBasicManager()Lcom/samsung/systemui/splugins/pluginlock/PluginLockBasicManager;

    move-result-object p3

    if-eqz p3, :cond_e

    invoke-interface {p2}, Lcom/samsung/systemui/splugins/pluginlock/PluginLock;->getBasicManager()Lcom/samsung/systemui/splugins/pluginlock/PluginLockBasicManager;

    move-result-object p3

    iget-object v1, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mDelegateSysUi:Lcom/android/systemui/pluginlock/PluginLockDelegateSysUi;

    invoke-interface {p3, v1}, Lcom/samsung/systemui/splugins/pluginlock/PluginLockBasicManager;->setCallback(Lcom/samsung/systemui/splugins/pluginlock/PluginLockBasicManager$Callback;)V

    goto :goto_4

    :cond_b
    :goto_3
    invoke-direct {p0, p1, v3}, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->setPluginInstance(ILcom/android/systemui/pluginlock/PluginLockInstanceState;)V

    iget-boolean p3, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mIsDynamicEnabled:Z

    if-nez p3, :cond_c

    if-eqz v1, :cond_d

    :cond_c
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->resetDynamicLock()V

    :cond_d
    iget-object p3, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mPolicy:Lcom/android/systemui/pluginlock/PluginLockInstancePolicy;

    invoke-virtual {v3}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->getAllowedNumber()I

    move-result v1

    invoke-virtual {p3, v1}, Lcom/android/systemui/pluginlock/PluginLockInstancePolicy;->isDualDisplayInstance(I)Z

    move-result p3

    invoke-static {p3}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->setDualDisplayPlugin(Z)V

    :cond_e
    :goto_4
    invoke-direct {p0, p2, p1, v6}, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->notifyPluginLockModeChanged(Lcom/samsung/systemui/splugins/pluginlock/PluginLock;IZ)V

    goto/16 :goto_8

    :cond_f
    if-eq v0, v4, :cond_11

    sget-boolean p2, Lcom/android/systemui/LsRune;->PLUGIN_LOCK_MULTIPLE_ACTIVATION:Z

    if-eqz p2, :cond_10

    iget-object p2, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    if-eqz p2, :cond_10

    invoke-virtual {p2, p1}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->isEnabledOtherScreen(I)Z

    move-result p2

    if-nez p2, :cond_11

    :cond_10
    iget-object p2, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    invoke-interface {p2}, Lcom/android/systemui/pluginlock/PluginLockMediator;->unregisterUpdateMonitor()V

    :cond_11
    invoke-direct {p0}, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->resetConfigs()V

    if-eqz v1, :cond_14

    iget-boolean p2, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mIsDynamicEnabled:Z

    if-nez p2, :cond_14

    iget-object p2, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p2}, Lcom/android/systemui/util/SettingsHelper;->isEmergencyMode()Z

    move-result p2

    if-nez p2, :cond_13

    iget-object p2, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p2}, Lcom/android/systemui/util/SettingsHelper;->isUltraPowerSavingMode()Z

    move-result p2

    if-nez p2, :cond_13

    iget-boolean p2, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mIsSwitchingToSub:Z

    if-eqz p2, :cond_12

    goto :goto_5

    :cond_12
    move v6, v3

    :cond_13
    :goto_5
    iget-object p2, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    invoke-interface {p2, v6}, Lcom/android/systemui/pluginlock/PluginLockMediator;->resetDynamicLockData(Z)V

    :cond_14
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->resetDynamicLock()V

    invoke-static {v3}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->setDualDisplayPlugin(Z)V

    iget-object p2, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mDelegateApp:Lcom/android/systemui/pluginlock/PluginLockDelegateApp;

    const/4 v1, 0x0

    if-eqz p2, :cond_15

    invoke-virtual {p2, v1}, Lcom/android/systemui/pluginlock/PluginLockDelegateApp;->setBasicManager(Lcom/samsung/systemui/splugins/pluginlock/PluginLockBasicManager;)V

    :cond_15
    iget-object p2, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mDelegateSysUi:Lcom/android/systemui/pluginlock/PluginLockDelegateSysUi;

    if-eqz p2, :cond_16

    invoke-virtual {p2, p1, v1}, Lcom/android/systemui/pluginlock/PluginLockDelegateSysUi;->setPluginLockInstanceState(ILcom/android/systemui/pluginlock/PluginLockInstanceState;)V

    :cond_16
    iget-object p2, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    invoke-interface {p2, v1}, Lcom/android/systemui/pluginlock/PluginLockMediator;->setPluginLock(Lcom/samsung/systemui/splugins/pluginlock/PluginLock;)V

    iget-object p2, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    invoke-interface {p2, p1, v1}, Lcom/android/systemui/pluginlock/PluginLockMediator;->setInstanceState(ILcom/android/systemui/pluginlock/PluginLockInstanceState;)V

    iput-object v1, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mPluginLock:Lcom/samsung/systemui/splugins/pluginlock/PluginLock;

    iput-object v1, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    iget-object p2, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mLockPluginMap:Ljava/util/HashMap;

    invoke-virtual {p2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_17
    :goto_6
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v6, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mLockPluginMap:Ljava/util/HashMap;

    invoke-virtual {v6, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    if-nez v6, :cond_18

    return-void

    :cond_18
    if-eqz v0, :cond_19

    const/16 v7, 0x4e20

    if-eq v0, v7, :cond_19

    if-eq v0, v4, :cond_19

    iget-object v7, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mPolicy:Lcom/android/systemui/pluginlock/PluginLockInstancePolicy;

    invoke-virtual {v6}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->getAllowedNumber()I

    move-result v8

    invoke-virtual {v7, v0, v8}, Lcom/android/systemui/pluginlock/PluginLockInstancePolicy;->isSameInstance(II)Z

    move-result v7

    if-eqz v7, :cond_17

    :cond_19
    iget-object v7, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mUtils:Lcom/android/systemui/pluginlock/PluginLockUtils;

    const-string v8, "[PluginLock Switching] disable, pluginValue:"

    const-string v9, "key:"

    invoke-static {v0, v8, v9, v1, v5}, Lcom/android/keyguard/KeyguardBiometricLockoutLogger$mKeyguardUpdateMonitorCallback$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->getAllowedNumber()I

    move-result v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v2, v1}, Lcom/android/systemui/pluginlock/PluginLockUtils;->addDump(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->getPluginLockInstance()Lcom/samsung/systemui/splugins/pluginlock/PluginLock;

    move-result-object v1

    invoke-direct {p0, v1, p1, v3}, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->notifyPluginLockModeChanged(Lcom/samsung/systemui/splugins/pluginlock/PluginLock;IZ)V

    if-nez v0, :cond_1c

    invoke-virtual {v6}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->getPluginLockTimeStamp()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v1, v7, v9

    if-lez v1, :cond_1a

    iget-object v1, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mUtils:Lcom/android/systemui/pluginlock/PluginLockUtils;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "[PluginLock Switching] disable all, set timestamp 0 for "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->getAllowedNumber()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v2, v7}, Lcom/android/systemui/pluginlock/PluginLockUtils;->addDump(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1a
    sget-boolean v1, Lcom/android/systemui/LsRune;->PLUGIN_LOCK_MULTIPLE_ACTIVATION:Z

    if-eqz v1, :cond_1b

    invoke-virtual {v6, p1, v3}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->setStateData(IZ)V

    goto :goto_6

    :cond_1b
    invoke-virtual {v6, v3}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->setTimeStamp(Z)V

    goto :goto_6

    :cond_1c
    iget-object v1, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mPolicy:Lcom/android/systemui/pluginlock/PluginLockInstancePolicy;

    invoke-virtual {v6}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->getAllowedNumber()I

    move-result v7

    invoke-virtual {v1, v0, v7}, Lcom/android/systemui/pluginlock/PluginLockInstancePolicy;->isSameInstance(II)Z

    move-result v1

    if-eqz v1, :cond_1e

    if-nez p3, :cond_17

    iget-object v1, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mUtils:Lcom/android/systemui/pluginlock/PluginLockUtils;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "[PluginLock Switching] disable, set timestamp 0 for "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->getAllowedNumber()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v2, v7}, Lcom/android/systemui/pluginlock/PluginLockUtils;->addDump(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v1, Lcom/android/systemui/LsRune;->PLUGIN_LOCK_MULTIPLE_ACTIVATION:Z

    if-eqz v1, :cond_1d

    invoke-virtual {v6, p1, v3}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->setStateData(IZ)V

    goto :goto_7

    :cond_1d
    invoke-virtual {v6, v3}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->setTimeStamp(Z)V

    :goto_7
    invoke-direct {p0, p1, v3}, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->setLatestPluginInstance(IZ)V

    goto/16 :goto_6

    :cond_1e
    const-string v1, "[PluginLock Switching] disable,  won\'t update timestamp, "

    invoke-static {v0, v1, v2}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_1f
    :goto_8
    iget-object p2, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    invoke-direct {p0}, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->isDynamicLockEnabled()Z

    move-result p3

    invoke-interface {p2, p3}, Lcom/android/systemui/pluginlock/PluginLockMediator;->setEnabled(Z)V

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->setCurrentPluginValue(II)V

    iget-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mUtils:Lcom/android/systemui/pluginlock/PluginLockUtils;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "[PluginLock Switching] done, "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mPluginLock:Lcom/samsung/systemui/splugins/pluginlock/PluginLock;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v2, p0}, Lcom/android/systemui/pluginlock/PluginLockUtils;->addDump(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6

    iget-object p2, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mUtils:Lcom/android/systemui/pluginlock/PluginLockUtils;

    invoke-virtual {p2}, Lcom/android/systemui/pluginlock/PluginLockUtils;->getDumpLegacy()Ljava/lang/String;

    move-result-object p2

    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mUtils:Lcom/android/systemui/pluginlock/PluginLockUtils;

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/PluginLockUtils;->getDump()Ljava/lang/String;

    move-result-object p0

    const-string v0, "PluginLockManagerImpl"

    const-string v1, "\n\nPluginLockManager event:\n"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "------ Legacy --------------------------------------------------------------\n"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "------ New -----------------------------------------------------------------\n"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "----------------------------------------------------------------------------\n"

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public getDynamicLockData()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    invoke-interface {p0}, Lcom/android/systemui/pluginlock/PluginLockMediator;->getDynamicLockData()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getLockStarItemLocationInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    invoke-interface {p0, p1}, Lcom/android/systemui/pluginlock/PluginLockMediator;->getLockStarItemLocationInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPluginLock()Lcom/samsung/systemui/splugins/pluginlock/PluginLock;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mPluginLock:Lcom/samsung/systemui/splugins/pluginlock/PluginLock;

    return-object p0
.end method

.method public getShortcutTaskState(Ljava/lang/String;)Z
    .locals 4

    const-string v0, "Dnd"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mTaskDnd:Lcom/android/systemui/pluginlock/component/PluginLockShortcutDnd;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/systemui/pluginlock/component/PluginLockShortcutDnd;

    iget-object v2, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    invoke-direct {v0, v2, v3}, Lcom/android/systemui/pluginlock/component/PluginLockShortcutDnd;-><init>(Landroid/content/Context;Lcom/android/systemui/pluginlock/PluginLockMediator;)V

    iput-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mTaskDnd:Lcom/android/systemui/pluginlock/component/PluginLockShortcutDnd;

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mTaskDnd:Lcom/android/systemui/pluginlock/component/PluginLockShortcutDnd;

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/component/PluginLockShortcutDnd;->isEnabled()Z

    move-result p0

    goto :goto_0

    :cond_1
    const-string v0, "Flashlight"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mTaskFlashLight:Lcom/android/systemui/pluginlock/component/PluginLockShortcutFlashLight;

    if-nez v0, :cond_2

    new-instance v0, Lcom/android/systemui/pluginlock/component/PluginLockShortcutFlashLight;

    iget-object v2, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    invoke-direct {v0, v2, v3}, Lcom/android/systemui/pluginlock/component/PluginLockShortcutFlashLight;-><init>(Landroid/content/Context;Lcom/android/systemui/pluginlock/PluginLockMediator;)V

    iput-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mTaskFlashLight:Lcom/android/systemui/pluginlock/component/PluginLockShortcutFlashLight;

    :cond_2
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mTaskFlashLight:Lcom/android/systemui/pluginlock/component/PluginLockShortcutFlashLight;

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/component/PluginLockShortcutFlashLight;->isEnabled()Z

    move-result p0

    goto :goto_0

    :cond_3
    move p0, v1

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "getShortcutTaskState [taskName] "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ",[isEnable] "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "PluginLockManagerImpl"

    invoke-static {v1, p1, v0}, Lcom/android/systemui/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return p0
.end method

.method public onCoverStateChanged(Lcom/samsung/android/cover/CoverState;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onCoverStateChanged "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PluginLockManagerImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/android/systemui/LsRune;->WALLPAPER_VIRTUAL_DISPLAY:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v0

    invoke-static {v0}, Lcom/android/systemui/util/DeviceState;->isCoverUiWithWallpaper(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    if-eq v0, p1, :cond_1

    iput-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget-boolean p1, p1, Lcom/samsung/android/cover/CoverState;->switchState:Z

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->onFolderStateChanged(Z)V

    :cond_1
    return-void
.end method

.method public onDesktopModeStateChanged(Lcom/samsung/android/desktopmode/SemDesktopModeState;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onDesktopModeStateChanged: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PluginLockManagerImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getDisplayType()I

    move-result v0

    const/16 v1, 0x65

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getEnabled()I

    move-result v0

    const/4 v1, 0x4

    const/16 v2, 0x32

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getState()I

    move-result v0

    if-ne v0, v2, :cond_1

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->handleStandaloneDexMode(Z)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getEnabled()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    invoke-virtual {p1}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getState()I

    move-result p1

    if-ne p1, v2, :cond_2

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->handleStandaloneDexMode(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onFolderStateChanged(Z)V
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    :cond_0
    move v2, v1

    goto :goto_0

    :cond_1
    sget-boolean v2, Lcom/android/systemui/LsRune;->LOCKUI_SUB_DISPLAY_LOCK:Z

    if-nez v2, :cond_2

    sget-boolean v2, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_WATCHFACE:Z

    if-nez v2, :cond_2

    sget-boolean v2, Lcom/android/systemui/LsRune;->WALLPAPER_VIRTUAL_DISPLAY:Z

    if-eqz v2, :cond_0

    :cond_2
    move v2, v0

    :goto_0
    iput v2, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mScreenType:I

    const-string v2, "PluginLock:onFolderStateChanged, opened: "

    const-string v3, ", mScreenType: "

    invoke-static {v2, v3, p1}, Landroidx/slice/widget/RowView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mScreenType:I

    const-string v4, "PluginLockManagerImpl"

    invoke-static {v3, v4, v2}, Landroidx/appcompat/widget/TooltipPopup$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)V

    sget-boolean v2, Lcom/android/systemui/LsRune;->PLUGIN_LOCK_MULTIPLE_ACTIVATION:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mLockPluginMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iget-object v6, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mLockPluginMap:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    if-eqz v5, :cond_3

    iget v6, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mScreenType:I

    invoke-virtual {v5, v6}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->isEnabled(I)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    if-eq v5, v6, :cond_3

    iget v6, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mScreenType:I

    invoke-virtual {v5, v6}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->isRecentInstance(I)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v2, "PluginLock:onFolderStateChanged, newState found: null"

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    move-object v5, v3

    :goto_1
    sget-boolean v2, Lcom/android/systemui/LsRune;->PLUGIN_LOCK_MULTIPLE_ACTIVATION:Z

    if-eqz v2, :cond_5

    invoke-direct {p0}, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->isDynamicLockEnabled()Z

    move-result v2

    if-eqz v2, :cond_5

    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    if-eqz v2, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PluginLock:onFolderStateChanged, old: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    invoke-virtual {v6}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    invoke-interface {v2, p1, v1}, Lcom/android/systemui/pluginlock/PluginLockMediator;->onFolderStateChanged(ZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_5
    :goto_2
    iget-object v2, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    iget v6, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mScreenType:I

    invoke-interface {v2, v6}, Lcom/android/systemui/pluginlock/PluginLockMediator;->setScreenTypeChanged(I)V

    sget-boolean v2, Lcom/android/systemui/LsRune;->PLUGIN_LOCK_MULTIPLE_ACTIVATION:Z

    if-eqz v2, :cond_8

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "PluginLock:onFolderStateChanged, will be switched, newState: "

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v5, :cond_6

    const-string v2, "PluginLock:onFolderStateChanged, changed to new state"

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v2, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mScreenType:I

    invoke-direct {p0, v2, v5, v0}, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->setPluginInstance(ILcom/android/systemui/pluginlock/PluginLockInstanceState;Z)V

    goto :goto_3

    :cond_6
    iget-object v2, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    if-eqz v2, :cond_7

    iget v5, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mScreenType:I

    invoke-virtual {v2, v5}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->isRecentInstance(I)Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, "PluginLock:onFolderStateChanged, instance reset"

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v2, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mScreenType:I

    invoke-direct {p0, v2, v3}, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->setPluginInstance(ILcom/android/systemui/pluginlock/PluginLockInstanceState;)V

    goto :goto_3

    :cond_7
    const-string v2, "PluginLock:onFolderStateChanged, instance maintained"

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    iget v2, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mScreenType:I

    invoke-direct {p0, v2, v1}, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->updateEnabledState(IZ)V

    :cond_8
    invoke-direct {p0}, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->isDynamicLockEnabled()Z

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    invoke-interface {v2, v1}, Lcom/android/systemui/pluginlock/PluginLockMediator;->setEnabled(Z)V

    if-eqz v1, :cond_9

    :try_start_1
    iget-object v1, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    if-eqz v1, :cond_9

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFolderStateChanged, new: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    invoke-virtual {v2}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    invoke-interface {p0, p1, v0}, Lcom/android/systemui/pluginlock/PluginLockMediator;->onFolderStateChanged(ZZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_9
    :goto_4
    return-void
.end method

.method public onPluginConnected(Lcom/samsung/systemui/splugins/pluginlock/PluginLock;Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->isOwnerProcess()Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onPluginConnected : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", isOwnerProcess: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PluginLockManagerImpl"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    iget-object v1, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mUtils:Lcom/android/systemui/pluginlock/PluginLockUtils;

    invoke-direct {v0, p1, p2, v1}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;-><init>(Lcom/samsung/systemui/splugins/pluginlock/PluginLock;Landroid/content/Context;Lcom/android/systemui/pluginlock/PluginLockUtils;)V

    sget-boolean p1, Lcom/android/systemui/LsRune;->PLUGIN_LOCK_MULTIPLE_ACTIVATION:Z

    if-eqz p1, :cond_1

    invoke-direct {p0, v0}, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->migration(Lcom/android/systemui/pluginlock/PluginLockInstanceState;)V

    :cond_1
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->setPluginInstanceState(Lcom/android/systemui/pluginlock/PluginLockInstanceState;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onPluginDisconnected(Lcom/samsung/systemui/splugins/pluginlock/PluginLock;I)V
    .locals 2

    const-string v0, "onPluginDisconnected "

    const-string v1, "PluginLockManagerImpl"

    invoke-static {p2, v0, v1}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-virtual {p0, p2, p1}, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->removeInstance(ILcom/samsung/systemui/splugins/pluginlock/PluginLock;)V

    :cond_0
    return-void
.end method

.method public onRootViewAttached(Landroid/view/ViewGroup;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onRootViewAttached : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PluginLockManagerImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mDelegateApp:Lcom/android/systemui/pluginlock/PluginLockDelegateApp;

    invoke-virtual {p0, p1}, Lcom/android/systemui/pluginlock/PluginLockDelegateApp;->onRootViewAttached(Landroid/view/ViewGroup;)V

    return-void
.end method

.method public onUserSwitchComplete(I)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mUtils:Lcom/android/systemui/pluginlock/PluginLockUtils;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onUserSwitchComplete, from: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mUserId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PluginLockManagerImpl"

    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/pluginlock/PluginLockUtils;->addDump(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    if-nez p1, :cond_0

    new-instance v1, Lcom/android/systemui/pluginlock/PluginLockManagerImpl$$ExternalSyntheticLambda1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/pluginlock/PluginLockManagerImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/pluginlock/PluginLockManagerImpl;I)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/android/systemui/pluginlock/PluginLockManagerImpl$$ExternalSyntheticLambda0;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v2}, Lcom/android/systemui/pluginlock/PluginLockManagerImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/pluginlock/PluginLockManagerImpl;II)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    iput p1, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mUserId:I

    return-void
.end method

.method public onUserSwitching(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mUtils:Lcom/android/systemui/pluginlock/PluginLockUtils;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onUserSwitching, userId: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PluginLockManagerImpl"

    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/pluginlock/PluginLockUtils;->addDump(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mIsSwitchingToSub:Z

    invoke-direct {p0}, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->disableByUser()V

    :cond_0
    return-void
.end method

.method public registerSystemUIViewCallback(Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    invoke-interface {p0, p1}, Lcom/android/systemui/pluginlock/PluginLockMediator;->registerStateCallback(Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;)V

    return-void
.end method

.method public removeInstance(ILcom/samsung/systemui/splugins/pluginlock/PluginLock;)V
    .locals 13

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "removeInstance() reason "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PluginLockManagerImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mLockPluginMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    invoke-virtual {v5}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->getPluginLockInstance()Lcom/samsung/systemui/splugins/pluginlock/PluginLock;

    move-result-object v7

    if-ne v7, p2, :cond_0

    iget-object v7, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mUtils:Lcom/android/systemui/pluginlock/PluginLockUtils;

    const-string v8, "disconnected, reason: "

    const-string v9, ", package:"

    invoke-static {p1, v8, v9}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v1, v8}, Lcom/android/systemui/pluginlock/PluginLockUtils;->addDump(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mScreenList:[I

    array-length v8, v7

    move v9, v3

    :goto_1
    if-ge v9, v8, :cond_6

    aget v10, v7, v9

    sget-boolean v11, Lcom/android/systemui/LsRune;->PLUGIN_LOCK_MULTIPLE_ACTIVATION:Z

    if-eqz v11, :cond_1

    invoke-virtual {v5, v10}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->isRecentInstance(I)Z

    move-result v12

    if-eqz v12, :cond_5

    goto :goto_2

    :cond_1
    invoke-virtual {v5}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->isRecentInstance()Z

    move-result v12

    if-eqz v12, :cond_5

    :goto_2
    if-nez p1, :cond_4

    if-eqz v11, :cond_2

    invoke-virtual {v5, v10, v3}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->setStateData(IZ)V

    goto :goto_3

    :cond_2
    invoke-virtual {v5, v3}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->setTimeStamp(Z)V

    :goto_3
    invoke-virtual {v5}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->isPluginLockPackage(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mUtils:Lcom/android/systemui/pluginlock/PluginLockUtils;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "plugin Package removed"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v1, v11}, Lcom/android/systemui/pluginlock/PluginLockUtils;->addDump(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mRemovedPackageName:Ljava/lang/String;

    :cond_3
    move v4, v6

    :cond_4
    invoke-direct {p0, p2, v10, v3}, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->notifyPluginLockModeChanged(Lcom/samsung/systemui/splugins/pluginlock/PluginLock;IZ)V

    iget-object v10, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    invoke-interface {v10}, Lcom/android/systemui/pluginlock/PluginLockMediator;->resetConfigs()V

    iget-object v10, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    invoke-interface {v10, v3}, Lcom/android/systemui/pluginlock/PluginLockMediator;->resetDynamicLockData(Z)V

    iget-object v10, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    invoke-interface {v10}, Lcom/android/systemui/pluginlock/PluginLockMediator;->resetDynamicLock()V

    :cond_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_6
    invoke-virtual {v5}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_7
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mLockPluginMap:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "removeInstance() pkgName:"

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", state: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ", map size: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mLockPluginMap:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->size()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_b

    iget-object v5, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mScreenList:[I

    array-length v7, v5

    move v8, v3

    :goto_5
    if-ge v8, v7, :cond_a

    aget v9, v5, v8

    sget-boolean v10, Lcom/android/systemui/LsRune;->PLUGIN_LOCK_MULTIPLE_ACTIVATION:Z

    if-eqz v10, :cond_8

    invoke-virtual {v2, v9}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->isRecentInstance(I)Z

    move-result v10

    if-eqz v10, :cond_9

    goto :goto_6

    :cond_8
    invoke-virtual {v2}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->isRecentInstance()Z

    move-result v10

    if-eqz v10, :cond_9

    :goto_6
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mPluginLock:Lcom/samsung/systemui/splugins/pluginlock/PluginLock;

    iput-object v10, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    iget-object v11, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    invoke-interface {v11, v3}, Lcom/android/systemui/pluginlock/PluginLockMediator;->updateWindowSecureState(Z)V

    iget-object v11, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mDelegateApp:Lcom/android/systemui/pluginlock/PluginLockDelegateApp;

    invoke-virtual {v11, v10}, Lcom/android/systemui/pluginlock/PluginLockDelegateApp;->setBasicManager(Lcom/samsung/systemui/splugins/pluginlock/PluginLockBasicManager;)V

    iget-object v11, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mDelegateSysUi:Lcom/android/systemui/pluginlock/PluginLockDelegateSysUi;

    invoke-virtual {v11, v9, v10}, Lcom/android/systemui/pluginlock/PluginLockDelegateSysUi;->setPluginLockInstanceState(ILcom/android/systemui/pluginlock/PluginLockInstanceState;)V

    :cond_9
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    :cond_a
    invoke-virtual {v2}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->destroy()V

    :cond_b
    iget-object v2, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mLockPluginMap:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_c
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    if-eqz v4, :cond_d

    invoke-direct {p0, v6}, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->setLatestPluginInstance(Z)V

    :cond_d
    return-void
.end method

.method public removeShortcutTaskListener()V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "PluginLockManagerImpl"

    const-string v2, "removeShortcutTaskListener"

    invoke-static {v1, v2, v0}, Lcom/android/systemui/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mTaskDnd:Lcom/android/systemui/pluginlock/component/PluginLockShortcutDnd;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/component/PluginLockShortcutDnd;->removeListener()V

    iput-object v1, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mTaskDnd:Lcom/android/systemui/pluginlock/component/PluginLockShortcutDnd;

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mTaskFlashLight:Lcom/android/systemui/pluginlock/component/PluginLockShortcutFlashLight;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/component/PluginLockShortcutFlashLight;->removeListener()V

    iput-object v1, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mTaskFlashLight:Lcom/android/systemui/pluginlock/component/PluginLockShortcutFlashLight;

    :cond_1
    return-void
.end method

.method public removeSystemUIViewCallback(Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    invoke-interface {p0, p1}, Lcom/android/systemui/pluginlock/PluginLockMediator;->removeStateCallback(Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;)V

    return-void
.end method

.method public resetDynamicLock()V
    .locals 2

    const-string v0, "PluginLockManagerImpl"

    const-string v1, "resetDynamicLock()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    invoke-interface {p0}, Lcom/android/systemui/pluginlock/PluginLockMediator;->resetDynamicLock()V

    return-void
.end method

.method public setPluginInstanceState(Lcom/android/systemui/pluginlock/PluginLockInstanceState;)V
    .locals 13

    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mScreenList:[I

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    move v5, v4

    :goto_0
    const-string v6, "PluginLockManagerImpl"

    const/4 v7, 0x1

    if-ge v3, v1, :cond_6

    aget v8, v0, v3

    iget-object v9, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v9, v8}, Lcom/android/systemui/util/SettingsHelper;->getPluginLockValue(I)I

    move-result v9

    if-nez v4, :cond_1

    const/16 v4, 0x4e20

    if-ne v9, v4, :cond_0

    move v4, v7

    goto :goto_1

    :cond_0
    move v4, v2

    :cond_1
    :goto_1
    if-nez v5, :cond_3

    const/16 v5, 0x7530

    if-ne v9, v5, :cond_2

    move v5, v7

    goto :goto_2

    :cond_2
    move v5, v2

    :cond_3
    :goto_2
    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "setPluginInstanceState() settingValue:"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1, v8}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->hasEnabledPlugin(I)Z

    move-result v10

    if-nez v10, :cond_5

    rem-int/lit8 v10, v9, 0xa

    if-lez v10, :cond_5

    iget-object v10, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mUtils:Lcom/android/systemui/pluginlock/PluginLockUtils;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "setPluginInstanceState(): abnormal case detected: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v6, v11}, Lcom/android/systemui/pluginlock/PluginLockUtils;->addDump(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->getAllowedNumber()I

    move-result v10

    iget-object v11, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mPolicy:Lcom/android/systemui/pluginlock/PluginLockInstancePolicy;

    invoke-virtual {v11, v9, v10}, Lcom/android/systemui/pluginlock/PluginLockInstancePolicy;->isSameInstance(II)Z

    move-result v9

    if-eqz v9, :cond_5

    iget-object v9, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mUtils:Lcom/android/systemui/pluginlock/PluginLockUtils;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "setPluginInstanceState(): "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " will have a timestamp"

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v6, v10}, Lcom/android/systemui/pluginlock/PluginLockUtils;->addDump(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v6, Lcom/android/systemui/LsRune;->PLUGIN_LOCK_MULTIPLE_ACTIVATION:Z

    if-eqz v6, :cond_4

    invoke-virtual {p1, v8, v7}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->setStateData(IZ)V

    goto :goto_3

    :cond_4
    invoke-virtual {p1, v7}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->setTimeStamp(Z)V

    :cond_5
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setPluginInstanceState() getPackageName "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->putPluginInstanceToMap(Ljava/lang/String;Lcom/android/systemui/pluginlock/PluginLockInstanceState;)V

    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mPolicy:Lcom/android/systemui/pluginlock/PluginLockInstancePolicy;

    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->getAllowedNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/pluginlock/PluginLockInstancePolicy;->isDefaultInstance(I)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    invoke-interface {v0}, Lcom/android/systemui/pluginlock/PluginLockMediator;->onReady()V

    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mCr:Landroid/content/ContentResolver;

    const-string/jumbo v1, "tss_activated"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v7, :cond_7

    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mUtils:Lcom/android/systemui/pluginlock/PluginLockUtils;

    const-string v3, "TSS Activated"

    invoke-virtual {v0, v6, v3}, Lcom/android/systemui/pluginlock/PluginLockUtils;->addDump(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mCr:Landroid/content/ContentResolver;

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/android/systemui/pluginlock/PluginLockManagerImpl$$ExternalSyntheticLambda1;

    const/4 v3, 0x1

    invoke-direct {v1, p0, v3}, Lcom/android/systemui/pluginlock/PluginLockManagerImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/pluginlock/PluginLockManagerImpl;I)V

    const-wide/16 v8, 0x1f4

    invoke-virtual {v0, v1, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_7
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mUtils:Lcom/android/systemui/pluginlock/PluginLockUtils;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "connected: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v6, v1}, Lcom/android/systemui/pluginlock/PluginLockUtils;->addDump(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v4, :cond_9

    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isEmergencyMode()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isPowerSavingMode()Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_8
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mUtils:Lcom/android/systemui/pluginlock/PluginLockUtils;

    const-string/jumbo p1, "setPluginInstanceState() skip, disabled by mode"

    invoke-virtual {p0, v6, p1}, Lcom/android/systemui/pluginlock/PluginLockUtils;->addDump(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_9
    if-eqz v5, :cond_a

    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mUtils:Lcom/android/systemui/pluginlock/PluginLockUtils;

    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/PluginLockUtils;->isCurrentOwner()Z

    move-result v0

    if-nez v0, :cond_a

    iget-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mUtils:Lcom/android/systemui/pluginlock/PluginLockUtils;

    const-string/jumbo v0, "setPluginInstanceState() skip, disabled by user"

    invoke-virtual {p1, v6, v0}, Lcom/android/systemui/pluginlock/PluginLockUtils;->addDump(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    invoke-interface {p0}, Lcom/android/systemui/pluginlock/PluginLockMediator;->registerUpdateMonitor()V

    return-void

    :cond_a
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mRemovedPackageName:Ljava/lang/String;

    if-eqz v0, :cond_b

    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->isPluginLockPackage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mRemovedPackageName:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mUtils:Lcom/android/systemui/pluginlock/PluginLockUtils;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Re install after deleting package "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mRemovedPackageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v6, v1}, Lcom/android/systemui/pluginlock/PluginLockUtils;->addDump(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    invoke-interface {v0}, Lcom/android/systemui/pluginlock/PluginLockMediator;->onDataCleared()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mRemovedPackageName:Ljava/lang/String;

    :cond_b
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mScreenList:[I

    array-length v1, v0

    :goto_4
    if-ge v2, v1, :cond_12

    aget v3, v0, v2

    sget-boolean v4, Lcom/android/systemui/LsRune;->PLUGIN_LOCK_MULTIPLE_ACTIVATION:Z

    if-eqz v4, :cond_c

    invoke-virtual {p1, v3}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->isRecentInstance(I)Z

    move-result v5

    if-eqz v5, :cond_11

    goto :goto_5

    :cond_c
    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->isRecentInstance()Z

    move-result v5

    if-eqz v5, :cond_11

    :goto_5
    if-eqz v4, :cond_d

    iget v4, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mScreenType:I

    if-ne v4, v3, :cond_e

    :cond_d
    iput-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->getPluginLockInstance()Lcom/samsung/systemui/splugins/pluginlock/PluginLock;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mPluginLock:Lcom/samsung/systemui/splugins/pluginlock/PluginLock;

    :cond_e
    iget-object v4, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v4, v3}, Lcom/android/systemui/util/SettingsHelper;->getPluginLockValue(I)I

    move-result v4

    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->getAllowedNumber()I

    move-result v5

    iget-object v8, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mPolicy:Lcom/android/systemui/pluginlock/PluginLockInstancePolicy;

    invoke-virtual {v8, v4, v5}, Lcom/android/systemui/pluginlock/PluginLockInstancePolicy;->isSameInstance(II)Z

    move-result v8

    if-eqz v8, :cond_10

    rem-int/lit8 v8, v4, 0xa

    if-ne v8, v7, :cond_f

    const/4 v8, 0x2

    goto :goto_6

    :cond_f
    move v8, v7

    :goto_6
    add-int/2addr v5, v8

    goto :goto_7

    :cond_10
    add-int/lit8 v5, v5, 0x1

    :goto_7
    iget-object v8, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mUtils:Lcom/android/systemui/pluginlock/PluginLockUtils;

    const-string/jumbo v9, "setPluginInstanceState screen:"

    const-string v10, ", now:"

    const-string v11, ", new:"

    invoke-static {v3, v4, v9, v10, v11}, Landroidx/compose/foundation/layout/RowColumnMeasurePolicyKt$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v6, v4}, Lcom/android/systemui/pluginlock/PluginLockUtils;->addDump(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v4, v3, v5}, Lcom/android/systemui/util/SettingsHelper;->setPluginLockValue(II)V

    :cond_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_12
    return-void
.end method

.method public updateLockStarData(Landroid/os/Bundle;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "updateLockStarData: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PluginLockManagerImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    invoke-interface {p0, p1}, Lcom/android/systemui/pluginlock/PluginLockMediator;->onEventReceived(Landroid/os/Bundle;)V

    return-void
.end method

.method public updateShortcutTaskState(Ljava/lang/String;)V
    .locals 1

    const-string v0, "Dnd"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mTaskDnd:Lcom/android/systemui/pluginlock/component/PluginLockShortcutDnd;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/component/PluginLockShortcutDnd;->excute()V

    goto :goto_0

    :cond_0
    const-string v0, "Flashlight"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mTaskFlashLight:Lcom/android/systemui/pluginlock/component/PluginLockShortcutFlashLight;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/component/PluginLockShortcutFlashLight;->excute()V

    :cond_1
    :goto_0
    return-void
.end method
