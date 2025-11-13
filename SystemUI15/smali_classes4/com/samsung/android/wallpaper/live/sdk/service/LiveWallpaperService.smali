.class public abstract Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService;
.super Landroid/service/wallpaper/WallpaperService;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "LiveWallpaperService"


# instance fields
.field private mEngineManager:Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperEngineManager;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmEngineManager(Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService;)Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperEngineManager;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService;->mEngineManager:Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperEngineManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$sfgetDEBUG()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService;->DEBUG:Z

    return v0
.end method

.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/service/wallpaper/WallpaperService;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 1

    invoke-super {p0}, Landroid/service/wallpaper/WallpaperService;->onCreate()V

    invoke-static {p0}, Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperEngineManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperEngineManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService;->mEngineManager:Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperEngineManager;

    return-void
.end method

.method public onCreateEngine()Landroid/service/wallpaper/WallpaperService$Engine;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public onCreateEngine(I)Landroid/service/wallpaper/WallpaperService$Engine;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final onCreateSubEngine(I)Landroid/service/wallpaper/WallpaperService$Engine;
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService;->onCreateEngine()Landroid/service/wallpaper/WallpaperService$Engine;

    move-result-object p0

    return-object p0
.end method
