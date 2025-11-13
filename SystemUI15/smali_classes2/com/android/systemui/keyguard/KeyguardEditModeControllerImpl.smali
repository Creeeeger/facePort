.class public final Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/keyguard/KeyguardEditModeController;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field public backupWallpaperPreviewPFD:Landroid/os/ParcelFileDescriptor;

.field public backupWallpaperRequestId:Ljava/lang/String;

.field public final bgExecutor:Ljava/util/concurrent/Executor;

.field public final displayLifecycle:Lcom/android/systemui/keyguard/DisplayLifecycle;

.field public final displayLifecycleObserver:Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl$displayLifecycleObserver$1;

.field public final executor:Ljava/util/concurrent/Executor;

.field public isAnimationRunning:Lkotlin/jvm/functions/Function0;

.field public isCanceled:Z

.field public isEditMode:Z

.field public isNowBarVisible:Z

.field public isShowEditorRequested:Z

.field public final keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public final keyguardUpdateMonitorCallback:Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl$keyguardUpdateMonitorCallback$1;

.field public final listeners:Ljava/util/List;

.field public onStartActivityListener:Lkotlin/jvm/functions/Function0;

.field public final pluginWallpaperManager:Lcom/android/systemui/pluginlock/PluginWallpaperManager;

.field public previewScale:F

.field public previewTopMargin:F

.field private final settingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field public startCancelAnimationFunction:Lkotlin/jvm/functions/Function0;

.field public updateViewsFunction:Lkotlin/jvm/functions/Function2;

.field public final wakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

.field public final wakefulnessLifecycleObserver:Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl$wakefulnessLifecycleObserver$1;

.field public wallpaperBitmapUri:Landroid/net/Uri;

.field public wallpaperCardView:Landroidx/cardview/widget/CardView;

.field public final wallpaperImageCreator:Lcom/android/systemui/keyguardimage/WallpaperImageCreator;

.field public wallpaperRequestID:Ljava/lang/String;

