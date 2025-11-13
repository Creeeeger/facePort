.class public final Lcom/android/systemui/aod/AODAmbientWallpaperHelper;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public isFolded:Z

.field public isMainWonderLandWallpaper:Z

.field public isSubWonderLandWallpaper:Z

.field public final keyguardViewMediatorLazy:Ldagger/Lazy;

.field private final settingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field public final statusBarWindowControllerLazy:Ldagger/Lazy;

.field public final userTracker:Lcom/android/systemui/settings/UserTracker;

.field public final wallpaperManager:Landroid/app/WallpaperManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/aod/AODAmbientWallpaperHelper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/aod/AODAmbientWallpaperHelper$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/util/SettingsHelper;Ldagger/Lazy;Landroid/app/WallpaperManager;Lcom/android/systemui/settings/UserTracker;Lcom/android/systemui/keyguard/WakefulnessLifecycle;Ldagger/Lazy;Lcom/android/systemui/keyguard/DisplayLifecycle;Lcom/android/systemui/wallpapers/data/repository/WallpaperRepository;Lkotlinx/coroutines/CoroutineScope;Lcom/android/systemui/broadcast/BroadcastDispatcher;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/util/SettingsHelper;",
            "Ldagger/Lazy;",
            "Landroid/app/WallpaperManager;",
            "Lcom/android/systemui/settings/UserTracker;",
            "Lcom/android/systemui/keyguard/WakefulnessLifecycle;",
            "Ldagger/Lazy;",
            "Lcom/android/systemui/keyguard/DisplayLifecycle;",
            "Lcom/android/systemui/wallpapers/data/repository/WallpaperRepository;",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lcom/android/systemui/broadcast/BroadcastDispatcher;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/aod/AODAmbientWallpaperHelper;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    iput-object p2, p0, Lcom/android/systemui/aod/AODAmbientWallpaperHelper;->keyguardViewMediatorLazy:Ldagger/Lazy;

    iput-object p3, p0, Lcom/android/systemui/aod/AODAmbientWallpaperHelper;->wallpaperManager:Landroid/app/WallpaperManager;

    iput-object p4, p0, Lcom/android/systemui/aod/AODAmbientWallpaperHelper;->userTracker:Lcom/android/systemui/settings/UserTracker;

    iput-object p6, p0, Lcom/android/systemui/aod/AODAmbientWallpaperHelper;->statusBarWindowControllerLazy:Ldagger/Lazy;

    new-instance p1, Lcom/android/systemui/aod/AODAmbientWallpaperHelper$wallpaperChangeReceiver$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/aod/AODAmbientWallpaperHelper$wallpaperChangeReceiver$1;-><init>(Lcom/android/systemui/aod/AODAmbientWallpaperHelper;)V

    new-instance p2, Lcom/android/systemui/aod/AODAmbientWallpaperHelper$1;

    invoke-direct {p2, p0}, Lcom/android/systemui/aod/AODAmbientWallpaperHelper$1;-><init>(Lcom/android/systemui/aod/AODAmbientWallpaperHelper;)V

    invoke-virtual {p5, p2}, Lcom/android/systemui/keyguard/SecLifecycle;->addObserver(Ljava/lang/Object;)V

    sget-boolean p2, Lcom/android/systemui/LsRune;->AOD_SUB_DISPLAY_LOCK:Z

    if-nez p2, :cond_0

    sget-boolean p2, Lcom/android/systemui/LsRune;->AOD_SUB_DISPLAY_COVER:Z

    if-eqz p2, :cond_1

    :cond_0
    new-instance p2, Lcom/android/systemui/aod/AODAmbientWallpaperHelper$2;

    invoke-direct {p2, p0}, Lcom/android/systemui/aod/AODAmbientWallpaperHelper$2;-><init>(Lcom/android/systemui/aod/AODAmbientWallpaperHelper;)V

    invoke-virtual {p7, p2}, Lcom/android/systemui/keyguard/SecLifecycle;->addObserver(Ljava/lang/Object;)V

    :cond_1
    new-instance p2, Landroid/content/IntentFilter;

    const-string p0, "android.intent.action.WALLPAPER_CHANGED"

    invoke-direct {p2, p0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sget-object p4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 p5, 0x0

    const/4 p6, 0x0

    const/4 p3, 0x0

    const/16 p7, 0x34

    move-object p0, p10

    invoke-static/range {p0 .. p7}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver$default(Lcom/android/systemui/broadcast/BroadcastDispatcher;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;ILjava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final isAODAmbientWallpaperMode()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/aod/AODAmbientWallpaperHelper;->isAODFullScreenMode()Z

    move-result v0

    if-nez v0, :cond_4

    sget-boolean v0, Lcom/android/systemui/LsRune;->AOD_SUB_DISPLAY_LOCK:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/systemui/LsRune;->AOD_SUB_DISPLAY_COVER:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean p0, p0, Lcom/android/systemui/aod/AODAmbientWallpaperHelper;->isMainWonderLandWallpaper:Z

    goto :goto_1

    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/android/systemui/aod/AODAmbientWallpaperHelper;->isFolded:Z

    if-eqz v0, :cond_2

    iget-boolean p0, p0, Lcom/android/systemui/aod/AODAmbientWallpaperHelper;->isSubWonderLandWallpaper:Z

    goto :goto_1

    :cond_2
    iget-boolean p0, p0, Lcom/android/systemui/aod/AODAmbientWallpaperHelper;->isMainWonderLandWallpaper:Z

    :goto_1
    if-eqz p0, :cond_3

    goto :goto_2

    :cond_3
    const/4 p0, 0x0

    goto :goto_3

    :cond_4
    :goto_2
    const/4 p0, 0x1

    :goto_3
    return p0
.end method

.method public final isAODFullScreenAndShowing()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/aod/AODAmbientWallpaperHelper;->isAODFullScreenMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/aod/AODAmbientWallpaperHelper;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper;->isAODShown()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isAODFullScreenMode()Z
    .locals 1

    sget-boolean v0, Lcom/android/systemui/LsRune;->AOD_FULLSCREEN:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/aod/AODAmbientWallpaperHelper;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isAODEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/aod/AODAmbientWallpaperHelper;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isAODShowLockWallpaper()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/systemui/LsRune;->AOD_SUB_FULLSCREEN:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/android/systemui/aod/AODAmbientWallpaperHelper;->isFolded:Z

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final updateWonderLandWallpaperState()V
    .locals 8

    sget-boolean v0, Lcom/android/systemui/LsRune;->AOD_SUB_DISPLAY_LOCK:Z

    const-string v1, "com.samsung.android.wonderland.wallpaper.service.WonderLandWallpaperReloadedService"

    const/4 v2, 0x6

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/systemui/aod/AODAmbientWallpaperHelper;->userTracker:Lcom/android/systemui/settings/UserTracker;

    const-string v5, ""

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/systemui/aod/AODAmbientWallpaperHelper;->isFolded:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/aod/AODAmbientWallpaperHelper;->wallpaperManager:Landroid/app/WallpaperManager;

    check-cast v4, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v4}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    move-result v1

    const/16 v2, 0x12

    invoke-virtual {v0, v2, v1}, Landroid/app/WallpaperManager;->semGetWallpaperComponent(II)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    :cond_0
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.samsung.android.wonderland.wallpaper.service.WonderLandWallpaperReloadedSubService"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/aod/AODAmbientWallpaperHelper;->isSubWonderLandWallpaper:Z

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/aod/AODAmbientWallpaperHelper;->wallpaperManager:Landroid/app/WallpaperManager;

    check-cast v4, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v4}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    move-result v4

    invoke-virtual {v0, v2, v4}, Landroid/app/WallpaperManager;->semGetWallpaperComponent(II)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    :cond_2
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/aod/AODAmbientWallpaperHelper;->isMainWonderLandWallpaper:Z

    :goto_0
    move-object v7, v5

    move-object v5, v0

    move-object v0, v7

    goto :goto_1

    :cond_3
    sget-boolean v0, Lcom/android/systemui/LsRune;->AOD_SUB_DISPLAY_COVER:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/android/systemui/aod/AODAmbientWallpaperHelper;->isFolded:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/aod/AODAmbientWallpaperHelper;->wallpaperManager:Landroid/app/WallpaperManager;

    check-cast v4, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v4}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    move-result v4

    invoke-virtual {v0, v2, v4}, Landroid/app/WallpaperManager;->semGetWallpaperComponent(II)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    :cond_4
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/aod/AODAmbientWallpaperHelper;->isMainWonderLandWallpaper:Z

    goto :goto_0

    :cond_5
    move-object v0, v5

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/android/systemui/aod/AODAmbientWallpaperHelper;->wallpaperManager:Landroid/app/WallpaperManager;

    check-cast v4, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v4}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    move-result v4

    invoke-virtual {v0, v2, v4}, Landroid/app/WallpaperManager;->semGetWallpaperComponent(II)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    :cond_7
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/aod/AODAmbientWallpaperHelper;->isMainWonderLandWallpaper:Z

    goto :goto_0

    :goto_1
    iget-boolean v1, p0, Lcom/android/systemui/aod/AODAmbientWallpaperHelper;->isFolded:Z

    iget-boolean v2, p0, Lcom/android/systemui/aod/AODAmbientWallpaperHelper;->isMainWonderLandWallpaper:Z

    iget-boolean p0, p0, Lcom/android/systemui/aod/AODAmbientWallpaperHelper;->isSubWonderLandWallpaper:Z

    const-string/jumbo v3, "updateWonderLandWallpaperState: isFolded="

    const-string v4, ", isMainWonderLandWallpaper="

    const-string v6, ", isSubWonderLandWallpaper="

    invoke-static {v3, v4, v6, v1, v2}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, " mainWallpaperClassName="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", subWallpaperClassName="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "AODAmbientWallpaperHelper"

    invoke-static {v1, v0, p0}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
