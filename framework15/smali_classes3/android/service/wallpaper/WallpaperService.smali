.class public abstract Landroid/service/wallpaper/WallpaperService;
.super Landroid/app/Service;
.source "WallpaperService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;,
        Landroid/service/wallpaper/WallpaperService$IWallpaperServiceWrapper;,
        Landroid/service/wallpaper/WallpaperService$Engine;,
        Landroid/service/wallpaper/WallpaperService$WallpaperCommand;
    }
.end annotation


# static fields
.field static final greylist-max-o DEBUG:Z = false

.field private static final blacklist DEFAULT_UPDATE_SCREENSHOT_DURATION:J = 0xea60L

.field private static final blacklist DIMMING_ANIMATION_DURATION_MS:J = 0x12cL

.field private static final greylist-max-o DO_ATTACH:I = 0xa

.field private static final greylist-max-o DO_DETACH:I = 0x14

.field private static final greylist-max-o DO_IN_AMBIENT_MODE:I = 0x32

.field private static final greylist-max-o DO_SET_DESIRED_SIZE:I = 0x1e

.field private static final greylist-max-o DO_SET_DISPLAY_PADDING:I = 0x28

.field private static final blacklist ENABLE_WALLPAPER_DIMMING:Z = false

.field private static final blacklist LOCAL_COLOR_BOUNDS:Landroid/graphics/RectF;

.field private static final blacklist MIN_BITMAP_SCREENSHOT_WIDTH:I = 0x40

.field static final blacklist MIN_PAGE_ALLOWED_MARGIN:F = 0.05f

.field private static final blacklist MSG_REFRESH_VISIBILITY:I = 0x271b

.field private static final blacklist MSG_REPORT_SHOWN:I = 0x27a6

.field private static final greylist-max-o MSG_REQUEST_WALLPAPER_COLORS:I = 0x2742

.field private static final blacklist MSG_RESIZE_PREVIEW:I = 0x277e

.field private static final greylist-max-o MSG_TOUCH_EVENT:I = 0x2738

.field private static final blacklist MSG_UPDATE_DIMMING:I = 0x27d8

.field private static final blacklist MSG_UPDATE_SCREEN_TURNING_ON:I = 0x27ba

.field private static final greylist-max-o MSG_UPDATE_SURFACE:I = 0x2710

.field private static final greylist-max-o MSG_VISIBILITY_CHANGED:I = 0x271a

.field private static final greylist-max-o MSG_WALLPAPER_COMMAND:I = 0x2729

.field private static final blacklist MSG_WALLPAPER_FLAGS_CHANGED:I = 0x27e2

.field private static final greylist-max-o MSG_WALLPAPER_OFFSETS:I = 0x2724

.field private static final greylist-max-o MSG_WINDOW_MOVED:I = 0x2733

.field private static final greylist-max-r MSG_WINDOW_RESIZED:I = 0x272e

.field private static final blacklist MSG_ZOOM:I = 0x2774

.field private static final greylist-max-o NOTIFY_COLORS_RATE_LIMIT_MS:I = 0x3e8

.field private static final blacklist PRESERVE_VISIBLE_TIMEOUT_MS:J = 0x3e8L

.field private static final blacklist PROCESS_LOCAL_COLORS_INTERVAL_MS:I = 0x7d0

.field public static final whitelist SERVICE_INTERFACE:Ljava/lang/String; = "android.service.wallpaper.WallpaperService"

.field public static final whitelist SERVICE_META_DATA:Ljava/lang/String; = "android.service.wallpaper"

.field static final greylist-max-o TAG:Ljava/lang/String; = "WallpaperService"

.field public static final blacklist WEAROS_WALLPAPER_HANDLES_SCALING:J = 0x103e6fd3L


# instance fields
.field private final blacklist mActiveEngines:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mBackgroundHandler:Landroid/os/Handler;

.field private blacklist mBackgroundThread:Landroid/os/HandlerThread;

.field private blacklist mIsWearOs:Z

