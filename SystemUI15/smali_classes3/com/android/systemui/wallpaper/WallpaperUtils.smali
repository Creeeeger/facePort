.class public final Lcom/android/systemui/wallpaper/WallpaperUtils;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static mIsAdaptiveColorMode:Z = false

.field public static mIsAdaptiveColorModeSub:Z = false

.field public static mIsEmergencyMode:Z = false

.field public static mIsExternalLiveWallpaper:Z = false

.field public static mIsInfinityLiveWallpaper:Z = false

.field public static mIsUltraPowerSavingMode:Z = false

.field private static mSettingsHelper:Lcom/android/systemui/util/SettingsHelper; = null

.field public static final sCachedSmartCroppedRect:Landroid/util/SparseArray;

.field public static final sCachedWallpaperColors:Landroid/util/SparseArray;

.field public static sCurrentWhich:I = 0x6

.field public static sWallpaperType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/systemui/wallpaper/WallpaperUtils;->sCachedSmartCroppedRect:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/systemui/wallpaper/WallpaperUtils;->sCachedWallpaperColors:Landroid/util/SparseArray;

    const/4 v0, -0x1

    sput v0, Lcom/android/systemui/wallpaper/WallpaperUtils;->sWallpaperType:I

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decodeStreamConsiderQMG(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 10

    const-string v0, "decodeStream() bitmap is null"

    const-string v1, "WallpaperUtils"

    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/io/BufferedInputStream;->mark(I)V

    :try_start_0
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->read()I

    move-result v4

    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->read()I

    move-result v5

    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->reset()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    const/16 v6, 0x51

    if-ne v4, v6, :cond_0

    const/16 v4, 0x47

    if-ne v5, v4, :cond_0

    const/4 v4, 0x0

    :try_start_1
    const-string v5, "android.graphics.BitmapFactory"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const-string v6, "decodeStreamQMG"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Class;

    const-class v8, Ljava/io/InputStream;

    const/4 v9, 0x0

    aput-object v8, v7, v9

    const-class v8, Landroid/graphics/Rect;

    const/4 v9, 0x1

    aput-object v8, v7, v9

    const-class v8, Landroid/graphics/BitmapFactory$Options;

    aput-object v8, v7, v3

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    filled-new-array {v2, p1, p2}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-nez v3, :cond_1

    :try_start_2
    iget-boolean v4, p2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    if-nez v4, :cond_1

    const-string v4, "decodeStreamQMG() bitmap is null"

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    move-object v4, v3

    goto :goto_0

    :catch_1
    move-exception p1

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    move-object v3, v4

    goto :goto_1

    :catch_2
    invoke-static {v2, p1, p2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    if-nez v3, :cond_1

    iget-boolean p1, p2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    if-nez p1, :cond_1

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_3
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    invoke-static {v2, p1, p2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    if-nez v3, :cond_1

    iget-boolean p1, p2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    if-nez p1, :cond_1

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    goto :goto_2

    :catch_4
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-object v3
.end method

.method public static dump(Landroid/content/Context;Ljava/io/PrintWriter;)V
    .locals 1

    const-string v0, "Dump of WallpaperUtils: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  isAdaptiveColorMode: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-object v0, Lcom/android/systemui/wallpaper/WallpaperUtils;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isAdaptiveColorMode()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "  Type: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget v0, Lcom/android/systemui/wallpaper/WallpaperUtils;->sWallpaperType:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    const-string v0, "  isExternalLiveWallpaper: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/systemui/wallpaper/WallpaperUtils;->mIsExternalLiveWallpaper:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "  isInfinityLiveWallpaper: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/systemui/wallpaper/WallpaperUtils;->mIsInfinityLiveWallpaper:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "  Emergency mode: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/systemui/wallpaper/WallpaperUtils;->mIsEmergencyMode:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "  UltraPowerSavingMode: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/systemui/wallpaper/WallpaperUtils;->mIsUltraPowerSavingMode:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "  DeXMode: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "  isVideoWallpaper: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isVideoWallpaper(Landroid/content/Context;)Z

    move-result p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Z)V

    sget-boolean p0, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_DISPLAY_MODE:Z

    if-eqz p0, :cond_0

    sget-boolean p0, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_WATCHFACE:Z

    if-nez p0, :cond_0

    const-string p0, "  sCachedWallpaperColors(FLAG_DISPLAY_PHONE): "

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-object p0, Lcom/android/systemui/wallpaper/WallpaperUtils;->sCachedWallpaperColors:Landroid/util/SparseArray;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string v0, "  sCachedWallpaperColors(FLAG_DISPLAY_SUB): "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public static getCachedSemWallpaperColors(Z)Landroid/app/SemWallpaperColors;
    .locals 2

    sget-boolean v0, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_DISPLAY_MODE:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_WATCHFACE:Z

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/systemui/wallpaper/WallpaperUtils;->sCachedWallpaperColors:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-lez v1, :cond_1

    if-eqz p0, :cond_0

    const/16 p0, 0x10

    goto :goto_0

    :cond_0
    const/4 p0, 0x4

    :goto_0
    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/SemWallpaperColors;

    return-object p0

    :cond_1
    invoke-static {}, Landroid/app/SemWallpaperColors;->getBlankWallpaperColors()Landroid/app/SemWallpaperColors;

    move-result-object p0

    return-object p0
.end method

.method public static getLogicalDisplaySize(Landroid/content/Context;)Landroid/util/Size;
    .locals 8

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v2, v0, Landroid/content/res/Configuration;->orientation:I

    const-string/jumbo v3, "window"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {v3, v4}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    iget v3, v4, Landroid/graphics/Point;->x:I

    iget v4, v4, Landroid/graphics/Point;->y:I

    iget v0, v0, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    const/4 v5, 0x1

    if-ne v0, v5, :cond_0

    move v0, v5

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    iget v6, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    goto :goto_1

    :cond_1
    if-ne v2, v5, :cond_2

    move v6, v3

    goto :goto_1

    :cond_2
    move v6, v4

    :goto_1
    if-eqz v0, :cond_3

    iget v3, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    goto :goto_2

    :cond_3
    if-ne v2, v5, :cond_4

    move v3, v4

    :cond_4
    :goto_2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "WallpaperUtils"

    if-eqz p0, :cond_5

    const-string v4, "com.samsung.feature.device_category_tablet"

    invoke-virtual {p0, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_5

    if-ge v6, v3, :cond_5

    const/4 p0, 0x2

    if-ne v2, p0, :cond_5

    const-string p0, "getLogicalDisplaySize: Adjust width and height for landscape tablet."

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v6

    move v6, v3

    move v3, v7

    :cond_5
    const-string p0, "getLogicalDisplaySize: "

    const-string v4, " x "

    const-string v5, " dm "

    invoke-static {v6, v3, p0, v4, v5}, Landroidx/compose/foundation/layout/RowColumnMeasurePolicyKt$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    iget v5, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " orientation:"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Landroid/util/Size;

    invoke-direct {p0, v6, v3}, Landroid/util/Size;-><init>(II)V

    return-object p0
.end method

.method public static getRealScreenSize(Landroid/content/Context;Z)Landroid/graphics/Point;
    .locals 6

    const-class v0, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    const/4 v2, 0x0

    if-eqz p1, :cond_2

    sget-boolean p0, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_WATCHFACE:Z

    if-eqz p0, :cond_1

    const-string p0, "com.samsung.android.hardware.display.category.BUILTIN"

    invoke-virtual {v0, p0}, Landroid/hardware/display/DisplayManager;->getDisplays(Ljava/lang/String;)[Landroid/view/Display;

    move-result-object p0

    array-length p1, p0

    move v0, v2

    :goto_0
    if-ge v0, p1, :cond_3

    aget-object v3, p0, v0

    invoke-virtual {v3}, Landroid/view/Display;->getDisplayId()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    invoke-virtual {v3, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    sget-boolean p0, Lcom/android/systemui/LsRune;->WALLPAPER_VIRTUAL_DISPLAY:Z

    if-eqz p0, :cond_3

    const-string p0, "com.samsung.android.hardware.display.category.VIEW_COVER_DISPLAY"

    invoke-virtual {v0, p0}, Landroid/hardware/display/DisplayManager;->getDisplays(Ljava/lang/String;)[Landroid/view/Display;

    move-result-object p0

    array-length p1, p0

    if-lez p1, :cond_3

    aget-object p0, p0, v2

    invoke-virtual {p0, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    :cond_3
    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "getScreenSize: "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p1, v2, [Ljava/lang/Object;

    const-string v0, "WallpaperUtils"

    invoke-static {v0, p0, p1}, Lcom/android/systemui/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1
.end method

.method public static getVideoFrame(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3

    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    new-instance v1, Landroid/media/MediaMetadataRetriever$BitmapParams;

    invoke-direct {v1}, Landroid/media/MediaMetadataRetriever$BitmapParams;-><init>()V

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGBA_F16:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v1, v2}, Landroid/media/MediaMetadataRetriever$BitmapParams;->setPreferredConfig(Landroid/graphics/Bitmap$Config;)V

    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0, p2}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {v0, p0, p1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    :cond_1
    :goto_0
    const/4 p0, 0x2

    const-wide/16 p1, 0x0

    invoke-virtual {v0, p1, p2, p0, v1}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(JILandroid/media/MediaMetadataRetriever$BitmapParams;)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    :catchall_1
    move-exception p0

    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    :try_start_3
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    const/4 p0, 0x0

    :goto_2
    return-object p0

    :catchall_3
    move-exception p0

    :try_start_4
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    goto :goto_3

    :catchall_4
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_3
    throw p0
.end method

.method public static isAODShowLockWallpaperEnabled()Z
    .locals 3

    sget-boolean v0, Lcom/android/systemui/LsRune;->AOD_FULLSCREEN:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_DISPLAY_MODE:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/android/systemui/wallpaper/WallpaperUtils;->sCurrentWhich:I

    const/4 v2, 0x4

    invoke-static {v0, v2}, Lcom/android/systemui/wallpaper/utils/WhichChecker;->isFlagEnabled(II)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    sget v0, Lcom/android/systemui/wallpaper/WallpaperUtils;->sCurrentWhich:I

    invoke-static {v0}, Lcom/android/systemui/wallpaper/utils/WhichChecker;->isVirtualDisplay(I)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    sget-object v0, Lcom/android/systemui/wallpaper/WallpaperUtils;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isAODShowLockWallpaper()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/systemui/wallpaper/WallpaperUtils;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isAODEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public static isAdaptiveColorEnabled()Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/android/systemui/wallpaper/WallpaperUtils;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->isAdaptiveColorMode()Z

    move-result v1

    if-nez v1, :cond_0

    return v0

    :cond_0
    sget-boolean v1, Lcom/android/systemui/wallpaper/WallpaperUtils;->mIsEmergencyMode:Z

    if-eqz v1, :cond_1

    return v0

    :cond_1
    sget-boolean v1, Lcom/android/systemui/wallpaper/WallpaperUtils;->mIsUltraPowerSavingMode:Z

    if-eqz v1, :cond_2

    return v0

    :cond_2
    sget-boolean v1, Lcom/android/systemui/wallpaper/WallpaperUtils;->mIsExternalLiveWallpaper:Z

    if-eqz v1, :cond_3

    return v0

    :cond_3
    sget-object v1, Lcom/android/systemui/wallpaper/WallpaperUtils;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->isOpenThemeLockWallpaper()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_4

    return v0

    :cond_4
    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "isAdaptiveColorEnabled: Error while reading settings ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WallpaperUtils"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static isCoverScreen(I)Z
    .locals 3

    sget-boolean v0, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_WATCHFACE:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    and-int/lit8 v0, p0, 0x2

    if-nez v0, :cond_0

    and-int/lit8 p0, p0, 0x10

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    :cond_1
    sget-boolean v0, Lcom/android/systemui/LsRune;->WALLPAPER_VIRTUAL_DISPLAY:Z

    if-eqz v0, :cond_3

    and-int/lit8 v0, p0, 0x2

    if-nez v0, :cond_2

    and-int/lit8 p0, p0, 0x20

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    return v1

    :cond_3
    return v2
.end method

.method public static isDexStandAloneMode()Z
    .locals 3

    :try_start_0
    const-class v0, Lcom/android/systemui/util/DesktopManager;

    sget-object v1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v1, v0}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/DesktopManager;

    invoke-interface {v0}, Lcom/android/systemui/util/DesktopManager;->isStandalone()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "isDexStandAloneMode: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WallpaperUtils"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public static isLiveWallpaper()Z
    .locals 2

    sget v0, Lcom/android/systemui/wallpaper/WallpaperUtils;->sWallpaperType:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isLockscreenDisabled(ILandroid/content/Context;)Z
    .locals 1

    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p0}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result p0

    return p0
.end method

.method public static isOpenThemeLockWallpaper()Z
    .locals 1

    sget-object v0, Lcom/android/systemui/wallpaper/WallpaperUtils;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isOpenThemeLockWallpaper()Z

    move-result v0

    return v0
.end method

.method public static isOpenThemeLook()Z
    .locals 1

    sget-object v0, Lcom/android/systemui/wallpaper/WallpaperUtils;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isOpenThemeLook()Z

    move-result v0

    return v0
.end method

.method public static isSubDisplay()Z
    .locals 3

    sget-boolean v0, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_DISPLAY_MODE:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget v0, Lcom/android/systemui/wallpaper/WallpaperUtils;->sCurrentWhich:I

    const/16 v2, 0x10

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static isSubDisplay(I)Z
    .locals 1

    and-int/lit8 p0, p0, 0x3c

    const/16 v0, 0x10

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isValidBitmap(Landroid/graphics/Bitmap;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "isValidBitmap: Bitmap is recycled. bitmap = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    const-string v2, "WallpaperUtils"

    invoke-static {v2, p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static isVideoWallpaper(Landroid/content/Context;)Z
    .locals 2

    invoke-static {p0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object p0

    sget v0, Lcom/android/systemui/wallpaper/WallpaperUtils;->sCurrentWhich:I

    invoke-virtual {p0, v0}, Landroid/app/WallpaperManager;->semGetWallpaperType(I)I

    move-result p0

    const/16 v0, 0x8

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v0, Lcom/android/systemui/wallpaper/PluginWallpaperController;

    invoke-virtual {p0, v0}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/wallpaper/PluginWallpaperController;

    sget v1, Lcom/android/systemui/wallpaper/WallpaperUtils;->sCurrentWhich:I

    invoke-virtual {p0, v1}, Lcom/android/systemui/wallpaper/PluginWallpaperController;->isPluginWallpaperRequired(I)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {p0, v0}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/wallpaper/PluginWallpaperController;

    sget v0, Lcom/android/systemui/wallpaper/WallpaperUtils;->sCurrentWhich:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/wallpaper/PluginWallpaperController;->containsVideo(I)Z

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

.method public static isWhiteKeyguardWallpaper(J)Z
    .locals 2

    sget-object v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->sController:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0, p1, v1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->getHint(JZ)Landroid/app/SemWallpaperColors$Item;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/app/SemWallpaperColors$Item;->getFontColor()I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_2

    move v1, p1

    goto :goto_1

    :cond_1
    sget-object p0, Lcom/android/systemui/wallpaper/WallpaperUtils;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper;->isWhiteKeyguardWallpaper()Z

    move-result v1

    :cond_2
    :goto_1
    return v1
.end method

.method public static isWhiteKeyguardWallpaper(Ljava/lang/String;)Z
    .locals 4

    invoke-static {p0}, Lcom/android/systemui/widget/SystemUIWidgetUtil;->convertFlag(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-gez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {v0, v1}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isWhiteKeyguardWallpaper(J)Z

    move-result p0

    return p0
.end method

.method public static loadDeviceState(ILandroid/content/Context;)V
    .locals 6

    invoke-static {p1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v0

    sget-boolean v1, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_DISPLAY_MODE:Z

    if-eqz v1, :cond_2

    sget-boolean v2, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_WATCHFACE:Z

    if-nez v2, :cond_2

    invoke-static {p1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v2

    const/4 v3, 0x6

    const/16 v4, 0x12

    if-eqz v1, :cond_1

    invoke-virtual {v2}, Landroid/app/WallpaperManager;->getLidState()I

    move-result v1

    if-nez v1, :cond_0

    move v1, v4

    goto :goto_0

    :cond_0
    move v1, v3

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    :goto_0
    sput v1, Lcom/android/systemui/wallpaper/WallpaperUtils;->sCurrentWhich:I

    invoke-virtual {v0, v3}, Landroid/app/WallpaperManager;->semGetWallpaperColors(I)Landroid/app/SemWallpaperColors;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/wallpaper/WallpaperUtils;->sCachedWallpaperColors:Landroid/util/SparseArray;

    const/4 v3, 0x4

    invoke-virtual {v2, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {v0, v4}, Landroid/app/WallpaperManager;->semGetWallpaperColors(I)Landroid/app/SemWallpaperColors;

    move-result-object v1

    const/16 v3, 0x10

    invoke-virtual {v2, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_2
    sget-boolean v1, Lcom/android/systemui/LsRune;->WALLPAPER_DESKTOP_STANDALONE_MODE_WALLPAPER:Z

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isDexStandAloneMode()Z

    move-result v1

    if-eqz v1, :cond_3

    sget v1, Lcom/android/systemui/wallpaper/WallpaperUtils;->sCurrentWhich:I

    or-int/lit8 v1, v1, 0x8

    and-int/lit8 v1, v1, -0x5

    sput v1, Lcom/android/systemui/wallpaper/WallpaperUtils;->sCurrentWhich:I

    :cond_3
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "emergency_mode"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, p0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    move v1, v2

    goto :goto_1

    :cond_4
    move v1, v3

    :goto_1
    sput-boolean v1, Lcom/android/systemui/wallpaper/WallpaperUtils;->mIsEmergencyMode:Z

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v4, "ultra_powersaving_mode"

    invoke-static {v1, v4, v3, p0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "minimal_battery_use"

    invoke-static {v4, v5, v3, p0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-eq v1, v2, :cond_5

    if-ne p0, v2, :cond_6

    :cond_5
    move v3, v2

    :cond_6
    sput-boolean v3, Lcom/android/systemui/wallpaper/WallpaperUtils;->mIsUltraPowerSavingMode:Z

    sget-object p0, Lcom/android/systemui/wallpaper/WallpaperUtils;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper;->isAdaptiveColorMode()Z

    move-result p0

    sput-boolean p0, Lcom/android/systemui/wallpaper/WallpaperUtils;->mIsAdaptiveColorMode:Z

    sget-boolean p0, Lcom/android/systemui/LsRune;->SUBSCREEN_LARGE_FRONT_SUB_DISPLAY:Z

    if-eqz p0, :cond_7

    sget-object p0, Lcom/android/systemui/wallpaper/WallpaperUtils;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p0, v2}, Lcom/android/systemui/util/SettingsHelper;->isAdaptiveColorMode(Z)Z

    move-result p0

    sput-boolean p0, Lcom/android/systemui/wallpaper/WallpaperUtils;->mIsAdaptiveColorModeSub:Z

    :cond_7
    sget p0, Lcom/android/systemui/wallpaper/WallpaperUtils;->sCurrentWhich:I

    invoke-virtual {v0, p0}, Landroid/app/WallpaperManager;->semGetWallpaperType(I)I

    move-result p0

    invoke-static {p0, p1}, Lcom/android/systemui/wallpaper/WallpaperUtils;->setWallpaperType(ILandroid/content/Context;)V

    return-void
.end method

.method public static registerSystemUIWidgetCallback(Lcom/android/systemui/widget/SystemUIWidgetCallback;J)V
    .locals 4

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    return-void

    :cond_0
    const-wide/16 v2, -0x1

    cmp-long v2, p1, v2

    if-eqz v2, :cond_1

    const-wide/16 v2, 0x1

    or-long/2addr p1, v2

    :cond_1
    const-wide/16 v2, 0x20

    and-long/2addr v2, p1

    cmp-long v0, v2, v0

    if-eqz v0, :cond_2

    const-wide/16 v0, 0x2

    or-long/2addr p1, v0

    :cond_2
    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->getInstance()Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->getInstance()Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0, p1, p2}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->registerCallback(ZLcom/android/systemui/widget/SystemUIWidgetCallback;J)V

    :cond_3
    return-void
.end method

.method public static removeSystemUIWidgetCallback(Lcom/android/systemui/widget/SystemUIWidgetCallback;)V
    .locals 2

    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->getInstance()Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->getInstance()Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->removeCallback(ZLcom/android/systemui/widget/SystemUIWidgetCallback;)V

    :cond_0
    return-void
.end method

.method public static setSettingsHelper(Lcom/android/systemui/util/SettingsHelper;)V
    .locals 0

    sput-object p0, Lcom/android/systemui/wallpaper/WallpaperUtils;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    return-void
.end method

.method public static setWallpaperType(ILandroid/content/Context;)V
    .locals 2

    sput p0, Lcom/android/systemui/wallpaper/WallpaperUtils;->sWallpaperType:I

    const-string/jumbo p0, "wallpaper"

    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/WallpaperManager;

    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isLiveWallpaper()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/android/systemui/wallpaper/WallpaperUtils;->sCurrentWhich:I

    invoke-virtual {p0, v0}, Landroid/app/WallpaperManager;->isStockLiveWallpaper(I)Z

    move-result p0

    sput-boolean p0, Lcom/android/systemui/wallpaper/WallpaperUtils;->mIsExternalLiveWallpaper:Z

    new-instance p0, Lcom/samsung/android/wallpaper/utils/SemWallpaperProperties;

    sget v0, Lcom/android/systemui/wallpaper/WallpaperUtils;->sCurrentWhich:I

    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/wallpaper/utils/SemWallpaperProperties;-><init>(Landroid/content/Context;II)V

    const-string p1, "infinity"

    invoke-virtual {p0}, Lcom/samsung/android/wallpaper/utils/SemWallpaperProperties;->getContentType()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    sput-boolean p0, Lcom/android/systemui/wallpaper/WallpaperUtils;->mIsInfinityLiveWallpaper:Z

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    sput-boolean p0, Lcom/android/systemui/wallpaper/WallpaperUtils;->mIsExternalLiveWallpaper:Z

    sput-boolean p0, Lcom/android/systemui/wallpaper/WallpaperUtils;->mIsInfinityLiveWallpaper:Z

    :goto_0
    return-void
.end method
