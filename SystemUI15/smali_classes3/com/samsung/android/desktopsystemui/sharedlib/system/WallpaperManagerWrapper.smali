.class public Lcom/samsung/android/desktopsystemui/sharedlib/system/WallpaperManagerWrapper;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field private static final TAG:Ljava/lang/String; = "WallpaperManagerWrapper"

.field private static final mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private static final mWallpaperManager:Landroid/app/WallpaperManager;

.field private static final sInstance:Lcom/samsung/android/desktopsystemui/sharedlib/system/WallpaperManagerWrapper;


# instance fields
.field private final mCurDisplayInfo:Landroid/view/DisplayInfo;

.field private mDisplay:Landroid/view/Display;

.field private final mDisplayMetrics:Landroid/util/DisplayMetrics;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/desktopsystemui/sharedlib/system/WallpaperManagerWrapper;

    invoke-direct {v0}, Lcom/samsung/android/desktopsystemui/sharedlib/system/WallpaperManagerWrapper;-><init>()V

    sput-object v0, Lcom/samsung/android/desktopsystemui/sharedlib/system/WallpaperManagerWrapper;->sInstance:Lcom/samsung/android/desktopsystemui/sharedlib/system/WallpaperManagerWrapper;

    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object v0

    const-string/jumbo v1, "wallpaper"

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/WallpaperManager;

    sput-object v0, Lcom/samsung/android/desktopsystemui/sharedlib/system/WallpaperManagerWrapper;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "display"

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    sput-object v0, Lcom/samsung/android/desktopsystemui/sharedlib/system/WallpaperManagerWrapper;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/WallpaperManagerWrapper;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    new-instance v0, Landroid/view/DisplayInfo;

    invoke-direct {v0}, Landroid/view/DisplayInfo;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/WallpaperManagerWrapper;->mCurDisplayInfo:Landroid/view/DisplayInfo;

    return-void
.end method

.method private checkDeviceDensity(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 7

    if-eqz p1, :cond_1

    sget-object v0, Lcom/samsung/android/desktopsystemui/sharedlib/system/WallpaperManagerWrapper;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/WallpaperManagerWrapper;->mDisplay:Landroid/view/Display;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/WallpaperManagerWrapper;->mDisplay:Landroid/view/Display;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/WallpaperManagerWrapper;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    iget-object v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/WallpaperManagerWrapper;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->noncompatDensityDpi:I

    invoke-virtual {p1, v0}, Landroid/graphics/Bitmap;->setDensity(I)V

    iget-object v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/WallpaperManagerWrapper;->mDisplay:Landroid/view/Display;

    iget-object v1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/WallpaperManagerWrapper;->mCurDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    iget-object v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/WallpaperManagerWrapper;->mCurDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    iget v0, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    const-string v4, "checkDeviceDensity deviceHeight = "

    const-string v5, ", deviceWidth = "

    const-string v6, ", bitmapWidth = "

    invoke-static {v1, v0, v4, v5, v6}, Landroidx/compose/foundation/layout/RowColumnMeasurePolicyKt$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", bitmapHeight = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "WallpaperManagerWrapper"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ge v0, v3, :cond_1

    if-ge v1, v2, :cond_1

    int-to-float v0, v0

    int-to-float v3, v3

    div-float/2addr v0, v3

    int-to-float v1, v1

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/desktopsystemui/sharedlib/system/WallpaperManagerWrapper;->resizeBitmap(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "resize scale down.:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    return-object p0

    :cond_1
    return-object p1
.end method

.method public static getInstance()Lcom/samsung/android/desktopsystemui/sharedlib/system/WallpaperManagerWrapper;
    .locals 1

    sget-object v0, Lcom/samsung/android/desktopsystemui/sharedlib/system/WallpaperManagerWrapper;->sInstance:Lcom/samsung/android/desktopsystemui/sharedlib/system/WallpaperManagerWrapper;

    return-object v0
.end method

.method private resizeBitmap(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    .locals 1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p0

    int-to-float p0, p0

    mul-float/2addr p0, p2

    float-to-int p0, p0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p2

    float-to-int p2, v0

    const/4 v0, 0x1

    invoke-static {p1, p0, p2, v0}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getBitmapForDex()Landroid/graphics/Bitmap;
    .locals 1

    sget-object p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/WallpaperManagerWrapper;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {p0}, Landroid/app/WallpaperManager;->getBitmapForDex()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/WallpaperManager;->forgetLoadedWallpaper()V

    return-object v0
.end method

.method public getBitmapForDexLock()Landroid/graphics/Bitmap;
    .locals 3

    sget-object v0, Lcom/samsung/android/desktopsystemui/sharedlib/system/WallpaperManagerWrapper;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/app/WallpaperManager;->getLockWallpaperFile(II)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/desktopsystemui/sharedlib/system/WallpaperManagerWrapper;->checkDeviceDensity(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method public getDrawableForDexLock(I)Landroid/graphics/drawable/Drawable;
    .locals 0

    sget-object p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/WallpaperManagerWrapper;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {p0, p1}, Landroid/app/WallpaperManager;->semGetDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method