.field protected blacklist mWallpaperManager:Landroid/app/WallpaperManager;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmActiveEngines(Landroid/service/wallpaper/WallpaperService;)Landroid/util/ArrayMap;
    .locals 0

    iget-object p0, p0, Landroid/service/wallpaper/WallpaperService;->mActiveEngines:Landroid/util/ArrayMap;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmBackgroundHandler(Landroid/service/wallpaper/WallpaperService;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Landroid/service/wallpaper/WallpaperService;->mBackgroundHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsWearOs(Landroid/service/wallpaper/WallpaperService;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/service/wallpaper/WallpaperService;->mIsWearOs:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$misAodTransitionRequired(Landroid/service/wallpaper/WallpaperService;)Z
    .locals 0

    invoke-direct {p0}, Landroid/service/wallpaper/WallpaperService;->isAodTransitionRequired()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$misValid(Landroid/service/wallpaper/WallpaperService;Landroid/graphics/RectF;)Z
    .locals 0

    invoke-direct {p0, p1}, Landroid/service/wallpaper/WallpaperService;->isValid(Landroid/graphics/RectF;)Z

    move-result p0

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 3

    new-instance v0, Landroid/graphics/RectF;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1, v2, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    sput-object v0, Landroid/service/wallpaper/WallpaperService;->LOCAL_COLOR_BOUNDS:Landroid/graphics/RectF;

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService;->mActiveEngines:Landroid/util/ArrayMap;

    return-void
.end method

.method private blacklist inRectFRange(F)Z
    .locals 1

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private blacklist isAodTransitionRequired()Z
    .locals 5

    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "aod_show_state"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "aod_show_lockscreen_wallpaper"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    if-eqz v0, :cond_2

    if-eqz v3, :cond_2

    move v2, v1

    :cond_2
    return v2
.end method

.method private blacklist isValid(Landroid/graphics/RectF;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget v1, p1, Landroid/graphics/RectF;->bottom:F

    iget v2, p1, Landroid/graphics/RectF;->top:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget v2, p1, Landroid/graphics/RectF;->right:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    sget-object v1, Landroid/service/wallpaper/WallpaperService;->LOCAL_COLOR_BOUNDS:Landroid/graphics/RectF;

    invoke-virtual {v1, p1}, Landroid/graphics/RectF;->contains(Landroid/graphics/RectF;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    nop

    :goto_0
    return v0
.end method


# virtual methods
.method protected whitelist dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 7

    const-string v0, "State of wallpaper "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v0, ":"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService;->mActiveEngines:Landroid/util/ArrayMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService;->mActiveEngines:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget-object v3, v2, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mEngine:Landroid/service/wallpaper/WallpaperService$Engine;

    if-nez v3, :cond_0

    const-string v4, "WallpaperService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Engine for wrapper "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " not attached"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string v4, "  Engine "

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v4, ":"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v4, "    "

    invoke-virtual {v3, v4, p1, p2, p3}, Landroid/service/wallpaper/WallpaperService$Engine;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final whitelist onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2

    const-string v0, "WallpaperService"

    const-string/jumbo v1, "onBind"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/service/wallpaper/WallpaperService$IWallpaperServiceWrapper;

    invoke-direct {v0, p0, p0}, Landroid/service/wallpaper/WallpaperService$IWallpaperServiceWrapper;-><init>(Landroid/service/wallpaper/WallpaperService;Landroid/service/wallpaper/WallpaperService;)V

    return-object v0
.end method

.method public whitelist onCreate()V
    .locals 2

    const-string v0, "WPMS.onCreate"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "DefaultWallpaperLocalColorExtractor"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService;->mBackgroundThread:Landroid/os/HandlerThread;

    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService;->mBackgroundHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.type.watch"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/service/wallpaper/WallpaperService;->mIsWearOs:Z

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    const-class v0, Landroid/app/WallpaperManager;

    invoke-virtual {p0, v0}, Landroid/service/wallpaper/WallpaperService;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/WallpaperManager;

    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService;->mWallpaperManager:Landroid/app/WallpaperManager;

    return-void
.end method

.method public abstract whitelist onCreateEngine()Landroid/service/wallpaper/WallpaperService$Engine;
.end method

.method public blacklist onCreateEngine(I)Landroid/service/wallpaper/WallpaperService$Engine;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist onCreateSubEngine(I)Landroid/service/wallpaper/WallpaperService$Engine;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService;->onCreateEngine()Landroid/service/wallpaper/WallpaperService$Engine;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onDestroy()V
    .locals 3

    const-string v0, "WPMS.onDestroy"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService;->mActiveEngines:Landroid/util/ArrayMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService;->mActiveEngines:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    invoke-virtual {v2}, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->destroy()V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService;->mActiveEngines:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService;->mBackgroundThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    :cond_1
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public blacklist onProvideEngineLooper()Landroid/os/Looper;
    .locals 1

    invoke-super {p0}, Landroid/app/Service;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method
