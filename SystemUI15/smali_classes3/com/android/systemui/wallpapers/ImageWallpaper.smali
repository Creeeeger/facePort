.class public Lcom/android/systemui/wallpapers/ImageWallpaper;
.super Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final LOCAL_COLOR_BOUNDS:Landroid/graphics/RectF;


# instance fields
.field public final mCanvasEngineList:Ljava/util/HashMap;

.field public final mColorAreas:Landroid/util/ArraySet;

.field public final mCoverWallpaper:Lcom/android/systemui/wallpaper/CoverWallpaper;

.field public final mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

.field public final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public final mKeyguardWallpaper:Lcom/android/systemui/wallpaper/KeyguardWallpaper;

.field public final mKeygurdEventExecutor:Ljava/util/concurrent/ExecutorService;

.field public final mLocalColorsToAdd:Ljava/util/ArrayList;

.field public final mLogger:Lcom/android/systemui/wallpaper/log/WallpaperLogger;

.field public final mLongExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

.field public final mMainThreadHandler:Landroid/os/Handler;

.field public mMiniBitmap:Landroid/graphics/Bitmap;

.field public volatile mPages:I

.field public mPagesComputed:Z

.field public final mPluginWallpaper:Lcom/android/systemui/wallpaper/PluginWallpaper;

.field public mPluginWallpaperType:I

.field private mSettingsCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

.field private final mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field public mSubWallpaperType:I

.field public final mSystemWallpaperColors:Lcom/android/systemui/wallpaper/colors/SystemWallpaperColors;

.field public mWorker:Landroid/os/HandlerThread;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmSettingsHelper(Lcom/android/systemui/wallpapers/ImageWallpaper;)Lcom/android/systemui/util/SettingsHelper;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/graphics/RectF;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1, v2, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    sput-object v0, Lcom/android/systemui/wallpapers/ImageWallpaper;->LOCAL_COLOR_BOUNDS:Landroid/graphics/RectF;

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/settings/UserTracker;Lcom/android/systemui/wallpaper/log/WallpaperLogger;Lcom/android/systemui/wallpaper/colors/SystemWallpaperColors;Lcom/android/systemui/wallpaper/KeyguardWallpaper;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/util/SettingsHelper;Lcom/android/systemui/wallpaper/CoverWallpaper;Lcom/android/systemui/wallpaper/PluginWallpaper;Lcom/android/systemui/statusbar/phone/DozeParameters;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService;-><init>()V

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/wallpapers/ImageWallpaper;->mLocalColorsToAdd:Ljava/util/ArrayList;

    new-instance p2, Landroid/util/ArraySet;

    invoke-direct {p2}, Landroid/util/ArraySet;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/wallpapers/ImageWallpaper;->mColorAreas:Landroid/util/ArraySet;

    const/4 p2, 0x1

    iput p2, p0, Lcom/android/systemui/wallpapers/ImageWallpaper;->mPages:I

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/android/systemui/wallpapers/ImageWallpaper;->mPagesComputed:Z

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/wallpapers/ImageWallpaper;->mCanvasEngineList:Ljava/util/HashMap;

    const/4 p2, 0x2

    invoke-static {p2}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/wallpapers/ImageWallpaper;->mKeygurdEventExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance p2, Lcom/android/systemui/wallpapers/ImageWallpaper$3;

    invoke-direct {p2, p0}, Lcom/android/systemui/wallpapers/ImageWallpaper$3;-><init>(Lcom/android/systemui/wallpapers/ImageWallpaper;)V

    iput-object p2, p0, Lcom/android/systemui/wallpapers/ImageWallpaper;->mSettingsCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    iput-object p1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper;->mLongExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    iput-object p3, p0, Lcom/android/systemui/wallpapers/ImageWallpaper;->mLogger:Lcom/android/systemui/wallpaper/log/WallpaperLogger;

    move-object p1, p5

    check-cast p1, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    iget-object p1, p1, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mSystemWallpaperColors:Lcom/android/systemui/wallpaper/colors/SystemWallpaperColors;

    iput-object p1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper;->mSystemWallpaperColors:Lcom/android/systemui/wallpaper/colors/SystemWallpaperColors;

    if-nez p1, :cond_0

    iput-object p4, p0, Lcom/android/systemui/wallpapers/ImageWallpaper;->mSystemWallpaperColors:Lcom/android/systemui/wallpaper/colors/SystemWallpaperColors;

    :cond_0
    iput-object p7, p0, Lcom/android/systemui/wallpapers/ImageWallpaper;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    iput-object p8, p0, Lcom/android/systemui/wallpapers/ImageWallpaper;->mCoverWallpaper:Lcom/android/systemui/wallpaper/CoverWallpaper;

    iput-object p9, p0, Lcom/android/systemui/wallpapers/ImageWallpaper;->mPluginWallpaper:Lcom/android/systemui/wallpaper/PluginWallpaper;

    iput-object p5, p0, Lcom/android/systemui/wallpapers/ImageWallpaper;->mKeyguardWallpaper:Lcom/android/systemui/wallpaper/KeyguardWallpaper;

    iput-object p6, p0, Lcom/android/systemui/wallpapers/ImageWallpaper;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iput-object p10, p0, Lcom/android/systemui/wallpapers/ImageWallpaper;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper;->mMainThreadHandler:Landroid/os/Handler;

    return-void
