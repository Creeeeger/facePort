.class public final Lcom/android/systemui/wallpaper/KeyguardWallpaperController;
.super Landroid/app/IWallpaperManagerCallback$Stub;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/wallpaper/KeyguardWallpaper;


# static fields
.field public static sController:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mEventListeners:Ljava/util/Map;

.field public final mExecutor:Ljava/util/concurrent/ExecutorService;

.field public final mKnoxStateCallback:Lcom/android/systemui/wallpaper/KeyguardWallpaperController$2;

.field public final mMainHandler:Landroid/os/Handler;

.field public mNoSensorConsumer:Ljava/util/function/Consumer;

.field public mOldTransparentType:I

.field public final mPluginWallpaperManager:Lcom/android/systemui/pluginlock/PluginWallpaperManager;

.field public final mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

.field public final mService:Landroid/app/IWallpaperManager;

.field private final mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field public final mSystemWallpaperColors:Lcom/android/systemui/wallpaper/colors/SystemWallpaperColors;

.field public final mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public final mWallpaperAnalytics:Lcom/android/systemui/wallpaper/WallpaperAnalytics;

.field public final mWallpaperChangeNotifier:Lcom/android/systemui/wallpaper/WallpaperChangeNotifier;

.field public final mWallpaperEventNotifier:Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

.field public final mWallpaperLogger:Lcom/android/systemui/wallpaper/log/WallpaperLogger;

.field public final mWallpaperManager:Landroid/app/WallpaperManager;

.field public final mWorkHandler:Lcom/android/systemui/wallpaper/KeyguardWallpaperController$3;