.field public final windowManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(ZLjava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lcom/android/systemui/keyguardimage/WallpaperImageCreator;Lcom/android/systemui/pluginlock/PluginWallpaperManager;Lcom/android/systemui/keyguard/WakefulnessLifecycle;Lcom/android/systemui/util/SettingsHelper;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/keyguard/DisplayLifecycle;Lcom/android/systemui/plugins/ActivityStarter;Landroid/view/WindowManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->isEditMode:Z

    iput-object p2, p0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->executor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->bgExecutor:Ljava/util/concurrent/Executor;

    iput-object p4, p0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->wallpaperImageCreator:Lcom/android/systemui/keyguardimage/WallpaperImageCreator;

    iput-object p5, p0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->pluginWallpaperManager:Lcom/android/systemui/pluginlock/PluginWallpaperManager;

    iput-object p6, p0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->wakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    iput-object p7, p0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    iput-object p8, p0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iput-object p9, p0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->displayLifecycle:Lcom/android/systemui/keyguard/DisplayLifecycle;

    iput-object p10, p0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    iput-object p11, p0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->windowManager:Landroid/view/WindowManager;

    const p1, 0x3f51eb85    # 0.82f

    iput p1, p0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->previewScale:F

    const p1, 0x3d27ef9e    # 0.041f

    iput p1, p0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->previewTopMargin:F

    sget-object p1, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl$startCancelAnimationFunction$1;->INSTANCE:Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl$startCancelAnimationFunction$1;

    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->startCancelAnimationFunction:Lkotlin/jvm/functions/Function0;

    sget-object p1, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl$isAnimationRunning$1;->INSTANCE:Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl$isAnimationRunning$1;

    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->isAnimationRunning:Lkotlin/jvm/functions/Function0;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->listeners:Ljava/util/List;

    const-string p1, ""

    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->wallpaperRequestID:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->backupWallpaperRequestId:Ljava/lang/String;

    new-instance p1, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl$keyguardUpdateMonitorCallback$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl$keyguardUpdateMonitorCallback$1;-><init>(Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;)V

    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->keyguardUpdateMonitorCallback:Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl$keyguardUpdateMonitorCallback$1;

    new-instance p1, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl$wakefulnessLifecycleObserver$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl$wakefulnessLifecycleObserver$1;-><init>(Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;)V

    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->wakefulnessLifecycleObserver:Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl$wakefulnessLifecycleObserver$1;

    new-instance p1, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl$displayLifecycleObserver$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl$displayLifecycleObserver$1;-><init>(Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;)V

    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->displayLifecycleObserver:Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl$displayLifecycleObserver$1;

    return-void
.end method

.method public static final access$saveWallpaperBitmap(Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;Landroid/content/Context;Landroid/graphics/Bitmap;)V
    .locals 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const-string v3, "keyguard_edit.jpg"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {p2, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p2, 0x0

    :try_start_2
    invoke-static {v1, p2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    const-string p2, "com.android.systemui.fileprovider"

    invoke-static {p1, p2, v0}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->wallpaperBitmapUri:Landroid/net/Uri;

    const-string p0, "com.samsung.android.app.dressroom"

    const/4 v0, 0x1

    invoke-virtual {p1, p0, p2, v0}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :catchall_0
    move-exception p0

    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    :try_start_4
    invoke-static {v1, p0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method


# virtual methods
.method public final bind(Landroid/view/View;)V
    .locals 7

    const v0, 0x7f0a0585

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/widget/ImageView;

    if-nez v4, :cond_0

    return-void

    :cond_0
    const v0, 0x7f0a0587

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/widget/ImageView;

    if-nez v5, :cond_1

    return-void

    :cond_1
    const v0, 0x7f0a0586

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/widget/FrameLayout;

    if-nez v6, :cond_2

    return-void

    :cond_2
    const v0, 0x7f0a0588

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/cardview/widget/CardView;

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->wallpaperCardView:Landroidx/cardview/widget/CardView;

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->refreshRadius()V

    new-instance v0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl$bind$1;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl$bind$1;-><init>(Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;Landroid/view/View;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/FrameLayout;)V

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->updateViewsFunction:Lkotlin/jvm/functions/Function2;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->initPreviewValues(Landroid/content/Context;)V

    return-void
.end method

.method public final canBeEditMode(Landroid/content/Context;)Z
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isSupportTouchAndHoldToEdit()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "KeyguardEditModeController"

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->isEditMode:Z

    if-eqz v0, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isUltraPowerSavingMode()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "can not be: PSM switched On}"

    invoke-static {v2, p0}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isUserUnlocked$1()Z

    move-result v0

    if-nez v0, :cond_2

    const-string p0, "can not be FBE"

    invoke-static {v2, p0}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_2
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->semDesktopModeEnabled:I

    if-ne v0, v3, :cond_3

    const-string p0, "can not be : New Dex"

    invoke-static {v2, p0}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_3
    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v4, Lcom/android/systemui/util/DesktopManager;

    invoke-virtual {v0, v4}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/DesktopManager;

    invoke-interface {v0}, Lcom/android/systemui/util/DesktopManager;->isStandalone()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string p0, "can not be : Dex Standalone"

    invoke-static {v2, p0}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_4
    invoke-static {}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->getInstance()Lcom/samsung/android/knox/custom/CustomDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->getProKioskManager()Lcom/samsung/android/knox/custom/ProKioskManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/knox/custom/ProKioskManager;->getProKioskState()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string p0, "isKioskMode : proKiosk mode"

    invoke-static {v2, p0}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    :try_start_0
    invoke-static {p1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getKioskMode()Lcom/samsung/android/knox/kiosk/KioskMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/knox/kiosk/KioskMode;->isKioskModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "isKioskMode : Kiosk mode"

    invoke-static {v2, v0}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-string p0, "can not be : Kiosk Modee"

    invoke-static {v2, p0}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :catch_0
    move-exception v0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "SecurityException: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/systemui/keyguard/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    invoke-virtual {p0, p1}, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->isLandscapeEditModeEnable(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_7

    return v3

    :cond_7
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    if-ne p0, v3, :cond_8

    move v1, v3

    :cond_8
    return v1

    :cond_9
    :goto_1
    iget-boolean p0, p0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->isEditMode:Z

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "can not be EM="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public final cancel()V
    .locals 4

    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->isCanceled:Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "cancel() "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardEditModeController"

    invoke-static {v1, v0}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->isCanceled:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->updateViewsFunction:Lkotlin/jvm/functions/Function2;

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move-object v0, v2

    :cond_0
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    check-cast v0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl$bind$1;

    invoke-virtual {v0, v3, v3}, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl$bind$1;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->wallpaperCardView:Landroidx/cardview/widget/CardView;

    if-eqz v0, :cond_1

    const-string v3, "cancel() call semSendWallpaperCommand resume"

    invoke-static {v1, v3}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v0

    const/4 v1, 0x2

    const-string/jumbo v3, "samsung.android.wallpaper.resume"

    invoke-virtual {v0, v1, v3, v2}, Landroid/app/WallpaperManager;->semSendWallpaperCommand(ILjava/lang/String;Landroid/os/Bundle;)V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/keyguard/KeyguardEditModeController$Listener;

    invoke-interface {v1}, Lcom/android/systemui/keyguard/KeyguardEditModeController$Listener;->onAnimationEnded()V

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->isCanceled:Z

    :cond_3
    return-void
.end method

.method public final getDurationForCancelAnim()J
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper;->isUltraPowerSavingMode()Z

    move-result p0

    if-eqz p0, :cond_0

    const-wide/16 v0, 0x3e8

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0xfa0

    :goto_0
    return-wide v0
.end method

.method public final getVIRunning()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isKeyguardVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->isEditMode:Z

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->isAnimationRunning:Lkotlin/jvm/functions/Function0;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final getWallpaperBitmap(Landroid/content/Context;Z)Landroid/graphics/Bitmap;
    .locals 9

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isUltraPowerSavingMode()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    invoke-static {p1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v0

    const/4 v2, 0x2

    if-eqz p2, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->wallpaperRequestID:Ljava/lang/String;

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string v6, "requestId"

    iget-object v7, p0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->wallpaperRequestID:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "requestTime"

    invoke-virtual {v5, v6, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string/jumbo v3, "samsung.android.wallpaper.backuprunningstate"

    invoke-virtual {v0, v2, v3, v5}, Landroid/app/WallpaperManager;->semSendWallpaperCommand(ILjava/lang/String;Landroid/os/Bundle;)V

    :cond_1
    const-string/jumbo v3, "send command to lockscreen semSendWallpaperCommand: pause"

    const-string v4, "KeyguardEditModeController"

    invoke-static {v4, v3}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "samsung.android.wallpaper.pause"

    invoke-virtual {v0, v2, v3, v1}, Landroid/app/WallpaperManager;->semSendWallpaperCommand(ILjava/lang/String;Landroid/os/Bundle;)V

    new-instance v0, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;

    invoke-direct {v0}, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;-><init>()V

    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->displayLifecycle:Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-virtual {v3}, Lcom/android/systemui/keyguard/DisplayLifecycle;->getRealSize()Landroid/graphics/Point;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    if-ne v5, v2, :cond_2

    iget v2, v3, Landroid/graphics/Point;->x:I

    iget v6, v3, Landroid/graphics/Point;->y:I

    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v0, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->width:I

    iget v2, v3, Landroid/graphics/Point;->x:I

    iget v3, v3, Landroid/graphics/Point;->y:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, v0, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->height:I

    goto :goto_0

    :cond_2
    iget v2, v3, Landroid/graphics/Point;->x:I

    iget v6, v3, Landroid/graphics/Point;->y:I

    invoke-static {v2, v6}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, v0, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->width:I

    iget v2, v3, Landroid/graphics/Point;->x:I

    iget v3, v3, Landroid/graphics/Point;->y:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v0, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->height:I

    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget-object p1, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p1}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result p1

    invoke-static {p1}, Lcom/android/systemui/util/DeviceState;->getRotation(I)I

    move-result p1

    iput p1, v0, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->rotation:I

    iget v2, v0, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->width:I

    iget v3, v0, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->height:I

    const-string v6, "getWallpaperBitmap, orientation="

    const-string v7, ", rotation="

    const-string v8, ", w="

    invoke-static {v5, p1, v6, v7, v8}, Landroidx/compose/foundation/layout/RowColumnMeasurePolicyKt$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", h="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p2, :cond_5

    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->backupWallpaperPreviewPFD:Landroid/os/ParcelFileDescriptor;

    iget-object p2, p0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->backupWallpaperRequestId:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getWallpaperBitmap, parcelFileDescriptor : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", requestId : "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/android/systemui/keyguard/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->backupWallpaperPreviewPFD:Landroid/os/ParcelFileDescriptor;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p1

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_3
    move-object p1, v1

    :goto_1
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;)Landroid/graphics/Bitmap;

    move-result-object p1

    iget-object p2, p0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->backupWallpaperPreviewPFD:Landroid/os/ParcelFileDescriptor;

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    return-object p1

    :goto_2
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/android/systemui/keyguard/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    const/4 p1, 0x1

    iput-boolean p1, v0, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->useScreenshot:Z

    :goto_3
    :try_start_1
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->wallpaperImageCreator:Lcom/android/systemui/keyguardimage/WallpaperImageCreator;

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/keyguardimage/WallpaperImageCreator;->createImage(Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;Landroid/graphics/Point;)Landroid/graphics/Bitmap;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    :goto_4
    return-object v1
.end method

.method public final initPreviewValues(Landroid/content/Context;)V
    .locals 9

    const-string v0, " "

    const-string v1, "dimen"

    const-string v2, "init preview values "

    const-string v3, "preview_top_margin_"

    const-string v4, "preview_scale_"

    const-string v5, "fold_"

    :try_start_0
    const-string v6, "com.samsung.android.app.dressroom"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v7

    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    move-result v8

    if-eqz v8, :cond_0

    const-string/jumbo v5, "tablet"

    goto :goto_1

    :catch_0
    move-exception p0

    goto/16 :goto_3

    :catch_1
    move-exception p0

    goto/16 :goto_4

    :cond_0
    sget-boolean v8, Lcom/android/systemui/LsRune;->LOCKUI_SUB_DISPLAY_LOCK:Z

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->displayLifecycle:Lcom/android/systemui/keyguard/DisplayLifecycle;

    iget-boolean v8, v8, Lcom/android/systemui/keyguard/DisplayLifecycle;->mIsFolderOpened:Z

    if-eqz v8, :cond_1

    const-string v8, "main"

    goto :goto_0

    :cond_1
    const-string/jumbo v8, "sub"

    :goto_0
    invoke-virtual {v5, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_2
    const-string v5, "phone"

    :goto_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4, v1, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v7, v4}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v4

    iput v4, p0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->previewScale:F

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3, v1, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v7, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v1

    iput v1, p0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->previewTopMargin:F

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->wallpaperCardView:Landroidx/cardview/widget/CardView;

    if-nez v1, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v3, 0x7f070753

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iget v3, p0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->previewScale:F

    div-float/2addr p1, v3

    invoke-virtual {v1, p1}, Landroidx/cardview/widget/CardView;->setRadius(F)V

    :goto_2
    const-string p1, "KeyguardEditModeController"

    iget v1, p0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->previewScale:F

    iget p0, p0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->previewTopMargin:F

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :goto_3
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_5

    :goto_4
    invoke-virtual {p0}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    :goto_5
    return-void
.end method

.method public final isLandscapeEditModeEnable(Landroid/content/Context;)Z
    .locals 1

    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    move-result v0

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/systemui/LsRune;->LOCKUI_SUB_DISPLAY_LOCK:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    if-nez p1, :cond_1

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper;->isUltraPowerSavingMode()Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final onFullscreenModeChanged(Landroid/content/Context;Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isSupportTouchAndHoldToEdit()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->isLandscapeEditModeEnable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    if-nez p2, :cond_2

    return-void

    :cond_2
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper;->isUltraPowerSavingMode()Z

    move-result p0

    const/4 p2, 0x0

    if-eqz p0, :cond_3

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f13109a

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_4

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f13132c

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_4
    :goto_0
    return-void
.end method

.method public final refreshRadius()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->wallpaperCardView:Landroidx/cardview/widget/CardView;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    const-string v2, "SEC_FLOATING_FEATURE_FRAMEWORK_CONFIG_ROUNDED_CORNER_RADIUS"

    const/16 v3, 0x1a

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getInt(Ljava/lang/String;I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    iget p0, p0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->previewScale:F

    div-float/2addr v1, p0

    invoke-virtual {v0, v1}, Landroidx/cardview/widget/CardView;->setRadius(F)V

    :cond_0
    return-void
.end method

.method public final startAnimation(Z)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "startAnimation e="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardEditModeController"

    invoke-static {v1, v0}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean p1, p0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->isEditMode:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->isCanceled:Z

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->updateViewsFunction:Lkotlin/jvm/functions/Function2;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    check-cast v0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl$bind$1;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl$bind$1;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->listeners:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/KeyguardEditModeController$Listener;

    invoke-interface {v0, p1}, Lcom/android/systemui/keyguard/KeyguardEditModeController$Listener;->onAnimationStarted(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final startEditActivity(Landroid/content/Context;Z)Z
    .locals 8

    const-string v0, "KeyguardEditModeController"

    const-string/jumbo v1, "startActivity begin"

    invoke-static {v0, v1}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->onStartActivityListener:Lkotlin/jvm/functions/Function0;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    new-instance v1, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    const/16 v2, -0x60

    iput v2, v1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string v4, "com.samsung.dressroom.intent.action.SHOW_LOCK_EDITOR"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->wallpaperImageCreator:Lcom/android/systemui/keyguardimage/WallpaperImageCreator;

    iget-object v4, v4, Lcom/android/systemui/keyguardimage/WallpaperImageCreator;->mKeyguardWallpaper:Lcom/android/systemui/wallpaper/KeyguardWallpaper;

    check-cast v4, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    const/16 v5, 0x267

    invoke-virtual {v4, v5}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->notifyEvent(I)Landroid/os/Bundle;

    move-result-object v4

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    const-string v6, "current_position"

    invoke-virtual {v4, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    goto :goto_1

    :cond_1
    move v4, v5

    :goto_1
    const-string/jumbo v6, "video_wallpaper_start_frame"

    invoke-virtual {v3, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->pluginWallpaperManager:Lcom/android/systemui/pluginlock/PluginWallpaperManager;

    invoke-interface {v4}, Lcom/android/systemui/pluginlock/PluginWallpaperManager;->getWallpaperIndex()I

    move-result v4

    const-string/jumbo v6, "wallpaper_index"

    invoke-virtual {v3, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v4, "lock_bouncer_enabled"

    invoke-virtual {v3, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v4, "stateBackupRequestId"

    iget-object v6, p0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->wallpaperRequestID:Ljava/lang/String;

    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "preview_uri_from_lock"

    iget-object v6, p0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->wallpaperBitmapUri:Landroid/net/Uri;

    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-boolean v4, p0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->isNowBarVisible:Z

    const/4 v6, 0x1

    if-eqz v4, :cond_2

    if-nez p2, :cond_2

    move v4, v6

    goto :goto_2

    :cond_2
    move v4, v5

    :goto_2
    const-string v7, "nowbar_visible"

    invoke-virtual {v3, v7, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v4, "com.samsung.android.app.dressroom"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const v4, 0x14000020

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    if-eqz p2, :cond_4

    const-string/jumbo p2, "startActivity Dismiss Keyguard"

    invoke-static {v0, p2}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v6, p0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->isShowEditorRequested:Z

    invoke-virtual {p0, p1, v6}, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->getWallpaperBitmap(Landroid/content/Context;Z)Landroid/graphics/Bitmap;

    move-result-object p2

    if-eqz p2, :cond_3

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->bgExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl$startEditActivity$1$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl$startEditActivity$1$1;-><init>(Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;Landroid/content/Context;Landroid/graphics/Bitmap;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_3
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    invoke-interface {p0, v3, v5}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/content/Intent;I)V

    return v6

    :cond_4
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->executor:Ljava/util/concurrent/Executor;

    new-instance p2, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl$startEditActivity$2;

    invoke-direct {p2, v1, p1, v3}, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl$startEditActivity$2;-><init>(Lkotlin/jvm/internal/Ref$IntRef;Landroid/content/Context;Landroid/content/Intent;)V

    invoke-interface {p0, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    iget p0, v1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    if-eq p0, v2, :cond_5

    move v5, v6

    :cond_5
    return v5
.end method