.end method

.method public static synthetic access$400(Lcom/android/systemui/wallpapers/ImageWallpaper;)Landroid/app/WallpaperManager;
    .locals 0

    iget-object p0, p0, Landroid/service/wallpaper/WallpaperService;->mWallpaperManager:Landroid/app/WallpaperManager;

    return-object p0
.end method


# virtual methods
.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 9

    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-super {p0}, Landroid/service/wallpaper/WallpaperService;->getDisplayId()I

    move-result v0

    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperEngineManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperEngineManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperEngineManager;->getEngines()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService$BaseEngine;

    instance-of v4, v3, Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine;

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Landroid/service/wallpaper/WallpaperService$Engine;->isPreview()Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {v0, v1}, Lcom/android/systemui/wallpaper/utils/WhichChecker;->convertDisplayIdToMode(ILandroid/content/Context;)I

    move-result v4

    invoke-virtual {v3}, Landroid/service/wallpaper/WallpaperService$Engine;->semGetWallpaperFlags()I

    move-result v5

    and-int/lit8 v5, v5, 0x3c

    const-string v6, "onConfigurationChanged: displayId = "

    const-string v7, ", modeFromDisplayId = "

    const-string v8, ", modeFromEngine = "

    invoke-static {v0, v4, v6, v7, v8}, Landroidx/compose/foundation/layout/RowColumnMeasurePolicyKt$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "ImageWallpaper"

    invoke-static {v5, v7, v6}, Landroidx/recyclerview/widget/RecyclerView$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)V

    if-ne v4, v5, :cond_0

    check-cast v3, Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine;

    invoke-virtual {v3, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper;->mCanvasEngineList:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;

    if-eqz p0, :cond_4

    invoke-virtual {p0, p1}, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_4
    return-void
.end method

.method public final onCreate()V
    .locals 4

    invoke-super {p0}, Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService;->onCreate()V

    const-string v0, "Main onCreate"

    const-string v1, "ImageWallpaper"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/HandlerThread;

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper;->mWorker:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    iget-object v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    iget-object p0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper;->mSettingsCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/net/Uri;

    const-string v2, "display_night_theme_wallpaper"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    return-void
.end method

.method public final onCreateEngine(I)Landroid/service/wallpaper/WallpaperService$Engine;
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper;->mCoverWallpaper:Lcom/android/systemui/wallpaper/CoverWallpaper;

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/android/systemui/wallpaper/utils/WhichChecker;->isWatchFace(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/android/systemui/wallpaper/utils/WhichChecker;->isVirtualDisplay(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper;->mCoverWallpaper:Lcom/android/systemui/wallpaper/CoverWallpaper;

    iget-object v1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper;->mWorker:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    check-cast v0, Lcom/android/systemui/wallpaper/CoverWallpaperController;

    iget-object v1, v0, Lcom/android/systemui/wallpaper/CoverWallpaperController;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-static {}, Lcom/android/systemui/wallpaper/CoverWallpaperController;->getCoverWhich()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/WallpaperManager;->getWallpaperId(I)I

    move-result v1

    iput v1, v0, Lcom/android/systemui/wallpaper/CoverWallpaperController;->mWallpaperId:I

    :cond_1
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v0, p1}, Landroid/app/WallpaperManager;->semGetWallpaperType(I)I

    move-result v0

    new-instance v1, Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine;

    invoke-direct {v1, p0, p1, v0}, Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine;-><init>(Lcom/android/systemui/wallpapers/ImageWallpaper;II)V

    return-object v1
.end method

.method public final onDestroy()V
    .locals 2

    const-string v0, "ImageWallpaper"

    const-string v1, "Main onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/service/wallpaper/WallpaperService;->onDestroy()V

    iget-object v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper;->mWorker:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    iget-object v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    iget-object v1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper;->mSettingsCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/SettingsHelper;->unregisterCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper;->mWorker:Landroid/os/HandlerThread;

    iput-object v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper;->mMiniBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public final onProvideEngineLooper()Landroid/os/Looper;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper;->mWorker:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-super {p0}, Landroid/service/wallpaper/WallpaperService;->onProvideEngineLooper()Landroid/os/Looper;

    move-result-object p0

    :goto_0
    return-object p0
.end method