# direct methods
.method public static $r8$lambda$EG0gQOZLZG2rZ3JVMqdpjjIo4Yo(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;)V
    .locals 10

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v0, Lcom/android/systemui/wallpaper/WallpaperUtils;->mIsUltraPowerSavingMode:Z

    sget-boolean v1, Lcom/android/systemui/wallpaper/WallpaperUtils;->mIsEmergencyMode:Z

    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isLiveWallpaper()Z

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v3}, Lcom/android/systemui/util/SettingsHelper;->isLockScreenRotationAllowed()Z

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isVideoWallpaper(Landroid/content/Context;)Z

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v3, :cond_0

    move v4, v6

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    if-nez v1, :cond_1

    if-eqz v2, :cond_2

    :cond_1
    move v4, v5

    :cond_2
    :goto_0
    const-string v7, "disableRotateIfNeeded: video = "

    const-string v8, " , rotate support = "

    invoke-static {v7, v8, v4}, Landroidx/slice/widget/RowView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-boolean v8, Lcom/android/systemui/LsRune;->WALLPAPER_ROTATABLE_WALLPAPER:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, " , sub = "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->isSubDisplay()Z

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, " , enabled = "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v9}, Lcom/android/systemui/util/SettingsHelper;->isLockScreenRotationAllowed()Z

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, " , isUpsMode = "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " , isEmergencyMode = "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " , isLiveWallpaperSettingEnabled = "

    const-string v9, " , isLockScreenRotationAllowed = "

    invoke-static {v7, v1, v0, v2, v9}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->printLognAddHistory(Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/systemui/LsRune;->WALLPAPER_VIDEO_WALLPAPER:Z

    if-eqz v0, :cond_5

    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mNoSensorConsumer:Ljava/util/function/Consumer;

    if-eqz p0, :cond_5

    if-eqz v4, :cond_4

    if-eqz v8, :cond_3

    invoke-static {}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->isSubDisplay()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    move v5, v6

    :cond_4
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_5
    return-void
.end method

.method public static -$$Nest$mhandleWallpaperMessage(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;Landroid/os/Message;)V
    .locals 9

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x25f

    const/4 v2, 0x0

    if-eq v0, v1, :cond_13

    const/4 v3, 0x2

    const/16 v4, 0x260

    const-string/jumbo v5, "which"

    if-eq v0, v4, :cond_d

    const/4 v4, 0x0

    const/16 v6, 0x2d1

    const/4 v7, 0x1

    const-string v8, "KeyguardWallpaperController"

    if-eq v0, v6, :cond_b

    const/16 v6, 0x2d2

    if-eq v0, v6, :cond_a

    const/16 v1, 0x2d4

    if-eq v0, v1, :cond_9

    const/16 v1, 0x3eb

    if-eq v0, v1, :cond_8

    const/16 v1, 0x10

    const/4 v6, 0x4

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    packed-switch v0, :pswitch_data_2

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "handleMessage: unsupported command ("

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Landroid/os/Message;->what:I

    const-string v0, ")"

    invoke-static {p0, p1, v0, v8}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :pswitch_0
    invoke-virtual {p0, v7}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->handleAdaptiveColorModeChanged(Z)V

    goto/16 :goto_3

    :pswitch_1
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p0, "handleColorAreasChanged : extra is null"

    invoke-static {v8, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mPluginWallpaperManager:Lcom/android/systemui/pluginlock/PluginWallpaperManager;

    if-nez v0, :cond_1

    const-string p0, "handleColorAreasChanged : plugin wallpaper manager is null"

    invoke-static {v8, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_1
    invoke-virtual {p1, v5, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    const-string v0, "handleColorAreasChanged : which = "

    invoke-static {p1, v0, v8}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mPluginWallpaperManager:Lcom/android/systemui/pluginlock/PluginWallpaperManager;

    invoke-interface {p0, p1}, Lcom/android/systemui/pluginlock/PluginWallpaperManager;->onColorAreasChanged(I)V

    goto/16 :goto_3

    :pswitch_2
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->disableRotateIfNeeded()V

    goto/16 :goto_3

    :pswitch_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move v1, v6

    :goto_0
    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperAnalytics:Lcom/android/systemui/wallpaper/WallpaperAnalytics;

    or-int/lit8 v0, v1, 0x2

    invoke-virtual {p1, v0}, Lcom/android/systemui/wallpaper/WallpaperAnalytics;->updateWallpaperStatus(I)V

    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p1}, Lcom/android/systemui/util/SettingsHelper;->getLockscreenWallpaperTransparent()I

    move-result p1

    const-string v0, "forceBroadcastWhiteKeyguardWallpaper: cur = "

    const-string v1, " , old = "

    invoke-static {p1, v0, v1}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mOldTransparentType:I

    invoke-static {v1, v8, v0}, Landroidx/appcompat/widget/TooltipPopup$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)V

    iget v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mOldTransparentType:I

    if-ne v0, v3, :cond_3

    if-eq p1, v3, :cond_3

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->forceBroadcastWhiteKeyguardWallpaper()V

    :cond_3
    iput p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mOldTransparentType:I

    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperEventNotifier:Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    iget-object p1, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mWallpaperManager:Landroid/app/WallpaperManager;

    if-eqz p1, :cond_4

    invoke-virtual {p1, v3}, Landroid/app/WallpaperManager;->semGetWallpaperColors(I)Landroid/app/SemWallpaperColors;

    move-result-object v4

    :cond_4
    invoke-virtual {p0, v2, v4}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->setCurStatusFlag(ZLandroid/app/SemWallpaperColors;)V

    goto/16 :goto_3

    :pswitch_4
    invoke-virtual {p0, v2}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->handleAdaptiveColorModeChanged(Z)V

    goto/16 :goto_3

    :pswitch_5
    invoke-virtual {p0, v2}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->handleColorThemeStateChanged(Z)V

    sget-boolean p1, Lcom/android/systemui/LsRune;->SUBSCREEN_LARGE_FRONT_SUB_DISPLAY:Z

    if-eqz p1, :cond_14

    invoke-virtual {p0, v7}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->handleColorThemeStateChanged(Z)V

    goto/16 :goto_3

    :pswitch_6
    const/16 p1, 0x2dc

    invoke-virtual {p0, p1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->notifyEvent(I)Landroid/os/Bundle;

    goto/16 :goto_3

    :pswitch_7
    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperEventNotifier:Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    iput-boolean v2, p1, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mIsThemeApplying:Z

    invoke-virtual {p0, v2}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->getWallpaperColors(Z)Landroid/app/SemWallpaperColors;

    move-result-object p1

    sget v0, Lcom/android/systemui/wallpaper/WallpaperUtils;->sCurrentWhich:I

    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0, p1, v0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;Landroid/app/SemWallpaperColors;I)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_3

    :pswitch_8
    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperEventNotifier:Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    iput-boolean v2, p1, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mIsThemeApplying:Z

    invoke-virtual {p0, v2}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->getWallpaperColors(Z)Landroid/app/SemWallpaperColors;

    move-result-object p1

    sget v0, Lcom/android/systemui/wallpaper/WallpaperUtils;->sCurrentWhich:I

    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0, p1, v0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;Landroid/app/SemWallpaperColors;I)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_3

    :pswitch_9
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperEventNotifier:Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    iput-boolean v7, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mIsThemeApplying:Z

    goto/16 :goto_3

    :pswitch_a
    const/16 p1, 0x2d8

    invoke-virtual {p0, p1, v4}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->broadcastEvent(ILandroid/os/Bundle;)Ljava/util/ArrayList;

    goto/16 :goto_3

    :pswitch_b
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->disableRotateIfNeeded()V

    const-string p1, "colorUpdateForModeChange"

    invoke-static {v8, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v2}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->getWallpaperColors(Z)Landroid/app/SemWallpaperColors;

    move-result-object p1

    sget v0, Lcom/android/systemui/wallpaper/WallpaperUtils;->sCurrentWhich:I

    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0, p1, v0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;Landroid/app/SemWallpaperColors;I)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_3

    :pswitch_c
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "handleWallpaperChanged"

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_5

    const-string v0, "include_dls"

    invoke-virtual {p1, v0, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    :cond_5
    invoke-virtual {p0, v7}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->getLockWallpaperType(Z)I

    move-result p1

    invoke-static {}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->isSubDisplay()Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_1

    :cond_6
    move v1, v6

    :goto_1
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    const/16 v2, 0x96

    if-lt v0, v2, :cond_7

    const/16 v2, 0xa0

    if-gt v0, v2, :cond_7

    const-string p0, "Do not support wallpaper change : userId = "

    invoke-static {v0, p0, v8}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_7
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mContext:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->setWallpaperType(ILandroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->disableRotateIfNeeded()V

    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperAnalytics:Lcom/android/systemui/wallpaper/WallpaperAnalytics;

    or-int/lit8 p1, v1, 0x2

    invoke-virtual {p0, p1}, Lcom/android/systemui/wallpaper/WallpaperAnalytics;->updateWallpaperStatus(I)V

    goto/16 :goto_3

    :cond_8
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperAnalytics:Lcom/android/systemui/wallpaper/WallpaperAnalytics;

    if-eqz p0, :cond_14

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, p1}, Lcom/android/systemui/wallpaper/WallpaperAnalytics;->updateWallpaperStatus(I)V

    goto/16 :goto_3

    :cond_9
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "visible"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->broadcastEvent(ILandroid/os/Bundle;)Ljava/util/ArrayList;

    goto/16 :goto_3

    :cond_a
    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    move-result v0

    invoke-static {v0, p1}, Lcom/android/systemui/wallpaper/WallpaperUtils;->loadDeviceState(ILandroid/content/Context;)V

    invoke-virtual {p0, v1, v4}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->sendUpdateWallpaperMessage(ILandroid/os/Bundle;)V

    sget p1, Lcom/android/systemui/wallpaper/WallpaperUtils;->sWallpaperType:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onBootCompleted: wallpaeprType = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->printLognAddHistory(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_b
    iget p1, p1, Landroid/os/Message;->arg1:I

    const-string v0, "onUserSwitchComplete userId = "

    const-string v5, " , selectedUserId = "

    invoke-static {p1, v0, v5}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v5, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    invoke-virtual {v5, v2}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId(Z)I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mContext:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->loadDeviceState(ILandroid/content/Context;)V

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperEventNotifier:Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    iget-object v5, v0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mWallpaperManager:Landroid/app/WallpaperManager;

    if-eqz v5, :cond_c

    invoke-virtual {v5, v3}, Landroid/app/WallpaperManager;->semGetWallpaperColors(I)Landroid/app/SemWallpaperColors;

    move-result-object v3

    goto :goto_2

    :cond_c
    move-object v3, v4

    :goto_2
    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->setCurStatusFlag(ZLandroid/app/SemWallpaperColors;)V

    invoke-virtual {p0, v1, v4}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->sendUpdateWallpaperMessage(ILandroid/os/Bundle;)V

    invoke-virtual {p0, v7}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->getLockWallpaperType(Z)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onUserSwitchComplete: userId = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", wallpaper type = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->printLognAddHistory(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_d
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_12

    const-string/jumbo v0, "wallpaper_colors"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/SemWallpaperColors;

    invoke-virtual {p1, v5, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    sget-boolean v1, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_DISPLAY_MODE:Z

    if-eqz v1, :cond_10

    sget v1, Lcom/android/systemui/wallpaper/WallpaperUtils;->sCurrentWhich:I

    and-int/lit8 v2, v1, 0x10

    const-string v4, ". Return."

    const-string v5, ", which = "

    const-string v6, "handleWallpaperColorChanged: currentWhich = "

    if-eqz v2, :cond_f

    and-int/lit8 v2, p1, 0x10

    if-nez v2, :cond_10

    sget-boolean v2, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_WATCHFACE:Z

    if-eqz v2, :cond_e

    and-int/lit8 v2, p1, 0x2

    if-eq v2, v3, :cond_10

    :cond_e
    invoke-static {v1, p1, v6, v5, v4}, Landroidx/compose/foundation/text/HeightInLinesModifierKt$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->printLognAddHistory(Ljava/lang/String;)V

    goto :goto_3

    :cond_f
    sget-boolean v2, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_WATCHFACE:Z

    if-nez v2, :cond_10

    and-int/lit8 v2, p1, 0x10

    if-eqz v2, :cond_10

    invoke-static {v1, p1, v6, v5, v4}, Landroidx/compose/foundation/text/HeightInLinesModifierKt$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->printLognAddHistory(Ljava/lang/String;)V

    goto :goto_3

    :cond_10
    if-eqz v0, :cond_11

    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0, v0, p1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;Landroid/app/SemWallpaperColors;I)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_3

    :cond_11
    const-string p1, "handleWallpaperColorChanged: Error - colors is null!"

    invoke-virtual {p0, p1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->printLognAddHistory(Ljava/lang/String;)V

    goto :goto_3

    :cond_12
    const-string p1, "handleWallpaperColorChanged: Error - extra is null!"

    invoke-virtual {p0, p1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->printLognAddHistory(Ljava/lang/String;)V

    goto :goto_3

    :cond_13
    invoke-virtual {p0, v2}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->getWallpaperColors(Z)Landroid/app/SemWallpaperColors;

    move-result-object p1

    sget v0, Lcom/android/systemui/wallpaper/WallpaperUtils;->sCurrentWhich:I

    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0, p1, v0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;Landroid/app/SemWallpaperColors;I)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_14
    :goto_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x259
        :pswitch_c
        :pswitch_b
        :pswitch_b
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2d8
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x387
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/WallpaperManager;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/pluginlock/PluginWallpaperManager;Lcom/android/systemui/pluginlock/PluginLockUtils;Lcom/android/systemui/util/SettingsHelper;Lcom/android/systemui/keyguard/WakefulnessLifecycle;Lcom/android/systemui/wallpaper/log/WallpaperLogger;Lcom/android/systemui/wallpaper/WallpaperEventNotifier;Lcom/android/systemui/wallpaper/colors/SystemWallpaperColors;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/keyguard/KeyguardFoldController;Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;Lcom/android/systemui/wallpaper/WallpaperChangeNotifier;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    move-object/from16 v3, p6

    move-object/from16 v4, p14

    invoke-direct/range {p0 .. p0}, Landroid/app/IWallpaperManagerCallback$Stub;-><init>()V

    new-instance v5, Ljava/util/HashMap;

    const/4 v6, 0x2

    invoke-direct {v5, v6}, Ljava/util/HashMap;-><init>(I)V

    iput-object v5, v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mEventListeners:Ljava/util/Map;

    new-instance v5, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$1;

    invoke-direct {v5, v0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$1;-><init>(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;)V

    invoke-static {v6}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v5

    iput-object v5, v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v5, Landroid/os/HandlerThread;

    const-string v6, "KeyguardWallpaperThread"

    invoke-direct {v5, v6}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    new-instance v6, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v6, v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mMainHandler:Landroid/os/Handler;

    new-instance v6, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$2;

    invoke-direct {v6, v0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$2;-><init>(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;)V

    iput-object v1, v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mContext:Landroid/content/Context;

    move-object/from16 v7, p2

    iput-object v7, v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperManager:Landroid/app/WallpaperManager;

    move-object/from16 v7, p3

    iput-object v7, v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-object/from16 v7, p8

    iput-object v7, v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperLogger:Lcom/android/systemui/wallpaper/log/WallpaperLogger;

    iput-object v4, v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "KeyguardWallpaperController() selectedUserId = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v8, 0x0

    invoke-virtual {v4, v8}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId(Z)I

    move-result v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v7, "KeyguardWallpaperController"

    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v5}, Landroid/os/HandlerThread;->start()V

    const/16 v4, 0xa

    invoke-virtual {v5, v4}, Landroid/os/HandlerThread;->setPriority(I)V

    new-instance v4, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$3;

    invoke-virtual {v5}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, v0, v5}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$3;-><init>(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;Landroid/os/Looper;)V

    iput-object v4, v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWorkHandler:Lcom/android/systemui/wallpaper/KeyguardWallpaperController$3;

    iput-object v2, v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mPluginWallpaperManager:Lcom/android/systemui/pluginlock/PluginWallpaperManager;

    iput-object v3, v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-static/range {p6 .. p6}, Lcom/android/systemui/wallpaper/WallpaperUtils;->setSettingsHelper(Lcom/android/systemui/util/SettingsHelper;)V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getUserId()I

    move-result v5

    invoke-static {v5, v1}, Lcom/android/systemui/wallpaper/WallpaperUtils;->loadDeviceState(ILandroid/content/Context;)V

    move-object/from16 v5, p9

    iput-object v5, v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperEventNotifier:Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    move-object/from16 v5, p10

    iput-object v5, v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mSystemWallpaperColors:Lcom/android/systemui/wallpaper/colors/SystemWallpaperColors;

    const-string/jumbo v5, "wallpaper"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/app/IWallpaperManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IWallpaperManager;

    move-result-object v5

    iput-object v5, v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mService:Landroid/app/IWallpaperManager;

    move-object/from16 v9, p15

    iput-object v9, v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperChangeNotifier:Lcom/android/systemui/wallpaper/WallpaperChangeNotifier;

    new-instance v9, Lcom/android/systemui/wallpaper/WallpaperAnalytics;

    invoke-direct {v9, v1, v2, v3}, Lcom/android/systemui/wallpaper/WallpaperAnalytics;-><init>(Landroid/content/Context;Lcom/android/systemui/pluginlock/PluginWallpaperManager;Lcom/android/systemui/util/SettingsHelper;)V

    iput-object v9, v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperAnalytics:Lcom/android/systemui/wallpaper/WallpaperAnalytics;

    iget-object v2, v9, Lcom/android/systemui/wallpaper/WallpaperAnalytics;->mContext:Landroid/content/Context;

    const-string/jumbo v10, "wallpaper_pref"

    invoke-virtual {v2, v10, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string/jumbo v10, "version"

    const/4 v11, -0x1

    invoke-interface {v2, v10, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v11

    const/16 v12, 0x12

    const/4 v13, 0x6

    const/4 v14, 0x1

    if-lt v11, v14, :cond_0

    goto :goto_0

    :cond_0
    new-instance v15, Ljava/lang/StringBuilder;

    const-string v8, "migrateIfNeeds: perform migration. from="

    invoke-direct {v15, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", to=1"

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v11, "WallpaperAnalytics"

    invoke-static {v11, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v9, v13}, Lcom/android/systemui/wallpaper/WallpaperAnalytics;->updateWallpaperStatus(I)V

    const/4 v8, 0x5

    invoke-virtual {v9, v8}, Lcom/android/systemui/wallpaper/WallpaperAnalytics;->updateWallpaperStatus(I)V

    sget-boolean v8, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_DISPLAY_MODE:Z

    if-eqz v8, :cond_1

    invoke-virtual {v9, v12}, Lcom/android/systemui/wallpaper/WallpaperAnalytics;->updateWallpaperStatus(I)V

    const/16 v8, 0x11

    invoke-virtual {v9, v8}, Lcom/android/systemui/wallpaper/WallpaperAnalytics;->updateWallpaperStatus(I)V

    :cond_1
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2, v10, v14}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    :goto_0
    new-instance v2, Landroid/content/IntentFilter;

    const-string v8, "android.intent.action.WALLPAPER_CHANGED"

    invoke-direct {v2, v8}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    new-instance v8, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$4;

    invoke-direct {v8, v0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$4;-><init>(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;)V

    invoke-virtual {v1, v8, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-virtual/range {p6 .. p6}, Lcom/android/systemui/util/SettingsHelper;->getLockscreenWallpaperTransparent()I

    move-result v2

    iput v2, v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mOldTransparentType:I

    if-nez v5, :cond_2

    const-string v0, "WallpaperManagerService is not ready yet! Just return here!"

    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    new-instance v2, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$$ExternalSyntheticLambda0;

    invoke-direct {v2, v4}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/wallpaper/KeyguardWallpaperController$3;)V

    move-object/from16 v3, p13

    invoke-virtual {v3, v2}, Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;->setEventReceiver(Ljava/util/function/Consumer;)V

    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$$ExternalSyntheticLambda1;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v4}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;I)V

    const-string v4, "LockWallpaperCB"

    invoke-direct {v2, v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    sget-object v2, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v3, Lcom/android/systemui/knox/KnoxStateMonitor;

    invoke-virtual {v2, v3}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/knox/KnoxStateMonitor;

    check-cast v2, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    invoke-virtual {v2, v6}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->registerCallback(Lcom/android/systemui/knox/KnoxStateMonitorCallback;)V

    const/16 v2, 0x25f

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->sendUpdateWallpaperMessage(ILandroid/os/Bundle;)V

    sput-object v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->sController:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    sget-boolean v2, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_DISPLAY_MODE:Z

    if-eqz v2, :cond_3

    new-instance v3, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$$ExternalSyntheticLambda2;

    invoke-direct {v3, v0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;)V

    move-object/from16 v0, p12

    check-cast v0, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;

    const/16 v4, 0x3e9

    const/4 v6, 0x0

    invoke-virtual {v0, v3, v4, v6}, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;->addCallback(Lcom/android/systemui/keyguard/KeyguardFoldController$StateListener;IZ)Z

    goto :goto_1

    :cond_3
    const/4 v6, 0x0

    :goto_1
    :try_start_0
    invoke-interface {v5, v13}, Landroid/app/IWallpaperManager;->semGetWallpaperType(I)I

    move-result v0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_4

    move v0, v14

    goto :goto_2

    :cond_4
    move v0, v6

    :goto_2
    if-nez v0, :cond_6

    if-eqz v2, :cond_6

    sget-boolean v2, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_WATCHFACE:Z

    if-nez v2, :cond_6

    invoke-interface {v5, v12}, Landroid/app/IWallpaperManager;->semGetWallpaperType(I)I

    move-result v0

    if-ne v0, v3, :cond_5

    move v8, v14

    goto :goto_3

    :cond_5
    move v8, v6

    :goto_3
    move v0, v8

    goto :goto_4

    :catch_0
    move-exception v0

    goto :goto_5

    :cond_6
    :goto_4
    if-eqz v0, :cond_7

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/wallpaper/MultiPackDispatcher;->enableDlsIfDisabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "Failed to enable DLS."

    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :goto_5
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "System dead?"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    :goto_6
    return-void
.end method

.method public static isSubDisplay()Z
    .locals 1

    sget v0, Lcom/android/systemui/wallpaper/WallpaperUtils;->sCurrentWhich:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final broadcastEvent(ILandroid/os/Bundle;)Ljava/util/ArrayList;
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mEventListeners:Ljava/util/Map;

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine$1;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1, p2}, Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine$1;->onEventReceived(ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public final disableRotateIfNeeded()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$$ExternalSyntheticLambda1;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    const-string p1, "KeyguardWallpaperController: "

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperEventNotifier:Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    if-eqz p1, :cond_0

    const-string p3, "WallpaperEventNotifier:"

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    monitor-enter p1

    :try_start_0
    new-instance p3, Ljava/text/SimpleDateFormat;

    const-string v0, "MM-dd HH:mm:ss.SSS"

    invoke-direct {p3, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mLogs:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/systemui/wallpaper/WallpaperEventNotifier$$ExternalSyntheticLambda0;

    invoke-direct {v1, p2, p3}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier$$ExternalSyntheticLambda0;-><init>(Ljava/io/PrintWriter;Ljava/text/DateFormat;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p1, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mKeyguardWallpaperColors:Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p3, "\n"

    const-string v0, "\tLast wallpaper color = "

    const-string v1, "KeyguardWallpaperColors:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p1, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->mSelectedUserId:I

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->getSemWallpaperColors(IZ)Landroid/app/SemWallpaperColors;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/SemWallpaperColors;->toSimpleString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\nDump error: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mContext:Landroid/content/Context;

    invoke-static {p0, p2}, Lcom/android/systemui/wallpaper/WallpaperUtils;->dump(Landroid/content/Context;Ljava/io/PrintWriter;)V

    return-void
.end method

.method public final getHint(JZ)Landroid/app/SemWallpaperColors$Item;
    .locals 2

    sget-boolean v0, Lcom/android/systemui/wallpaper/WallpaperUtils;->mIsUltraPowerSavingMode:Z

    sget-boolean v1, Lcom/android/systemui/wallpaper/WallpaperUtils;->mIsEmergencyMode:Z

    if-nez v0, :cond_1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperEventNotifier:Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    invoke-virtual {v0, p3}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->getSemWallpaperColors(Z)Landroid/app/SemWallpaperColors;

    move-result-object v0

    goto :goto_1

    :cond_1
    :goto_0
    invoke-static {}, Landroid/app/SemWallpaperColors;->getBlankWallpaperColors()Landroid/app/SemWallpaperColors;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_2

    invoke-virtual {v0, p1, p2}, Landroid/app/SemWallpaperColors;->get(J)Landroid/app/SemWallpaperColors$Item;

    move-result-object v0

    if-eqz v0, :cond_2

    return-object v0

    :cond_2
    invoke-virtual {p0, p3}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->getWallpaperColors(Z)Landroid/app/SemWallpaperColors;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-virtual {p0, p1, p2}, Landroid/app/SemWallpaperColors;->get(J)Landroid/app/SemWallpaperColors$Item;

    move-result-object p0

    if-eqz p0, :cond_3

    return-object p0

    :cond_3
    const-string p0, "KeyguardWallpaperController"

    const-string p1, "getDummyHintItem()"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Landroid/app/SemWallpaperColors$Item;

    const/4 p1, 0x0

    const/high16 p2, 0x3f800000    # 1.0f

    const/high16 p3, 0x3f000000    # 0.5f

    invoke-direct {p0, p1, p2, p3}, Landroid/app/SemWallpaperColors$Item;-><init>(IFF)V

    return-object p0
.end method

.method public final getHints()Landroid/app/SemWallpaperColors;
    .locals 2

    sget-boolean v0, Lcom/android/systemui/wallpaper/WallpaperUtils;->mIsUltraPowerSavingMode:Z

    sget-boolean v1, Lcom/android/systemui/wallpaper/WallpaperUtils;->mIsEmergencyMode:Z

    if-nez v0, :cond_3

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperEventNotifier:Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->getSemWallpaperColors(Z)Landroid/app/SemWallpaperColors;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->getWallpaperColors(Z)Landroid/app/SemWallpaperColors;

    move-result-object v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const-string p0, "KeyguardWallpaperController"

    const-string v0, "getHints: getBlankWallpaperColors!"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/app/SemWallpaperColors;->getBlankWallpaperColors()Landroid/app/SemWallpaperColors;

    move-result-object v0

    goto :goto_1

    :cond_3
    :goto_0
    invoke-static {}, Landroid/app/SemWallpaperColors;->getBlankWallpaperColors()Landroid/app/SemWallpaperColors;

    move-result-object v0

    :goto_1
    return-object v0
.end method

.method public final getLockWallpaperType(Z)I
    .locals 8

    sget v0, Lcom/android/systemui/wallpaper/WallpaperUtils;->sCurrentWhich:I

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/android/systemui/wallpaper/utils/WhichChecker;->isFlagEnabled(II)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    return v3

    :cond_0
    sget-boolean v2, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_WATCHFACE:Z

    if-eqz v2, :cond_1

    const/4 v0, 0x6

    :cond_1
    const-string v2, "\n - isIncludePluginLock: "

    const-string v4, "\n - mService: "

    invoke-static {v2, v4, p1}, Landroidx/slice/widget/RowView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mService:Landroid/app/IWallpaperManager;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mService:Landroid/app/IWallpaperManager;

    const-string v5, "KeyguardWallpaperController"

    const/4 v6, -0x1

    if-eqz v4, :cond_a

    const-string v7, "\n - type[from WMS]: "

    if-eqz p1, :cond_9

    :try_start_0
    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mPluginWallpaperManager:Lcom/android/systemui/pluginlock/PluginWallpaperManager;

    invoke-interface {p1}, Lcom/android/systemui/pluginlock/PluginWallpaperManager;->isDynamicWallpaperEnabled()Z

    move-result p1

    const-string v4, "\n - isDlsWallpaperEnabled: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mPluginWallpaperManager:Lcom/android/systemui/pluginlock/PluginWallpaperManager;

    invoke-interface {p1}, Lcom/android/systemui/pluginlock/PluginWallpaperManager;->isDynamicWallpaperEnabled()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mPluginWallpaperManager:Lcom/android/systemui/pluginlock/PluginWallpaperManager;

    invoke-interface {p0}, Lcom/android/systemui/pluginlock/PluginWallpaperManager;->getWallpaperType()I

    move-result v6

    const-string p0, "\n - type[DLS]: "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    :catch_0
    move-exception p0

    goto/16 :goto_3

    :cond_2
    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mService:Landroid/app/IWallpaperManager;

    invoke-interface {p1, v0}, Landroid/app/IWallpaperManager;->semGetWallpaperType(I)I

    move-result v6

    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    invoke-virtual {p1}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId()I

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object p1, p1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserIsUnlocked:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1, v3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    invoke-virtual {p1}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId()I

    move-result p1

    if-nez p1, :cond_4

    sget-boolean p1, Lcom/android/systemui/LsRune;->KEYGUARD_FBE:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    invoke-virtual {p1}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId()I

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object p1, p1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserIsUnlocked:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1, v3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p1

    if-nez p1, :cond_4

    sget p1, Lcom/android/systemui/wallpaper/WallpaperUtils;->sCurrentWhich:I

    invoke-static {p1}, Lcom/android/systemui/pluginlock/PluginWallpaperManager;->getScreenId(I)I

    move-result p1

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mPluginWallpaperManager:Lcom/android/systemui/pluginlock/PluginWallpaperManager;

    invoke-interface {v0, p1}, Lcom/android/systemui/pluginlock/PluginWallpaperManager;->isFbeWallpaperAvailable(I)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mPluginWallpaperManager:Lcom/android/systemui/pluginlock/PluginWallpaperManager;

    invoke-interface {p0, p1}, Lcom/android/systemui/pluginlock/PluginWallpaperManager;->isFbeWallpaperVideo(I)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_3

    goto :goto_0

    :cond_3
    move v1, v3

    goto :goto_0

    :cond_4
    move v1, v6

    :goto_0
    :try_start_1
    const-string p0, "\n - type[from FBE]: "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    move v6, v1

    goto :goto_4

    :catch_1
    move-exception p0

    move v6, v1

    goto :goto_3

    :cond_5
    :try_start_2
    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mPluginWallpaperManager:Lcom/android/systemui/pluginlock/PluginWallpaperManager;

    invoke-interface {p1, v3}, Lcom/android/systemui/pluginlock/PluginWallpaperManager;->isDynamicWallpaperEnabled(I)Z

    move-result p1

    if-nez p1, :cond_8

    const/4 p1, 0x3

    if-ne v6, p1, :cond_8

    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    invoke-virtual {p1}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId()I

    move-result p1

    if-nez p1, :cond_7

    sget p1, Lcom/android/systemui/wallpaper/WallpaperUtils;->sCurrentWhich:I

    invoke-static {p1}, Lcom/android/systemui/pluginlock/PluginWallpaperManager;->getScreenId(I)I

    move-result p1

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mPluginWallpaperManager:Lcom/android/systemui/pluginlock/PluginWallpaperManager;

    invoke-interface {v0, p1}, Lcom/android/systemui/pluginlock/PluginWallpaperManager;->isFbeWallpaperAvailable(I)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mPluginWallpaperManager:Lcom/android/systemui/pluginlock/PluginWallpaperManager;

    invoke-interface {p0, p1}, Lcom/android/systemui/pluginlock/PluginWallpaperManager;->isFbeWallpaperVideo(I)Z

    move-result p0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    if-eqz p0, :cond_6

    goto :goto_2

    :cond_6
    move v1, v3

    goto :goto_2

    :cond_7
    move v1, v6

    :goto_2
    :try_start_3
    const-string p0, "\n - type[force FBE]: "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :cond_8
    :try_start_4
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_9
    invoke-interface {v4, v0}, Landroid/app/IWallpaperManager;->semGetWallpaperType(I)I

    move-result v6

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_4

    :goto_3
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "System dead?"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    :goto_4
    const-string p0, "\n - WallpaperUtils.getCurrentWhich(): "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p0, Lcom/android/systemui/wallpaper/WallpaperUtils;->sCurrentWhich:I

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "getLockWallpaperType: "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v6
.end method

.method public final getWallpaperColors(Z)Landroid/app/SemWallpaperColors;
    .locals 2

    sget-boolean v0, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_WATCHFACE:Z

    const/4 v1, 0x6

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->isSubDisplay()Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_0
    const/16 v1, 0x11

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->isSubDisplay()Z

    move-result p1

    if-eqz p1, :cond_2

    const/16 v1, 0x12

    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {p0, v1}, Landroid/app/WallpaperManager;->semGetWallpaperColors(I)Landroid/app/SemWallpaperColors;

    move-result-object p0

    return-object p0
.end method

.method public final handleAdaptiveColorModeChanged(Z)V
    .locals 5

    if-eqz p1, :cond_0

    sget-boolean v0, Lcom/android/systemui/wallpaper/WallpaperUtils;->mIsAdaptiveColorModeSub:Z

    goto :goto_0

    :cond_0
    sget-boolean v0, Lcom/android/systemui/wallpaper/WallpaperUtils;->mIsAdaptiveColorMode:Z

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v1, p1}, Lcom/android/systemui/util/SettingsHelper;->isAdaptiveColorMode(Z)Z

    move-result v1

    if-eq v0, v1, :cond_2

    const/4 v0, 0x0

    if-nez p1, :cond_1

    iget-object v2, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v3}, Lcom/android/systemui/util/SettingsHelper;->isAdaptiveColorMode()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "lockscreen_pref"

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "LSS9009"

    const-string v4, "Adaptive color (Default)"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperEventNotifier:Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    iget-object v2, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    invoke-virtual {v2, v0}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId(Z)I

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mKeyguardWallpaperColors:Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;

    invoke-virtual {v2, v0, p1}, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->getSemWallpaperColors(IZ)Landroid/app/SemWallpaperColors;

    move-result-object v0

    const-wide/16 v2, 0x2

    invoke-virtual {p0, p1, v2, v3, v0}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->update(ZJLandroid/app/SemWallpaperColors;)V

    :cond_2
    if-eqz p1, :cond_3

    sput-boolean v1, Lcom/android/systemui/wallpaper/WallpaperUtils;->mIsAdaptiveColorModeSub:Z

    goto :goto_1

    :cond_3
    sput-boolean v1, Lcom/android/systemui/wallpaper/WallpaperUtils;->mIsAdaptiveColorMode:Z

    :goto_1
    return-void
.end method

.method public final handleColorThemeStateChanged(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isColorThemeEnabled()Z

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v1, p1}, Lcom/android/systemui/util/SettingsHelper;->getAdaptiveColorMode(Z)I

    move-result v1

    if-eqz v0, :cond_0

    and-int/lit8 v0, v1, 0x2

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    or-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/util/SettingsHelper;->setAdaptiveColorMode(ZI)V

    goto :goto_0

    :cond_0
    and-int/lit8 v0, v1, 0x2

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    and-int/lit8 v1, v1, -0x3

    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/util/SettingsHelper;->setAdaptiveColorMode(ZI)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperEventNotifier:Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    const-wide/16 v1, 0x400

    invoke-virtual {p0, p1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->getWallpaperColors(Z)Landroid/app/SemWallpaperColors;

    move-result-object p0

    invoke-virtual {v0, p1, v1, v2, p0}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->update(ZJLandroid/app/SemWallpaperColors;)V

    return-void
.end method

.method public final notifyEvent(I)Landroid/os/Bundle;
    .locals 3

    sget v0, Lcom/android/systemui/wallpaper/WallpaperUtils;->sCurrentWhich:I

    const/16 v1, 0x10

    invoke-static {v0, v1}, Lcom/android/systemui/wallpaper/utils/WhichChecker;->isFlagEnabled(II)Z

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mEventListeners:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine$1;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    sget v0, Lcom/android/systemui/wallpaper/WallpaperUtils;->sCurrentWhich:I

    invoke-static {v0, v1}, Lcom/android/systemui/wallpaper/utils/WhichChecker;->isFlagEnabled(II)Z

    move-result v0

    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mEventListeners:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine$1;

    invoke-virtual {p0, p1, v2}, Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine$1;->onEventReceived(ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "notifyEvent: event = "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", result = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "KeyguardWallpaperController"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method

.method public final onSemWallpaperChanged(IILandroid/os/Bundle;)V
    .locals 7

    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    const-string v0, "include_dls"

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v0, "which"

    invoke-virtual {p3, v0, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "onSemWallpaperChanged: type = "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", which = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->printLognAddHistory(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperChangeNotifier:Lcom/android/systemui/wallpaper/WallpaperChangeNotifier;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "WallpaperChangeNotifier"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "notify: which = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v0, Lcom/android/systemui/wallpaper/WallpaperChangeNotifier;->mListeners:Ljava/util/ArrayList;

    monitor-enter v2

    :goto_0
    :try_start_0
    iget-object v3, v0, Lcom/android/systemui/wallpaper/WallpaperChangeNotifier;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    iget-object v3, v0, Lcom/android/systemui/wallpaper/WallpaperChangeNotifier;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Landroidx/appcompat/app/ToolbarActionBar$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    iget-object v3, v0, Lcom/android/systemui/wallpaper/WallpaperChangeNotifier;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/systemui/wallpaper/WallpaperChangeNotifier$$ExternalSyntheticLambda0;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_3

    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, v0, Lcom/android/systemui/wallpaper/WallpaperChangeNotifier;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/systemui/wallpaper/WallpaperChangeNotifier$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0}, Lcom/android/systemui/wallpaper/WallpaperChangeNotifier$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/wallpaper/WallpaperChangeNotifier;)V

    const-wide/16 v3, 0x1f4

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v0, 0x2

    invoke-static {p2, v0}, Lcom/android/systemui/wallpaper/utils/WhichChecker;->isFlagEnabled(II)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/16 v0, 0x8

    invoke-static {p2, v0}, Lcom/android/systemui/wallpaper/utils/WhichChecker;->isFlagEnabled(II)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-boolean v0, Lcom/android/systemui/LsRune;->WALLPAPER_DESKTOP_STANDALONE_MODE_WALLPAPER:Z

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isDexStandAloneMode()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    return-void

    :cond_3
    const/4 v0, 0x3

    if-eq p1, v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperManager:Landroid/app/WallpaperManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2}, Landroid/app/WallpaperManager;->semSetDLSWallpaperColors(Landroid/app/SemWallpaperColors;I)V

    sget-boolean v0, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_DISPLAY_MODE:Z

    if-eqz v0, :cond_4

    sget-boolean v0, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_WATCHFACE:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperEventNotifier:Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    iget-boolean v0, v0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mIsThemeApplying:Z

    if-eqz v0, :cond_4

    invoke-static {p2}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isSubDisplay(I)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$$ExternalSyntheticLambda1;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;I)V

    const-wide/16 v5, 0x3e8

    invoke-virtual {v0, v1, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const-string v0, "delay"

    invoke-virtual {p3, v0, v5, v6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mPluginWallpaperManager:Lcom/android/systemui/pluginlock/PluginWallpaperManager;

    invoke-static {p2}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isSubDisplay(I)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/systemui/pluginlock/PluginWallpaperManager;->isDynamicWallpaperEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mPluginWallpaperManager:Lcom/android/systemui/pluginlock/PluginWallpaperManager;

    invoke-static {p2}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isSubDisplay(I)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/systemui/pluginlock/PluginWallpaperManager;->onLockWallpaperChanged(I)V

    :cond_5
    :goto_1
    const/4 v0, -0x1

    if-ne p1, v0, :cond_6

    const-string p1, "delay"

    invoke-virtual {p3, p1, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_6
    sget-boolean p1, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_DISPLAY_MODE:Z

    if-eqz p1, :cond_9

    sget-boolean p1, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_WATCHFACE:Z

    if-nez p1, :cond_9

    sget p1, Lcom/android/systemui/wallpaper/WallpaperUtils;->sCurrentWhich:I

    and-int/lit8 v0, p1, 0x3c

    if-nez v0, :cond_7

    or-int/lit8 p1, p1, 0x4

    :cond_7
    and-int/lit8 v0, p2, 0x3c

    if-nez v0, :cond_8

    or-int/lit8 v0, p2, 0x4

    goto :goto_2

    :cond_8
    move v0, p2

    :goto_2
    if-eq p1, v0, :cond_9

    const-string p0, "KeyguardWallpaperController"

    const-string p1, "Ignore wallpaper change for not current which : "

    invoke-static {p2, p1, p0}, Lcom/android/keyguard/KeyguardSecPatternView$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_9
    const/16 p1, 0x259

    invoke-virtual {p0, p1, p3}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->sendUpdateWallpaperMessage(ILandroid/os/Bundle;)V

    return-void

    :goto_3
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final onSemWallpaperColorsAnalysisRequested(II)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWorkHandler:Lcom/android/systemui/wallpaper/KeyguardWallpaperController$3;

    const/16 v1, 0x38a

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWorkHandler:Lcom/android/systemui/wallpaper/KeyguardWallpaperController$3;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "which"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo p1, "userid"

    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWorkHandler:Lcom/android/systemui/wallpaper/KeyguardWallpaperController$3;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final onSemWallpaperColorsChanged(Landroid/app/SemWallpaperColors;II)V
    .locals 9

    const/4 v0, 0x4

    const/4 v1, 0x2

    const/16 v2, 0x10

    if-nez p1, :cond_0

    const-string p1, "onSemWallpaperColorsChanged: SemWallpaperColors == null"

    invoke-virtual {p0, p1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->printLognAddHistory(Ljava/lang/String;)V

    return-void

    :cond_0
    and-int/lit8 v3, p2, 0x2

    if-nez v3, :cond_3

    const-string/jumbo v4, "set system color which = "

    const-string v5, ", opacity = "

    invoke-static {p2, v4, v5}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/app/SemWallpaperColors;->getDarkModeDimOpacity()F

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "KeyguardWallpaperController"

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mSystemWallpaperColors:Lcom/android/systemui/wallpaper/colors/SystemWallpaperColors;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "setColor: which = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "SystemWallpaperColors"

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    and-int/lit8 v5, p2, 0x1

    if-nez v5, :cond_1

    goto :goto_1

    :cond_1
    and-int/lit8 v5, p2, 0x3c

    if-nez v5, :cond_2

    or-int/lit8 v5, p2, 0x4

    goto :goto_0

    :cond_2
    move v5, p2

    :goto_0
    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "setColor : put color for which "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", color = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, v4, Lcom/android/systemui/wallpaper/colors/SystemWallpaperColors;->mSystemWallpaperColors:Landroid/util/SparseArray;

    invoke-virtual {v4, v5, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_3
    :goto_1
    const/16 v4, 0x8

    invoke-static {p2, v4}, Lcom/android/systemui/wallpaper/utils/WhichChecker;->isFlagEnabled(II)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isDexStandAloneMode()Z

    move-result v4

    if-nez v4, :cond_4

    const-string p1, "onSemWallpaperColorsChanged: DEX."

    invoke-virtual {p0, p1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->printLognAddHistory(Ljava/lang/String;)V

    return-void

    :cond_4
    sget-boolean v4, Lcom/android/systemui/wallpaper/WallpaperUtils;->mIsExternalLiveWallpaper:Z

    sget-boolean v4, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_DISPLAY_MODE:Z

    if-eqz v4, :cond_6

    sget-boolean v5, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_WATCHFACE:Z

    if-nez v5, :cond_6

    if-eqz v4, :cond_6

    if-nez v5, :cond_6

    and-int/lit8 v4, p2, 0x3

    if-ne v4, v1, :cond_6

    sget-object v1, Lcom/android/systemui/wallpaper/WallpaperUtils;->sCachedWallpaperColors:Landroid/util/SparseArray;

    invoke-static {p2}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isSubDisplay(I)Z

    move-result v4

    if-eqz v4, :cond_5

    move v0, v2

    :cond_5
    invoke-virtual {v1, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_6
    sget-boolean v0, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_WATCHFACE:Z

    const-string v1, "onSemWallpaperColorsChanged: Not avaiable on this model. which = "

    const-string v4, "onSemWallpaperColorsChanged: Not for lockscreen. which = "

    if-eqz v0, :cond_8

    if-nez v3, :cond_7

    and-int/lit8 v0, p2, 0x10

    if-nez v0, :cond_7

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->printLognAddHistory(Ljava/lang/String;)V

    return-void

    :cond_7
    if-eqz v3, :cond_b

    and-int/lit8 v0, p2, 0x10

    if-eqz v0, :cond_b

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->printLognAddHistory(Ljava/lang/String;)V

    return-void

    :cond_8
    sget-boolean v0, Lcom/android/systemui/LsRune;->WALLPAPER_VIRTUAL_DISPLAY:Z

    if-eqz v0, :cond_a

    if-nez v3, :cond_9

    and-int/lit8 v0, p2, 0x20

    if-nez v0, :cond_9

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->printLognAddHistory(Ljava/lang/String;)V

    return-void

    :cond_9
    if-eqz v3, :cond_b

    and-int/lit8 v0, p2, 0x20

    if-eqz v0, :cond_b

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->printLognAddHistory(Ljava/lang/String;)V

    return-void

    :cond_a
    if-nez v3, :cond_b

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->printLognAddHistory(Ljava/lang/String;)V

    return-void

    :cond_b
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperEventNotifier:Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    iget-boolean v0, v0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mIsThemeApplying:Z

    if-eqz v0, :cond_c

    const-string p1, "onSemWallpaperColorsChanged: Theme is currently applying. Send message later."

    invoke-virtual {p0, p1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->printLognAddHistory(Ljava/lang/String;)V

    return-void

    :cond_c
    sget-boolean v0, Lcom/android/systemui/wallpaper/WallpaperUtils;->mIsUltraPowerSavingMode:Z

    sget-boolean v1, Lcom/android/systemui/wallpaper/WallpaperUtils;->mIsEmergencyMode:Z

    if-nez v0, :cond_e

    if-eqz v1, :cond_d

    goto :goto_2

    :cond_d
    const-string v0, "onSemWallpaperColorsChanged: which = "

    const-string v1, ", userId = "

    const-string v2, ", colors = "

    invoke-static {p2, p3, v0, v1, v2}, Landroidx/compose/foundation/layout/RowColumnMeasurePolicyKt$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/SemWallpaperColors;->toSimpleString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->printLognAddHistory(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWorkHandler:Lcom/android/systemui/wallpaper/KeyguardWallpaperController$3;

    const/16 v1, 0x260

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWorkHandler:Lcom/android/systemui/wallpaper/KeyguardWallpaperController$3;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "wallpaper_colors"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string/jumbo p1, "which"

    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo p1, "userid"

    invoke-virtual {v1, p1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWorkHandler:Lcom/android/systemui/wallpaper/KeyguardWallpaperController$3;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_e
    :goto_2
    const-string p1, "onSemWallpaperColorsChanged: We are in UPSM or EM. We don\'t need this event for now."

    invoke-virtual {p0, p1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->printLognAddHistory(Ljava/lang/String;)V

    return-void
.end method

.method public final onWallpaperChanged()V
    .locals 0

    return-void
.end method

.method public final onWallpaperColorsChanged(Landroid/app/WallpaperColors;II)V
    .locals 0

    return-void
.end method

.method public final printLognAddHistory(Ljava/lang/String;)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperLogger:Lcom/android/systemui/wallpaper/log/WallpaperLogger;

    const-string v0, "KeyguardWallpaperController"

    check-cast p0, Lcom/android/systemui/wallpaper/log/WallpaperLoggerImpl;

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/wallpaper/log/WallpaperLoggerImpl;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final sendUpdateWallpaperMessage(ILandroid/os/Bundle;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWorkHandler:Lcom/android/systemui/wallpaper/KeyguardWallpaperController$3;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x261

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWorkHandler:Lcom/android/systemui/wallpaper/KeyguardWallpaperController$3;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "sendUpdateWallpaperMessage: remove message what = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->printLognAddHistory(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWorkHandler:Lcom/android/systemui/wallpaper/KeyguardWallpaperController$3;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    if-eqz p2, :cond_2

    invoke-virtual {v0, p2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    const-string p1, "delay"

    const-wide/16 v1, 0x0

    invoke-virtual {p2, p1, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide p1

    cmp-long v1, p1, v1

    if-nez v1, :cond_1

    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWorkHandler:Lcom/android/systemui/wallpaper/KeyguardWallpaperController$3;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWorkHandler:Lcom/android/systemui/wallpaper/KeyguardWallpaperController$3;

    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWorkHandler:Lcom/android/systemui/wallpaper/KeyguardWallpaperController$3;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_3
    :goto_0
    return-void
.end method
