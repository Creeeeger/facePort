.class public final Lcom/android/systemui/wallpaper/CoverWallpaperController;
.super Landroid/app/IWallpaperManagerCallback$Stub;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/wallpaper/CoverWallpaper;
.implements Lcom/android/systemui/pluginlock/component/PluginWallpaperCallback;


# static fields
.field public static sInstance:Lcom/android/systemui/wallpaper/CoverWallpaperController;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mIsFbeColorSet:Z

.field public final mMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field public mMultiPackDispatcher:Lcom/android/systemui/wallpaper/MultiPackDispatcher;

.field public final mPluginLockUtils:Lcom/android/systemui/pluginlock/PluginLockUtils;

.field public final mPluginWallpaperManager:Lcom/android/systemui/pluginlock/PluginWallpaperManager;

.field public final mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

.field public final mSmartCardController:Lcom/android/systemui/wallpaper/accessory/SmartCardController;

.field public final mSubScreenManager:Lcom/android/systemui/subscreen/SubScreenManager;

.field public mWallpaperConsumer:Ljava/util/function/Consumer;

.field public mWallpaperId:I

.field public final mWallpaperLogger:Lcom/android/systemui/wallpaper/log/WallpaperLogger;

.field public final mWallpaperManager:Landroid/app/WallpaperManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/WallpaperManager;Lcom/android/systemui/wallpaper/log/WallpaperLogger;Lcom/android/systemui/pluginlock/PluginWallpaperManager;Lcom/android/systemui/pluginlock/PluginLockUtils;Lcom/android/systemui/subscreen/SubScreenManager;Lcom/android/systemui/util/SettingsHelper;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;Lcom/android/systemui/wallpaper/WallpaperChangeNotifier;)V
    .locals 1

    invoke-direct {p0}, Landroid/app/IWallpaperManagerCallback$Stub;-><init>()V

    new-instance p10, Lcom/android/systemui/wallpaper/CoverWallpaperController$1;

    invoke-direct {p10, p0}, Lcom/android/systemui/wallpaper/CoverWallpaperController$1;-><init>(Lcom/android/systemui/wallpaper/CoverWallpaperController;)V

    iput-object p10, p0, Lcom/android/systemui/wallpaper/CoverWallpaperController;->mMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    sput-object p0, Lcom/android/systemui/wallpaper/CoverWallpaperController;->sInstance:Lcom/android/systemui/wallpaper/CoverWallpaperController;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/CoverWallpaperController;->mIsFbeColorSet:Z

    iput-object p1, p0, Lcom/android/systemui/wallpaper/CoverWallpaperController;->mContext:Landroid/content/Context;

    iput-object p4, p0, Lcom/android/systemui/wallpaper/CoverWallpaperController;->mPluginWallpaperManager:Lcom/android/systemui/pluginlock/PluginWallpaperManager;

    invoke-interface {p4, p0}, Lcom/android/systemui/pluginlock/PluginWallpaperManager;->setHomeWallpaperCallback(Lcom/android/systemui/pluginlock/component/PluginWallpaperCallback;)V

    iput-object p5, p0, Lcom/android/systemui/wallpaper/CoverWallpaperController;->mPluginLockUtils:Lcom/android/systemui/pluginlock/PluginLockUtils;

    iput-object p2, p0, Lcom/android/systemui/wallpaper/CoverWallpaperController;->mWallpaperManager:Landroid/app/WallpaperManager;

    iput-object p3, p0, Lcom/android/systemui/wallpaper/CoverWallpaperController;->mWallpaperLogger:Lcom/android/systemui/wallpaper/log/WallpaperLogger;

    iput-object p6, p0, Lcom/android/systemui/wallpaper/CoverWallpaperController;->mSubScreenManager:Lcom/android/systemui/subscreen/SubScreenManager;

    iput-object p9, p0, Lcom/android/systemui/wallpaper/CoverWallpaperController;->mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    new-instance p5, Lcom/android/systemui/wallpaper/accessory/SmartCardController;

    invoke-direct {p5, p1, p7, p8, p4}, Lcom/android/systemui/wallpaper/accessory/SmartCardController;-><init>(Landroid/content/Context;Lcom/android/systemui/util/SettingsHelper;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/pluginlock/PluginWallpaperManager;)V

    iput-object p5, p0, Lcom/android/systemui/wallpaper/CoverWallpaperController;->mSmartCardController:Lcom/android/systemui/wallpaper/accessory/SmartCardController;

    invoke-static {}, Lcom/android/systemui/wallpaper/CoverWallpaperController;->getCoverWhich()I

    move-result p4

    invoke-virtual {p2, p4}, Landroid/app/WallpaperManager;->getWallpaperId(I)I

    move-result p4

    iput p4, p0, Lcom/android/systemui/wallpaper/CoverWallpaperController;->mWallpaperId:I

    sget-boolean p4, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_WATCHFACE:Z

    const-string p6, "CoverWallpaperController"

    if-nez p4, :cond_0

    sget-boolean p4, Lcom/android/systemui/LsRune;->WALLPAPER_VIRTUAL_DISPLAY:Z

    if-eqz p4, :cond_1

    :cond_0
    const-string/jumbo p4, "setCoverWallpaperCallback()"

    invoke-static {p6, p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo p4, "setCoverWallpaperCallback"

    check-cast p3, Lcom/android/systemui/wallpaper/log/WallpaperLoggerImpl;

    invoke-virtual {p3, p6, p4}, Lcom/android/systemui/wallpaper/log/WallpaperLoggerImpl;->log(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Landroid/app/WallpaperManager;->setCoverWallpaperCallback(Landroid/app/IWallpaperManagerCallback;)Z

    :cond_1
    sget-boolean p0, Lcom/android/systemui/LsRune;->WALLPAPER_SUPPORT_SUIT_CASE:Z

    if-eqz p0, :cond_2

    iget-object p0, p5, Lcom/android/systemui/wallpaper/accessory/SmartCardController;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p3, "accessory_cover_uri"

    invoke-static {p3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    iget-object p4, p5, Lcom/android/systemui/wallpaper/accessory/SmartCardController;->settingObserver:Lcom/android/systemui/wallpaper/accessory/SmartCardController$settingObserver$1;

    invoke-virtual {p0, p3, v0, p4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object p0, p5, Lcom/android/systemui/wallpaper/accessory/SmartCardController;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo p3, "user_setup_complete"

    invoke-static {p3}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    invoke-virtual {p0, p3, v0, p4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object p0, p5, Lcom/android/systemui/wallpaper/accessory/SmartCardController;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p3, "dls_state"

    invoke-static {p3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    invoke-virtual {p0, p3, v0, p4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p8, p10}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    :cond_2
    invoke-static {}, Lcom/android/systemui/wallpaper/CoverWallpaperController;->getCoverWhich()I

    move-result p0

    invoke-virtual {p2, p0}, Landroid/app/WallpaperManager;->semGetWallpaperType(I)I

    move-result p0

    const/4 p2, 0x3

    if-ne p0, p2, :cond_3

    invoke-static {p1}, Lcom/android/systemui/wallpaper/MultiPackDispatcher;->enableDlsIfDisabled(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_3

    const-string p0, "Failed to enable DLS."

    invoke-static {p6, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void
.end method

.method public static getCoverMode()I
    .locals 3

    sget-boolean v0, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_WATCHFACE:Z

    const/16 v1, 0x10

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-boolean v0, Lcom/android/systemui/LsRune;->WALLPAPER_VIRTUAL_DISPLAY:Z

    if-eqz v0, :cond_1

    const/16 v1, 0x20

    goto :goto_0

    :cond_1
    const-string v0, "CoverWallpaperController"

    const-string v2, "getCoverMode, abnormal state "

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v1
.end method

.method public static getCoverWhich()I
    .locals 2

    sget-boolean v0, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_WATCHFACE:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x11

    goto :goto_0

    :cond_0
    sget-boolean v0, Lcom/android/systemui/LsRune;->WALLPAPER_VIRTUAL_DISPLAY:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x21

    goto :goto_0

    :cond_1
    const-string v0, "CoverWallpaperController"

    const-string v1, "getCoverWhich, abnormal state "

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    :goto_0
    return v0
.end method


# virtual methods
.method public final getWallpaperBitmap()Landroid/graphics/Bitmap;
    .locals 5

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/CoverWallpaperController;->isFbeAvailable()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/CoverWallpaperController;->mIsFbeColorSet:Z

    const-string v1, "CoverWallpaperController"

    const/4 v2, 0x1

    if-nez v0, :cond_0

    :try_start_0
    iput-boolean v2, p0, Lcom/android/systemui/wallpaper/CoverWallpaperController;->mIsFbeColorSet:Z

    iget-object v0, p0, Lcom/android/systemui/wallpaper/CoverWallpaperController;->mWallpaperManager:Landroid/app/WallpaperManager;

    iget-object v3, p0, Lcom/android/systemui/wallpaper/CoverWallpaperController;->mPluginWallpaperManager:Lcom/android/systemui/pluginlock/PluginWallpaperManager;

    invoke-interface {v3, v2}, Lcom/android/systemui/pluginlock/PluginWallpaperManager;->getFbeSemWallpaperColors(I)Landroid/app/SemWallpaperColors;

    move-result-object v3

    invoke-static {}, Lcom/android/systemui/wallpaper/CoverWallpaperController;->getCoverWhich()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/app/WallpaperManager;->semSetDLSWallpaperColors(Landroid/app/SemWallpaperColors;I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getWallpaperBitmap: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string v0, "getWallpaperBitmap: SemWallpaperColors for FBE was already set."

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/wallpaper/CoverWallpaperController;->mPluginWallpaperManager:Lcom/android/systemui/pluginlock/PluginWallpaperManager;

    invoke-interface {v0, v2}, Lcom/android/systemui/pluginlock/PluginWallpaperManager;->getFbeWallpaperIntelligentCrop(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    const-string v3, "getWallpaperBitmap: hasICrops = "

    invoke-static {v3, v1, v0}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object p0, p0, Lcom/android/systemui/wallpaper/CoverWallpaperController;->mPluginWallpaperManager:Lcom/android/systemui/pluginlock/PluginWallpaperManager;

    invoke-interface {p0, v2, v0}, Lcom/android/systemui/pluginlock/PluginWallpaperManager;->getFbeWallpaper(IZ)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_2
    iget-object p0, p0, Lcom/android/systemui/wallpaper/CoverWallpaperController;->mPluginWallpaperManager:Lcom/android/systemui/pluginlock/PluginWallpaperManager;

    invoke-static {}, Lcom/android/systemui/wallpaper/CoverWallpaperController;->getCoverMode()I

    move-result v0

    invoke-interface {p0, v0}, Lcom/android/systemui/pluginlock/PluginWallpaperManager;->getHomeWallpaperBitmap(I)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public final getWallpaperIntelligentCrop()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/CoverWallpaperController;->isFbeAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/wallpaper/CoverWallpaperController;->mPluginWallpaperManager:Lcom/android/systemui/pluginlock/PluginWallpaperManager;

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Lcom/android/systemui/pluginlock/PluginWallpaperManager;->getFbeWallpaperIntelligentCrop(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/wallpaper/CoverWallpaperController;->mPluginWallpaperManager:Lcom/android/systemui/pluginlock/PluginWallpaperManager;

    invoke-static {}, Lcom/android/systemui/wallpaper/CoverWallpaperController;->getCoverMode()I

    move-result v0

    invoke-interface {p0, v0}, Lcom/android/systemui/pluginlock/PluginWallpaperManager;->getHomeWallpaperIntelligentCrop(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getWallpaperPath()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/CoverWallpaperController;->isFbeAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/wallpaper/CoverWallpaperController;->mPluginWallpaperManager:Lcom/android/systemui/pluginlock/PluginWallpaperManager;

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Lcom/android/systemui/pluginlock/PluginWallpaperManager;->getFbeWallpaperPath(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/wallpaper/CoverWallpaperController;->mPluginWallpaperManager:Lcom/android/systemui/pluginlock/PluginWallpaperManager;

    invoke-static {}, Lcom/android/systemui/wallpaper/CoverWallpaperController;->getCoverMode()I

    move-result v0

    invoke-interface {p0, v0}, Lcom/android/systemui/pluginlock/PluginWallpaperManager;->getHomeWallpaperPath(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getWallpaperType()I
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/CoverWallpaperController;->isFbeAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/wallpaper/CoverWallpaperController;->mPluginWallpaperManager:Lcom/android/systemui/pluginlock/PluginWallpaperManager;

    invoke-interface {p0}, Lcom/android/systemui/pluginlock/PluginWallpaperManager;->getSubFbeWallpaperType()I

    move-result p0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/wallpaper/CoverWallpaperController;->mPluginWallpaperManager:Lcom/android/systemui/pluginlock/PluginWallpaperManager;

    invoke-static {}, Lcom/android/systemui/wallpaper/CoverWallpaperController;->getCoverMode()I

    move-result v0

    invoke-interface {p0, v0}, Lcom/android/systemui/pluginlock/PluginWallpaperManager;->getHomeWallpaperType(I)I

    move-result p0

    return p0
.end method

.method public final isCoverWallpaperRequired()Z
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/wallpaper/CoverWallpaperController;->mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId(Z)I

    move-result v0

    const-string v2, "CoverWallpaperController"

    if-lez v0, :cond_0

    const-string p0, "isCoverWallpaperRequired: currentUser = "

    invoke-static {v0, p0, v2}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/wallpaper/CoverWallpaperController;->mPluginWallpaperManager:Lcom/android/systemui/pluginlock/PluginWallpaperManager;

    invoke-interface {v0}, Lcom/android/systemui/pluginlock/PluginWallpaperManager;->getHomeCurrentScreen()I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    iget-object v4, p0, Lcom/android/systemui/wallpaper/CoverWallpaperController;->mPluginWallpaperManager:Lcom/android/systemui/pluginlock/PluginWallpaperManager;

    invoke-interface {v4, v3}, Lcom/android/systemui/pluginlock/PluginWallpaperManager;->isHomeWallpaperRequired(I)Z

    move-result v4

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/CoverWallpaperController;->isFbeAvailable()Z

    move-result p0

    if-nez v4, :cond_2

    if-eqz p0, :cond_3

    :cond_2
    move v1, v3

    :cond_3
    const-string v3, "isCoverWallpaperRequired: "

    const-string v5, ", [homeWallpaperReq:"

    const-string v6, ", isFbeAvailable:"

    invoke-static {v3, v5, v6, v1, v4}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ", isSubScreen:"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public final isFbeAvailable()Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/wallpaper/CoverWallpaperController;->mPluginWallpaperManager:Lcom/android/systemui/pluginlock/PluginWallpaperManager;

    invoke-interface {v0}, Lcom/android/systemui/pluginlock/PluginWallpaperManager;->isFbeAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/wallpaper/CoverWallpaperController;->mPluginWallpaperManager:Lcom/android/systemui/pluginlock/PluginWallpaperManager;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/systemui/pluginlock/PluginWallpaperManager;->isFbeRequired(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/wallpaper/CoverWallpaperController;->mPluginWallpaperManager:Lcom/android/systemui/pluginlock/PluginWallpaperManager;

    invoke-interface {p0, v1}, Lcom/android/systemui/pluginlock/PluginWallpaperManager;->isFbeWallpaperAvailable(I)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final onDataCleared()V
    .locals 9

    invoke-static {}, Lcom/android/systemui/wallpaper/CoverWallpaperController;->getCoverWhich()I

    move-result v0

    and-int/lit8 v1, v0, 0x3c

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/wallpaper/CoverWallpaperController;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v1, v0}, Landroid/app/WallpaperManager;->semGetWallpaperType(I)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_c

    iget-object v1, p0, Lcom/android/systemui/wallpaper/CoverWallpaperController;->mMultiPackDispatcher:Lcom/android/systemui/wallpaper/MultiPackDispatcher;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    new-instance v1, Lcom/android/systemui/wallpaper/MultiPackDispatcher;

    iget-object v3, p0, Lcom/android/systemui/wallpaper/CoverWallpaperController;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/wallpaper/CoverWallpaperController;->mWallpaperLogger:Lcom/android/systemui/wallpaper/log/WallpaperLogger;

    iget-object v5, p0, Lcom/android/systemui/wallpaper/CoverWallpaperController;->mPluginLockUtils:Lcom/android/systemui/pluginlock/PluginLockUtils;

    iget-object v6, p0, Lcom/android/systemui/wallpaper/CoverWallpaperController;->mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    invoke-virtual {v6, v2}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId(Z)I

    move-result v6

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/android/systemui/wallpaper/MultiPackDispatcher;-><init>(Landroid/content/Context;Lcom/android/systemui/wallpaper/log/WallpaperLogger;Lcom/android/systemui/pluginlock/PluginLockUtils;I)V

    iput-object v1, p0, Lcom/android/systemui/wallpaper/CoverWallpaperController;->mMultiPackDispatcher:Lcom/android/systemui/wallpaper/MultiPackDispatcher;

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/wallpaper/CoverWallpaperController;->mMultiPackDispatcher:Lcom/android/systemui/wallpaper/MultiPackDispatcher;

    invoke-virtual {v1, v0}, Lcom/android/systemui/wallpaper/MultiPackDispatcher;->startMultipack(I)Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object p0, p0, Lcom/android/systemui/wallpaper/CoverWallpaperController;->mMultiPackDispatcher:Lcom/android/systemui/wallpaper/MultiPackDispatcher;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/wallpaper/MultiPackDispatcher;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/app/WallpaperManager;->semGetUri(I)Landroid/net/Uri;

    move-result-object p0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "/data/overlays/homewallpaper/"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_b

    array-length v3, p0

    if-lez v3, :cond_b

    array-length v3, p0

    move v4, v2

    :goto_0
    if-ge v4, v3, :cond_b

    aget-object v5, p0, v4

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "wallpaper_[\\d][.][\\w]+"

    invoke-static {v6, v5}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    goto :goto_3

    :cond_2
    const-string/jumbo v6, "wallpaper_[\\d][.]"

    invoke-static {v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-nez v7, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v6, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_a

    const-string v7, "[^0-9]"

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    and-int/lit8 v7, v0, 0x30

    if-eqz v7, :cond_4

    const/4 v7, 0x1

    goto :goto_1

    :cond_4
    const/4 v7, 0x0

    :goto_1
    const-string v8, "^\\S+.(?i)(gif)$"

    invoke-static {v8, v5}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_6

    if-eqz v7, :cond_5

    const/16 v5, 0x16

    goto :goto_2

    :cond_5
    const/16 v5, 0xc

    goto :goto_2

    :cond_6
    const-string v8, "^\\S+.(?i)(jpg|jpeg|png)$"

    invoke-static {v8, v5}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_8

    if-eqz v7, :cond_7

    const/16 v5, 0x15

    goto :goto_2

    :cond_7
    const/16 v5, 0xb

    goto :goto_2

    :cond_8
    if-eqz v7, :cond_9

    const/16 v5, 0x17

    goto :goto_2

    :cond_9
    const/16 v5, 0xd

    :goto_2
    invoke-virtual {v1, v6, v5}, Landroid/util/SparseIntArray;->append(II)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p0

    goto :goto_4

    :cond_a
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :goto_4
    invoke-virtual {p0}, Ljava/lang/RuntimeException;->printStackTrace()V

    :cond_b
    invoke-virtual {v1, v2}, Landroid/util/SparseIntArray;->get(I)I

    :cond_c
    return-void
.end method

.method public final onReady()V
    .locals 2

    const-string v0, "CoverWallpaperController"

    const-string v1, "onReady"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/wallpaper/CoverWallpaperController;->mWallpaperConsumer:Ljava/util/function/Consumer;

    if-eqz p0, :cond_0

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final onSemWallpaperChanged(IILandroid/os/Bundle;)V
    .locals 2

    const-string p3, "onSemWallpaperChanged: type = "

    const-string v0, ", which = "

    const-string v1, "CoverWallpaperController"

    invoke-static {p1, p2, p3, v0, v1}, Landroidx/appcompat/widget/SuggestionsAdapter$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2}, Lcom/android/systemui/wallpaper/utils/WhichChecker;->isWatchFace(I)Z

    move-result p3

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    iget-object p3, p0, Lcom/android/systemui/wallpaper/CoverWallpaperController;->mSubScreenManager:Lcom/android/systemui/subscreen/SubScreenManager;

    iget-object p3, p3, Lcom/android/systemui/subscreen/SubScreenManager;->mSubScreenPlugin:Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    if-nez p3, :cond_0

    const-string p3, "SubScreenManager"

    const-string v1, "onSemWallpaperChanged() no plugin"

    invoke-static {p3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    invoke-interface {p3, v0}, Lcom/android/systemui/plugins/subscreen/PluginSubScreen;->onSemWallpaperChanged(Landroid/os/Bundle;)V

    :cond_1
    :goto_0
    invoke-static {p2}, Lcom/android/systemui/wallpaper/utils/WhichChecker;->isWatchFace(I)Z

    move-result p3

    if-nez p3, :cond_2

    invoke-static {p2}, Lcom/android/systemui/wallpaper/utils/WhichChecker;->isVirtualDisplay(I)Z

    move-result p2

    if-eqz p2, :cond_3

    :cond_2
    const/4 p2, 0x3

    if-eq p1, p2, :cond_3

    iput-object v0, p0, Lcom/android/systemui/wallpaper/CoverWallpaperController;->mWallpaperConsumer:Ljava/util/function/Consumer;

    iget-object p0, p0, Lcom/android/systemui/wallpaper/CoverWallpaperController;->mPluginWallpaperManager:Lcom/android/systemui/pluginlock/PluginWallpaperManager;

    invoke-static {}, Lcom/android/systemui/wallpaper/CoverWallpaperController;->getCoverMode()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/android/systemui/pluginlock/PluginWallpaperManager;->onHomeWallpaperChanged(I)V

    :cond_3
    return-void
.end method

.method public final onSemWallpaperColorsAnalysisRequested(II)V
    .locals 0

    return-void
.end method

.method public final onSemWallpaperColorsChanged(Landroid/app/SemWallpaperColors;II)V
    .locals 0

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

.method public final onWallpaperHintUpdate(Landroid/app/SemWallpaperColors;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/SemWallpaperColors;->getWhich()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "onWallpaperHintUpdate: invalid which. which = "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/app/SemWallpaperColors;->getWhich()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CoverWallpaperController"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/wallpaper/CoverWallpaperController;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-static {}, Lcom/android/systemui/wallpaper/CoverWallpaperController;->getCoverWhich()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/app/WallpaperManager;->semSetDLSWallpaperColors(Landroid/app/SemWallpaperColors;I)V

    return-void
.end method

.method public final onWallpaperUpdate(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onWallpaperUpdate:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/wallpaper/CoverWallpaperController;->mWallpaperConsumer:Ljava/util/function/Consumer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isFirst:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CoverWallpaperController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/wallpaper/CoverWallpaperController;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-static {}, Lcom/android/systemui/wallpaper/CoverWallpaperController;->getCoverWhich()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/WallpaperManager;->getWallpaperId(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/wallpaper/CoverWallpaperController;->mWallpaperId:I

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/wallpaper/CoverWallpaperController;->mWallpaperConsumer:Ljava/util/function/Consumer;

    if-eqz v0, :cond_1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_1
    if-eqz p1, :cond_3

    invoke-static {}, Lcom/android/systemui/wallpaper/CoverWallpaperController;->getCoverWhich()I

    move-result p1

    invoke-static {p1}, Lcom/android/systemui/wallpaper/utils/WhichChecker;->isWatchFace(I)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/android/systemui/wallpaper/CoverWallpaperController;->mSubScreenManager:Lcom/android/systemui/subscreen/SubScreenManager;

    iget-object p0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mSubScreenPlugin:Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    if-nez p0, :cond_2

    const-string p0, "SubScreenManager"

    const-string p1, "onSemWallpaperChanged() no plugin"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/subscreen/PluginSubScreen;->onSemWallpaperChanged(Landroid/os/Bundle;)V

    :cond_3
    :goto_0
    return-void
.end method
