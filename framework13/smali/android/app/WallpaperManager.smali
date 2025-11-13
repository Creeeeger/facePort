.class public Landroid/app/WallpaperManager;
.super Ljava/lang/Object;
.source "WallpaperManager.java"

# interfaces
.implements Landroid/app/SemWallpaperManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/WallpaperManager$LocalWallpaperColorConsumer;,
        Landroid/app/WallpaperManager$OnColorsChangedListener;,
        Landroid/app/WallpaperManager$WallpaperSetCompletion;,
        Landroid/app/WallpaperManager$ColorManagementProxy;,
        Landroid/app/WallpaperManager$Globals;,
        Landroid/app/WallpaperManager$FastBitmapDrawable;,
        Landroid/app/WallpaperManager$SetWallpaperFlags;
    }
.end annotation


# static fields
.field public static final whitelist ACTION_CHANGE_LIVE_WALLPAPER:Ljava/lang/String; = "android.service.wallpaper.CHANGE_LIVE_WALLPAPER"

.field public static final whitelist ACTION_CROP_AND_SET_WALLPAPER:Ljava/lang/String; = "android.service.wallpaper.CROP_AND_SET_WALLPAPER"

.field public static final whitelist ACTION_LIVE_WALLPAPER_CHOOSER:Ljava/lang/String; = "android.service.wallpaper.LIVE_WALLPAPER_CHOOSER"

.field public static final blacklist BNR_ORIGINAL_BACKUP_FILE_PATH:Ljava/lang/String; = "/Android/data/com.android.systemui/files/backupwallpapers/"

.field public static final blacklist BNR_ORIGINAL_FILE_NAME_HOME:Ljava/lang/String; = "original_file_home.jpg"

.field public static final blacklist BNR_ORIGINAL_FILE_NAME_LOCK:Ljava/lang/String; = "original_file_lock.jpg"

.field public static final blacklist BNR_SUB_DISPLAY:Ljava/lang/String; = "sub_display/"

.field public static final blacklist BNR_XML_FILE_NAME_HOME:Ljava/lang/String; = "backup_home.xml"

.field public static final blacklist BNR_XML_FILE_NAME_LOCK:Ljava/lang/String; = "backup_lock.xml"

.field public static final whitelist COMMAND_DROP:Ljava/lang/String; = "android.home.drop"

.field public static final blacklist COMMAND_FREEZE:Ljava/lang/String; = "android.wallpaper.freeze"

.field public static final blacklist COMMAND_GOING_TO_SLEEP:Ljava/lang/String; = "android.wallpaper.goingtosleep"

.field public static final blacklist COMMAND_REAPPLY:Ljava/lang/String; = "android.wallpaper.reapply"

.field public static final whitelist COMMAND_SECONDARY_TAP:Ljava/lang/String; = "android.wallpaper.secondaryTap"

.field public static final whitelist COMMAND_TAP:Ljava/lang/String; = "android.wallpaper.tap"

.field public static final blacklist COMMAND_UNFREEZE:Ljava/lang/String; = "android.wallpaper.unfreeze"

.field public static final blacklist COMMAND_WAKING_UP:Ljava/lang/String; = "android.wallpaper.wakingup"

.field private static final greylist-max-o DEBUG:Z = false

.field public static final blacklist DEFAULT_HIGHLIGHT_FILTER_AMOUNT:I = 0x3c

.field private static final blacklist DEFAULT_THEME_VIDEO_RES_ID_SUFFIX:Ljava/lang/String; = ".mp4"

.field private static final blacklist DEFAULT_VIDEO_WALLPAPER_RES_ID:Ljava/lang/String; = "video"

.field public static final blacklist EXTRA_FROM_FOREGROUND_APP:Ljava/lang/String; = "android.service.wallpaper.extra.FROM_FOREGROUND_APP"

.field public static final whitelist EXTRA_LIVE_WALLPAPER_COMPONENT:Ljava/lang/String; = "android.service.wallpaper.extra.LIVE_WALLPAPER_COMPONENT"

.field public static final greylist-max-o EXTRA_NEW_WALLPAPER_ID:Ljava/lang/String; = "android.service.wallpaper.extra.ID"

.field public static final blacklist FLAG_DISPLAY_DEX:I = 0x8

.field public static final blacklist FLAG_DISPLAY_PHONE:I = 0x4

.field public static final blacklist FLAG_DISPLAY_SUB:I = 0x10

.field public static final blacklist FLAG_DISPLAY_VIRTUAL:I = 0x20

.field public static final whitelist FLAG_LOCK:I = 0x2

.field public static final blacklist FLAG_MODE_MASK:I = 0x3c

.field public static final blacklist FLAG_NONE:I = 0x0

.field public static final whitelist FLAG_SYSTEM:I = 0x1

.field public static final blacklist FLAG_TYPE_MASK:I = 0x3

.field private static final blacklist IMAGE_WALLPAPER_SERVICE_NAME:Ljava/lang/String; = "com.android.systemui.ImageWallpaper"

.field public static final blacklist KWP_TYPE_ANIMATED:I = 0x4

.field public static final blacklist KWP_TYPE_DEFAULT:I = 0x0

.field public static final blacklist KWP_TYPE_ERROR:I = -0x1

.field public static final blacklist KWP_TYPE_MOTION:I = 0x1

.field public static final blacklist KWP_TYPE_PRELOAD_MOTION:I = 0x2

.field public static final blacklist KWP_TYPE_VIDEO:I = 0x8

.field public static final blacklist LID_ABSENT:I = -0x1

.field public static final blacklist LID_CLOSED:I = 0x0

.field public static final blacklist LID_OPEN:I = 0x1

.field private static final blacklist LOCAL_COLOR_BOUNDS:Landroid/graphics/RectF;

.field private static final blacklist ONEUI_5_1:I = 0x22344

.field private static final blacklist PACKAGE_NAME_DRESSROOM:Ljava/lang/String; = "com.samsung.android.app.dressroom"

.field private static final blacklist PACKAGE_NAME_FESTIVAL_WALLPAPER:Ljava/lang/String; = "com.samsung.android.festivalwallpaper"

.field private static final blacklist PACKAGE_NAME_LOCKSTAR:Ljava/lang/String; = "com.samsung.systemui.lockstar"

.field private static final blacklist PACKAGE_NAME_SYSTEMUI:Ljava/lang/String; = "com.android.systemui"

.field private static final blacklist PACKAGE_NAME_THEME_CENTER:Ljava/lang/String; = "com.samsung.android.themecenter"

.field private static final greylist-max-o PROP_LOCK_WALLPAPER:Ljava/lang/String; = "ro.config.lock_wallpaper"

.field private static final greylist-max-o PROP_WALLPAPER:Ljava/lang/String; = "ro.config.wallpaper"

.field private static final greylist-max-o PROP_WALLPAPER_COMPONENT:Ljava/lang/String; = "ro.config.wallpaper_component"

.field public static final blacklist SEM_ATTRIBUTE_TILT:Ljava/lang/String; = "tilt"

.field public static final blacklist SEM_BACKUP_STATUS_CANCELED:I = 0x2

.field public static final blacklist SEM_BACKUP_STATUS_CLEARED:I = 0x4

.field public static final blacklist SEM_BACKUP_STATUS_REQUESTED:I = 0x1

.field public static final blacklist SEM_BACKUP_STATUS_RESTORED:I = 0x3

.field public static final whitelist SEM_FLAG_DEX:I = 0x8

.field public static final whitelist SEM_FLAG_LOCK:I = 0x2

.field public static final whitelist SEM_FLAG_SUB_DISPLAY:I = 0x10

.field public static final whitelist SEM_FLAG_SYSTEM:I = 0x1

.field public static final blacklist SEM_SCHEME_MULTIPACK:Ljava/lang/String; = "multipack"

.field public static final whitelist SEM_WALLPAPER_TYPE_ANIMATED:I = 0x4

.field public static final whitelist SEM_WALLPAPER_TYPE_EXTERNAL_LIVE:I = 0x7

.field public static final blacklist SEM_WALLPAPER_TYPE_GIF:I = 0x5

.field public static final whitelist SEM_WALLPAPER_TYPE_IMAGE:I = 0x0

.field public static final whitelist SEM_WALLPAPER_TYPE_MOTION:I = 0x1

.field public static final whitelist SEM_WALLPAPER_TYPE_MULTIPLE:I = 0x3

.field public static final blacklist SEM_WALLPAPER_TYPE_NONE:I = -0x1

.field public static final whitelist SEM_WALLPAPER_TYPE_VIDEO:I = 0x8

.field public static final blacklist SETTINGS_CURRENT_SEC_ACTIVE_THEMEPACKAGE:Ljava/lang/String; = "current_sec_active_themepackage"

.field public static final blacklist SETTINGS_LOCKSCREEN_WALLPAPER:Ljava/lang/String; = "lockscreen_wallpaper"

.field public static final blacklist SETTINGS_LOCKSCREEN_WALLPAPER_SUB:Ljava/lang/String; = "lockscreen_wallpaper_sub"

.field private static final blacklist SETTINGS_SYSTEMUI_TRANSPARENCY:Ljava/lang/String; = "android.wallpaper.settings_systemui_transparency"

.field public static final blacklist SETTINGS_TSS_ACTIVATED:Ljava/lang/String; = "tss_activated"

.field public static final blacklist SWP_TYPE_CUSTOM:I = 0x0

.field public static final blacklist SWP_TYPE_PRELOAD:I = 0x1

.field public static final blacklist SWP_TYPE_THEME:I = 0x2

.field private static final blacklist SYSUI_DESKTOP_PKG_NAME:Ljava/lang/String; = "com.samsung.desktopsystemui"

.field private static greylist-max-o TAG:Ljava/lang/String; = null

.field private static final blacklist THEME_VIDEO_RES_ID:Ljava/lang/String; = "video_1.mp4"

.field public static final blacklist TRANSPARENT_DISABLE:I = 0x1

.field public static final blacklist TRANSPARENT_ENABLE:I = 0x0

.field private static final blacklist VALUE_CMF_COLOR:Ljava/lang/String;

.field private static final blacklist WALLPAPER_CMF_PATH:Ljava/lang/String; = "/wallpaper/image/"

.field private static final blacklist WALLPAPER_PACKAGE:Ljava/lang/String; = "com.samsung.android.wallpaper.res"

.field public static final whitelist WALLPAPER_PREVIEW_META_DATA:Ljava/lang/String; = "android.wallpaper.preview"

.field private static greylist sGlobals:Landroid/app/WallpaperManager$Globals;

.field private static final greylist-max-o sSync:Ljava/lang/Object;

.field private static blacklist sWallpaperResourcesInfo:Landroid/app/SemWallpaperResourcesInfo;


# instance fields
.field private final blacklist mCmProxy:Landroid/app/WallpaperManager$ColorManagementProxy;

.field private final greylist-max-o mContext:Landroid/content/Context;

.field private greylist-max-o mWallpaperXStep:F

.field private greylist-max-o mWallpaperYStep:F

.field private final blacklist mWcgEnabled:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetsGlobals()Landroid/app/WallpaperManager$Globals;
    .locals 1

    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 3

    .line 150
    const-string v0, "WallpaperManager"

    sput-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    .line 154
    new-instance v0, Landroid/graphics/RectF;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1, v2, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    sput-object v0, Landroid/app/WallpaperManager;->LOCAL_COLOR_BOUNDS:Landroid/graphics/RectF;

    .line 164
    nop

    .line 165
    const-string/jumbo v0, "ro.boot.hardware.color"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/app/WallpaperManager;->VALUE_CMF_COLOR:Ljava/lang/String;

    .line 488
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Landroid/app/WallpaperManager;->sSync:Ljava/lang/Object;

    return-void
.end method

.method constructor blacklist <init>()V
    .locals 1

    .line 1348
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Landroid/app/WallpaperManager;->mWallpaperXStep:F

    .line 153
    iput v0, p0, Landroid/app/WallpaperManager;->mWallpaperYStep:F

    .line 1349
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    .line 1350
    iput-object v0, p0, Landroid/app/WallpaperManager;->mCmProxy:Landroid/app/WallpaperManager$ColorManagementProxy;

    .line 1351
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/WallpaperManager;->mWcgEnabled:Z

    .line 1352
    return-void
.end method

.method constructor greylist-max-o <init>(Landroid/app/IWallpaperManager;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 2
    .param p1, "service"    # Landroid/app/IWallpaperManager;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "handler"    # Landroid/os/Handler;

    .line 1331
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Landroid/app/WallpaperManager;->mWallpaperXStep:F

    .line 153
    iput v0, p0, Landroid/app/WallpaperManager;->mWallpaperYStep:F

    .line 1332
    iput-object p2, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    .line 1333
    if-eqz p1, :cond_0

    .line 1334
    invoke-virtual {p2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/app/WallpaperManager;->initGlobals(Landroid/app/IWallpaperManager;Landroid/os/Looper;)V

    .line 1337
    :cond_0
    sget-object v0, Landroid/app/WallpaperManager;->sWallpaperResourcesInfo:Landroid/app/SemWallpaperResourcesInfo;

    if-nez v0, :cond_1

    .line 1338
    new-instance v0, Landroid/app/SemWallpaperResourcesInfo;

    invoke-direct {v0, p2}, Landroid/app/SemWallpaperResourcesInfo;-><init>(Landroid/content/Context;)V

    sput-object v0, Landroid/app/WallpaperManager;->sWallpaperResourcesInfo:Landroid/app/SemWallpaperResourcesInfo;

    .line 1342
    :cond_1
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->isScreenWideColorGamut()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1343
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x111014c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_WCG:Z

    if-eqz v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Landroid/app/WallpaperManager;->mWcgEnabled:Z

    .line 1344
    new-instance v0, Landroid/app/WallpaperManager$ColorManagementProxy;

    invoke-direct {v0, p2}, Landroid/app/WallpaperManager$ColorManagementProxy;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/app/WallpaperManager;->mCmProxy:Landroid/app/WallpaperManager$ColorManagementProxy;

    .line 1345
    return-void
.end method

.method private blacklist appendCurrentModeIfNeeded(I)I
    .locals 2
    .param p1, "which"    # I

    .line 3752
    move v0, p1

    .line 3753
    .local v0, "convertedWhich":I
    invoke-virtual {p0}, Landroid/app/WallpaperManager;->isSubDisplay()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3754
    or-int/lit8 v0, v0, 0x10

    .line 3757
    :cond_0
    return v0
.end method

.method private blacklist checkWhichInvalidation(I)Z
    .locals 4
    .param p1, "which"    # I

    .line 5077
    const/4 v0, 0x0

    .line 5078
    .local v0, "invalid":Z
    and-int/lit8 v1, p1, 0x3

    .line 5079
    .local v1, "checkWhich":I
    invoke-static {v1}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isSystem(I)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isLock(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5080
    invoke-static {v1}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isSystemAndLock(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5081
    :cond_0
    const/4 v0, 0x1

    .line 5084
    :cond_1
    const/4 v2, 0x0

    if-nez v0, :cond_2

    .line 5085
    return v2

    .line 5088
    :cond_2
    and-int/lit8 v1, p1, 0x3c

    .line 5089
    invoke-static {v1}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isPhone(I)Z

    move-result v3

    if-nez v3, :cond_4

    .line 5090
    invoke-static {v1}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isDex(I)Z

    move-result v3

    if-nez v3, :cond_4

    .line 5091
    invoke-static {v1}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isSubDisplay(I)Z

    move-result v3

    if-nez v3, :cond_4

    .line 5092
    invoke-static {v1}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isVirtualDisplay(I)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0

    .line 5096
    :cond_3
    return v2

    .line 5093
    :cond_4
    :goto_0
    const/4 v2, 0x1

    return v2
.end method

.method private blacklist copyDrawableToWallpaperFile(Landroid/graphics/drawable/BitmapDrawable;Ljava/io/FileOutputStream;)V
    .locals 5
    .param p1, "drawable"    # Landroid/graphics/drawable/BitmapDrawable;
    .param p2, "fos"    # Ljava/io/FileOutputStream;

    .line 2943
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v1, "copyDrawableToWallpaperFile"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2944
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2945
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    .line 2946
    .local v1, "outputStream":Ljava/io/ByteArrayOutputStream;
    const/4 v2, 0x0

    .line 2948
    .local v2, "inputStream":Ljava/io/InputStream;
    :try_start_0
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move-object v1, v3

    .line 2949
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {v0, v3, v4, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 2950
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    .line 2951
    .local v3, "data":[B
    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object v2, v4

    .line 2952
    invoke-static {v2, p2}, Landroid/os/FileUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2956
    nop

    .end local v3    # "data":[B
    goto :goto_0

    :catchall_0
    move-exception v3

    goto :goto_1

    .line 2953
    :catch_0
    move-exception v3

    .line 2954
    .local v3, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2956
    .end local v3    # "e":Ljava/lang/Exception;
    nop

    :goto_0
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2957
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2958
    nop

    .line 2959
    return-void

    .line 2956
    :goto_1
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2957
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2958
    throw v3
.end method

.method private greylist-max-o copyStreamToWallpaperFile(Ljava/io/InputStream;Ljava/io/FileOutputStream;)V
    .locals 0
    .param p1, "data"    # Ljava/io/InputStream;
    .param p2, "fos"    # Ljava/io/FileOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2938
    invoke-static {p1, p2}, Landroid/os/FileUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    .line 2939
    return-void
.end method

.method private blacklist generateBitmap(I)Landroid/graphics/Bitmap;
    .locals 14
    .param p1, "resid"    # I

    .line 4212
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v1, "generateBitmap"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4213
    const/4 v0, 0x0

    .line 4215
    .local v0, "bm":Landroid/graphics/Bitmap;
    :try_start_0
    iget-object v1, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 4216
    .local v1, "resources":Landroid/content/res/Resources;
    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    .line 4217
    .local v2, "resourceName":Ljava/lang/String;
    sget-object v3, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "resourceName="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4219
    const/4 v3, -0x1

    .line 4220
    .local v3, "themeResourceId":I
    const/4 v4, 0x0

    .line 4221
    .local v4, "themeResources":Landroid/content/res/Resources;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 4222
    const/4 v5, 0x0

    .line 4223
    .local v5, "themePackage":Ljava/lang/String;
    const/16 v6, 0x3a

    invoke-virtual {v2, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    .line 4224
    .local v6, "colon":I
    if-lez v6, :cond_0

    .line 4225
    const/4 v7, 0x0

    invoke-virtual {v2, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    move-object v5, v7

    .line 4228
    :cond_0
    const/4 v7, 0x0

    .line 4229
    .local v7, "ident":Ljava/lang/String;
    const/16 v8, 0x2f

    invoke-virtual {v2, v8}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v8

    .line 4230
    .local v8, "slash":I
    if-lez v8, :cond_1

    .line 4231
    add-int/lit8 v9, v8, 0x1

    invoke-virtual {v2, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    move-object v7, v9

    .line 4234
    :cond_1
    const/4 v9, 0x0

    .line 4235
    .local v9, "type":Ljava/lang/String;
    if-lez v6, :cond_2

    if-lez v8, :cond_2

    sub-int v10, v8, v6

    const/4 v11, 0x1

    if-le v10, v11, :cond_2

    .line 4236
    add-int/lit8 v10, v6, 0x1

    invoke-virtual {v2, v10, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_2

    move-object v9, v10

    .line 4239
    :cond_2
    if-eqz v5, :cond_3

    if-eqz v7, :cond_3

    if-eqz v9, :cond_3

    .line 4241
    :try_start_1
    iget-object v10, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    const/4 v11, 0x4

    invoke-virtual {v10, v5, v11}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v10

    .line 4243
    .local v10, "c":Landroid/content/Context;
    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    move-object v4, v11

    .line 4244
    const/4 v11, 0x0

    invoke-virtual {v4, v2, v11, v11}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v11
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_2

    move v3, v11

    .line 4249
    .end local v10    # "c":Landroid/content/Context;
    goto :goto_0

    .line 4247
    :catch_0
    move-exception v10

    .line 4248
    .local v10, "e":Landroid/content/res/Resources$NotFoundException;
    :try_start_2
    sget-object v11, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Resource not found: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4245
    .end local v10    # "e":Landroid/content/res/Resources$NotFoundException;
    :catch_1
    move-exception v10

    .line 4246
    .local v10, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v11, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Package name "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " not found"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4249
    nop

    .line 4252
    .end local v5    # "themePackage":Ljava/lang/String;
    .end local v6    # "colon":I
    .end local v7    # "ident":Ljava/lang/String;
    .end local v8    # "slash":I
    .end local v9    # "type":Ljava/lang/String;
    .end local v10    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_3
    :goto_0
    sget-object v5, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "themeResourceId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4254
    if-eqz v4, :cond_4

    if-lez v3, :cond_4

    .line 4255
    invoke-static {v4, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v5
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_2

    move-object v0, v5

    .line 4259
    .end local v1    # "resources":Landroid/content/res/Resources;
    .end local v2    # "resourceName":Ljava/lang/String;
    .end local v3    # "themeResourceId":I
    .end local v4    # "themeResources":Landroid/content/res/Resources;
    :cond_4
    goto :goto_1

    .line 4257
    :catch_2
    move-exception v1

    .line 4258
    .local v1, "e":Ljava/lang/OutOfMemoryError;
    sget-object v2, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v3, "Can\'t decode file"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4260
    .end local v1    # "e":Ljava/lang/OutOfMemoryError;
    :goto_1
    return-object v0
.end method

.method public static blacklist getCSCWallpaperFile(Landroid/content/Context;ILandroid/app/SubUserWallpaperChecker;Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "flag"    # I
    .param p2, "additionalCheck"    # Landroid/app/SubUserWallpaperChecker;
    .param p3, "color"    # Ljava/lang/String;

    .line 3898
    invoke-static {p0, p1, p3}, Landroid/app/SemWallpaperResourcesUtils;->getCSCWallpaperFile(Landroid/content/Context;ILjava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist getCmfWallpaperPath()Ljava/lang/String;
    .locals 2

    .line 3963
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getProductDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/wallpaper/image/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "default_wallpaper_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/app/WallpaperManager;->VALUE_CMF_COLOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o getDefaultWallpaperComponent(Landroid/content/Context;)Landroid/content/ComponentName;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .line 3974
    const/4 v0, 0x0

    .line 3976
    .local v0, "cn":Landroid/content/ComponentName;
    const-string/jumbo v1, "ro.config.wallpaper_component"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3977
    .local v1, "flat":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3978
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 3981
    :cond_0
    if-nez v0, :cond_1

    .line 3982
    const v2, 0x104041a

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 3983
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 3984
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 3989
    :cond_1
    if-eqz v0, :cond_2

    .line 3991
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 3992
    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/high16 v4, 0xc0000

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3997
    nop

    .end local v2    # "packageManager":Landroid/content/pm/PackageManager;
    goto :goto_0

    .line 3995
    :catch_0
    move-exception v2

    .line 3996
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v0, 0x0

    .line 4000
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_2
    :goto_0
    return-object v0
.end method

.method public static blacklist getDefaultWallpaperFile(Landroid/content/Context;)Ljava/io/File;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 3869
    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroid/app/WallpaperManager;->getDefaultWallpaperFile(Landroid/content/Context;I)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getDefaultWallpaperFile(Landroid/content/Context;I)Ljava/io/File;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "which"    # I

    .line 3874
    invoke-static {p0, p1}, Landroid/app/SemWallpaperResourcesUtils;->getOMCWallpaperFile(Landroid/content/Context;I)Ljava/io/File;

    move-result-object v0

    .line 3875
    .local v0, "wallpaperFile":Ljava/io/File;
    if-nez v0, :cond_0

    .line 3876
    const/4 v1, 0x0

    invoke-static {p0, p1, v1}, Landroid/app/SemWallpaperResourcesUtils;->getCSCWallpaperFile(Landroid/content/Context;ILjava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 3878
    :cond_0
    return-object v0
.end method

.method public static blacklist getDeviceColor(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .line 3926
    const-string v0, ""

    .line 3928
    .local v0, "deviceColor":Ljava/lang/String;
    :try_start_0
    invoke-static {p0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/WallpaperManager;->getIWallpaperManager()Landroid/app/IWallpaperManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IWallpaperManager;->getDeviceColor()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 3931
    goto :goto_0

    .line 3929
    :catch_0
    move-exception v1

    .line 3930
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDeviceColor:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3932
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-object v0
.end method

.method public static blacklist getDisplayId(Landroid/content/Context;I)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "which"    # I

    .line 3904
    const/4 v0, 0x0

    .line 3906
    .local v0, "displayId":I
    :try_start_0
    invoke-static {p0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/WallpaperManager;->getIWallpaperManager()Landroid/app/IWallpaperManager;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/app/IWallpaperManager;->getDisplayId(I)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 3909
    goto :goto_0

    .line 3907
    :catch_0
    move-exception v1

    .line 3908
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDisplayId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3910
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return v0
.end method

.method private blacklist getDrawableFromStream(Ljava/io/InputStream;)Landroid/graphics/drawable/Drawable;
    .locals 5
    .param p1, "is"    # Ljava/io/InputStream;

    .line 1519
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1520
    sget-object v1, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v2, "getDrawableFromStream : input stream is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1521
    return-object v0

    .line 1525
    :cond_0
    :try_start_0
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1526
    .local v1, "options":Landroid/graphics/BitmapFactory$Options;
    invoke-static {p1, v0, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1527
    .local v2, "bm":Landroid/graphics/Bitmap;
    sget-object v3, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    iget-object v4, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4, v2}, Landroid/app/WallpaperManager$Globals;->checkDeviceDensity(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v3

    move-object v2, v3

    .line 1528
    if-eqz v2, :cond_1

    .line 1529
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v4, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 1530
    .local v3, "dr":Landroid/graphics/drawable/Drawable;
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setDither(Z)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1531
    nop

    .line 1536
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1531
    return-object v3

    .line 1536
    .end local v1    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v2    # "bm":Landroid/graphics/Bitmap;
    .end local v3    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_1
    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 1533
    :catch_0
    move-exception v1

    .line 1534
    .local v1, "e":Ljava/lang/OutOfMemoryError;
    :try_start_1
    sget-object v2, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v3, "Can\'t decode stream"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1536
    nop

    .end local v1    # "e":Ljava/lang/OutOfMemoryError;
    :goto_0
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1537
    nop

    .line 1539
    return-object v0

    .line 1536
    :goto_1
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1537
    throw v0
.end method

.method public static whitelist getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 1358
    const-string/jumbo v0, "wallpaper"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/WallpaperManager;

    return-object v0
.end method

.method public static blacklist getLegacyDeviceColor(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .line 3937
    const-string v0, ""

    .line 3939
    .local v0, "legacyDeviceColor":Ljava/lang/String;
    :try_start_0
    invoke-static {p0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/WallpaperManager;->getIWallpaperManager()Landroid/app/IWallpaperManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IWallpaperManager;->getLegacyDeviceColor()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 3942
    goto :goto_0

    .line 3940
    :catch_0
    move-exception v1

    .line 3941
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getLegacyDeviceColor:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3943
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-object v0
.end method

.method private static greylist-max-o getMaxCropRect(IIIIFF)Landroid/graphics/RectF;
    .locals 4
    .param p0, "inWidth"    # I
    .param p1, "inHeight"    # I
    .param p2, "outWidth"    # I
    .param p3, "outHeight"    # I
    .param p4, "horizontalAlignment"    # F
    .param p5, "verticalAlignment"    # F

    .line 1751
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 1753
    .local v0, "cropRect":Landroid/graphics/RectF;
    int-to-float v1, p0

    int-to-float v2, p1

    div-float/2addr v1, v2

    int-to-float v2, p2

    int-to-float v3, p3

    div-float/2addr v2, v3

    cmpl-float v1, v1, v2

    const/4 v2, 0x0

    if-lez v1, :cond_0

    .line 1754
    iput v2, v0, Landroid/graphics/RectF;->top:F

    .line 1755
    int-to-float v1, p1

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 1756
    int-to-float v1, p2

    int-to-float v2, p1

    int-to-float v3, p3

    div-float/2addr v2, v3

    mul-float/2addr v1, v2

    .line 1757
    .local v1, "cropWidth":F
    int-to-float v2, p0

    sub-float/2addr v2, v1

    mul-float/2addr v2, p4

    iput v2, v0, Landroid/graphics/RectF;->left:F

    .line 1758
    iget v2, v0, Landroid/graphics/RectF;->left:F

    add-float/2addr v2, v1

    iput v2, v0, Landroid/graphics/RectF;->right:F

    .line 1759
    .end local v1    # "cropWidth":F
    goto :goto_0

    .line 1760
    :cond_0
    iput v2, v0, Landroid/graphics/RectF;->left:F

    .line 1761
    int-to-float v1, p0

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 1762
    int-to-float v1, p3

    int-to-float v2, p0

    int-to-float v3, p2

    div-float/2addr v2, v3

    mul-float/2addr v1, v2

    .line 1763
    .local v1, "cropHeight":F
    int-to-float v2, p1

    sub-float/2addr v2, v1

    mul-float/2addr v2, p5

    iput v2, v0, Landroid/graphics/RectF;->top:F

    .line 1764
    iget v2, v0, Landroid/graphics/RectF;->top:F

    add-float/2addr v2, v1

    iput v2, v0, Landroid/graphics/RectF;->bottom:F

    .line 1766
    .end local v1    # "cropHeight":F
    :goto_0
    return-object v0
.end method

.method public static blacklist getOMCVideoWallpaperFilePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "videoName"    # Ljava/lang/String;

    .line 3883
    invoke-static {p0}, Landroid/app/SemWallpaperResourcesUtils;->getOMCVideoWallpaperFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getOMCWallpaperFile(Landroid/content/Context;I)Ljava/io/File;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "flag"    # I

    .line 3888
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/app/SemWallpaperResourcesUtils;->getOMCWallpaperFile(Landroid/content/Context;ILjava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getOMCWallpaperFile(Landroid/content/Context;ILjava/lang/String;)Ljava/io/File;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "flag"    # I
    .param p2, "color"    # Ljava/lang/String;

    .line 3893
    invoke-static {p0, p1, p2}, Landroid/app/SemWallpaperResourcesUtils;->getOMCWallpaperFile(Landroid/content/Context;ILjava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private blacklist getPreconditionWallpaperColors(I)Landroid/app/SemWallpaperColors;
    .locals 6
    .param p1, "which"    # I

    .line 2131
    sget-boolean v0, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_COVER_DISPLAY_WATCHFACE:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_SUB_DISPLAY_MODE:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/samsung/android/wallpaper/Rune;->VIRTUAL_DISPLAY_WALLPAPER:Z

    if-nez v0, :cond_1

    .line 2132
    invoke-static {p1}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isSubDisplay(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isVirtualDisplay(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2133
    :cond_0
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPreconditionWallpaperColors: Unsupported which. which = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2139
    invoke-static {}, Landroid/app/SemWallpaperColors;->getBlankWallpaperColors()Landroid/app/SemWallpaperColors;

    move-result-object v0

    return-object v0

    .line 2143
    :cond_1
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_4

    .line 2145
    :try_start_0
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IWallpaperManager;->isDesktopStandAloneMode()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p1}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->getMode(I)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_2

    .line 2146
    or-int/lit8 p1, p1, 0x8

    .line 2150
    :cond_2
    nop

    .line 2151
    iget-object v0, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    const-string v2, "emergency_mode"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 2152
    .local v0, "em":I
    iget-object v1, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    const-string/jumbo v4, "ultra_powersaving_mode"

    invoke-static {v1, v4, v3, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 2153
    .local v1, "upsm":I
    iget-object v2, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v4, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getUserId()I

    move-result v4

    const-string/jumbo v5, "minimal_battery_use"

    invoke-static {v2, v5, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    .line 2155
    .local v2, "mbu":I
    const/4 v3, 0x1

    if-eq v0, v3, :cond_3

    if-eq v1, v3, :cond_3

    if-ne v2, v3, :cond_4

    .line 2156
    :cond_3
    invoke-static {}, Landroid/app/SemWallpaperColors;->getBlankWallpaperColors()Landroid/app/SemWallpaperColors;

    move-result-object v3

    return-object v3

    .line 2148
    .end local v0    # "em":I
    .end local v1    # "upsm":I
    .end local v2    # "mbu":I
    :catch_0
    move-exception v0

    .line 2149
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 2160
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_4
    const/4 v0, 0x0

    return-object v0
.end method

.method private blacklist getSettingsName(I)Ljava/lang/String;
    .locals 3
    .param p1, "which"    # I

    .line 5792
    and-int/lit8 v0, p1, 0x3c

    .line 5793
    .local v0, "mode":I
    and-int/lit8 v1, p1, 0x3

    .line 5795
    .local v1, "type":I
    const/4 v2, 0x2

    sparse-switch v0, :sswitch_data_0

    .line 5816
    const-string v2, ""

    return-object v2

    .line 5803
    :sswitch_0
    if-ne v1, v2, :cond_0

    .line 5804
    const-string/jumbo v2, "sub_display_lockscreen_wallpaper_transparency"

    return-object v2

    .line 5806
    :cond_0
    const-string/jumbo v2, "sub_display_system_wallpaper_transparency"

    return-object v2

    .line 5809
    :sswitch_1
    if-ne v1, v2, :cond_1

    .line 5810
    const-string v2, "dex_lockscreen_wallpaper_transparency"

    return-object v2

    .line 5812
    :cond_1
    const-string v2, "dex_system_wallpaper_transparency"

    return-object v2

    .line 5797
    :sswitch_2
    if-ne v1, v2, :cond_2

    .line 5798
    const-string v2, "lockscreen_wallpaper_transparent"

    return-object v2

    .line 5800
    :cond_2
    const-string v2, "android.wallpaper.settings_systemui_transparency"

    return-object v2

    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_2
        0x8 -> :sswitch_1
        0x10 -> :sswitch_0
    .end sparse-switch
.end method

.method private blacklist getThemeWallpaperBackground(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 8
    .param p1, "pkgname"    # Ljava/lang/String;

    .line 4845
    const/4 v0, 0x0

    .line 4846
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    .line 4847
    .local v1, "path":Ljava/lang/String;
    const/4 v2, 0x0

    .line 4848
    .local v2, "inputStream":Ljava/io/InputStream;
    const/4 v3, 0x0

    .line 4850
    .local v3, "assetManager":Landroid/content/res/AssetManager;
    const/4 v4, 0x0

    :try_start_0
    iget-object v5, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    move-object v3, v5

    .line 4851
    if-eqz v3, :cond_0

    .line 4852
    const-string/jumbo v5, "preview/thumbnail_wallpaper.jpg"

    move-object v1, v5

    .line 4853
    invoke-virtual {v3, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5

    move-object v2, v5

    goto :goto_0

    .line 4855
    :cond_0
    sget-object v5, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v6, "getAnimatedWallpaperBackground() : Wallpaper pkg, AssetManager is null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4856
    return-object v4

    .line 4860
    :catch_0
    move-exception v5

    .line 4861
    .local v5, "e":Ljava/lang/Exception;
    sget-object v6, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v7, "getThemeWallpaperBackground Exception"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 4858
    .end local v5    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v5

    .line 4859
    .local v5, "e":Ljava/io/IOException;
    sget-object v6, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v7, "getThemeWallpaperBackground IOException"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4862
    .end local v5    # "e":Ljava/io/IOException;
    :goto_0
    nop

    .line 4864
    :goto_1
    if-nez v2, :cond_2

    .line 4867
    const-string v5, ".wallpaper"

    const-string v6, ""

    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 4869
    .local v5, "themePkgName":Ljava/lang/String;
    :try_start_1
    iget-object v6, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    move-object v3, v6

    .line 4870
    if-eqz v3, :cond_1

    .line 4871
    const-string/jumbo v4, "preview/theme_lockscreen.jpg"

    move-object v1, v4

    .line 4872
    invoke-virtual {v3, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    move-object v2, v4

    .line 4879
    goto :goto_2

    .line 4874
    :cond_1
    sget-object v6, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v7, "getAnimatedWallpaperBackground() : Theme pkg, AssetManager is null"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 4875
    return-object v4

    .line 4877
    :catch_2
    move-exception v4

    .line 4878
    .local v4, "e1":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 4882
    .end local v4    # "e1":Ljava/lang/Exception;
    .end local v5    # "themePkgName":Ljava/lang/String;
    :cond_2
    :goto_2
    if-eqz v2, :cond_3

    .line 4883
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 4885
    :cond_3
    return-object v0
.end method

.method private blacklist getVideoFDFromPackage(Ljava/lang/String;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    .locals 6
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "fileName"    # Ljava/lang/String;

    .line 4889
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getVideoFDFromPackage() pkgName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , fileName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4891
    const/4 v0, 0x0

    .line 4893
    .local v0, "otherContext":Landroid/content/Context;
    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, p1, v1}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 4896
    goto :goto_0

    .line 4894
    :catch_0
    move-exception v2

    .line 4895
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 4897
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_0
    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 4898
    sget-object v1, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v3, "getVideoFDFromPackage() otherContext is null"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4899
    return-object v2

    .line 4902
    :cond_0
    const-string v3, "com.samsung.android.wallpaper.res"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 4903
    move-object v3, p2

    .line 4904
    .local v3, "name":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 4905
    return-object v2

    .line 4908
    :cond_1
    const/16 v4, 0x2e

    :try_start_1
    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    invoke-virtual {v3, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    move-object v3, v1

    .line 4909
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string/jumbo v4, "raw"

    invoke-virtual {v1, v3, v4, p1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 4910
    .local v1, "resId":I
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 4911
    .local v2, "afd":Landroid/content/res/AssetFileDescriptor;
    return-object v2

    .line 4912
    .end local v1    # "resId":I
    .end local v2    # "afd":Landroid/content/res/AssetFileDescriptor;
    :catch_1
    move-exception v1

    .line 4913
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 4915
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "name":Ljava/lang/String;
    goto :goto_1

    .line 4916
    :cond_2
    const-string/jumbo v1, "video_1.mp4"

    .line 4917
    .local v1, "name":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    .line 4918
    .local v3, "assetManager":Landroid/content/res/AssetManager;
    if-nez v3, :cond_3

    .line 4919
    sget-object v4, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v5, "getVideoFDFromPackage() assetManager is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4920
    return-object v2

    .line 4924
    :cond_3
    :try_start_2
    invoke-virtual {v3, v1}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v2
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    return-object v2

    .line 4925
    :catch_2
    move-exception v4

    .line 4926
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 4930
    .end local v1    # "name":Ljava/lang/String;
    .end local v3    # "assetManager":Landroid/content/res/AssetManager;
    .end local v4    # "e":Ljava/io/IOException;
    :goto_1
    return-object v2
.end method

.method private blacklist getVideoWallpaperFrame(Landroid/content/res/AssetFileDescriptor;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 12
    .param p1, "fd"    # Landroid/content/res/AssetFileDescriptor;
    .param p2, "filePath"    # Ljava/lang/String;
    .param p3, "fileName"    # Ljava/lang/String;

    .line 4795
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v1, "getVideoWallpaperFrame, creating MediaMetadataRetriever"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4797
    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 4798
    .local v0, "mediaMetadataRetriever":Landroid/media/MediaMetadataRetriever;
    const/4 v7, 0x0

    .line 4799
    .local v7, "bitmap":Landroid/graphics/Bitmap;
    const-wide/16 v8, 0x0

    .line 4801
    .local v8, "timeUs":J
    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4802
    invoke-virtual {v0, p2}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    goto :goto_0

    .line 4803
    :cond_0
    if-eqz p1, :cond_3

    .line 4804
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v3

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v5

    move-object v1, v0

    invoke-virtual/range {v1 .. v6}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 4810
    :goto_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 4811
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v1

    .line 4812
    .local v1, "frameCountStr":Ljava/lang/String;
    const/16 v2, 0x9

    invoke-virtual {v0, v2}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v2

    .line 4813
    .local v2, "durationStr":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 4814
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 4815
    .local v3, "frameCount":I
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 4816
    .local v4, "duration":I
    sget-object v5, Landroid/app/WallpaperManager;->sWallpaperResourcesInfo:Landroid/app/SemWallpaperResourcesInfo;

    invoke-virtual {v5, p3}, Landroid/app/SemWallpaperResourcesInfo;->getDefaultVideoFrameInfo(Ljava/lang/String;)I

    move-result v5

    .line 4817
    .local v5, "frameIndex":I
    if-lez v3, :cond_1

    if-lez v5, :cond_1

    if-lt v3, v5, :cond_1

    .line 4818
    mul-int/lit16 v6, v4, 0x3e8

    int-to-float v6, v6

    int-to-float v10, v5

    int-to-float v11, v3

    div-float/2addr v10, v11

    mul-float/2addr v6, v10

    float-to-int v6, v6

    int-to-long v8, v6

    .line 4821
    .end local v3    # "frameCount":I
    .end local v4    # "duration":I
    .end local v5    # "frameIndex":I
    :cond_1
    new-instance v3, Landroid/media/MediaMetadataRetriever$BitmapParams;

    invoke-direct {v3}, Landroid/media/MediaMetadataRetriever$BitmapParams;-><init>()V

    .line 4822
    .local v3, "param":Landroid/media/MediaMetadataRetriever$BitmapParams;
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v3, v4}, Landroid/media/MediaMetadataRetriever$BitmapParams;->setPreferredConfig(Landroid/graphics/Bitmap$Config;)V

    .line 4823
    const/4 v4, 0x2

    invoke-virtual {v0, v8, v9, v4, v3}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(JILandroid/media/MediaMetadataRetriever$BitmapParams;)Landroid/graphics/Bitmap;

    move-result-object v4

    move-object v1, v4

    .line 4824
    .end local v2    # "durationStr":Ljava/lang/String;
    .end local v3    # "param":Landroid/media/MediaMetadataRetriever$BitmapParams;
    .end local v7    # "bitmap":Landroid/graphics/Bitmap;
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    move-object v7, v1

    goto :goto_1

    .line 4825
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v7    # "bitmap":Landroid/graphics/Bitmap;
    :cond_2
    invoke-virtual {v0, v8, v9}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(J)Landroid/graphics/Bitmap;

    move-result-object v1

    .end local v7    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v1    # "bitmap":Landroid/graphics/Bitmap;
    move-object v7, v1

    .line 4827
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v7    # "bitmap":Landroid/graphics/Bitmap;
    :goto_1
    sget-object v1, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getVideoWallpaperFrame "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4835
    :try_start_1
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 4838
    :goto_2
    goto :goto_4

    .line 4836
    :catch_0
    move-exception v1

    .line 4837
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 4839
    .end local v1    # "e":Ljava/lang/Exception;
    goto :goto_4

    .line 4806
    :cond_3
    :try_start_2
    sget-object v1, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v2, "getVideoWallpaperFrame() file is invalid"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4807
    const/4 v1, 0x0

    .line 4835
    :try_start_3
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 4838
    goto :goto_3

    .line 4836
    :catch_1
    move-exception v2

    .line 4837
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 4807
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_3
    return-object v1

    .line 4834
    :catchall_0
    move-exception v1

    goto :goto_5

    .line 4831
    :catch_2
    move-exception v1

    .line 4832
    .restart local v1    # "e":Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 4835
    .end local v1    # "e":Ljava/lang/Exception;
    :try_start_5
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_2

    .line 4828
    :catch_3
    move-exception v1

    .line 4829
    .local v1, "e":Ljava/lang/NumberFormatException;
    :try_start_6
    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 4830
    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(J)Landroid/graphics/Bitmap;

    move-result-object v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-object v7, v2

    .line 4835
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :try_start_7
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_2

    .line 4840
    :goto_4
    sget-object v1, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v2, "getVideoWallpaperFrame, done"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4841
    return-object v7

    .line 4835
    :goto_5
    :try_start_8
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    .line 4838
    goto :goto_6

    .line 4836
    :catch_4
    move-exception v2

    .line 4837
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 4839
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_6
    throw v1
.end method

.method private blacklist getWallpaperFile(IIIZ)Landroid/os/ParcelFileDescriptor;
    .locals 10
    .param p1, "which"    # I
    .param p2, "userId"    # I
    .param p3, "kwpType"    # I
    .param p4, "orig"    # Z

    .line 2224
    invoke-static {p1}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isSystem(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isLock(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2226
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must request exactly one kind of wallpaper"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2229
    :cond_1
    :goto_0
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2234
    :try_start_0
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 2235
    .local v6, "outParams":Landroid/os/Bundle;
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v1

    iget-object v0, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    .line 2236
    invoke-virtual {v0}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 2235
    move v5, p1

    move v7, p2

    move v8, p3

    move v9, p4

    invoke-interface/range {v1 .. v9}, Landroid/app/IWallpaperManager;->getWallpaperWithFeature(Ljava/lang/String;Ljava/lang/String;Landroid/app/IWallpaperManagerCallback;ILandroid/os/Bundle;IIZ)Landroid/os/ParcelFileDescriptor;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 2239
    .end local v6    # "outParams":Landroid/os/Bundle;
    :catch_0
    move-exception v0

    .line 2240
    .local v0, "e":Ljava/lang/SecurityException;
    iget-object v1, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v2, 0x1b

    if-ge v1, v2, :cond_2

    .line 2241
    sget-object v1, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v2, "No permission to access wallpaper, suppressing exception to avoid crashing legacy app."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2243
    const/4 v1, 0x0

    return-object v1

    .line 2245
    :cond_2
    throw v0

    .line 2237
    .end local v0    # "e":Ljava/lang/SecurityException;
    :catch_1
    move-exception v0

    .line 2238
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 2230
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_3
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v1, "WallpaperService not running"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2231
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Landroid/os/DeadSystemException;

    invoke-direct {v1}, Landroid/os/DeadSystemException;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static blacklist getWallpaperInputStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 2
    .param p0, "path"    # Ljava/lang/String;

    .line 3949
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3950
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3951
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3953
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 3954
    :catch_0
    move-exception v1

    .line 3959
    .end local v0    # "file":Ljava/io/File;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method static greylist-max-o initGlobals(Landroid/app/IWallpaperManager;Landroid/os/Looper;)V
    .locals 2
    .param p0, "service"    # Landroid/app/IWallpaperManager;
    .param p1, "looper"    # Landroid/os/Looper;

    .line 1323
    sget-object v0, Landroid/app/WallpaperManager;->sSync:Ljava/lang/Object;

    monitor-enter v0

    .line 1324
    :try_start_0
    sget-object v1, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    if-nez v1, :cond_0

    .line 1325
    new-instance v1, Landroid/app/WallpaperManager$Globals;

    invoke-direct {v1, p0, p1}, Landroid/app/WallpaperManager$Globals;-><init>(Landroid/app/IWallpaperManager;Landroid/os/Looper;)V

    sput-object v1, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    .line 1327
    :cond_0
    monitor-exit v0

    .line 1328
    return-void

    .line 1327
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private blacklist isApplied(ILjava/lang/String;)Z
    .locals 8
    .param p1, "which"    # I
    .param p2, "pkgName"    # Ljava/lang/String;

    .line 5494
    invoke-virtual {p0, p1}, Landroid/app/WallpaperManager;->semGetUri(I)Landroid/net/Uri;

    move-result-object v0

    .line 5495
    .local v0, "uri":Landroid/net/Uri;
    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 5496
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    .line 5497
    .local v2, "uriString":Ljava/lang/String;
    sget-object v3, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isApplied: uri = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5498
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5499
    return v1

    .line 5503
    .end local v2    # "uriString":Ljava/lang/String;
    :cond_0
    and-int/lit8 v2, p1, 0x2

    if-eqz v2, :cond_3

    .line 5504
    invoke-virtual {p0, p1}, Landroid/app/WallpaperManager;->getVideoPackage(I)Ljava/lang/String;

    move-result-object v2

    .line 5505
    .local v2, "videoPkg":Ljava/lang/String;
    sget-object v3, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isApplied: videoPkg = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5506
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5507
    return v1

    .line 5509
    :cond_1
    invoke-virtual {p0, p1}, Landroid/app/WallpaperManager;->getMotionWallpaperPkgName(I)Ljava/lang/String;

    move-result-object v3

    .line 5510
    .local v3, "motionPkg":Ljava/lang/String;
    sget-object v4, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isApplied: motionPkg = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5511
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v3, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 5512
    return v1

    .line 5514
    :cond_2
    invoke-virtual {p0, p1}, Landroid/app/WallpaperManager;->getAnimatedPkgName(I)Ljava/lang/String;

    move-result-object v4

    .line 5515
    .local v4, "animatedPkg":Ljava/lang/String;
    sget-object v5, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isApplied: animatedPkg = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5516
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v4, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 5517
    return v1

    .line 5520
    .end local v2    # "videoPkg":Ljava/lang/String;
    .end local v3    # "motionPkg":Ljava/lang/String;
    .end local v4    # "animatedPkg":Ljava/lang/String;
    :cond_3
    const/4 v1, 0x0

    return v1
.end method

.method public static blacklist isDefaultOperatorWallpaper(Landroid/content/Context;I)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "which"    # I

    .line 5526
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/app/SemWallpaperResourcesUtils;->isDefaultOperatorWallpaper(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static blacklist isDefaultOperatorWallpaper(Landroid/content/Context;ILjava/lang/String;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "which"    # I
    .param p2, "color"    # Ljava/lang/String;

    .line 5531
    invoke-static {p0, p1, p2}, Landroid/app/SemWallpaperResourcesUtils;->isDefaultOperatorWallpaper(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private blacklist isKeyguardWallpaperShowing(I)Z
    .locals 5
    .param p1, "which"    # I

    .line 3741
    const/4 v0, 0x1

    :try_start_0
    invoke-static {p1}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isSubDisplay(I)Z

    move-result v1

    .line 3742
    .local v1, "isSubDisplay":Z
    if-eqz v1, :cond_0

    const-string v2, "lockscreen_wallpaper_sub"

    goto :goto_0

    :cond_0
    const-string v2, "lockscreen_wallpaper"

    .line 3743
    .local v2, "settingName":Ljava/lang/String;
    :goto_0
    iget-object v3, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getUserId()I

    move-result v4

    invoke-static {v3, v2, v0, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v3, v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return v0

    .line 3744
    .end local v1    # "isSubDisplay":Z
    .end local v2    # "settingName":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 3745
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isKeyguardWallpaperShowing: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3748
    .end local v1    # "e":Ljava/lang/Exception;
    return v0
.end method

.method private blacklist isNeedToClearBackupData()Z
    .locals 7

    .line 5043
    invoke-virtual {p0}, Landroid/app/WallpaperManager;->isSnapshotTestMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5044
    const/4 v0, 0x0

    return v0

    .line 5047
    :cond_0
    const/4 v0, 0x1

    .line 5049
    .local v0, "needClear":Z
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 5050
    .local v1, "passList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v2, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5051
    iget-object v2, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5053
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 5054
    .local v3, "callingPkg":Ljava/lang/String;
    sget-object v4, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isNeedToClearBackupData(), pkgName = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5056
    const-string v4, "com.samsung.android.themecenter"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 5057
    const-string v4, "com.samsung.systemui.lockstar"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 5058
    const-string v4, "com.samsung.android.festivalwallpaper"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    .line 5063
    :cond_1
    sget v4, Landroid/os/Build$VERSION;->SEM_PLATFORM_INT:I

    const v5, 0x22344

    if-lt v4, v5, :cond_3

    .line 5064
    const-string v4, "com.samsung.android.app.dressroom"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 5065
    const-string v4, "com.android.systemui"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 5066
    :cond_2
    const/4 v0, 0x0

    .line 5067
    goto :goto_2

    .line 5070
    .end local v3    # "callingPkg":Ljava/lang/String;
    :cond_3
    goto :goto_0

    .line 5059
    .restart local v3    # "callingPkg":Ljava/lang/String;
    :cond_4
    :goto_1
    const/4 v0, 0x0

    .line 5060
    nop

    .line 5072
    .end local v3    # "callingPkg":Ljava/lang/String;
    :cond_5
    :goto_2
    sget-object v2, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "needClear = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5073
    return v0
.end method

.method private blacklist isRequestForDex(I)Z
    .locals 1
    .param p1, "which"    # I

    .line 2417
    invoke-static {p1}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isDex(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2418
    const/4 v0, 0x1

    return v0

    .line 2421
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist isVirtualWallpaperDisplay(Landroid/content/Context;I)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "displayId"    # I

    .line 3915
    const/4 v0, 0x0

    .line 3917
    .local v0, "isVirtualDisplay":Z
    :try_start_0
    invoke-static {p0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/WallpaperManager;->getIWallpaperManager()Landroid/app/IWallpaperManager;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/app/IWallpaperManager;->isVirtualWallpaperDisplay(I)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 3920
    goto :goto_0

    .line 3918
    :catch_0
    move-exception v1

    .line 3919
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isVirtualDisplay:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3921
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return v0
.end method

.method public static greylist-max-r openDefaultWallpaper(Landroid/content/Context;I)Ljava/io/InputStream;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "which"    # I

    .line 3772
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3776
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 3781
    const/4 v0, 0x0

    return-object v0

    .line 3783
    :cond_0
    const-string/jumbo v0, "ro.config.wallpaper"

    .line 3784
    .local v0, "whichProp":Ljava/lang/String;
    const v1, 0x108029a

    .line 3786
    .local v1, "defaultResId":I
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3787
    .local v2, "path":Ljava/lang/String;
    invoke-static {v2}, Landroid/app/WallpaperManager;->getWallpaperInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 3788
    .local v3, "wallpaperInputStream":Ljava/io/InputStream;
    if-eqz v3, :cond_1

    .line 3789
    return-object v3

    .line 3791
    :cond_1
    invoke-static {}, Landroid/app/WallpaperManager;->getCmfWallpaperPath()Ljava/lang/String;

    move-result-object v4

    .line 3792
    .local v4, "cmfPath":Ljava/lang/String;
    invoke-static {v4}, Landroid/app/WallpaperManager;->getWallpaperInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5

    .line 3793
    .local v5, "cmfWallpaperInputStream":Ljava/io/InputStream;
    if-eqz v5, :cond_2

    .line 3794
    return-object v5

    .line 3797
    :cond_2
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v6
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v6

    .line 3798
    :catch_0
    move-exception v6

    .line 3806
    .end local v0    # "whichProp":Ljava/lang/String;
    .end local v1    # "defaultResId":I
    .end local v2    # "path":Ljava/lang/String;
    .end local v3    # "wallpaperInputStream":Ljava/io/InputStream;
    .end local v4    # "cmfPath":Ljava/lang/String;
    .end local v5    # "cmfWallpaperInputStream":Ljava/io/InputStream;
    :cond_3
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/app/WallpaperManager;->openDefaultWallpaper(Landroid/content/Context;IZ)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist openDefaultWallpaper(Landroid/content/Context;IZ)Ljava/io/InputStream;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "which"    # I
    .param p2, "changeSettings"    # Z

    .line 3811
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Landroid/app/WallpaperManager;->openDefaultWallpaper(Landroid/content/Context;IZLjava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist openDefaultWallpaper(Landroid/content/Context;IZLjava/lang/String;)Ljava/io/InputStream;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "which"    # I
    .param p2, "changeSettings"    # Z
    .param p3, "color"    # Ljava/lang/String;

    .line 3816
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "openDefaultWallpaper()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3817
    const/4 v0, 0x0

    .line 3820
    .local v0, "is":Ljava/io/InputStream;
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3821
    invoke-static {p0, p1}, Landroid/app/WallpaperManager;->getDefaultWallpaperFile(Landroid/content/Context;I)Ljava/io/File;

    move-result-object v1

    .line 3822
    .local v1, "defaultWallpaper":Ljava/io/File;
    if-eqz v1, :cond_0

    .line 3824
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 3827
    goto :goto_0

    .line 3825
    :catch_0
    move-exception v2

    .line 3826
    .local v2, "e":Ljava/io/IOException;
    sget-object v3, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v4, "getDefaultWallpaperFile error:"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3832
    .end local v1    # "defaultWallpaper":Ljava/io/File;
    .end local v2    # "e":Ljava/io/IOException;
    :cond_0
    :goto_0
    if-nez v0, :cond_2

    .line 3833
    sget-object v1, Landroid/app/WallpaperManager;->sWallpaperResourcesInfo:Landroid/app/SemWallpaperResourcesInfo;

    if-nez v1, :cond_1

    .line 3834
    new-instance v1, Landroid/app/SemWallpaperResourcesInfo;

    invoke-direct {v1, p0}, Landroid/app/SemWallpaperResourcesInfo;-><init>(Landroid/content/Context;)V

    sput-object v1, Landroid/app/WallpaperManager;->sWallpaperResourcesInfo:Landroid/app/SemWallpaperResourcesInfo;

    .line 3836
    :cond_1
    sget-object v1, Landroid/app/WallpaperManager;->sWallpaperResourcesInfo:Landroid/app/SemWallpaperResourcesInfo;

    invoke-virtual {v1, p1}, Landroid/app/SemWallpaperResourcesInfo;->getDefaultImageWallpaper(I)Ljava/io/InputStream;

    move-result-object v0

    .line 3839
    :cond_2
    sget-object v1, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "openDefaultWallpaper: by ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3841
    return-object v0
.end method

.method private blacklist saveWallpaperThumbnailFile(Landroid/graphics/Bitmap;Landroid/os/ParcelFileDescriptor;)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "targetFileFd"    # Landroid/os/ParcelFileDescriptor;

    .line 4674
    const/16 v0, 0x5a

    invoke-direct {p0, p1, p2, v0}, Landroid/app/WallpaperManager;->saveWallpaperThumbnailFile(Landroid/graphics/Bitmap;Landroid/os/ParcelFileDescriptor;I)V

    .line 4675
    return-void
.end method

.method private blacklist saveWallpaperThumbnailFile(Landroid/graphics/Bitmap;Landroid/os/ParcelFileDescriptor;I)V
    .locals 4
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "targetFileFd"    # Landroid/os/ParcelFileDescriptor;
    .param p3, "quality"    # I

    .line 4678
    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_2

    .line 4683
    :cond_0
    const/4 v0, 0x0

    .line 4685
    .local v0, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v1, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-direct {v1, p2}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    move-object v0, v1

    .line 4686
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p1, v1, p3, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 4687
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4693
    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 4690
    :catch_0
    move-exception v1

    .line 4691
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    sget-object v2, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "saveWallpaperThumbnailFile() Exception"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4693
    nop

    .end local v1    # "e":Ljava/lang/Exception;
    goto :goto_0

    .line 4688
    :catch_1
    move-exception v1

    .line 4689
    .local v1, "ie":Ljava/io/IOException;
    sget-object v2, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "saveWallpaperThumbnailFile() IOException"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4693
    nop

    .end local v1    # "ie":Ljava/io/IOException;
    :goto_0
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 4694
    nop

    .line 4696
    sget-object v1, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "saveWallpaperThumbnailFile() saved complete "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4697
    return-void

    .line 4693
    :goto_1
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 4694
    throw v1

    .line 4679
    .end local v0    # "fos":Ljava/io/FileOutputStream;
    :cond_1
    :goto_2
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "saveWallpaperThumbnailFile() bitmap or fd is null, b = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", t = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", quality = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4680
    return-void
.end method

.method private blacklist setBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;ZIIILandroid/os/Bundle;)I
    .locals 19
    .param p1, "fullImage"    # Landroid/graphics/Bitmap;
    .param p2, "visibleCropHint"    # Landroid/graphics/Rect;
    .param p3, "allowBackup"    # Z
    .param p4, "which"    # I
    .param p5, "userId"    # I
    .param p6, "type"    # I
    .param p7, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2814
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v15, p2

    move/from16 v14, p4

    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setBitmap calling package = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", allowBackup = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v13, p3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", which = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", userId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v12, p5

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", type = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v11, p6

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", hasExtras = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v9, 0x0

    const/4 v8, 0x1

    if-eqz p7, :cond_0

    move v4, v8

    goto :goto_0

    :cond_0
    move v4, v9

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2820
    if-eqz v2, :cond_1

    .line 2821
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setBitmap bitmap width = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", height = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2822
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2821
    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2824
    :cond_1
    if-eqz v15, :cond_2

    .line 2825
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setBitmap crop hint = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2828
    :cond_2
    invoke-direct {v1, v15}, Landroid/app/WallpaperManager;->validateRect(Landroid/graphics/Rect;)V

    .line 2829
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 2835
    invoke-virtual {v1, v14}, Landroid/app/WallpaperManager;->isLiveWallpaper(I)Z

    move-result v16

    .line 2836
    .local v16, "isLiveWallpaper":Z
    invoke-direct {v1, v14}, Landroid/app/WallpaperManager;->isKeyguardWallpaperShowing(I)Z

    move-result v17

    .line 2839
    .local v17, "isKeyguardWallpaperShowing":Z
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v7, v0

    .line 2840
    .local v7, "result":Landroid/os/Bundle;
    new-instance v10, Landroid/app/WallpaperManager$WallpaperSetCompletion;

    invoke-direct {v10, v1}, Landroid/app/WallpaperManager$WallpaperSetCompletion;-><init>(Landroid/app/WallpaperManager;)V

    .line 2849
    .local v10, "completion":Landroid/app/WallpaperManager$WallpaperSetCompletion;
    :try_start_0
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v0, v1, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    .line 2850
    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v0, 0x0

    .line 2849
    move-object/from16 v6, p2

    move-object/from16 v18, v7

    .end local v7    # "result":Landroid/os/Bundle;
    .local v18, "result":Landroid/os/Bundle;
    move/from16 v7, p3

    move-object/from16 v8, v18

    move/from16 v9, p4

    move/from16 v11, p5

    move/from16 v12, p6

    move v13, v0

    move v15, v14

    move-object/from16 v14, p7

    :try_start_1
    invoke-interface/range {v3 .. v14}, Landroid/app/IWallpaperManager;->setWallpaperWithExtras(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/os/Bundle;ILandroid/app/IWallpaperManagerCallback;IIZLandroid/os/Bundle;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v3, v0

    .line 2853
    .local v3, "fd":Landroid/os/ParcelFileDescriptor;
    if-eqz v3, :cond_3

    .line 2854
    const/4 v4, 0x0

    .line 2856
    .local v4, "fos":Ljava/io/FileOutputStream;
    :try_start_2
    new-instance v0, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-direct {v0, v3}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    move-object v4, v0

    .line 2857
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x5a

    invoke-virtual {v2, v0, v5, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 2858
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 2859
    invoke-virtual {v10}, Landroid/app/WallpaperManager$WallpaperSetCompletion;->waitForCompletion()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2861
    :try_start_3
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2862
    goto :goto_1

    .line 2861
    :catchall_0
    move-exception v0

    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2862
    nop

    .end local v10    # "completion":Landroid/app/WallpaperManager$WallpaperSetCompletion;
    .end local v16    # "isLiveWallpaper":Z
    .end local v17    # "isKeyguardWallpaperShowing":Z
    .end local v18    # "result":Landroid/os/Bundle;
    .end local p0    # "this":Landroid/app/WallpaperManager;
    .end local p1    # "fullImage":Landroid/graphics/Bitmap;
    .end local p2    # "visibleCropHint":Landroid/graphics/Rect;
    .end local p3    # "allowBackup":Z
    .end local p4    # "which":I
    .end local p5    # "userId":I
    .end local p6    # "type":I
    .end local p7    # "extras":Landroid/os/Bundle;
    throw v0
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    .line 2866
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v10    # "completion":Landroid/app/WallpaperManager$WallpaperSetCompletion;
    .restart local v16    # "isLiveWallpaper":Z
    .restart local v17    # "isKeyguardWallpaperShowing":Z
    .restart local v18    # "result":Landroid/os/Bundle;
    .restart local p0    # "this":Landroid/app/WallpaperManager;
    .restart local p1    # "fullImage":Landroid/graphics/Bitmap;
    .restart local p2    # "visibleCropHint":Landroid/graphics/Rect;
    .restart local p3    # "allowBackup":Z
    .restart local p4    # "which":I
    .restart local p5    # "userId":I
    .restart local p6    # "type":I
    .restart local p7    # "extras":Landroid/os/Bundle;
    :cond_3
    :goto_1
    :try_start_4
    invoke-static/range {p4 .. p4}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isSystemAndLock(I)Z

    move-result v0
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    if-eqz v0, :cond_4

    .line 2867
    :try_start_5
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    iget-object v4, v1, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v15, v4}, Landroid/app/IWallpaperManager;->copyFileToWallpaperFile(ILjava/lang/String;)V

    const/4 v5, 0x1

    goto :goto_2

    .line 2898
    .end local v3    # "fd":Landroid/os/ParcelFileDescriptor;
    :catch_0
    move-exception v0

    move-object/from16 v3, v18

    goto/16 :goto_3

    .line 2869
    .restart local v3    # "fd":Landroid/os/ParcelFileDescriptor;
    :cond_4
    if-eqz v16, :cond_8

    invoke-static/range {p4 .. p4}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isDex(I)Z

    move-result v0

    if-nez v0, :cond_8

    .line 2870
    if-nez v17, :cond_7

    .line 2871
    invoke-static/range {p4 .. p4}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isSystem(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2872
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "setBitmap: call clear() to change the lock wallpaper to default. Since the system wallpaper has been changed and live wallpaper has been broken"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2875
    const/4 v0, 0x2

    .line 2876
    .local v0, "flag":I
    sget-boolean v4, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_SUB_DISPLAY_MODE:Z

    if-eqz v4, :cond_5

    .line 2877
    invoke-static/range {p4 .. p4}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isSubDisplay(I)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2878
    or-int/lit8 v0, v0, 0x10

    .line 2882
    :cond_5
    sget-object v4, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v4}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v4, v0, v5}, Landroid/app/IWallpaperManager;->setKWPTypeLiveWallpaperWithMode(II)V

    .line 2883
    .end local v0    # "flag":I
    goto :goto_2

    .line 2871
    :cond_6
    const/4 v5, 0x1

    goto :goto_2

    .line 2885
    :cond_7
    const/4 v5, 0x1

    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "setBitmap: The type of lockscreen wallpaper is not live wallpaper already. Just keep going."

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_2

    .line 2869
    :cond_8
    const/4 v5, 0x1

    .line 2890
    :goto_2
    :try_start_6
    invoke-direct {v1, v15}, Landroid/app/WallpaperManager;->isRequestForDex(I)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1

    if-nez v0, :cond_9

    :try_start_7
    invoke-static/range {p4 .. p4}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isLock(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2891
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    invoke-interface {v0, v5}, Landroid/app/IWallpaperManager;->setKWPTypeLiveWallpaper(I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_0

    .line 2894
    :cond_9
    :try_start_8
    invoke-direct/range {p0 .. p0}, Landroid/app/WallpaperManager;->isNeedToClearBackupData()Z

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_1

    if-eqz v0, :cond_a

    .line 2895
    :try_start_9
    invoke-virtual {v1, v15}, Landroid/app/WallpaperManager;->semClearBackupWallpapers(I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_0

    .line 2900
    .end local v3    # "fd":Landroid/os/ParcelFileDescriptor;
    :cond_a
    nop

    .line 2901
    const-string v0, "android.service.wallpaper.extra.ID"

    move-object/from16 v3, v18

    const/4 v4, 0x0

    .end local v18    # "result":Landroid/os/Bundle;
    .local v3, "result":Landroid/os/Bundle;
    invoke-virtual {v3, v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0

    .line 2898
    .end local v3    # "result":Landroid/os/Bundle;
    .restart local v18    # "result":Landroid/os/Bundle;
    :catch_1
    move-exception v0

    move-object/from16 v3, v18

    .end local v18    # "result":Landroid/os/Bundle;
    .restart local v3    # "result":Landroid/os/Bundle;
    goto :goto_3

    .end local v3    # "result":Landroid/os/Bundle;
    .restart local v7    # "result":Landroid/os/Bundle;
    :catch_2
    move-exception v0

    move-object v3, v7

    move v15, v14

    .line 2899
    .end local v7    # "result":Landroid/os/Bundle;
    .local v0, "e":Landroid/os/RemoteException;
    .restart local v3    # "result":Landroid/os/Bundle;
    :goto_3
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v4

    throw v4

    .line 2830
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v3    # "result":Landroid/os/Bundle;
    .end local v10    # "completion":Landroid/app/WallpaperManager$WallpaperSetCompletion;
    .end local v16    # "isLiveWallpaper":Z
    .end local v17    # "isKeyguardWallpaperShowing":Z
    :cond_b
    move v15, v14

    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v3, "WallpaperService not running"

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2831
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v3, Landroid/os/DeadSystemException;

    invoke-direct {v3}, Landroid/os/DeadSystemException;-><init>()V

    invoke-direct {v0, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private blacklist setPreloadedResource(Landroid/content/Context;IIZLandroid/os/Bundle;)I
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resid"    # I
    .param p3, "which"    # I
    .param p4, "allowBackup"    # Z
    .param p5, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2467
    const/4 v4, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v5, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Landroid/app/WallpaperManager;->setResource(Landroid/content/Context;IIIZZLandroid/os/Bundle;)I

    move-result v0

    return v0
.end method

.method private blacklist setPreloadedStream(Ljava/io/InputStream;Landroid/graphics/Rect;ZI)I
    .locals 8
    .param p1, "bitmapData"    # Ljava/io/InputStream;
    .param p2, "visibleCropHint"    # Landroid/graphics/Rect;
    .param p3, "allowBackup"    # Z
    .param p4, "which"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3029
    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v7}, Landroid/app/WallpaperManager;->setStream(Ljava/io/InputStream;Landroid/graphics/Rect;ZIIZLandroid/os/Bundle;)I

    move-result v0

    return v0
.end method

.method private blacklist setResource(Landroid/content/Context;IIIZZLandroid/os/Bundle;)I
    .locals 25
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resid"    # I
    .param p3, "which"    # I
    .param p4, "type"    # I
    .param p5, "allowBackup"    # Z
    .param p6, "isPreloaded"    # Z
    .param p7, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2472
    move-object/from16 v1, p0

    move/from16 v2, p2

    move/from16 v15, p3

    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setResource: which = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", resid = 0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", callingPkg = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", hasExtras = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v14, 0x0

    const/4 v13, 0x1

    if-eqz p7, :cond_0

    move v4, v13

    goto :goto_0

    :cond_0
    move v4, v14

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2474
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 2479
    invoke-virtual {v1, v15}, Landroid/app/WallpaperManager;->isLiveWallpaper(I)Z

    move-result v21

    .line 2480
    .local v21, "isLiveWallpaper":Z
    invoke-direct {v1, v15}, Landroid/app/WallpaperManager;->isKeyguardWallpaperShowing(I)Z

    move-result v22

    .line 2482
    .local v22, "isKeyguardWallpaperShowing":Z
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v12, v0

    .line 2483
    .local v12, "result":Landroid/os/Bundle;
    new-instance v10, Landroid/app/WallpaperManager$WallpaperSetCompletion;

    invoke-direct {v10, v1}, Landroid/app/WallpaperManager$WallpaperSetCompletion;-><init>(Landroid/app/WallpaperManager;)V

    .line 2486
    .local v10, "completion":Landroid/app/WallpaperManager$WallpaperSetCompletion;
    const/4 v3, 0x0

    .line 2489
    .local v3, "isDesktopMode":Z
    :try_start_0
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    invoke-interface {v0, v15}, Landroid/app/IWallpaperManager;->isDesktopModeEnabled(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_7

    move/from16 v23, v0

    .line 2492
    .end local v3    # "isDesktopMode":Z
    .local v23, "isDesktopMode":Z
    nop

    .line 2506
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_6

    move-object v11, v0

    .line 2508
    .local v11, "resources":Landroid/content/res/Resources;
    const/4 v0, 0x0

    .line 2509
    .local v0, "fd":Landroid/os/ParcelFileDescriptor;
    const-string/jumbo v3, "res:"

    if-eqz p6, :cond_1

    .line 2510
    :try_start_2
    sget-object v4, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v4}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2511
    invoke-virtual {v11, v2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2512
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    .line 2513
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v16
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 2510
    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move/from16 v7, p5

    move-object v8, v12

    move/from16 v9, p3

    move-object v15, v11

    .end local v11    # "resources":Landroid/content/res/Resources;
    .local v15, "resources":Landroid/content/res/Resources;
    move/from16 v11, v16

    move-object/from16 v24, v12

    .end local v12    # "result":Landroid/os/Bundle;
    .local v24, "result":Landroid/os/Bundle;
    move/from16 v12, p4

    move/from16 v13, p6

    move-object/from16 v14, p7

    :try_start_3
    invoke-interface/range {v3 .. v14}, Landroid/app/IWallpaperManager;->setWallpaperWithExtras(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/os/Bundle;ILandroid/app/IWallpaperManagerCallback;IIZLandroid/os/Bundle;)Landroid/os/ParcelFileDescriptor;

    move-result-object v3
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    move-object v0, v3

    move/from16 v4, p3

    move-object v5, v15

    goto :goto_2

    .line 2583
    .end local v0    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v15    # "resources":Landroid/content/res/Resources;
    :catch_0
    move-exception v0

    move/from16 v4, p3

    :goto_1
    move-object/from16 v5, v24

    goto/16 :goto_9

    .end local v24    # "result":Landroid/os/Bundle;
    .restart local v12    # "result":Landroid/os/Bundle;
    :catch_1
    move-exception v0

    move/from16 v4, p3

    move-object v5, v12

    .end local v12    # "result":Landroid/os/Bundle;
    .restart local v24    # "result":Landroid/os/Bundle;
    goto/16 :goto_9

    .line 2515
    .end local v24    # "result":Landroid/os/Bundle;
    .restart local v0    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local v11    # "resources":Landroid/content/res/Resources;
    .restart local v12    # "result":Landroid/os/Bundle;
    :cond_1
    move-object v15, v11

    move-object/from16 v24, v12

    .end local v11    # "resources":Landroid/content/res/Resources;
    .end local v12    # "result":Landroid/os/Bundle;
    .restart local v15    # "resources":Landroid/content/res/Resources;
    .restart local v24    # "result":Landroid/os/Bundle;
    :try_start_4
    sget-object v4, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v4}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v11

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2516
    invoke-virtual {v15, v2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 2517
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v3, 0x0

    iget-object v4, v1, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    .line 2518
    invoke-virtual {v4}, Landroid/content/Context;->getUserId()I

    move-result v19
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_5

    .line 2515
    move/from16 v4, p3

    move-object v5, v15

    .end local v15    # "resources":Landroid/content/res/Resources;
    .local v5, "resources":Landroid/content/res/Resources;
    move v15, v3

    move-object/from16 v16, v24

    move/from16 v17, p3

    move-object/from16 v18, v10

    move/from16 v20, p4

    :try_start_5
    invoke-interface/range {v11 .. v20}, Landroid/app/IWallpaperManager;->setWallpaper(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/os/Bundle;ILandroid/app/IWallpaperManagerCallback;II)Landroid/os/ParcelFileDescriptor;

    move-result-object v3
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_4

    move-object v0, v3

    .line 2521
    .end local v0    # "fd":Landroid/os/ParcelFileDescriptor;
    .local v3, "fd":Landroid/os/ParcelFileDescriptor;
    :goto_2
    if-eqz v3, :cond_3

    .line 2522
    const/4 v6, 0x0

    .line 2523
    .local v6, "fos":Ljava/io/FileOutputStream;
    const/4 v7, 0x0

    .line 2525
    .local v7, "ok":Z
    :try_start_6
    new-instance v0, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-direct {v0, v3}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    move-object v6, v0

    .line 2527
    invoke-virtual {v5, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 2528
    .local v0, "drawable":Landroid/graphics/drawable/BitmapDrawable;
    if-eqz v0, :cond_2

    if-nez p6, :cond_2

    .line 2529
    invoke-direct {v1, v0, v6}, Landroid/app/WallpaperManager;->copyDrawableToWallpaperFile(Landroid/graphics/drawable/BitmapDrawable;Ljava/io/FileOutputStream;)V

    goto :goto_3

    .line 2532
    :cond_2
    invoke-virtual {v5, v2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v8

    invoke-direct {v1, v8, v6}, Landroid/app/WallpaperManager;->copyStreamToWallpaperFile(Ljava/io/InputStream;Ljava/io/FileOutputStream;)V

    .line 2536
    :goto_3
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    .line 2537
    invoke-virtual {v10}, Landroid/app/WallpaperManager$WallpaperSetCompletion;->waitForCompletion()V
    :try_end_6
    .catch Ljava/lang/ClassCastException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 2543
    .end local v0    # "drawable":Landroid/graphics/drawable/BitmapDrawable;
    :try_start_7
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_4

    :catchall_0
    move-exception v0

    goto :goto_5

    .line 2538
    :catch_2
    move-exception v0

    .line 2539
    .local v0, "e":Ljava/lang/ClassCastException;
    :try_start_8
    invoke-virtual {v0}, Ljava/lang/ClassCastException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 2543
    .end local v0    # "e":Ljava/lang/ClassCastException;
    :try_start_9
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2544
    :goto_4
    goto :goto_6

    .line 2543
    :goto_5
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2544
    nop

    .end local v10    # "completion":Landroid/app/WallpaperManager$WallpaperSetCompletion;
    .end local v21    # "isLiveWallpaper":Z
    .end local v22    # "isKeyguardWallpaperShowing":Z
    .end local v23    # "isDesktopMode":Z
    .end local v24    # "result":Landroid/os/Bundle;
    .end local p0    # "this":Landroid/app/WallpaperManager;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "resid":I
    .end local p3    # "which":I
    .end local p4    # "type":I
    .end local p5    # "allowBackup":Z
    .end local p6    # "isPreloaded":Z
    .end local p7    # "extras":Landroid/os/Bundle;
    throw v0
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_3

    .line 2548
    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .end local v7    # "ok":Z
    .restart local v10    # "completion":Landroid/app/WallpaperManager$WallpaperSetCompletion;
    .restart local v21    # "isLiveWallpaper":Z
    .restart local v22    # "isKeyguardWallpaperShowing":Z
    .restart local v23    # "isDesktopMode":Z
    .restart local v24    # "result":Landroid/os/Bundle;
    .restart local p0    # "this":Landroid/app/WallpaperManager;
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "resid":I
    .restart local p3    # "which":I
    .restart local p4    # "type":I
    .restart local p5    # "allowBackup":Z
    .restart local p6    # "isPreloaded":Z
    .restart local p7    # "extras":Landroid/os/Bundle;
    :cond_3
    :goto_6
    :try_start_a
    invoke-static/range {p3 .. p3}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isSystemAndLock(I)Z

    move-result v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_4

    if-eqz v0, :cond_5

    .line 2549
    if-eqz p6, :cond_4

    .line 2550
    :try_start_b
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    iget-object v6, v1, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v4, v6}, Landroid/app/IWallpaperManager;->copyPreloadedFileToWallpaperFile(ILjava/lang/String;)V

    const/4 v7, 0x1

    goto :goto_7

    .line 2552
    :cond_4
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    iget-object v6, v1, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v4, v6}, Landroid/app/IWallpaperManager;->copyFileToWallpaperFile(ILjava/lang/String;)V

    const/4 v7, 0x1

    goto :goto_7

    .line 2555
    :cond_5
    if-eqz v21, :cond_9

    invoke-static/range {p3 .. p3}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isDex(I)Z

    move-result v0

    if-nez v0, :cond_9

    .line 2556
    if-nez v22, :cond_8

    .line 2557
    invoke-static/range {p3 .. p3}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isSystem(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2558
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "setResource: call clear() to change the lock wallpaper to default. Since the system wallpaper has been changed and live wallpaper has been broken"

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2561
    const/4 v0, 0x2

    .line 2562
    .local v0, "flag":I
    sget-boolean v6, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_SUB_DISPLAY_MODE:Z

    if-eqz v6, :cond_6

    .line 2563
    invoke-static/range {p3 .. p3}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isSubDisplay(I)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 2564
    or-int/lit8 v0, v0, 0x10

    .line 2568
    :cond_6
    sget-object v6, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v6}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v6

    const/4 v7, 0x1

    invoke-interface {v6, v0, v7}, Landroid/app/IWallpaperManager;->setKWPTypeLiveWallpaperWithMode(II)V

    .line 2569
    .end local v0    # "flag":I
    goto :goto_7

    .line 2557
    :cond_7
    const/4 v7, 0x1

    goto :goto_7

    .line 2571
    :cond_8
    const/4 v7, 0x1

    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "setResource: The type of lockscreen wallpaper is not live wallpaper already. Just keep going."

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_3

    goto :goto_7

    .line 2583
    .end local v3    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v5    # "resources":Landroid/content/res/Resources;
    :catch_3
    move-exception v0

    goto/16 :goto_1

    .line 2555
    .restart local v3    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local v5    # "resources":Landroid/content/res/Resources;
    :cond_9
    const/4 v7, 0x1

    .line 2576
    :goto_7
    :try_start_c
    invoke-direct {v1, v4}, Landroid/app/WallpaperManager;->isRequestForDex(I)Z

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_c} :catch_4

    if-nez v0, :cond_a

    :try_start_d
    invoke-static/range {p3 .. p3}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isLock(I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2577
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    invoke-interface {v0, v7}, Landroid/app/IWallpaperManager;->setKWPTypeLiveWallpaper(I)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_d} :catch_3

    .line 2579
    :cond_a
    :try_start_e
    invoke-direct/range {p0 .. p0}, Landroid/app/WallpaperManager;->isNeedToClearBackupData()Z

    move-result v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_e} :catch_4

    if-eqz v0, :cond_b

    .line 2580
    :try_start_f
    invoke-virtual {v1, v4}, Landroid/app/WallpaperManager;->semClearBackupWallpapers(I)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_f} :catch_3

    .line 2585
    .end local v3    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v5    # "resources":Landroid/content/res/Resources;
    :cond_b
    nop

    .line 2586
    const-string v0, "android.service.wallpaper.extra.ID"

    move-object/from16 v5, v24

    const/4 v3, 0x0

    .end local v24    # "result":Landroid/os/Bundle;
    .local v5, "result":Landroid/os/Bundle;
    invoke-virtual {v5, v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0

    .line 2583
    .end local v5    # "result":Landroid/os/Bundle;
    .restart local v24    # "result":Landroid/os/Bundle;
    :catch_4
    move-exception v0

    goto :goto_8

    :catch_5
    move-exception v0

    move/from16 v4, p3

    :goto_8
    move-object/from16 v5, v24

    .end local v24    # "result":Landroid/os/Bundle;
    .restart local v5    # "result":Landroid/os/Bundle;
    goto :goto_9

    .end local v5    # "result":Landroid/os/Bundle;
    .restart local v12    # "result":Landroid/os/Bundle;
    :catch_6
    move-exception v0

    move-object v5, v12

    move v4, v15

    .line 2584
    .end local v12    # "result":Landroid/os/Bundle;
    .local v0, "e":Landroid/os/RemoteException;
    .restart local v5    # "result":Landroid/os/Bundle;
    :goto_9
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    .line 2490
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v5    # "result":Landroid/os/Bundle;
    .end local v23    # "isDesktopMode":Z
    .local v3, "isDesktopMode":Z
    .restart local v12    # "result":Landroid/os/Bundle;
    :catch_7
    move-exception v0

    move-object v5, v12

    move v4, v15

    .line 2491
    .end local v12    # "result":Landroid/os/Bundle;
    .restart local v0    # "e":Landroid/os/RemoteException;
    .restart local v5    # "result":Landroid/os/Bundle;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v6

    throw v6

    .line 2475
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v3    # "isDesktopMode":Z
    .end local v5    # "result":Landroid/os/Bundle;
    .end local v10    # "completion":Landroid/app/WallpaperManager$WallpaperSetCompletion;
    .end local v21    # "isLiveWallpaper":Z
    .end local v22    # "isKeyguardWallpaperShowing":Z
    :cond_c
    move v4, v15

    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v3, "WallpaperService not running"

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2476
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v3, Landroid/os/DeadSystemException;

    invoke-direct {v3}, Landroid/os/DeadSystemException;-><init>()V

    invoke-direct {v0, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private blacklist setStream(Ljava/io/InputStream;Landroid/graphics/Rect;ZII)I
    .locals 8
    .param p1, "bitmapData"    # Ljava/io/InputStream;
    .param p2, "visibleCropHint"    # Landroid/graphics/Rect;
    .param p3, "allowBackup"    # Z
    .param p4, "which"    # I
    .param p5, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3035
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v7}, Landroid/app/WallpaperManager;->setStream(Ljava/io/InputStream;Landroid/graphics/Rect;ZIIZLandroid/os/Bundle;)I

    move-result v0

    return v0
.end method

.method private blacklist setStream(Ljava/io/InputStream;Landroid/graphics/Rect;ZIIZLandroid/os/Bundle;)I
    .locals 19
    .param p1, "bitmapData"    # Ljava/io/InputStream;
    .param p2, "visibleCropHint"    # Landroid/graphics/Rect;
    .param p3, "allowBackup"    # Z
    .param p4, "which"    # I
    .param p5, "type"    # I
    .param p6, "isPreloaded"    # Z
    .param p7, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3041
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v15, p2

    move/from16 v14, p4

    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setStream calling package = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", allowBackup = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v13, p3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", which = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", type = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v12, p5

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", hasExtra = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v11, 0x0

    const/4 v9, 0x1

    if-eqz p7, :cond_0

    move v4, v9

    goto :goto_0

    :cond_0
    move v4, v11

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3046
    if-eqz v2, :cond_1

    .line 3047
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setStream bitmap data = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3049
    :cond_1
    if-eqz v15, :cond_2

    .line 3050
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setStream crop hint = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3053
    :cond_2
    invoke-direct {v1, v15}, Landroid/app/WallpaperManager;->validateRect(Landroid/graphics/Rect;)V

    .line 3054
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 3060
    invoke-virtual {v1, v14}, Landroid/app/WallpaperManager;->isLiveWallpaper(I)Z

    move-result v16

    .line 3061
    .local v16, "isLiveWallpaper":Z
    invoke-direct {v1, v14}, Landroid/app/WallpaperManager;->isKeyguardWallpaperShowing(I)Z

    move-result v17

    .line 3063
    .local v17, "isKeyguardWallpaperShowing":Z
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v8, v0

    .line 3064
    .local v8, "result":Landroid/os/Bundle;
    new-instance v10, Landroid/app/WallpaperManager$WallpaperSetCompletion;

    invoke-direct {v10, v1}, Landroid/app/WallpaperManager$WallpaperSetCompletion;-><init>(Landroid/app/WallpaperManager;)V

    .line 3073
    .local v10, "completion":Landroid/app/WallpaperManager$WallpaperSetCompletion;
    :try_start_0
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v3, "begin setWallpaper()"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3075
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v0, v1, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    .line 3076
    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v5

    iget-object v0, v1, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    .line 3077
    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    .line 3075
    move-object/from16 v6, p2

    move/from16 v7, p3

    move-object/from16 v18, v8

    .end local v8    # "result":Landroid/os/Bundle;
    .local v18, "result":Landroid/os/Bundle;
    move/from16 v9, p4

    move v11, v0

    move/from16 v12, p5

    move/from16 v13, p6

    move v15, v14

    move-object/from16 v14, p7

    :try_start_1
    invoke-interface/range {v3 .. v14}, Landroid/app/IWallpaperManager;->setWallpaperWithExtras(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/os/Bundle;ILandroid/app/IWallpaperManagerCallback;IIZLandroid/os/Bundle;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    move-object v3, v0

    .line 3078
    .local v3, "fd":Landroid/os/ParcelFileDescriptor;
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v4, "finish setWallpaper()"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 3080
    if-eqz v3, :cond_3

    .line 3081
    const/4 v4, 0x0

    .line 3083
    .local v4, "fos":Ljava/io/FileOutputStream;
    :try_start_2
    new-instance v0, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-direct {v0, v3}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    move-object v4, v0

    .line 3084
    invoke-direct {v1, v2, v4}, Landroid/app/WallpaperManager;->copyStreamToWallpaperFile(Ljava/io/InputStream;Ljava/io/FileOutputStream;)V

    .line 3085
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 3086
    invoke-virtual {v10}, Landroid/app/WallpaperManager$WallpaperSetCompletion;->waitForCompletion()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3088
    :try_start_3
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 3089
    goto :goto_1

    .line 3088
    :catchall_0
    move-exception v0

    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 3089
    nop

    .end local v10    # "completion":Landroid/app/WallpaperManager$WallpaperSetCompletion;
    .end local v16    # "isLiveWallpaper":Z
    .end local v17    # "isKeyguardWallpaperShowing":Z
    .end local v18    # "result":Landroid/os/Bundle;
    .end local p0    # "this":Landroid/app/WallpaperManager;
    .end local p1    # "bitmapData":Ljava/io/InputStream;
    .end local p2    # "visibleCropHint":Landroid/graphics/Rect;
    .end local p3    # "allowBackup":Z
    .end local p4    # "which":I
    .end local p5    # "type":I
    .end local p6    # "isPreloaded":Z
    .end local p7    # "extras":Landroid/os/Bundle;
    throw v0
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    .line 3149
    .end local v3    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v10    # "completion":Landroid/app/WallpaperManager$WallpaperSetCompletion;
    .restart local v16    # "isLiveWallpaper":Z
    .restart local v17    # "isKeyguardWallpaperShowing":Z
    .restart local v18    # "result":Landroid/os/Bundle;
    .restart local p0    # "this":Landroid/app/WallpaperManager;
    .restart local p1    # "bitmapData":Ljava/io/InputStream;
    .restart local p2    # "visibleCropHint":Landroid/graphics/Rect;
    .restart local p3    # "allowBackup":Z
    .restart local p4    # "which":I
    .restart local p5    # "type":I
    .restart local p6    # "isPreloaded":Z
    .restart local p7    # "extras":Landroid/os/Bundle;
    :catch_0
    move-exception v0

    move-object/from16 v3, v18

    goto/16 :goto_4

    .line 3093
    .restart local v3    # "fd":Landroid/os/ParcelFileDescriptor;
    :cond_3
    :goto_1
    :try_start_4
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 3094
    .local v0, "userId":I
    sget-object v4, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setStream: userId : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3095
    invoke-static/range {p4 .. p4}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isSystemAndLock(I)Z

    move-result v4
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    if-eqz v4, :cond_5

    .line 3096
    if-eqz p6, :cond_4

    .line 3097
    :try_start_5
    sget-object v4, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v4}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v4

    iget-object v5, v1, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v15, v5}, Landroid/app/IWallpaperManager;->copyPreloadedFileToWallpaperFile(ILjava/lang/String;)V

    const/4 v6, 0x1

    goto :goto_2

    .line 3099
    :cond_4
    sget-object v4, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v4}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v4

    iget-object v5, v1, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v15, v5}, Landroid/app/IWallpaperManager;->copyFileToWallpaperFile(ILjava/lang/String;)V

    const/4 v6, 0x1

    goto :goto_2

    .line 3102
    :cond_5
    if-eqz v16, :cond_9

    invoke-static/range {p4 .. p4}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isDex(I)Z

    move-result v4

    if-nez v4, :cond_9

    .line 3103
    if-nez v17, :cond_8

    .line 3104
    invoke-static/range {p4 .. p4}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isSystem(I)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 3105
    sget-object v4, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "setStream: call clear() to change the lock wallpaper to default. Since the system wallpaper has been changed and live wallpaper has been broken"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3108
    const/4 v4, 0x2

    .line 3109
    .local v4, "flag":I
    sget-boolean v5, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_SUB_DISPLAY_MODE:Z

    if-eqz v5, :cond_6

    .line 3110
    invoke-static/range {p4 .. p4}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isSubDisplay(I)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 3111
    or-int/lit8 v4, v4, 0x10

    .line 3115
    :cond_6
    sget-object v5, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v5}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v5

    const/4 v6, 0x1

    invoke-interface {v5, v4, v6}, Landroid/app/IWallpaperManager;->setKWPTypeLiveWallpaperWithMode(II)V

    .line 3116
    .end local v4    # "flag":I
    goto :goto_2

    .line 3104
    :cond_7
    const/4 v6, 0x1

    goto :goto_2

    .line 3118
    :cond_8
    const/4 v6, 0x1

    sget-object v4, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "setStream: The type of lockscreen wallpaper is not live wallpaper already. Just keep going."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_2

    .line 3102
    :cond_9
    const/4 v6, 0x1

    .line 3124
    :goto_2
    :try_start_6
    const-string v4, "com.sec.android.app.desktoplauncher"

    iget-object v5, v1, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1

    if-eqz v4, :cond_d

    .line 3125
    :try_start_7
    invoke-static/range {p4 .. p4}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isSystem(I)Z

    move-result v4
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_0

    const-string/jumbo v5, "setStream() result : Invalid file path. which="

    if-eqz v4, :cond_b

    .line 3126
    :try_start_8
    new-instance v4, Ljava/io/File;

    iget-object v7, v1, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getUserId()I

    move-result v7

    invoke-static {v7}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v7

    const-string/jumbo v8, "wallpaper_desktop_orig"

    invoke-direct {v4, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3127
    .local v4, "systemFile":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-virtual {v4}, Ljava/io/File;->canRead()Z

    move-result v7

    if-eqz v7, :cond_a

    .line 3128
    sget-object v5, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setStream() result : wallpaper_desktop_orig file length="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 3130
    :cond_a
    sget-object v7, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 3132
    .end local v4    # "systemFile":Ljava/io/File;
    :cond_b
    invoke-static/range {p4 .. p4}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isLock(I)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 3133
    new-instance v4, Ljava/io/File;

    iget-object v7, v1, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getUserId()I

    move-result v7

    invoke-static {v7}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v7

    const-string/jumbo v8, "wallpaper_lock_images/wallpaper_desktop_lock_orig"

    invoke-direct {v4, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3134
    .local v4, "lockFile":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_c

    invoke-virtual {v4}, Ljava/io/File;->canRead()Z

    move-result v7

    if-eqz v7, :cond_c

    .line 3135
    sget-object v5, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setStream() result : wallpaper_desktop_lock_orig file length="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 3137
    :cond_c
    sget-object v7, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_0

    nop

    .line 3142
    .end local v4    # "lockFile":Ljava/io/File;
    :cond_d
    :goto_3
    :try_start_9
    invoke-direct {v1, v15}, Landroid/app/WallpaperManager;->isRequestForDex(I)Z

    move-result v4
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_1

    if-nez v4, :cond_e

    :try_start_a
    invoke-static/range {p4 .. p4}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isLock(I)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 3143
    sget-object v4, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v4}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v4

    invoke-interface {v4, v6}, Landroid/app/IWallpaperManager;->setKWPTypeLiveWallpaper(I)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_0

    .line 3145
    :cond_e
    :try_start_b
    invoke-direct/range {p0 .. p0}, Landroid/app/WallpaperManager;->isNeedToClearBackupData()Z

    move-result v4
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_1

    if-eqz v4, :cond_f

    .line 3146
    :try_start_c
    invoke-virtual {v1, v15}, Landroid/app/WallpaperManager;->semClearBackupWallpapers(I)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_c} :catch_0

    .line 3155
    .end local v0    # "userId":I
    .end local v3    # "fd":Landroid/os/ParcelFileDescriptor;
    :cond_f
    nop

    .line 3157
    const-string v0, "android.service.wallpaper.extra.ID"

    move-object/from16 v3, v18

    const/4 v4, 0x0

    .end local v18    # "result":Landroid/os/Bundle;
    .local v3, "result":Landroid/os/Bundle;
    invoke-virtual {v3, v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0

    .line 3149
    .end local v3    # "result":Landroid/os/Bundle;
    .restart local v18    # "result":Landroid/os/Bundle;
    :catch_1
    move-exception v0

    move-object/from16 v3, v18

    .end local v18    # "result":Landroid/os/Bundle;
    .restart local v3    # "result":Landroid/os/Bundle;
    goto :goto_4

    .end local v3    # "result":Landroid/os/Bundle;
    .restart local v8    # "result":Landroid/os/Bundle;
    :catch_2
    move-exception v0

    move-object v3, v8

    move v15, v14

    .line 3151
    .end local v8    # "result":Landroid/os/Bundle;
    .local v0, "e":Landroid/os/RemoteException;
    .restart local v3    # "result":Landroid/os/Bundle;
    :goto_4
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 3154
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v4

    throw v4

    .line 3055
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v3    # "result":Landroid/os/Bundle;
    .end local v10    # "completion":Landroid/app/WallpaperManager$WallpaperSetCompletion;
    .end local v16    # "isLiveWallpaper":Z
    .end local v17    # "isKeyguardWallpaperShowing":Z
    :cond_10
    move v15, v14

    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v3, "WallpaperService not running"

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3056
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v3, Landroid/os/DeadSystemException;

    invoke-direct {v3}, Landroid/os/DeadSystemException;-><init>()V

    invoke-direct {v0, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static blacklist startBackupWallpaper(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "which"    # I
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "source"    # Ljava/lang/String;
    .param p4, "securityLevel"    # I
    .param p5, "sessionTime"    # Ljava/lang/String;
    .param p6, "saveKey"    # Ljava/lang/String;

    .line 4133
    const-string v1, ""

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-static/range {v0 .. v7}, Landroid/app/WallpaperManager;->startBackupWallpaper(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 4134
    return-void
.end method

.method public static blacklist startBackupWallpaper(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 15
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "which"    # I
    .param p3, "path"    # Ljava/lang/String;
    .param p4, "source"    # Ljava/lang/String;
    .param p5, "securityLevel"    # I
    .param p6, "sessionTime"    # Ljava/lang/String;
    .param p7, "saveKey"    # Ljava/lang/String;

    .line 4140
    new-instance v0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager;

    invoke-direct {v0}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager;-><init>()V

    .line 4141
    .local v0, "backupManager":Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager;
    sget-object v1, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startBackupWallpaper action="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v9, p1

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " which="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v10, p2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " path="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v11, p3

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " source="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v12, p4

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " securityLevel="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v13, p5

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " sessionTime="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v14, p6

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4147
    move-object v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager;->startBackupWallpaper(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 4148
    return-void
.end method

.method public static blacklist startBackupWallpaper(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "source"    # Ljava/lang/String;

    .line 4126
    const/4 v1, 0x1

    const/4 v4, 0x0

    const-string v5, ""

    const-string v6, ""

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v0 .. v6}, Landroid/app/WallpaperManager;->startBackupWallpaper(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 4127
    return-void
.end method

.method public static blacklist startRestoreWallpaper(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "which"    # I
    .param p2, "pathValue"    # Ljava/lang/String;
    .param p3, "source"    # Ljava/lang/String;
    .param p4, "securityLevel"    # I
    .param p5, "sessionKey"    # Ljava/lang/String;

    .line 4162
    const-string v1, ""

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Landroid/app/WallpaperManager;->startRestoreWallpaper(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 4163
    return-void
.end method

.method public static blacklist startRestoreWallpaper(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "which"    # I
    .param p3, "pathValue"    # Ljava/lang/String;
    .param p4, "source"    # Ljava/lang/String;
    .param p5, "securityLevel"    # I
    .param p6, "sessionKey"    # Ljava/lang/String;

    .line 4169
    new-instance v0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager;

    invoke-direct {v0}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager;-><init>()V

    .line 4170
    .local v0, "restoreManager":Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager;
    sget-object v1, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startRestoreWallpaper action="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " which="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " path="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " source="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " securityLevel="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4175
    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager;->startRestoreWallpaper(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 4176
    return-void
.end method

.method public static blacklist startRestoreWallpaper(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pathValue"    # Ljava/lang/String;
    .param p2, "source"    # Ljava/lang/String;

    .line 4155
    const/4 v1, 0x1

    const/4 v4, 0x0

    const-string v5, ""

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v0 .. v5}, Landroid/app/WallpaperManager;->startRestoreWallpaper(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 4156
    return-void
.end method

.method private final greylist-max-o validateRect(Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "rect"    # Landroid/graphics/Rect;

    .line 2905
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2906
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "visibleCrop rectangle must be valid and non-empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2908
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public blacklist addOnColorsChangedListener(Landroid/app/WallpaperManager$LocalWallpaperColorConsumer;Ljava/util/List;)V
    .locals 9
    .param p1, "callback"    # Landroid/app/WallpaperManager$LocalWallpaperColorConsumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/WallpaperManager$LocalWallpaperColorConsumer;",
            "Ljava/util/List<",
            "Landroid/graphics/RectF;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 2091
    .local p2, "regions":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/RectF;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/RectF;

    .line 2092
    .local v1, "region":Landroid/graphics/RectF;
    sget-object v2, Landroid/app/WallpaperManager;->LOCAL_COLOR_BOUNDS:Landroid/graphics/RectF;

    invoke-virtual {v2, v1}, Landroid/graphics/RectF;->contains(Landroid/graphics/RectF;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2096
    .end local v1    # "region":Landroid/graphics/RectF;
    goto :goto_0

    .line 2093
    .restart local v1    # "region":Landroid/graphics/RectF;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Regions must be within bounds "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2097
    .end local v1    # "region":Landroid/graphics/RectF;
    :cond_1
    sget-object v3, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    const/4 v6, 0x1

    iget-object v0, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    .line 2098
    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v7

    iget-object v0, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getDisplayId()I

    move-result v8

    .line 2097
    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v3 .. v8}, Landroid/app/WallpaperManager$Globals;->addOnColorsChangedListener(Landroid/app/WallpaperManager$LocalWallpaperColorConsumer;Ljava/util/List;III)V

    .line 2099
    return-void
.end method

.method public whitelist addOnColorsChangedListener(Landroid/app/WallpaperManager$OnColorsChangedListener;Landroid/os/Handler;)V
    .locals 1
    .param p1, "listener"    # Landroid/app/WallpaperManager$OnColorsChangedListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 2011
    iget-object v0, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Landroid/app/WallpaperManager;->addOnColorsChangedListener(Landroid/app/WallpaperManager$OnColorsChangedListener;Landroid/os/Handler;I)V

    .line 2012
    return-void
.end method

.method public greylist addOnColorsChangedListener(Landroid/app/WallpaperManager$OnColorsChangedListener;Landroid/os/Handler;I)V
    .locals 2
    .param p1, "listener"    # Landroid/app/WallpaperManager$OnColorsChangedListener;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "userId"    # I

    .line 2025
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    iget-object v1, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getDisplayId()I

    move-result v1

    invoke-virtual {v0, p1, p2, p3, v1}, Landroid/app/WallpaperManager$Globals;->addOnColorsChangedListener(Landroid/app/WallpaperManager$OnColorsChangedListener;Landroid/os/Handler;II)V

    .line 2026
    return-void
.end method

.method public blacklist addOnSemColorsChangedListener(Landroid/app/OnSemColorsChangedListener;Landroid/os/Handler;)V
    .locals 1
    .param p1, "listener"    # Landroid/app/OnSemColorsChangedListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 5540
    iget-object v0, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Landroid/app/WallpaperManager;->addOnSemColorsChangedListener(Landroid/app/OnSemColorsChangedListener;Landroid/os/Handler;I)V

    .line 5541
    return-void
.end method

.method public greylist addOnSemColorsChangedListener(Landroid/app/OnSemColorsChangedListener;Landroid/os/Handler;I)V
    .locals 2
    .param p1, "listener"    # Landroid/app/OnSemColorsChangedListener;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "userId"    # I

    .line 5547
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    iget-object v1, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getDisplayId()I

    move-result v1

    invoke-virtual {v0, p1, p2, p3, v1}, Landroid/app/WallpaperManager$Globals;->addOnSemColorsChangedListener(Landroid/app/OnSemColorsChangedListener;Landroid/os/Handler;II)V

    .line 5548
    return-void
.end method

.method public blacklist applyWallpaperColors(Ljava/util/List;III)V
    .locals 7
    .param p1, "colors"    # Ljava/util/List;
    .param p2, "sNum"    # I
    .param p3, "lNum"    # I
    .param p4, "which"    # I

    .line 5569
    iget-object v0, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    .line 5570
    .local v0, "callingPackage":Ljava/lang/String;
    sget-object v1, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "applyWallpaperColors : colors = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , sNum = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , lNum = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , which = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , calling pkg = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5575
    sget-object v1, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v1}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 5580
    :try_start_0
    sget-object v1, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v1}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v1

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, v0

    invoke-interface/range {v1 .. v6}, Landroid/app/IWallpaperManager;->applyWallpaperColors(Ljava/util/List;IIILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5583
    nop

    .line 5585
    return-void

    .line 5581
    :catch_0
    move-exception v1

    .line 5582
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 5576
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    sget-object v1, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v2, "WallpaperService not running"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5577
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Landroid/os/DeadSystemException;

    invoke-direct {v2}, Landroid/os/DeadSystemException;-><init>()V

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist canBackup()Z
    .locals 4

    .line 5728
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5730
    .local v0, "whichSet":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5731
    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5732
    sget-boolean v1, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_SUB_DISPLAY_MODE:Z

    if-eqz v1, :cond_0

    .line 5733
    const/16 v1, 0x11

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5734
    const/16 v1, 0x12

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5737
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 5738
    .local v2, "which":I
    invoke-virtual {p0, v2}, Landroid/app/WallpaperManager;->canBackup(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5739
    const/4 v1, 0x1

    return v1

    .line 5741
    .end local v2    # "which":I
    :cond_1
    goto :goto_0

    .line 5743
    :cond_2
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist canBackup(I)Z
    .locals 11
    .param p1, "which"    # I

    .line 5753
    invoke-virtual {p0, p1}, Landroid/app/WallpaperManager;->semGetWallpaperType(I)I

    move-result v0

    .line 5754
    .local v0, "wallpaperType":I
    iget-object v1, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 5755
    invoke-direct {p0, p1}, Landroid/app/WallpaperManager;->getSettingsName(I)Ljava/lang/String;

    move-result-object v2

    .line 5754
    const/4 v3, 0x1

    const/4 v4, -0x2

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 5757
    .local v1, "settingsType":I
    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v2

    .line 5758
    .local v4, "isCustomWallpaper":Z
    :goto_0
    invoke-virtual {p0, p1}, Landroid/app/WallpaperManager;->isWallpaperBackupAllowed(I)Z

    move-result v5

    .line 5759
    .local v5, "isBackupAllowed":Z
    const/4 v6, 0x3

    if-ne v1, v6, :cond_1

    move v7, v3

    goto :goto_1

    :cond_1
    move v7, v2

    .line 5760
    .local v7, "isDownloadedThemeWallpaper":Z
    :goto_1
    if-eqz v4, :cond_2

    if-eqz v5, :cond_2

    move v8, v3

    goto :goto_2

    :cond_2
    move v8, v2

    .line 5762
    .local v8, "canBackup":Z
    :goto_2
    if-nez v4, :cond_3

    if-eqz v7, :cond_4

    :cond_3
    if-eqz v5, :cond_4

    goto :goto_3

    :cond_4
    move v3, v2

    :goto_3
    move v2, v3

    .line 5767
    .end local v8    # "canBackup":Z
    .local v2, "canBackup":Z
    if-ne v0, v6, :cond_5

    if-nez v2, :cond_5

    .line 5768
    invoke-virtual {p0, p1}, Landroid/app/WallpaperManager;->semGetUri(I)Landroid/net/Uri;

    move-result-object v3

    .line 5769
    .local v3, "uri":Landroid/net/Uri;
    if-eqz v3, :cond_5

    .line 5770
    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    .line 5771
    .local v6, "stringUri":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 5772
    const-string/jumbo v8, "multipack://com.samsung.custompack"

    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 5773
    const/4 v2, 0x1

    .line 5779
    .end local v3    # "uri":Landroid/net/Uri;
    .end local v6    # "stringUri":Ljava/lang/String;
    :cond_5
    const-string v3, "canBackup: which = "

    if-eqz v2, :cond_6

    .line 5780
    invoke-static {p1}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isSystem(I)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 5781
    invoke-virtual {p0, p1}, Landroid/app/WallpaperManager;->isExternalLiveWallpaper(I)Z

    move-result v6

    .line 5782
    .local v6, "isLiveWallpaper":Z
    sget-object v8, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", isLiveWallpaper = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5783
    xor-int/lit8 v8, v6, 0x1

    move v2, v8

    .line 5787
    .end local v6    # "isLiveWallpaper":Z
    :cond_6
    sget-object v6, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, " canBackup = "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5788
    return v2
.end method

.method public whitelist clear()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3685
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v1, "clear()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3687
    invoke-virtual {p0}, Landroid/app/WallpaperManager;->isSubDisplay()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x10

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    .line 3688
    .local v0, "mode":I
    :goto_0
    or-int/lit8 v1, v0, 0x1

    .line 3689
    .local v1, "systemFlag":I
    or-int/lit8 v2, v0, 0x2

    .line 3691
    .local v2, "lockFlag":I
    iget-object v3, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-static {v3, v1, v4}, Landroid/app/WallpaperManager;->openDefaultWallpaper(Landroid/content/Context;IZ)Ljava/io/InputStream;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {p0, v3, v5, v4, v1}, Landroid/app/WallpaperManager;->setStream(Ljava/io/InputStream;Landroid/graphics/Rect;ZI)I

    .line 3692
    invoke-virtual {p0, v2}, Landroid/app/WallpaperManager;->clear(I)V

    .line 3694
    return-void
.end method

.method public whitelist clear(I)V
    .locals 3
    .param p1, "which"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3717
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clear, which = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3719
    invoke-static {p1}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isSystem(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isLock(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isSystemAndLock(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3720
    const-string v0, "Must specify a valid wallpaper category to set"

    .line 3721
    .local v0, "msg":Ljava/lang/String;
    sget-object v1, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v2, "Must specify a valid wallpaper category to set"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3722
    return-void

    .line 3725
    .end local v0    # "msg":Ljava/lang/String;
    :cond_0
    and-int/lit8 v0, p1, 0x3

    .line 3726
    .local v0, "type":I
    and-int/lit8 v1, p1, 0x3c

    .line 3728
    .local v1, "mode":I
    invoke-static {v0}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isSystemAndLock(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3729
    or-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v2}, Landroid/app/WallpaperManager;->clear(I)V

    .line 3730
    or-int/lit8 v2, v1, 0x2

    invoke-virtual {p0, v2}, Landroid/app/WallpaperManager;->clear(I)V

    .line 3731
    return-void

    .line 3734
    :cond_1
    iget-object v2, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    invoke-virtual {p0, p1, v2}, Landroid/app/WallpaperManager;->clearWallpaper(II)V

    .line 3736
    return-void
.end method

.method public blacklist clearAll()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4185
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v1, "clearAll"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4186
    invoke-virtual {p0}, Landroid/app/WallpaperManager;->clear()V

    .line 4187
    return-void
.end method

.method public blacklist clearBackupWallpaperGivenKey(I)V
    .locals 3
    .param p1, "key"    # I

    .line 5229
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clearBackupWallpaperGivenKey: key = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5231
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5236
    :try_start_0
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IWallpaperManager;->removeSnapshotByKey(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5239
    nop

    .line 5241
    return-void

    .line 5237
    :catch_0
    move-exception v0

    .line 5238
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 5232
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v1, "WallpaperService not running"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5233
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Landroid/os/DeadSystemException;

    invoke-direct {v1}, Landroid/os/DeadSystemException;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public whitelist clearWallpaper()V
    .locals 2

    .line 3365
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v1, "clearWallpaper()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3366
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Landroid/app/WallpaperManager;->appendCurrentModeIfNeeded(I)I

    move-result v0

    iget-object v1, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/app/WallpaperManager;->clearWallpaper(II)V

    .line 3367
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Landroid/app/WallpaperManager;->appendCurrentModeIfNeeded(I)I

    move-result v0

    iget-object v1, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/app/WallpaperManager;->clearWallpaper(II)V

    .line 3369
    return-void
.end method

.method public whitelist clearWallpaper(II)V
    .locals 6
    .param p1, "which"    # I
    .param p2, "userId"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3382
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clearWallpaper() called with: which = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "], userId = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3385
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 3391
    :try_start_0
    invoke-direct {p0, p1}, Landroid/app/WallpaperManager;->isRequestForDex(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isLock(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3392
    const/4 v0, 0x1

    .line 3393
    .local v0, "keyguardTransparency":I
    and-int/lit8 v1, p1, 0x3c

    .line 3396
    .local v1, "mode":I
    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 3397
    const/4 v2, 0x5

    .line 3398
    .local v2, "homeWhich":I
    const/4 v3, 0x5

    invoke-virtual {p0, v3}, Landroid/app/WallpaperManager;->getDefaultWallpaperType(I)I

    move-result v4

    const/4 v5, 0x7

    if-ne v4, v5, :cond_0

    .line 3399
    sget-object v4, Landroid/app/WallpaperManager;->sWallpaperResourcesInfo:Landroid/app/SemWallpaperResourcesInfo;

    invoke-virtual {v4, v3}, Landroid/app/SemWallpaperResourcesInfo;->getDefaultLiveWallpaperComponentName(I)Landroid/content/ComponentName;

    move-result-object v4

    .line 3400
    .local v4, "defaultComponent":Landroid/content/ComponentName;
    invoke-virtual {p0, p2, v3}, Landroid/app/WallpaperManager;->getWallpaperInfo(II)Landroid/app/WallpaperInfo;

    move-result-object v3

    .line 3401
    .local v3, "info":Landroid/app/WallpaperInfo;
    if-eqz v3, :cond_0

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Landroid/app/WallpaperInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 3402
    const/4 v0, 0x0

    .line 3406
    .end local v2    # "homeWhich":I
    .end local v3    # "info":Landroid/app/WallpaperInfo;
    .end local v4    # "defaultComponent":Landroid/content/ComponentName;
    :cond_0
    sget-object v2, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v2}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v2

    invoke-interface {v2, v1, v0}, Landroid/app/IWallpaperManager;->setKWPTypeLiveWallpaperWithMode(II)V

    .line 3409
    .end local v0    # "keyguardTransparency":I
    .end local v1    # "mode":I
    :cond_1
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Landroid/app/IWallpaperManager;->clearWallpaper(Ljava/lang/String;II)V

    .line 3411
    invoke-virtual {p0, p1}, Landroid/app/WallpaperManager;->semClearBackupWallpapers(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3415
    nop

    .line 3416
    return-void

    .line 3413
    :catch_0
    move-exception v0

    .line 3414
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 3386
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v1, "WallpaperService not running"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3387
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Landroid/os/DeadSystemException;

    invoke-direct {v1}, Landroid/os/DeadSystemException;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public whitelist clearWallpaperOffsets(Landroid/os/IBinder;)V
    .locals 6
    .param p1, "windowToken"    # Landroid/os/IBinder;

    .line 3661
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowSession()Landroid/view/IWindowSession;

    move-result-object v0

    const/high16 v2, -0x40800000    # -1.0f

    const/high16 v3, -0x40800000    # -1.0f

    const/high16 v4, -0x40800000    # -1.0f

    const/high16 v5, -0x40800000    # -1.0f

    move-object v1, p1

    invoke-interface/range {v0 .. v5}, Landroid/view/IWindowSession;->setWallpaperPosition(Landroid/os/IBinder;FFFF)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3665
    nop

    .line 3666
    return-void

    .line 3663
    :catch_0
    move-exception v0

    .line 3664
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist forceRebindWallpaper(I)V
    .locals 2
    .param p1, "which"    # I

    .line 2691
    :try_start_0
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/app/IWallpaperManager;->forceRebindWallpaper(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2694
    goto :goto_0

    .line 2692
    :catch_0
    move-exception v0

    .line 2693
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 2695
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public whitelist forgetLoadedWallpaper()V
    .locals 1

    .line 2280
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-virtual {v0}, Landroid/app/WallpaperManager$Globals;->forgetLoadedWallpaper()V

    .line 2281
    return-void
.end method

.method public blacklist getAnimatedPkgName(I)Ljava/lang/String;
    .locals 2
    .param p1, "which"    # I

    .line 5029
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5034
    :try_start_0
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IWallpaperManager;->getAnimatedPkgName(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 5035
    :catch_0
    move-exception v0

    .line 5036
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 5030
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v1, "WallpaperService not running"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5031
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Landroid/os/DeadSystemException;

    invoke-direct {v1}, Landroid/os/DeadSystemException;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public blacklist getAppliedScreen(Ljava/lang/String;Z)I
    .locals 4
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "forSubDisplay"    # Z

    .line 5485
    if-eqz p2, :cond_0

    const/16 v0, 0x10

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    .line 5486
    .local v0, "which":I
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    return v2

    .line 5487
    :cond_1
    if-eqz p2, :cond_2

    const/16 v1, 0x11

    goto :goto_1

    :cond_2
    const/4 v1, 0x1

    :goto_1
    invoke-direct {p0, v1, p1}, Landroid/app/WallpaperManager;->isApplied(ILjava/lang/String;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 5488
    const/4 v1, 0x2

    if-eqz p2, :cond_3

    const/16 v3, 0x12

    goto :goto_2

    :cond_3
    move v3, v1

    :goto_2
    invoke-direct {p0, v3, p1}, Landroid/app/WallpaperManager;->isApplied(ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    move v2, v1

    :cond_4
    or-int/2addr v0, v2

    .line 5489
    sget-object v1, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAppliedScreen: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5490
    return v0
.end method

.method public greylist getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 1881
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/WallpaperManager;->getBitmap(Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public greylist getBitmap(Z)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "hardware"    # Z

    .line 1897
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, v0}, Landroid/app/WallpaperManager;->getBitmap(ZIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getBitmap(ZIZ)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "hardware"    # Z
    .param p2, "which"    # I
    .param p3, "useCache"    # Z

    .line 1904
    iget-object v0, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/app/WallpaperManager;->getBitmapAsUser(IZIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getBitmapAsUser(IZ)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "userId"    # I
    .param p2, "hardware"    # Z

    .line 1919
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0, v0}, Landroid/app/WallpaperManager;->getBitmapAsUser(IZIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getBitmapAsUser(IZIZ)Landroid/graphics/Bitmap;
    .locals 9
    .param p1, "userId"    # I
    .param p2, "hardware"    # Z
    .param p3, "which"    # I
    .param p4, "useCache"    # Z

    .line 1926
    invoke-virtual {p0}, Landroid/app/WallpaperManager;->getColorManagementProxy()Landroid/app/WallpaperManager$ColorManagementProxy;

    move-result-object v8

    .line 1927
    .local v8, "cmProxy":Landroid/app/WallpaperManager$ColorManagementProxy;
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    iget-object v1, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    move v3, p3

    move v4, p1

    move v5, p2

    move-object v6, v8

    move v7, p4

    invoke-virtual/range {v0 .. v7}, Landroid/app/WallpaperManager$Globals;->peekWallpaperBitmap(Landroid/content/Context;ZIIZLandroid/app/WallpaperManager$ColorManagementProxy;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getBitmapForDex()Landroid/graphics/Bitmap;
    .locals 1

    .line 1937
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/WallpaperManager;->getBitmapForDex(Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getBitmapForDex(Z)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "hardware"    # Z

    .line 1946
    iget-object v0, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Landroid/app/WallpaperManager;->getBitmapForDexAsUser(IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getBitmapForDexAsUser(IZ)Landroid/graphics/Bitmap;
    .locals 8
    .param p1, "userId"    # I
    .param p2, "hardware"    # Z

    .line 1955
    invoke-virtual {p0}, Landroid/app/WallpaperManager;->getColorManagementProxy()Landroid/app/WallpaperManager$ColorManagementProxy;

    move-result-object v7

    .line 1956
    .local v7, "cmProxy":Landroid/app/WallpaperManager$ColorManagementProxy;
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    iget-object v1, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    const/16 v3, 0x9

    move v4, p1

    move v5, p2

    move-object v6, v7

    invoke-virtual/range {v0 .. v6}, Landroid/app/WallpaperManager$Globals;->peekWallpaperBitmap(Landroid/content/Context;ZIIZLandroid/app/WallpaperManager$ColorManagementProxy;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getBuiltInDrawable()Landroid/graphics/drawable/Drawable;
    .locals 7

    .line 1547
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/app/WallpaperManager;->getBuiltInDrawable(IIZFFI)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getBuiltInDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 7
    .param p1, "which"    # I

    .line 1559
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v6, p1

    invoke-virtual/range {v0 .. v6}, Landroid/app/WallpaperManager;->getBuiltInDrawable(IIZFFI)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getBuiltInDrawable(IIZFF)Landroid/graphics/drawable/Drawable;
    .locals 7
    .param p1, "outWidth"    # I
    .param p2, "outHeight"    # I
    .param p3, "scaleToFit"    # Z
    .param p4, "horizontalAlignment"    # F
    .param p5, "verticalAlignment"    # F

    .line 1578
    const/4 v6, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Landroid/app/WallpaperManager;->getBuiltInDrawable(IIZFFI)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getBuiltInDrawable(IIZFFI)Landroid/graphics/drawable/Drawable;
    .locals 19
    .param p1, "outWidth"    # I
    .param p2, "outHeight"    # I
    .param p3, "scaleToFit"    # Z
    .param p4, "horizontalAlignment"    # F
    .param p5, "verticalAlignment"    # F
    .param p6, "which"    # I

    .line 1600
    move-object/from16 v1, p0

    move/from16 v0, p1

    move/from16 v2, p2

    sget-object v3, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v3}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v3

    if-eqz v3, :cond_14

    .line 1609
    sget-boolean v3, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_SUB_DISPLAY_MODE:Z

    if-eqz v3, :cond_0

    .line 1610
    invoke-static/range {p6 .. p6}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->getMode(I)I

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroid/app/WallpaperManager;->isSubDisplay()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1611
    sget-object v3, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v4, "getBuiltInDrawable, add flag"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1612
    or-int/lit8 v3, p6, 0x10

    .end local p6    # "which":I
    .local v3, "which":I
    goto :goto_0

    .line 1616
    .end local v3    # "which":I
    .restart local p6    # "which":I
    :cond_0
    move/from16 v3, p6

    .end local p6    # "which":I
    .restart local v3    # "which":I
    :goto_0
    sget-object v4, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getBuiltInDrawable: which = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1618
    invoke-static {v3}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isSystem(I)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {v3}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isLock(I)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    .line 1620
    :cond_1
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Must request exactly one kind of wallpaper"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1623
    :cond_2
    :goto_1
    iget-object v4, v1, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 1624
    .local v4, "resources":Landroid/content/res/Resources;
    const/high16 v5, 0x3f800000    # 1.0f

    move/from16 v6, p4

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v7

    const/4 v8, 0x0

    invoke-static {v8, v7}, Ljava/lang/Math;->max(FF)F

    move-result v6

    .line 1625
    .end local p4    # "horizontalAlignment":F
    .local v6, "horizontalAlignment":F
    move/from16 v7, p5

    invoke-static {v5, v7}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-static {v8, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    .line 1627
    .end local p5    # "verticalAlignment":F
    .local v5, "verticalAlignment":F
    iget-object v7, v1, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-static {v7, v3}, Landroid/app/WallpaperManager;->openDefaultWallpaper(Landroid/content/Context;I)Ljava/io/InputStream;

    move-result-object v7

    .line 1628
    .local v7, "wpStream":Ljava/io/InputStream;
    const/4 v15, 0x0

    if-nez v7, :cond_3

    .line 1630
    sget-object v8, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "default wallpaper stream "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " is null"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1632
    return-object v15

    .line 1634
    :cond_3
    new-instance v9, Ljava/io/BufferedInputStream;

    invoke-direct {v9, v7}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 1635
    .local v9, "is":Ljava/io/InputStream;
    if-lez v0, :cond_13

    if-gtz v2, :cond_4

    move/from16 v18, v3

    move/from16 p5, v5

    move/from16 p6, v6

    move-object v1, v15

    goto/16 :goto_8

    .line 1643
    :cond_4
    new-instance v10, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v10}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1644
    .local v10, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v14, 0x1

    iput-boolean v14, v10, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 1645
    invoke-static {v9, v15, v10}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 1646
    iget v11, v10, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-eqz v11, :cond_12

    iget v11, v10, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-eqz v11, :cond_12

    .line 1647
    iget v13, v10, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 1648
    .local v13, "inWidth":I
    iget v12, v10, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 1657
    .end local v10    # "options":Landroid/graphics/BitmapFactory$Options;
    .local v12, "inHeight":I
    new-instance v10, Ljava/io/BufferedInputStream;

    iget-object v11, v1, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-static {v11, v3}, Landroid/app/WallpaperManager;->openDefaultWallpaper(Landroid/content/Context;I)Ljava/io/InputStream;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v11, v10

    .line 1661
    .end local v9    # "is":Ljava/io/InputStream;
    .local v11, "is":Ljava/io/InputStream;
    invoke-static {v13, v0}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 1662
    .end local p1    # "outWidth":I
    .local v10, "outWidth":I
    invoke-static {v12, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1663
    .end local p2    # "outHeight":I
    .local v2, "outHeight":I
    if-eqz p3, :cond_5

    .line 1664
    move v9, v13

    move/from16 p1, v10

    .end local v10    # "outWidth":I
    .restart local p1    # "outWidth":I
    move v10, v12

    move-object v8, v11

    .end local v11    # "is":Ljava/io/InputStream;
    .local v8, "is":Ljava/io/InputStream;
    move/from16 v11, p1

    move/from16 v16, v12

    .end local v12    # "inHeight":I
    .local v16, "inHeight":I
    move v12, v2

    move/from16 v17, v13

    .end local v13    # "inWidth":I
    .local v17, "inWidth":I
    move v13, v6

    move v15, v14

    move v14, v5

    invoke-static/range {v9 .. v14}, Landroid/app/WallpaperManager;->getMaxCropRect(IIIIFF)Landroid/graphics/RectF;

    move-result-object v0

    move/from16 v9, p1

    move-object v13, v0

    .local v0, "cropRectF":Landroid/graphics/RectF;
    goto :goto_2

    .line 1667
    .end local v0    # "cropRectF":Landroid/graphics/RectF;
    .end local v8    # "is":Ljava/io/InputStream;
    .end local v16    # "inHeight":I
    .end local v17    # "inWidth":I
    .end local p1    # "outWidth":I
    .restart local v10    # "outWidth":I
    .restart local v11    # "is":Ljava/io/InputStream;
    .restart local v12    # "inHeight":I
    .restart local v13    # "inWidth":I
    :cond_5
    move/from16 p1, v10

    move-object v8, v11

    move/from16 v16, v12

    move/from16 v17, v13

    move v15, v14

    .end local v10    # "outWidth":I
    .end local v11    # "is":Ljava/io/InputStream;
    .end local v12    # "inHeight":I
    .end local v13    # "inWidth":I
    .restart local v8    # "is":Ljava/io/InputStream;
    .restart local v16    # "inHeight":I
    .restart local v17    # "inWidth":I
    .restart local p1    # "outWidth":I
    move/from16 v9, p1

    .end local p1    # "outWidth":I
    .local v9, "outWidth":I
    sub-int v13, v17, v9

    int-to-float v0, v13

    mul-float/2addr v0, v6

    .line 1668
    .local v0, "left":F
    int-to-float v10, v9

    add-float/2addr v10, v0

    .line 1669
    .local v10, "right":F
    sub-int v12, v16, v2

    int-to-float v11, v12

    mul-float/2addr v11, v5

    .line 1670
    .local v11, "top":F
    int-to-float v12, v2

    add-float/2addr v12, v11

    .line 1671
    .local v12, "bottom":F
    new-instance v13, Landroid/graphics/RectF;

    invoke-direct {v13, v0, v11, v10, v12}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 1673
    .end local v0    # "left":F
    .end local v10    # "right":F
    .end local v11    # "top":F
    .end local v12    # "bottom":F
    .local v13, "cropRectF":Landroid/graphics/RectF;
    :goto_2
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    move-object v10, v0

    .line 1674
    .local v10, "roundedTrueCrop":Landroid/graphics/Rect;
    invoke-virtual {v13, v10}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    .line 1676
    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-lez v0, :cond_11

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-gtz v0, :cond_6

    move/from16 p2, v2

    move/from16 v18, v3

    move/from16 p5, v5

    move/from16 p6, v6

    goto/16 :goto_7

    .line 1682
    :cond_6
    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v0

    div-int/2addr v0, v9

    .line 1683
    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v11

    div-int/2addr v11, v2

    .line 1682
    invoke-static {v0, v11}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 1686
    .local v11, "scaleDownSampleSize":I
    const/4 v12, 0x0

    .line 1688
    .local v12, "decoder":Landroid/graphics/BitmapRegionDecoder;
    :try_start_0
    invoke-static {v8, v15}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/io/InputStream;Z)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v12, v0

    .line 1691
    goto :goto_3

    .line 1689
    :catch_0
    move-exception v0

    move-object v14, v0

    move-object v0, v14

    .line 1690
    .local v0, "e":Ljava/io/IOException;
    sget-object v14, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v15, "cannot open region decoder for default wallpaper"

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1693
    .end local v0    # "e":Ljava/io/IOException;
    :goto_3
    const/4 v0, 0x0

    .line 1694
    .local v0, "crop":Landroid/graphics/Bitmap;
    if-eqz v12, :cond_8

    .line 1696
    new-instance v14, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v14}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1697
    .local v14, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v15, 0x1

    if-le v11, v15, :cond_7

    .line 1698
    iput v11, v14, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 1700
    :cond_7
    invoke-virtual {v12, v10, v14}, Landroid/graphics/BitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1701
    invoke-virtual {v12}, Landroid/graphics/BitmapRegionDecoder;->recycle()V

    .line 1704
    .end local v14    # "options":Landroid/graphics/BitmapFactory$Options;
    :cond_8
    if-nez v0, :cond_b

    .line 1707
    new-instance v14, Ljava/io/BufferedInputStream;

    iget-object v15, v1, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-static {v15, v3}, Landroid/app/WallpaperManager;->openDefaultWallpaper(Landroid/content/Context;I)Ljava/io/InputStream;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v8, v14

    .line 1708
    const/4 v14, 0x0

    .line 1709
    .local v14, "fullSize":Landroid/graphics/Bitmap;
    new-instance v15, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v15}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1710
    .local v15, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v1, 0x1

    if-le v11, v1, :cond_9

    .line 1711
    iput v11, v15, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 1713
    :cond_9
    const/4 v1, 0x0

    invoke-static {v8, v1, v15}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v14

    .line 1714
    if-eqz v14, :cond_a

    .line 1715
    iget v1, v10, Landroid/graphics/Rect;->left:I

    move-object/from16 p2, v0

    .end local v0    # "crop":Landroid/graphics/Bitmap;
    .local p2, "crop":Landroid/graphics/Bitmap;
    iget v0, v10, Landroid/graphics/Rect;->top:I

    .line 1716
    move/from16 v18, v3

    .end local v3    # "which":I
    .local v18, "which":I
    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v3

    .line 1717
    move/from16 p5, v5

    .end local v5    # "verticalAlignment":F
    .restart local p5    # "verticalAlignment":F
    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v5

    .line 1715
    invoke-static {v14, v1, v0, v3, v5}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    .end local p2    # "crop":Landroid/graphics/Bitmap;
    .restart local v0    # "crop":Landroid/graphics/Bitmap;
    goto :goto_4

    .line 1714
    .end local v18    # "which":I
    .end local p5    # "verticalAlignment":F
    .restart local v3    # "which":I
    .restart local v5    # "verticalAlignment":F
    :cond_a
    move-object/from16 p2, v0

    move/from16 v18, v3

    move/from16 p5, v5

    .end local v0    # "crop":Landroid/graphics/Bitmap;
    .end local v3    # "which":I
    .end local v5    # "verticalAlignment":F
    .restart local v18    # "which":I
    .restart local p2    # "crop":Landroid/graphics/Bitmap;
    .restart local p5    # "verticalAlignment":F
    goto :goto_4

    .line 1704
    .end local v14    # "fullSize":Landroid/graphics/Bitmap;
    .end local v15    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v18    # "which":I
    .end local p2    # "crop":Landroid/graphics/Bitmap;
    .end local p5    # "verticalAlignment":F
    .restart local v0    # "crop":Landroid/graphics/Bitmap;
    .restart local v3    # "which":I
    .restart local v5    # "verticalAlignment":F
    :cond_b
    move-object/from16 p2, v0

    move/from16 v18, v3

    move/from16 p5, v5

    .line 1721
    .end local v3    # "which":I
    .end local v5    # "verticalAlignment":F
    .restart local v18    # "which":I
    .restart local p5    # "verticalAlignment":F
    :goto_4
    if-nez v0, :cond_c

    .line 1722
    sget-object v1, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v3, "cannot decode default wallpaper"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1723
    const/4 v1, 0x0

    return-object v1

    .line 1727
    :cond_c
    if-lez v9, :cond_10

    if-lez v2, :cond_10

    .line 1728
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-ne v1, v9, :cond_e

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-eq v1, v2, :cond_d

    goto :goto_5

    :cond_d
    move/from16 p2, v2

    move/from16 p6, v6

    goto :goto_6

    .line 1729
    :cond_e
    :goto_5
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 1730
    .local v1, "m":Landroid/graphics/Matrix;
    new-instance v3, Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    int-to-float v14, v14

    const/4 v15, 0x0

    invoke-direct {v3, v15, v15, v5, v14}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 1731
    .local v3, "cropRect":Landroid/graphics/RectF;
    new-instance v5, Landroid/graphics/RectF;

    int-to-float v14, v9

    move/from16 p6, v6

    .end local v6    # "horizontalAlignment":F
    .local p6, "horizontalAlignment":F
    int-to-float v6, v2

    invoke-direct {v5, v15, v15, v14, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 1732
    .local v5, "returnRect":Landroid/graphics/RectF;
    sget-object v6, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v1, v3, v5, v6}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 1733
    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v6

    float-to-int v6, v6

    .line 1734
    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v14

    float-to-int v14, v14

    sget-object v15, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 1733
    invoke-static {v6, v14, v15}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 1735
    .local v6, "tmp":Landroid/graphics/Bitmap;
    if-eqz v6, :cond_f

    .line 1736
    new-instance v14, Landroid/graphics/Canvas;

    invoke-direct {v14, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1737
    .local v14, "c":Landroid/graphics/Canvas;
    new-instance v15, Landroid/graphics/Paint;

    invoke-direct {v15}, Landroid/graphics/Paint;-><init>()V

    .line 1738
    .local v15, "p":Landroid/graphics/Paint;
    move/from16 p2, v2

    const/4 v2, 0x1

    .end local v2    # "outHeight":I
    .local p2, "outHeight":I
    invoke-virtual {v15, v2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 1739
    invoke-virtual {v14, v0, v1, v15}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 1740
    move-object v0, v6

    goto :goto_6

    .line 1735
    .end local v14    # "c":Landroid/graphics/Canvas;
    .end local v15    # "p":Landroid/graphics/Paint;
    .end local p2    # "outHeight":I
    .restart local v2    # "outHeight":I
    :cond_f
    move/from16 p2, v2

    .end local v2    # "outHeight":I
    .restart local p2    # "outHeight":I
    goto :goto_6

    .line 1727
    .end local v1    # "m":Landroid/graphics/Matrix;
    .end local v3    # "cropRect":Landroid/graphics/RectF;
    .end local v5    # "returnRect":Landroid/graphics/RectF;
    .end local p2    # "outHeight":I
    .end local p6    # "horizontalAlignment":F
    .restart local v2    # "outHeight":I
    .local v6, "horizontalAlignment":F
    :cond_10
    move/from16 p2, v2

    move/from16 p6, v6

    .line 1744
    .end local v2    # "outHeight":I
    .end local v6    # "horizontalAlignment":F
    .restart local p2    # "outHeight":I
    .restart local p6    # "horizontalAlignment":F
    :goto_6
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v4, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v1

    .line 1676
    .end local v0    # "crop":Landroid/graphics/Bitmap;
    .end local v11    # "scaleDownSampleSize":I
    .end local v12    # "decoder":Landroid/graphics/BitmapRegionDecoder;
    .end local v18    # "which":I
    .end local p2    # "outHeight":I
    .end local p5    # "verticalAlignment":F
    .end local p6    # "horizontalAlignment":F
    .restart local v2    # "outHeight":I
    .local v3, "which":I
    .local v5, "verticalAlignment":F
    .restart local v6    # "horizontalAlignment":F
    :cond_11
    move/from16 p2, v2

    move/from16 v18, v3

    move/from16 p5, v5

    move/from16 p6, v6

    .line 1677
    .end local v2    # "outHeight":I
    .end local v3    # "which":I
    .end local v5    # "verticalAlignment":F
    .end local v6    # "horizontalAlignment":F
    .restart local v18    # "which":I
    .restart local p2    # "outHeight":I
    .restart local p5    # "verticalAlignment":F
    .restart local p6    # "horizontalAlignment":F
    :goto_7
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v1, "crop has bad values for full size image"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1678
    const/4 v1, 0x0

    return-object v1

    .line 1646
    .end local v8    # "is":Ljava/io/InputStream;
    .end local v13    # "cropRectF":Landroid/graphics/RectF;
    .end local v16    # "inHeight":I
    .end local v17    # "inWidth":I
    .end local v18    # "which":I
    .end local p5    # "verticalAlignment":F
    .end local p6    # "horizontalAlignment":F
    .restart local v3    # "which":I
    .restart local v5    # "verticalAlignment":F
    .restart local v6    # "horizontalAlignment":F
    .local v9, "is":Ljava/io/InputStream;
    .local v10, "options":Landroid/graphics/BitmapFactory$Options;
    .restart local p1    # "outWidth":I
    :cond_12
    move/from16 v18, v3

    move/from16 p5, v5

    move/from16 p6, v6

    move-object v1, v15

    .line 1650
    .end local v3    # "which":I
    .end local v5    # "verticalAlignment":F
    .end local v6    # "horizontalAlignment":F
    .restart local v18    # "which":I
    .restart local p5    # "verticalAlignment":F
    .restart local p6    # "horizontalAlignment":F
    sget-object v3, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v5, "default wallpaper dimensions are 0"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1651
    return-object v1

    .line 1635
    .end local v10    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v18    # "which":I
    .end local p5    # "verticalAlignment":F
    .end local p6    # "horizontalAlignment":F
    .restart local v3    # "which":I
    .restart local v5    # "verticalAlignment":F
    .restart local v6    # "horizontalAlignment":F
    :cond_13
    move/from16 v18, v3

    move/from16 p5, v5

    move/from16 p6, v6

    move-object v1, v15

    .line 1636
    .end local v3    # "which":I
    .end local v5    # "verticalAlignment":F
    .end local v6    # "horizontalAlignment":F
    .restart local v18    # "which":I
    .restart local p5    # "verticalAlignment":F
    .restart local p6    # "horizontalAlignment":F
    :goto_8
    invoke-static {v9, v1, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1637
    .local v1, "fullSize":Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v3, v4, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v3

    .line 1601
    .end local v1    # "fullSize":Landroid/graphics/Bitmap;
    .end local v4    # "resources":Landroid/content/res/Resources;
    .end local v7    # "wpStream":Ljava/io/InputStream;
    .end local v9    # "is":Ljava/io/InputStream;
    .end local v18    # "which":I
    .restart local p4    # "horizontalAlignment":F
    .local p6, "which":I
    :cond_14
    move/from16 v6, p4

    move/from16 v7, p5

    sget-object v1, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v3, "WallpaperService not running"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1602
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v3, Landroid/os/DeadSystemException;

    invoke-direct {v3}, Landroid/os/DeadSystemException;-><init>()V

    invoke-direct {v1, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist getColorManagementProxy()Landroid/app/WallpaperManager$ColorManagementProxy;
    .locals 1

    .line 4084
    iget-object v0, p0, Landroid/app/WallpaperManager;->mCmProxy:Landroid/app/WallpaperManager$ColorManagementProxy;

    return-object v0
.end method

.method public blacklist getColorPalettes(Landroid/graphics/Bitmap;)Ljava/util/List;
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            ")",
            "Ljava/util/List<",
            "[[I>;"
        }
    .end annotation

    .line 5640
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/app/WallpaperManager;->getColorPalettes(Landroid/graphics/Bitmap;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getColorPalettes(Landroid/graphics/Bitmap;Z)Ljava/util/List;
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "fromGoogle"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Z)",
            "Ljava/util/List<",
            "[[I>;"
        }
    .end annotation

    .line 5651
    invoke-virtual {p0, p1, p2}, Landroid/app/WallpaperManager;->getSeedColors(Landroid/graphics/Bitmap;Z)[I

    move-result-object v0

    .line 5652
    .local v0, "seeds":[I
    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    .line 5653
    invoke-virtual {p0, v0, p2}, Landroid/app/WallpaperManager;->getColorPalettes([IZ)Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 5656
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public blacklist getColorPalettes([I)Ljava/util/List;
    .locals 1
    .param p1, "seeds"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List<",
            "[[I>;"
        }
    .end annotation

    .line 5594
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/app/WallpaperManager;->getColorPalettes([IZ)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getColorPalettes([IZ)Ljava/util/List;
    .locals 8
    .param p1, "seeds"    # [I
    .param p2, "fromGoogle"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([IZ)",
            "Ljava/util/List<",
            "[[I>;"
        }
    .end annotation

    .line 5605
    if-eqz p1, :cond_4

    array-length v0, p1

    if-gtz v0, :cond_0

    goto :goto_3

    .line 5609
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5610
    .local v0, "listPalettes":Ljava/util/List;, "Ljava/util/List<[[I>;"
    if-eqz p2, :cond_2

    .line 5611
    invoke-static {p1}, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator;->converAccent1ToSeedColors([I)[I

    move-result-object v1

    .line 5612
    .local v1, "convertedSeeds":[I
    if-eqz v1, :cond_1

    array-length v2, v1

    if-lez v2, :cond_1

    .line 5613
    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget v5, v1, v4

    .line 5614
    .local v5, "seed":I
    new-instance v6, Lcom/samsung/android/wallpaper/colortheme/monet/ColorScheme;

    invoke-direct {v6, v5, v3}, Lcom/samsung/android/wallpaper/colortheme/monet/ColorScheme;-><init>(IZ)V

    .line 5615
    .local v6, "colorScheme":Lcom/samsung/android/wallpaper/colortheme/monet/ColorScheme;
    new-instance v7, Lcom/samsung/android/wallpaper/colortheme/ColorPalette;

    invoke-direct {v7, v6}, Lcom/samsung/android/wallpaper/colortheme/ColorPalette;-><init>(Lcom/samsung/android/wallpaper/colortheme/monet/ColorScheme;)V

    invoke-virtual {v7}, Lcom/samsung/android/wallpaper/colortheme/ColorPalette;->getTable()[[I

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5613
    .end local v5    # "seed":I
    .end local v6    # "colorScheme":Lcom/samsung/android/wallpaper/colortheme/monet/ColorScheme;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 5618
    .end local v1    # "convertedSeeds":[I
    :cond_1
    goto :goto_2

    .line 5619
    :cond_2
    new-instance v1, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator;

    invoke-direct {v1}, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator;-><init>()V

    .line 5620
    .local v1, "paletteCreator":Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator;
    invoke-virtual {v1, p1}, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator;->setColors([I)V

    .line 5621
    invoke-virtual {v1}, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator;->generateColorPalette()V

    .line 5622
    invoke-virtual {v1}, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator;->getColorPalettes()Ljava/util/List;

    move-result-object v2

    .line 5623
    .local v2, "palettes":Ljava/util/List;, "Ljava/util/List<[[I>;"
    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_3

    .line 5624
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 5625
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[I

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5624
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 5630
    .end local v1    # "paletteCreator":Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator;
    .end local v2    # "palettes":Ljava/util/List;, "Ljava/util/List<[[I>;"
    .end local v3    # "i":I
    :cond_3
    :goto_2
    return-object v0

    .line 5606
    .end local v0    # "listPalettes":Ljava/util/List;, "Ljava/util/List<[[I>;"
    :cond_4
    :goto_3
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getCropAndSetWallpaperIntent(Landroid/net/Uri;)Landroid/content/Intent;
    .locals 8
    .param p1, "imageUri"    # Landroid/net/Uri;

    .line 2370
    if-eqz p1, :cond_3

    .line 2374
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2379
    iget-object v0, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 2380
    .local v0, "packageManager":Landroid/content/pm/PackageManager;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.service.wallpaper.CROP_AND_SET_WALLPAPER"

    invoke-direct {v1, v2, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2382
    .local v1, "cropAndSetWallpaperIntent":Landroid/content/Intent;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2385
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "android.intent.category.HOME"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 2386
    .local v2, "homeIntent":Landroid/content/Intent;
    const/high16 v3, 0x10000

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    .line 2388
    .local v3, "resolvedHome":Landroid/content/pm/ResolveInfo;
    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 2389
    iget-object v5, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 2391
    invoke-virtual {v0, v1, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    .line 2393
    .local v5, "cropAppList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 2394
    return-object v1

    .line 2399
    .end local v5    # "cropAppList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_0
    iget-object v5, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    const v6, 0x10403ad

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 2401
    .local v5, "cropperPackage":Ljava/lang/String;
    invoke-virtual {v1, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 2402
    invoke-virtual {v0, v1, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    .line 2404
    .local v4, "cropAppList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_1

    .line 2405
    return-object v1

    .line 2409
    :cond_1
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Cannot use passed URI to set wallpaper; check that the type returned by ContentProvider matches image/*"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 2375
    .end local v0    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v1    # "cropAndSetWallpaperIntent":Landroid/content/Intent;
    .end local v2    # "homeIntent":Landroid/content/Intent;
    .end local v3    # "resolvedHome":Landroid/content/pm/ResolveInfo;
    .end local v4    # "cropAppList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v5    # "cropperPackage":Ljava/lang/String;
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Image URI must be of the content scheme type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2371
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Image URI must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getDefaultMultipackStyle(I)Ljava/lang/String;
    .locals 1
    .param p1, "which"    # I

    .line 3858
    sget-object v0, Landroid/app/WallpaperManager;->sWallpaperResourcesInfo:Landroid/app/SemWallpaperResourcesInfo;

    invoke-virtual {v0, p1}, Landroid/app/SemWallpaperResourcesInfo;->getDefaultMultipackStyle(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getDefaultWallpaperType(I)I
    .locals 2
    .param p1, "which"    # I

    .line 3853
    sget-object v0, Landroid/app/WallpaperManager;->sWallpaperResourcesInfo:Landroid/app/SemWallpaperResourcesInfo;

    iget-object v1, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/app/WallpaperManager;->getDeviceColor(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/app/SemWallpaperResourcesInfo;->getDefaultWallpaperType(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public whitelist getDesiredMinimumHeight()I
    .locals 2

    .line 3228
    iget-object v0, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    const-string v1, "getDesiredMinimumHeight"

    invoke-static {v0, v1}, Landroid/os/StrictMode;->assertUiContext(Landroid/content/Context;Ljava/lang/String;)V

    .line 3229
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3234
    :try_start_0
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getDisplayId()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/app/IWallpaperManager;->getHeightHint(I)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 3235
    :catch_0
    move-exception v0

    .line 3236
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 3230
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v1, "WallpaperService not running"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3231
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Landroid/os/DeadSystemException;

    invoke-direct {v1}, Landroid/os/DeadSystemException;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public whitelist getDesiredMinimumWidth()I
    .locals 2

    .line 3198
    iget-object v0, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    const-string v1, "getDesiredMinimumWidth"

    invoke-static {v0, v1}, Landroid/os/StrictMode;->assertUiContext(Landroid/content/Context;Ljava/lang/String;)V

    .line 3199
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3204
    :try_start_0
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getDisplayId()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/app/IWallpaperManager;->getWidthHint(I)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 3205
    :catch_0
    move-exception v0

    .line 3206
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 3200
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v1, "WallpaperService not running"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3201
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Landroid/os/DeadSystemException;

    invoke-direct {v1}, Landroid/os/DeadSystemException;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public whitelist getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 4

    .line 1403
    invoke-virtual {p0}, Landroid/app/WallpaperManager;->getColorManagementProxy()Landroid/app/WallpaperManager$ColorManagementProxy;

    move-result-object v0

    .line 1404
    .local v0, "cmProxy":Landroid/app/WallpaperManager$ColorManagementProxy;
    sget-object v1, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    iget-object v2, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3, v3, v0}, Landroid/app/WallpaperManager$Globals;->peekWallpaperBitmap(Landroid/content/Context;ZILandroid/app/WallpaperManager$ColorManagementProxy;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1405
    .local v1, "bm":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_0

    .line 1406
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v3, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 1407
    .local v2, "dr":Landroid/graphics/drawable/Drawable;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    .line 1408
    return-object v2

    .line 1410
    .end local v2    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_0
    const/4 v2, 0x0

    return-object v2
.end method

.method public blacklist getDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "which"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1417
    invoke-virtual {p0, p1}, Landroid/app/WallpaperManager;->semGetDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getFastDrawable()Landroid/graphics/drawable/Drawable;
    .locals 4

    .line 1804
    invoke-virtual {p0}, Landroid/app/WallpaperManager;->getColorManagementProxy()Landroid/app/WallpaperManager$ColorManagementProxy;

    move-result-object v0

    .line 1805
    .local v0, "cmProxy":Landroid/app/WallpaperManager$ColorManagementProxy;
    sget-object v1, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    iget-object v2, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3, v3, v0}, Landroid/app/WallpaperManager$Globals;->peekWallpaperBitmap(Landroid/content/Context;ZILandroid/app/WallpaperManager$ColorManagementProxy;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1806
    .local v1, "bm":Landroid/graphics/Bitmap;
    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 1807
    new-instance v3, Landroid/app/WallpaperManager$FastBitmapDrawable;

    invoke-direct {v3, v1, v2}, Landroid/app/WallpaperManager$FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;Landroid/app/WallpaperManager$FastBitmapDrawable-IA;)V

    return-object v3

    .line 1809
    :cond_0
    return-object v2
.end method

.method public blacklist getHighlightFilterState(I)I
    .locals 2
    .param p1, "which"    # I

    .line 4431
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4436
    :try_start_0
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IWallpaperManager;->getHighlightFilterState(I)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 4437
    :catch_0
    move-exception v0

    .line 4438
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 4432
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v1, "WallpaperService not running"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4433
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Landroid/os/DeadSystemException;

    invoke-direct {v1}, Landroid/os/DeadSystemException;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public greylist getIWallpaperManager()Landroid/app/IWallpaperManager;
    .locals 1

    .line 1365
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getLidState()I
    .locals 3

    .line 5440
    const/4 v0, -0x1

    .line 5441
    .local v0, "state":I
    sget-object v1, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v1}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 5446
    :try_start_0
    sget-object v1, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v1}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IWallpaperManager;->getLidState()I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 5449
    nop

    .line 5451
    return v0

    .line 5447
    :catch_0
    move-exception v1

    .line 5448
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 5442
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    sget-object v1, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v2, "WallpaperService not running"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5443
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Landroid/os/DeadSystemException;

    invoke-direct {v2}, Landroid/os/DeadSystemException;-><init>()V

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist getLockWallpaperFile(I)Landroid/os/ParcelFileDescriptor;
    .locals 1
    .param p1, "userId"    # I

    .line 2254
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Landroid/app/WallpaperManager;->getLockWallpaperFile(II)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getLockWallpaperFile(II)Landroid/os/ParcelFileDescriptor;
    .locals 3
    .param p1, "userId"    # I
    .param p2, "which"    # I

    .line 2259
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2264
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2265
    .local v0, "outParams":Landroid/os/Bundle;
    sget-object v1, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v1}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2, v0, p1, p2}, Landroid/app/IWallpaperManager;->getLockWallpaper(Landroid/app/IWallpaperManagerCallback;Landroid/os/Bundle;II)Landroid/os/ParcelFileDescriptor;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 2266
    .end local v0    # "outParams":Landroid/os/Bundle;
    :catch_0
    move-exception v0

    .line 2267
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 2260
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v1, "WallpaperService not running"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2261
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Landroid/os/DeadSystemException;

    invoke-direct {v1}, Landroid/os/DeadSystemException;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public blacklist getLockWallpaperType()I
    .locals 1

    .line 4374
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/app/WallpaperManager;->semGetWallpaperType(I)I

    move-result v0

    return v0
.end method

.method public blacklist getMotionWallpaperPkgName(I)Ljava/lang/String;
    .locals 2
    .param p1, "which"    # I

    .line 4974
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4979
    :try_start_0
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IWallpaperManager;->getMotionWallpaperPkgName(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 4980
    :catch_0
    move-exception v0

    .line 4981
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 4975
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v1, "WallpaperService not running"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4976
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Landroid/os/DeadSystemException;

    invoke-direct {v1}, Landroid/os/DeadSystemException;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public blacklist getSeedColors(I)[I
    .locals 1
    .param p1, "which"    # I

    .line 5666
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/app/WallpaperManager;->getSeedColors(IZ)[I

    move-result-object v0

    return-object v0
.end method

.method public blacklist getSeedColors(IZ)[I
    .locals 3
    .param p1, "which"    # I
    .param p2, "fromGoogle"    # Z

    .line 5677
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSeedColors: which = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", fromGoogle = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5679
    invoke-virtual {p0, p1}, Landroid/app/WallpaperManager;->semGetWallpaperColors(I)Landroid/app/SemWallpaperColors;

    move-result-object v0

    .line 5680
    .local v0, "colors":Landroid/app/SemWallpaperColors;
    const/4 v1, 0x0

    .line 5681
    .local v1, "seeds":[I
    if-eqz v0, :cond_0

    .line 5682
    invoke-virtual {v0}, Landroid/app/SemWallpaperColors;->getSeedColors()[I

    move-result-object v1

    .line 5685
    :cond_0
    if-eqz p2, :cond_1

    .line 5686
    invoke-static {v1}, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator;->converAccent1ToSeedColors([I)[I

    move-result-object v2

    return-object v2

    .line 5688
    :cond_1
    return-object v1
.end method

.method public blacklist getSeedColors(Landroid/graphics/Bitmap;)[I
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 5699
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/app/WallpaperManager;->getSeedColors(Landroid/graphics/Bitmap;Z)[I

    move-result-object v0

    return-object v0
.end method

.method public blacklist getSeedColors(Landroid/graphics/Bitmap;Z)[I
    .locals 3
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "fromGoogle"    # Z

    .line 5710
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSeedColors: bitmap = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", fromGoogle = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5712
    invoke-static {p1}, Lcom/samsung/android/wallpaper/colortheme/ColorThemeExtractor;->getSeedColors(Landroid/graphics/Bitmap;)[I

    move-result-object v0

    .line 5714
    .local v0, "seeds":[I
    if-eqz p2, :cond_0

    .line 5715
    invoke-static {v0}, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator;->converAccent1ToSeedColors([I)[I

    move-result-object v1

    return-object v1

    .line 5717
    :cond_0
    return-object v0
.end method

.method public blacklist getSnapshotCount()I
    .locals 1

    .line 5331
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/app/WallpaperManager;->getSnapshotCount(I)I

    move-result v0

    return v0
.end method

.method public blacklist getSnapshotCount(I)I
    .locals 2
    .param p1, "which"    # I

    .line 5337
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5342
    :try_start_0
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IWallpaperManager;->getSnapshotCount(I)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 5343
    :catch_0
    move-exception v0

    .line 5344
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 5338
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v1, "getSnapshotCount: WallpaperService not running"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5339
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Landroid/os/DeadSystemException;

    invoke-direct {v1}, Landroid/os/DeadSystemException;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public blacklist getVideoColor()Ljava/lang/String;
    .locals 2

    .line 4733
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4738
    :try_start_0
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IWallpaperManager;->getVideoColor()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 4739
    :catch_0
    move-exception v0

    .line 4740
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 4734
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v1, "WallpaperService not running"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4735
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Landroid/os/DeadSystemException;

    invoke-direct {v1}, Landroid/os/DeadSystemException;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public blacklist getVideoFileName(I)Ljava/lang/String;
    .locals 2
    .param p1, "which"    # I

    .line 4747
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4752
    :try_start_0
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IWallpaperManager;->getVideoFileName(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 4753
    :catch_0
    move-exception v0

    .line 4754
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 4748
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v1, "WallpaperService not running"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4749
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Landroid/os/DeadSystemException;

    invoke-direct {v1}, Landroid/os/DeadSystemException;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public blacklist getVideoFilePath(I)Ljava/lang/String;
    .locals 2
    .param p1, "which"    # I

    .line 4701
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4706
    :try_start_0
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IWallpaperManager;->getVideoFilePath(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 4707
    :catch_0
    move-exception v0

    .line 4708
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 4702
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v1, "WallpaperService not running"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4703
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Landroid/os/DeadSystemException;

    invoke-direct {v1}, Landroid/os/DeadSystemException;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public blacklist getVideoPackage()Ljava/lang/String;
    .locals 1

    .line 4715
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/app/WallpaperManager;->getVideoPackage(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getVideoPackage(I)Ljava/lang/String;
    .locals 2
    .param p1, "which"    # I

    .line 4719
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4724
    :try_start_0
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IWallpaperManager;->getVideoPackage(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 4725
    :catch_0
    move-exception v0

    .line 4726
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 4720
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v1, "WallpaperService not running"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4721
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Landroid/os/DeadSystemException;

    invoke-direct {v1}, Landroid/os/DeadSystemException;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public whitelist getWallpaperColors(I)Landroid/app/WallpaperColors;
    .locals 1
    .param p1, "which"    # I

    .line 2068
    iget-object v0, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/app/WallpaperManager;->getWallpaperColors(II)Landroid/app/WallpaperColors;

    move-result-object v0

    return-object v0
.end method

.method public greylist getWallpaperColors(II)Landroid/app/WallpaperColors;
    .locals 2
    .param p1, "which"    # I
    .param p2, "userId"    # I

    .line 2082
    iget-object v0, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    const-string v1, "getWallpaperColors"

    invoke-static {v0, v1}, Landroid/os/StrictMode;->assertUiContext(Landroid/content/Context;Ljava/lang/String;)V

    .line 2083
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    iget-object v1, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getDisplayId()I

    move-result v1

    invoke-virtual {v0, p1, p2, v1}, Landroid/app/WallpaperManager$Globals;->getWallpaperColors(III)Landroid/app/WallpaperColors;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getWallpaperComponentExtras(II)Landroid/os/Bundle;
    .locals 2
    .param p1, "which"    # I
    .param p2, "userId"    # I

    .line 4471
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4476
    :try_start_0
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IWallpaperManager;->getWallpaperComponentExtras(II)Landroid/os/Bundle;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 4477
    :catch_0
    move-exception v0

    .line 4478
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 4472
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v1, "WallpaperService not running"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4473
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Landroid/os/DeadSystemException;

    invoke-direct {v1}, Landroid/os/DeadSystemException;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public whitelist getWallpaperDimAmount()F
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3458
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3463
    :try_start_0
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IWallpaperManager;->getWallpaperDimAmount()F

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 3464
    :catch_0
    move-exception v0

    .line 3465
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 3459
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v1, "WallpaperService not running"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3460
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Landroid/os/DeadSystemException;

    invoke-direct {v1}, Landroid/os/DeadSystemException;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public blacklist getWallpaperExtras(II)Landroid/os/Bundle;
    .locals 2
    .param p1, "which"    # I
    .param p2, "userId"    # I

    .line 4485
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4490
    :try_start_0
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IWallpaperManager;->getWallpaperExtras(II)Landroid/os/Bundle;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 4491
    :catch_0
    move-exception v0

    .line 4492
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 4486
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v1, "WallpaperService not running"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4487
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Landroid/os/DeadSystemException;

    invoke-direct {v1}, Landroid/os/DeadSystemException;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public whitelist getWallpaperFile(I)Landroid/os/ParcelFileDescriptor;
    .locals 1
    .param p1, "which"    # I

    .line 1992
    iget-object v0, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/app/WallpaperManager;->getWallpaperFile(II)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public greylist getWallpaperFile(II)Landroid/os/ParcelFileDescriptor;
    .locals 1
    .param p1, "which"    # I
    .param p2, "userId"    # I

    .line 2213
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/app/WallpaperManager;->getWallpaperFile(III)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getWallpaperFile(III)Landroid/os/ParcelFileDescriptor;
    .locals 1
    .param p1, "which"    # I
    .param p2, "userId"    # I
    .param p3, "kwpType"    # I

    .line 2219
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/app/WallpaperManager;->getWallpaperFile(IIIZ)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getWallpaperFile(IZ)Landroid/os/ParcelFileDescriptor;
    .locals 2
    .param p1, "which"    # I
    .param p2, "orig"    # Z

    .line 1999
    iget-object v0, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, p2}, Landroid/app/WallpaperManager;->getWallpaperFile(IIIZ)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getWallpaperId(I)I
    .locals 1
    .param p1, "which"    # I

    .line 2335
    iget-object v0, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/app/WallpaperManager;->getWallpaperIdForUser(II)I

    move-result v0

    return v0
.end method

.method public greylist-max-o getWallpaperIdForUser(II)I
    .locals 2
    .param p1, "which"    # I
    .param p2, "userId"    # I

    .line 2345
    :try_start_0
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2349
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IWallpaperManager;->getWallpaperIdForUser(II)I

    move-result v0

    return v0

    .line 2346
    :cond_0
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v1, "WallpaperService not running"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2347
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Landroid/os/DeadSystemException;

    invoke-direct {v1}, Landroid/os/DeadSystemException;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .end local p0    # "this":Landroid/app/WallpaperManager;
    .end local p1    # "which":I
    .end local p2    # "userId":I
    throw v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2351
    .restart local p0    # "this":Landroid/app/WallpaperManager;
    .restart local p1    # "which":I
    .restart local p2    # "userId":I
    :catch_0
    move-exception v0

    .line 2352
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getWallpaperInfo()Landroid/app/WallpaperInfo;
    .locals 1

    .line 2289
    iget-object v0, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/WallpaperManager;->getWallpaperInfo(I)Landroid/app/WallpaperInfo;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getWallpaperInfo(I)Landroid/app/WallpaperInfo;
    .locals 1
    .param p1, "userId"    # I

    .line 2301
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/app/WallpaperManager;->getWallpaperInfo(II)Landroid/app/WallpaperInfo;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getWallpaperInfo(II)Landroid/app/WallpaperInfo;
    .locals 2
    .param p1, "userId"    # I
    .param p2, "which"    # I

    .line 2308
    :try_start_0
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2312
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IWallpaperManager;->getWallpaperInfo(II)Landroid/app/WallpaperInfo;

    move-result-object v0

    return-object v0

    .line 2309
    :cond_0
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v1, "WallpaperService not running"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2310
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Landroid/os/DeadSystemException;

    invoke-direct {v1}, Landroid/os/DeadSystemException;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .end local p0    # "this":Landroid/app/WallpaperManager;
    .end local p1    # "userId":I
    .end local p2    # "which":I
    throw v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2314
    .restart local p0    # "this":Landroid/app/WallpaperManager;
    .restart local p1    # "userId":I
    .restart local p2    # "which":I
    :catch_0
    move-exception v0

    .line 2315
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getWallpaperOrientation(II)I
    .locals 2
    .param p1, "which"    # I
    .param p2, "userId"    # I

    .line 4503
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4508
    :try_start_0
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IWallpaperManager;->getWallpaperOrientation(II)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 4509
    :catch_0
    move-exception v0

    .line 4510
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 4504
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v1, "WallpaperService not running"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4505
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Landroid/os/DeadSystemException;

    invoke-direct {v1}, Landroid/os/DeadSystemException;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public whitelist hasResourceWallpaper(I)Z
    .locals 3
    .param p1, "resid"    # I

    .line 3167
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3172
    :try_start_0
    iget-object v0, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 3173
    .local v0, "resources":Landroid/content/res/Resources;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "res:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3174
    .local v1, "name":Ljava/lang/String;
    sget-object v2, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v2}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/app/IWallpaperManager;->hasNamedWallpaper(Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 3175
    .end local v0    # "resources":Landroid/content/res/Resources;
    .end local v1    # "name":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 3176
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 3168
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v1, "WallpaperService not running"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3169
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Landroid/os/DeadSystemException;

    invoke-direct {v1}, Landroid/os/DeadSystemException;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public blacklist hasVideoWallpaper()Z
    .locals 3

    .line 4779
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4783
    const/4 v0, 0x0

    .line 4785
    .local v0, "hasVideoWallpaper":Z
    :try_start_0
    sget-object v1, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v1}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IWallpaperManager;->hasVideoWallpaper()Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 4788
    nop

    .line 4789
    return v0

    .line 4786
    :catch_0
    move-exception v1

    .line 4787
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 4780
    .end local v0    # "hasVideoWallpaper":Z
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v1, "WallpaperService not running"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4781
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Landroid/os/DeadSystemException;

    invoke-direct {v1}, Landroid/os/DeadSystemException;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public blacklist isDefaultWallpaperState(I)Z
    .locals 2
    .param p1, "which"    # I

    .line 4517
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4522
    :try_start_0
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IWallpaperManager;->isDefaultWallpaperState(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 4523
    :catch_0
    move-exception v0

    .line 4524
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 4518
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v1, "WallpaperService not running"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4519
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Landroid/os/DeadSystemException;

    invoke-direct {v1}, Landroid/os/DeadSystemException;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public blacklist isExternalLiveWallpaper()Z
    .locals 4

    .line 5397
    const-string v0, ""

    .line 5398
    .local v0, "settingsName":Ljava/lang/String;
    sget-boolean v1, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_COVER_DISPLAY_WATCHFACE:Z

    if-nez v1, :cond_2

    sget-boolean v1, Lcom/samsung/android/wallpaper/Rune;->VIRTUAL_DISPLAY_WALLPAPER:Z

    if-eqz v1, :cond_0

    goto :goto_0

    .line 5401
    :cond_0
    invoke-virtual {p0}, Landroid/app/WallpaperManager;->isSubDisplay()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5402
    const-string v0, "lockscreen_wallpaper_sub"

    goto :goto_1

    .line 5404
    :cond_1
    const-string v0, "lockscreen_wallpaper"

    goto :goto_1

    .line 5399
    :cond_2
    :goto_0
    const-string v0, "lockscreen_wallpaper"

    .line 5407
    :goto_1
    iget-object v1, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    const/4 v3, 0x1

    invoke-static {v1, v0, v3, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-nez v1, :cond_3

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    :goto_2
    return v3
.end method

.method public blacklist isExternalLiveWallpaper(I)Z
    .locals 3
    .param p1, "flag"    # I

    .line 5412
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_0

    .line 5413
    invoke-virtual {p0}, Landroid/app/WallpaperManager;->isExternalLiveWallpaper()Z

    move-result v0

    return v0

    .line 5415
    :cond_0
    invoke-virtual {p0}, Landroid/app/WallpaperManager;->getWallpaperInfo()Landroid/app/WallpaperInfo;

    move-result-object v0

    .line 5416
    .local v0, "wi":Landroid/app/WallpaperInfo;
    if-eqz v0, :cond_1

    .line 5417
    invoke-virtual {v0}, Landroid/app/WallpaperInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 5419
    .local v1, "serviceName":Ljava/lang/String;
    const-string v2, "com.android.systemui.ImageWallpaper"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 5420
    const/4 v2, 0x1

    return v2

    .line 5423
    .end local v1    # "serviceName":Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist isHomeAndLockPaired(I)Z
    .locals 2
    .param p1, "mode"    # I

    .line 4406
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4411
    :try_start_0
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IWallpaperManager;->isHomeAndLockPaired(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 4412
    :catch_0
    move-exception v0

    .line 4413
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 4407
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v1, "WallpaperService not running"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4408
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Landroid/os/DeadSystemException;

    invoke-direct {v1}, Landroid/os/DeadSystemException;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public blacklist isLiveWallpaper(I)Z
    .locals 3
    .param p1, "which"    # I

    .line 5385
    and-int/lit8 v0, p1, 0x3c

    .line 5386
    .local v0, "mode":I
    iget-object v1, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    or-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v1, v2}, Landroid/app/WallpaperManager;->getWallpaperInfo(II)Landroid/app/WallpaperInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 5387
    const/4 v1, 0x1

    return v1

    .line 5389
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist isSetWallpaperAllowed()Z
    .locals 2

    .line 3637
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3642
    :try_start_0
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/app/IWallpaperManager;->isSetWallpaperAllowed(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 3643
    :catch_0
    move-exception v0

    .line 3644
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 3638
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v1, "WallpaperService not running"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3639
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Landroid/os/DeadSystemException;

    invoke-direct {v1}, Landroid/os/DeadSystemException;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public blacklist isSnapshotTestMode()Z
    .locals 2

    .line 5276
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5277
    const/4 v0, 0x0

    return v0

    .line 5280
    :cond_0
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5285
    :try_start_0
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IWallpaperManager;->isSnapshotTestMode()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 5286
    :catch_0
    move-exception v0

    .line 5287
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 5281
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v1, "isSnapshotTestMode: WallpaperService not running"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5282
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Landroid/os/DeadSystemException;

    invoke-direct {v1}, Landroid/os/DeadSystemException;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public blacklist isSubDisplay()Z
    .locals 2

    .line 5472
    sget-boolean v0, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_SUB_DISPLAY_MODE:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 5473
    return v1

    .line 5476
    :cond_0
    invoke-virtual {p0}, Landroid/app/WallpaperManager;->getLidState()I

    move-result v0

    if-nez v0, :cond_1

    .line 5477
    const/4 v0, 0x1

    return v0

    .line 5480
    :cond_1
    return v1
.end method

.method public blacklist isSupportCMFFeature()Z
    .locals 1

    .line 3848
    sget-object v0, Landroid/app/WallpaperManager;->sWallpaperResourcesInfo:Landroid/app/SemWallpaperResourcesInfo;

    invoke-virtual {v0}, Landroid/app/SemWallpaperResourcesInfo;->isSupportCMF()Z

    move-result v0

    return v0
.end method

.method public blacklist isSupportDefaultMultipleWallpaper()Z
    .locals 2

    .line 3863
    invoke-virtual {p0}, Landroid/app/WallpaperManager;->isSubDisplay()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/app/WallpaperManager;->sWallpaperResourcesInfo:Landroid/app/SemWallpaperResourcesInfo;

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Landroid/app/SemWallpaperResourcesInfo;->isDefaultMultipack(I)Z

    move-result v0

    goto :goto_0

    .line 3864
    :cond_0
    sget-object v0, Landroid/app/WallpaperManager;->sWallpaperResourcesInfo:Landroid/app/SemWallpaperResourcesInfo;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/app/SemWallpaperResourcesInfo;->isDefaultMultipack(I)Z

    move-result v0

    .line 3863
    :goto_0
    return v0
.end method

.method public blacklist isValidSnapshot(I)Z
    .locals 2
    .param p1, "key"    # I

    .line 5371
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5376
    :try_start_0
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IWallpaperManager;->isValidSnapshot(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 5377
    :catch_0
    move-exception v0

    .line 5378
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 5372
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v1, "isValidSnapshot: WallpaperService not running"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5373
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Landroid/os/DeadSystemException;

    invoke-direct {v1}, Landroid/os/DeadSystemException;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public blacklist isVideoWallpaper()Z
    .locals 4

    .line 4761
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4765
    const/4 v0, 0x0

    .line 4767
    .local v0, "isVideoWallpaper":Z
    :try_start_0
    sget-object v1, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v1}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IWallpaperManager;->isVideoWallpaper()Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 4770
    nop

    .line 4772
    sget-object v1, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isVideoWallpaper = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4773
    return v0

    .line 4768
    :catch_0
    move-exception v1

    .line 4769
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 4762
    .end local v0    # "isVideoWallpaper":Z
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v1, "WallpaperService not running"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4763
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Landroid/os/DeadSystemException;

    invoke-direct {v1}, Landroid/os/DeadSystemException;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public blacklist isWallpaperBackupAllowed(I)Z
    .locals 4
    .param p1, "which"    # I

    .line 4065
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4070
    :try_start_0
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/app/IWallpaperManager;->isWallpaperBackupAllowed(II)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 4071
    :catch_0
    move-exception v0

    .line 4072
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception querying wallpaper backup eligibility: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4074
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0

    .line 4066
    :cond_0
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v1, "WallpaperService not running"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4067
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Landroid/os/DeadSystemException;

    invoke-direct {v1}, Landroid/os/DeadSystemException;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public greylist-max-o isWallpaperBackupEligible(I)Z
    .locals 4
    .param p1, "which"    # I

    .line 4048
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4053
    :try_start_0
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/app/IWallpaperManager;->isWallpaperBackupEligible(II)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 4054
    :catch_0
    move-exception v0

    .line 4055
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception querying wallpaper backup eligibility: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4057
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0

    .line 4049
    :cond_0
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v1, "WallpaperService not running"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4050
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Landroid/os/DeadSystemException;

    invoke-direct {v1}, Landroid/os/DeadSystemException;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public blacklist isWallpaperDataExists(I)Z
    .locals 2
    .param p1, "which"    # I

    .line 5826
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5831
    :try_start_0
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-interface {v0, v1, p1}, Landroid/app/IWallpaperManager;->isWallpaperDataExists(II)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 5832
    :catch_0
    move-exception v0

    .line 5833
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 5827
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v1, "isWallpaperDataExist: WallpaperService not running"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5828
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Landroid/os/DeadSystemException;

    invoke-direct {v1}, Landroid/os/DeadSystemException;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public whitelist isWallpaperSupported()Z
    .locals 2

    .line 3617
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3622
    :try_start_0
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/app/IWallpaperManager;->isWallpaperSupported(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 3623
    :catch_0
    move-exception v0

    .line 3624
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 3618
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v1, "WallpaperService not running"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3619
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Landroid/os/DeadSystemException;

    invoke-direct {v1}, Landroid/os/DeadSystemException;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public blacklist lockScreenWallpaperExists()Z
    .locals 2

    .line 3475
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3480
    :try_start_0
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IWallpaperManager;->lockScreenWallpaperExists()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 3481
    :catch_0
    move-exception v0

    .line 3482
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 3476
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v1, "WallpaperService not running"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3477
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Landroid/os/DeadSystemException;

    invoke-direct {v1}, Landroid/os/DeadSystemException;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public blacklist notifyCompletePurchase()V
    .locals 0

    .line 5429
    return-void
.end method

.method public blacklist notifyPid(IILjava/lang/String;Z)V
    .locals 2
    .param p1, "uid"    # I
    .param p2, "pid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "enable"    # Z

    .line 5457
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5462
    :try_start_0
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/app/IWallpaperManager;->notifyPid(IILjava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5465
    nop

    .line 5468
    return-void

    .line 5463
    :catch_0
    move-exception v0

    .line 5464
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 5458
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v1, "WallpaperService not running"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5459
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Landroid/os/DeadSystemException;

    invoke-direct {v1}, Landroid/os/DeadSystemException;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public blacklist peekBitmapDimensions()Landroid/graphics/Rect;
    .locals 4

    .line 1968
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    iget-object v1, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    .line 1969
    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v2

    .line 1968
    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Landroid/app/WallpaperManager$Globals;->peekWallpaperDimensions(Landroid/content/Context;ZI)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public whitelist peekDrawable()Landroid/graphics/drawable/Drawable;
    .locals 5

    .line 1779
    invoke-virtual {p0}, Landroid/app/WallpaperManager;->getColorManagementProxy()Landroid/app/WallpaperManager$ColorManagementProxy;

    move-result-object v0

    .line 1780
    .local v0, "cmProxy":Landroid/app/WallpaperManager$ColorManagementProxy;
    sget-object v1, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    iget-object v2, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/app/WallpaperManager$Globals;->peekWallpaperBitmap(Landroid/content/Context;ZILandroid/app/WallpaperManager$ColorManagementProxy;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1781
    .local v1, "bm":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_0

    .line 1782
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v4, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-direct {v2, v4, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 1783
    .local v2, "dr":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    .line 1784
    return-object v2

    .line 1786
    .end local v2    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_0
    const/4 v2, 0x0

    return-object v2
.end method

.method public whitelist peekFastDrawable()Landroid/graphics/drawable/Drawable;
    .locals 5

    .line 1821
    invoke-virtual {p0}, Landroid/app/WallpaperManager;->getColorManagementProxy()Landroid/app/WallpaperManager$ColorManagementProxy;

    move-result-object v0

    .line 1822
    .local v0, "cmProxy":Landroid/app/WallpaperManager$ColorManagementProxy;
    sget-object v1, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    iget-object v2, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/app/WallpaperManager$Globals;->peekWallpaperBitmap(Landroid/content/Context;ZILandroid/app/WallpaperManager$ColorManagementProxy;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1823
    .local v1, "bm":Landroid/graphics/Bitmap;
    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 1824
    new-instance v3, Landroid/app/WallpaperManager$FastBitmapDrawable;

    invoke-direct {v3, v1, v2}, Landroid/app/WallpaperManager$FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;Landroid/app/WallpaperManager$FastBitmapDrawable-IA;)V

    return-object v3

    .line 1826
    :cond_0
    return-object v2
.end method

.method public blacklist removeOnColorsChangedListener(Landroid/app/WallpaperManager$LocalWallpaperColorConsumer;)V
    .locals 4
    .param p1, "callback"    # Landroid/app/WallpaperManager$LocalWallpaperColorConsumer;

    .line 2105
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    iget-object v1, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    iget-object v2, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    .line 2106
    invoke-virtual {v2}, Landroid/content/Context;->getDisplayId()I

    move-result v2

    .line 2105
    const/4 v3, 0x1

    invoke-virtual {v0, p1, v3, v1, v2}, Landroid/app/WallpaperManager$Globals;->removeOnColorsChangedListener(Landroid/app/WallpaperManager$LocalWallpaperColorConsumer;III)V

    .line 2107
    return-void
.end method

.method public whitelist removeOnColorsChangedListener(Landroid/app/WallpaperManager$OnColorsChangedListener;)V
    .locals 1
    .param p1, "callback"    # Landroid/app/WallpaperManager$OnColorsChangedListener;

    .line 2033
    iget-object v0, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/app/WallpaperManager;->removeOnColorsChangedListener(Landroid/app/WallpaperManager$OnColorsChangedListener;I)V

    .line 2034
    return-void
.end method

.method public greylist-max-o removeOnColorsChangedListener(Landroid/app/WallpaperManager$OnColorsChangedListener;I)V
    .locals 2
    .param p1, "callback"    # Landroid/app/WallpaperManager$OnColorsChangedListener;
    .param p2, "userId"    # I

    .line 2044
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    iget-object v1, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getDisplayId()I

    move-result v1

    invoke-virtual {v0, p1, p2, v1}, Landroid/app/WallpaperManager$Globals;->removeOnColorsChangedListener(Landroid/app/WallpaperManager$OnColorsChangedListener;II)V

    .line 2045
    return-void
.end method

.method public blacklist removeOnSemColorsChangedListener(Landroid/app/OnSemColorsChangedListener;)V
    .locals 1
    .param p1, "callback"    # Landroid/app/OnSemColorsChangedListener;

    .line 5552
    iget-object v0, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/app/WallpaperManager;->removeOnSemColorsChangedListener(Landroid/app/OnSemColorsChangedListener;I)V

    .line 5553
    return-void
.end method

.method public blacklist removeOnSemColorsChangedListener(Landroid/app/OnSemColorsChangedListener;I)V
    .locals 2
    .param p1, "callback"    # Landroid/app/OnSemColorsChangedListener;
    .param p2, "userId"    # I

    .line 5558
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    iget-object v1, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getDisplayId()I

    move-result v1

    invoke-virtual {v0, p1, p2, v1}, Landroid/app/WallpaperManager$Globals;->removeOnSemColorsChangedListener(Landroid/app/OnSemColorsChangedListener;II)V

    .line 5559
    return-void
.end method

.method public blacklist restoreLockWallpaper()V
    .locals 0

    .line 5435
    return-void
.end method

.method public whitelist semClearBackupWallpapers()V
    .locals 1

    .line 5167
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/app/WallpaperManager;->semClearBackupWallpapers(I)V

    .line 5168
    return-void
.end method

.method public whitelist semClearBackupWallpapers(I)V
    .locals 3
    .param p1, "which"    # I

    .line 5179
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "semClearBackupWallpapers: which = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5181
    sget v0, Landroid/os/Build$VERSION;->SEM_PLATFORM_INT:I

    const v1, 0x22344

    if-lt v0, v1, :cond_1

    .line 5182
    if-lez p1, :cond_0

    invoke-static {p1}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->getType(I)I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 5183
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'which\' SHOULD be a combination of FLAG_SYSTEM and FLAG_LOCK."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5186
    :cond_1
    if-gtz p1, :cond_2

    .line 5187
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "semClearBackupWallpapers: Invalid which."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5188
    return-void

    .line 5192
    :cond_2
    :goto_0
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 5197
    :try_start_0
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IWallpaperManager;->removeSnapshotByWhich(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5200
    nop

    .line 5202
    return-void

    .line 5198
    :catch_0
    move-exception v0

    .line 5199
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 5193
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_3
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v1, "WallpaperService not running"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5194
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Landroid/os/DeadSystemException;

    invoke-direct {v1}, Landroid/os/DeadSystemException;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public blacklist semClearBackupWallpapers(Ljava/lang/String;)V
    .locals 2
    .param p1, "source"    # Ljava/lang/String;

    .line 5211
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 5215
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5220
    :try_start_0
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IWallpaperManager;->removeSnapshotBySource(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5223
    nop

    .line 5225
    return-void

    .line 5221
    :catch_0
    move-exception v0

    .line 5222
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 5216
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "semClearBackupWallpapers: WallpaperService not running"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5217
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Landroid/os/DeadSystemException;

    invoke-direct {v1}, Landroid/os/DeadSystemException;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 5212
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parameter \'source\' cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist semGetDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 13
    .param p1, "which"    # I

    .line 1429
    invoke-static {p1}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isSystem(I)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-nez v0, :cond_3

    invoke-static {p1}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isLock(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1430
    invoke-static {p1}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isDex(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1431
    const/16 p1, 0x9

    goto :goto_0

    .line 1432
    :cond_0
    if-nez p1, :cond_2

    .line 1434
    iget-object v0, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-static {v0, v2, v3}, Landroid/app/WallpaperManager;->openDefaultWallpaper(Landroid/content/Context;IZ)Ljava/io/InputStream;

    move-result-object v0

    .line 1435
    .local v0, "is":Ljava/io/InputStream;
    if-nez v0, :cond_1

    .line 1436
    iget-object v2, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-static {v2, v1, v3}, Landroid/app/WallpaperManager;->openDefaultWallpaper(Landroid/content/Context;IZ)Ljava/io/InputStream;

    move-result-object v0

    .line 1438
    :cond_1
    invoke-direct {p0, v0}, Landroid/app/WallpaperManager;->getDrawableFromStream(Ljava/io/InputStream;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1

    .line 1440
    .end local v0    # "is":Ljava/io/InputStream;
    :cond_2
    const/4 p1, 0x1

    .line 1444
    :cond_3
    :goto_0
    const/4 v0, 0x0

    .line 1447
    .local v0, "isDesktopMode":Z
    :try_start_0
    sget-object v4, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v4}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v4

    invoke-interface {v4, p1}, Landroid/app/IWallpaperManager;->isDesktopModeEnabled(I)Z

    move-result v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    move v0, v4

    .line 1450
    nop

    .line 1453
    sget-boolean v4, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_SUB_DISPLAY_MODE:Z

    if-eqz v4, :cond_5

    .line 1454
    invoke-static {p1}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isPhone(I)Z

    move-result v4

    if-nez v4, :cond_5

    invoke-static {p1}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isSubDisplay(I)Z

    move-result v4

    if-nez v4, :cond_5

    .line 1455
    invoke-virtual {p0}, Landroid/app/WallpaperManager;->isSubDisplay()Z

    move-result v4

    if-eqz v4, :cond_4

    const/16 v4, 0x10

    goto :goto_1

    :cond_4
    const/4 v4, 0x4

    :goto_1
    or-int/2addr p1, v4

    .line 1459
    :cond_5
    invoke-direct {p0, p1}, Landroid/app/WallpaperManager;->isKeyguardWallpaperShowing(I)Z

    move-result v10

    .line 1460
    .local v10, "isKeyguardWallpaperShowing":Z
    sget-object v4, Landroid/app/WallpaperManager;->sWallpaperResourcesInfo:Landroid/app/SemWallpaperResourcesInfo;

    invoke-virtual {v4, v2}, Landroid/app/SemWallpaperResourcesInfo;->isDefaultVideo(I)Z

    move-result v2

    if-eqz v2, :cond_6

    if-nez v0, :cond_6

    .line 1461
    invoke-virtual {p0}, Landroid/app/WallpaperManager;->isVideoWallpaper()Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_2

    :cond_6
    move v1, v3

    .line 1462
    .local v1, "isDefaultVideoWallpaper":Z
    :goto_2
    invoke-static {p1}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isLock(I)Z

    move-result v2

    .line 1464
    .local v2, "isLock":Z
    const/4 v11, 0x0

    if-eqz v10, :cond_9

    if-eqz v1, :cond_9

    if-eqz v2, :cond_9

    .line 1466
    invoke-virtual {p0}, Landroid/app/WallpaperManager;->getVideoColor()Ljava/lang/String;

    move-result-object v4

    .line 1467
    .local v4, "color":Ljava/lang/String;
    invoke-virtual {p0, p1}, Landroid/app/WallpaperManager;->getVideoFileName(I)Ljava/lang/String;

    move-result-object v5

    .line 1468
    .local v5, "fileName":Ljava/lang/String;
    sget-object v6, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "semGetDrawable: color = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " , file name = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1469
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 1470
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "video_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".mp4"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1472
    :cond_7
    const/4 v6, 0x0

    .line 1474
    .local v6, "assetFd":Landroid/content/res/AssetFileDescriptor;
    :try_start_1
    const-string v7, "com.samsung.android.wallpaper.res"

    invoke-direct {p0, v7, v5}, Landroid/app/WallpaperManager;->getVideoFDFromPackage(Ljava/lang/String;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v6, v7

    .line 1477
    goto :goto_3

    .line 1475
    :catch_0
    move-exception v7

    .line 1476
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 1478
    .end local v7    # "e":Ljava/lang/Exception;
    :goto_3
    invoke-direct {p0, v6, v11, v5}, Landroid/app/WallpaperManager;->getVideoWallpaperFrame(Landroid/content/res/AssetFileDescriptor;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 1480
    .local v7, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v7, :cond_8

    .line 1481
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v8, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-direct {v3, v8, v7}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v3

    .line 1480
    .end local v4    # "color":Ljava/lang/String;
    .end local v5    # "fileName":Ljava/lang/String;
    .end local v6    # "assetFd":Landroid/content/res/AssetFileDescriptor;
    .end local v7    # "bitmap":Landroid/graphics/Bitmap;
    :cond_8
    goto :goto_4

    .line 1483
    :cond_9
    invoke-virtual {p0, p1}, Landroid/app/WallpaperManager;->isLiveWallpaper(I)Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-static {p1}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isDex(I)Z

    move-result v4

    if-nez v4, :cond_b

    .line 1484
    if-eqz v10, :cond_a

    if-eqz v10, :cond_c

    invoke-static {p1}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isSystem(I)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 1485
    :cond_a
    invoke-virtual {p0}, Landroid/app/WallpaperManager;->getWallpaperInfo()Landroid/app/WallpaperInfo;

    move-result-object v3

    .line 1486
    .local v3, "info":Landroid/app/WallpaperInfo;
    iget-object v4, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/WallpaperInfo;->loadThumbnail(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    return-object v4

    .line 1483
    .end local v3    # "info":Landroid/app/WallpaperInfo;
    :cond_b
    :goto_4
    nop

    .line 1491
    :cond_c
    invoke-virtual {p0}, Landroid/app/WallpaperManager;->getColorManagementProxy()Landroid/app/WallpaperManager$ColorManagementProxy;

    move-result-object v12

    .line 1492
    .local v12, "cmProxy":Landroid/app/WallpaperManager$ColorManagementProxy;
    sget-object v4, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    iget-object v5, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getUserId()I

    move-result v6

    const/4 v7, 0x0

    move-object v8, v12

    move v9, p1

    invoke-virtual/range {v4 .. v9}, Landroid/app/WallpaperManager$Globals;->getCurrentWallpaperLocked(Landroid/content/Context;IZLandroid/app/WallpaperManager$ColorManagementProxy;I)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 1493
    .local v4, "wallpaperBmp":Landroid/graphics/Bitmap;
    if-nez v4, :cond_e

    if-eqz v2, :cond_e

    invoke-virtual {p0, p1}, Landroid/app/WallpaperManager;->isHomeAndLockPaired(I)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 1494
    const/4 v5, 0x0

    .line 1496
    .local v5, "fd":Landroid/os/ParcelFileDescriptor;
    :try_start_2
    iget-object v6, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getUserId()I

    move-result v6

    invoke-virtual {p0, v6, p1}, Landroid/app/WallpaperManager;->getLockWallpaperFile(II)Landroid/os/ParcelFileDescriptor;

    move-result-object v6

    move-object v5, v6

    .line 1497
    if-eqz v5, :cond_d

    .line 1498
    new-instance v6, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v6}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1499
    .local v6, "options":Landroid/graphics/BitmapFactory$Options;
    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v7

    invoke-static {v7, v11, v6}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v7
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v4, v7

    .line 1504
    .end local v6    # "options":Landroid/graphics/BitmapFactory$Options;
    :cond_d
    nop

    :goto_5
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1505
    goto :goto_7

    .line 1504
    :catchall_0
    move-exception v3

    goto :goto_6

    .line 1501
    :catch_1
    move-exception v6

    .line 1502
    .local v6, "e":Ljava/lang/OutOfMemoryError;
    :try_start_3
    sget-object v7, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v8, "Can\'t decode file descriptor"

    invoke-static {v7, v8, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1504
    nop

    .end local v6    # "e":Ljava/lang/OutOfMemoryError;
    goto :goto_5

    :goto_6
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1505
    throw v3

    .line 1508
    .end local v5    # "fd":Landroid/os/ParcelFileDescriptor;
    :cond_e
    :goto_7
    if-eqz v4, :cond_f

    .line 1509
    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v6, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-direct {v5, v6, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 1510
    .local v5, "dr":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v5, v3}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    .line 1511
    return-object v5

    .line 1514
    .end local v5    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_f
    iget-object v5, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-static {v5, p1, v3}, Landroid/app/WallpaperManager;->openDefaultWallpaper(Landroid/content/Context;IZ)Ljava/io/InputStream;

    move-result-object v3

    .line 1515
    .local v3, "is":Ljava/io/InputStream;
    invoke-direct {p0, v3}, Landroid/app/WallpaperManager;->getDrawableFromStream(Ljava/io/InputStream;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    return-object v5

    .line 1448
    .end local v1    # "isDefaultVideoWallpaper":Z
    .end local v2    # "isLock":Z
    .end local v3    # "is":Ljava/io/InputStream;
    .end local v4    # "wallpaperBmp":Landroid/graphics/Bitmap;
    .end local v10    # "isKeyguardWallpaperShowing":Z
    .end local v12    # "cmProxy":Landroid/app/WallpaperManager$ColorManagementProxy;
    :catch_2
    move-exception v1

    .line 1449
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public blacklist semGetPrimaryWallpaperColors(I)Landroid/app/SemWallpaperColors;
    .locals 2
    .param p1, "which"    # I

    .line 2122
    invoke-direct {p0, p1}, Landroid/app/WallpaperManager;->getPreconditionWallpaperColors(I)Landroid/app/SemWallpaperColors;

    move-result-object v0

    .line 2123
    .local v0, "colors":Landroid/app/SemWallpaperColors;
    if-eqz v0, :cond_0

    .line 2124
    return-object v0

    .line 2127
    :cond_0
    sget-object v1, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-virtual {v1, p1}, Landroid/app/WallpaperManager$Globals;->semGetPrimaryWallpaperColors(I)Landroid/app/SemWallpaperColors;

    move-result-object v1

    return-object v1
.end method

.method public blacklist semGetSmartCropRect(I)Landroid/graphics/Rect;
    .locals 1
    .param p1, "which"    # I

    .line 2185
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-virtual {v0, p1}, Landroid/app/WallpaperManager$Globals;->semGetSmartCropRect(I)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public blacklist semGetUri(I)Landroid/net/Uri;
    .locals 2
    .param p1, "which"    # I

    .line 2602
    :try_start_0
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/app/IWallpaperManager;->semGetUri(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2603
    .local v0, "strUri":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 2604
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 2608
    .end local v0    # "strUri":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 2606
    :catch_0
    move-exception v0

    .line 2607
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 2609
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist semGetWallpaperColors(I)Landroid/app/SemWallpaperColors;
    .locals 2
    .param p1, "which"    # I

    .line 2112
    invoke-direct {p0, p1}, Landroid/app/WallpaperManager;->getPreconditionWallpaperColors(I)Landroid/app/SemWallpaperColors;

    move-result-object v0

    .line 2113
    .local v0, "colors":Landroid/app/SemWallpaperColors;
    if-eqz v0, :cond_0

    .line 2114
    return-object v0

    .line 2117
    :cond_0
    sget-object v1, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-virtual {v1, p1}, Landroid/app/WallpaperManager$Globals;->semGetWallpaperColors(I)Landroid/app/SemWallpaperColors;

    move-result-object v1

    return-object v1
.end method

.method public blacklist semGetWallpaperCropHint(I)Landroid/graphics/Rect;
    .locals 2
    .param p1, "which"    # I

    .line 4531
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4536
    :try_start_0
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IWallpaperManager;->semGetWallpaperCropHint(I)Landroid/graphics/Rect;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 4537
    :catch_0
    move-exception v0

    .line 4538
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 4532
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v1, "WallpaperService not running"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4533
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Landroid/os/DeadSystemException;

    invoke-direct {v1}, Landroid/os/DeadSystemException;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public whitelist semGetWallpaperType(I)I
    .locals 2
    .param p1, "which"    # I

    .line 4386
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 4390
    sget v0, Landroid/os/Build$VERSION;->SEM_PLATFORM_INT:I

    const v1, 0x22344

    if-lt v0, v1, :cond_1

    .line 4391
    if-lez p1, :cond_0

    invoke-static {p1}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->getType(I)I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4392
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'which\' SHOULD be a combination of FLAG_SYSTEM and FLAG_LOCK."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4397
    :cond_1
    :goto_0
    :try_start_0
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IWallpaperManager;->semGetWallpaperType(I)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 4398
    :catch_0
    move-exception v0

    .line 4399
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 4387
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v1, "WallpaperService not running"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4388
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Landroid/os/DeadSystemException;

    invoke-direct {v1}, Landroid/os/DeadSystemException;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public whitelist semMakeBackupWallpaper()I
    .locals 1

    .line 5108
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/app/WallpaperManager;->semMakeBackupWallpaper(I)I

    move-result v0

    return v0
.end method

.method public whitelist semMakeBackupWallpaper(I)I
    .locals 1
    .param p1, "which"    # I

    .line 5122
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Landroid/app/WallpaperManager;->semMakeBackupWallpaper(II)I

    move-result v0

    return v0
.end method

.method public blacklist semMakeBackupWallpaper(II)I
    .locals 3
    .param p1, "which"    # I
    .param p2, "key"    # I

    .line 5134
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "semMakeBackupWallpaper: which = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", key = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5136
    sget v0, Landroid/os/Build$VERSION;->SEM_PLATFORM_INT:I

    const v1, 0x22344

    if-lt v0, v1, :cond_1

    .line 5137
    if-lez p1, :cond_0

    invoke-static {p1}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->getType(I)I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 5138
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'which\' SHOULD be a combination of FLAG_SYSTEM and FLAG_LOCK."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5142
    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Landroid/app/WallpaperManager;->checkWhichInvalidation(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 5143
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "semMakeBackupWallpaper: Invalid which. which = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5144
    const/4 v0, -0x1

    return v0

    .line 5147
    :cond_2
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 5152
    :try_start_0
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IWallpaperManager;->makeSnapshot(II)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 5153
    :catch_0
    move-exception v0

    .line 5154
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 5148
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_3
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "semMakeBackupWallpaper: WallpaperService not running"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5149
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Landroid/os/DeadSystemException;

    invoke-direct {v1}, Landroid/os/DeadSystemException;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public blacklist semRequestWallpaperColorsAnalysis(I)V
    .locals 2
    .param p1, "which"    # I

    .line 2165
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2170
    :try_start_0
    iget-object v0, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    .line 2171
    .local v0, "callingPackage":Ljava/lang/String;
    sget-object v1, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v1}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Landroid/app/IWallpaperManager;->semRequestWallpaperColorsAnalysis(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2174
    .end local v0    # "callingPackage":Ljava/lang/String;
    nop

    .line 2176
    return-void

    .line 2172
    :catch_0
    move-exception v0

    .line 2173
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 2166
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v1, "WallpaperService not running"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2167
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Landroid/os/DeadSystemException;

    invoke-direct {v1}, Landroid/os/DeadSystemException;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public whitelist semRestoreBackupWallpaper(I)Z
    .locals 3
    .param p1, "key"    # I

    .line 5255
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "semRestoreBackupWallpaper: key = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5257
    if-gtz p1, :cond_0

    .line 5258
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v1, "invalid key"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5259
    const/4 v0, 0x0

    return v0

    .line 5262
    :cond_0
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5267
    :try_start_0
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/app/IWallpaperManager;->restoreSnapshot(ILjava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 5268
    :catch_0
    move-exception v0

    .line 5269
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 5263
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v1, "WallpaperService not running"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5264
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Landroid/os/DeadSystemException;

    invoke-direct {v1}, Landroid/os/DeadSystemException;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public blacklist semSetDLSWallpaperColors(Landroid/app/SemWallpaperColors;I)V
    .locals 3
    .param p1, "colors"    # Landroid/app/SemWallpaperColors;
    .param p2, "which"    # I

    .line 2616
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "semSetDLSWallpaperColors "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2619
    :try_start_0
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IWallpaperManager;->semSetDLSWallpaperColors(Landroid/app/SemWallpaperColors;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2622
    goto :goto_0

    .line 2620
    :catch_0
    move-exception v0

    .line 2621
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 2623
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public blacklist semSetSmartCropRect(ILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "which"    # I
    .param p2, "original"    # Landroid/graphics/Rect;
    .param p3, "smartCrop"    # Landroid/graphics/Rect;

    .line 2180
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/WallpaperManager$Globals;->semSetSmartCropRect(ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 2181
    return-void
.end method

.method public blacklist semSetUri(Landroid/net/Uri;ZI)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "allowBackup"    # Z
    .param p3, "which"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 2629
    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/app/WallpaperManager;->semSetUri(Landroid/net/Uri;ZII)V

    .line 2630
    return-void
.end method

.method public blacklist semSetUri(Landroid/net/Uri;ZII)V
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "allowBackup"    # Z
    .param p3, "which"    # I
    .param p4, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 2636
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/app/WallpaperManager;->semSetUri(Landroid/net/Uri;ZIILandroid/os/Bundle;)V

    .line 2637
    return-void
.end method

.method public blacklist semSetUri(Landroid/net/Uri;ZIILandroid/os/Bundle;)V
    .locals 19
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "allowBackup"    # Z
    .param p3, "which"    # I
    .param p4, "type"    # I
    .param p5, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 2643
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move/from16 v6, p3

    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "semSetUri: uri ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",allowBackup="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v5, p2

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",which="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",hasExtras="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz p5, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2645
    if-nez v8, :cond_1

    return-void

    .line 2646
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    .line 2647
    .local v4, "scheme":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    .line 2648
    .local v1, "pkgName":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v15

    .line 2649
    .local v15, "resName":Ljava/lang/String;
    const-string/jumbo v14, "multipack"

    invoke-virtual {v14, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v13, 0x3

    if-eqz v0, :cond_2

    move v0, v13

    goto :goto_1

    :cond_2
    move/from16 v0, p4

    :goto_1
    move v12, v0

    .line 2651
    .end local p4    # "type":I
    .local v12, "type":I
    :try_start_0
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v9

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v10

    iget-object v0, v7, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v11, v7, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getUserId()I

    move-result v16
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move/from16 v11, p2

    move/from16 p4, v12

    .end local v12    # "type":I
    .restart local p4    # "type":I
    move/from16 v12, p3

    move v3, v13

    move/from16 v13, p4

    move-object/from16 v17, v14

    move-object v14, v0

    move-object/from16 v18, v15

    .end local v15    # "resName":Ljava/lang/String;
    .local v18, "resName":Ljava/lang/String;
    move/from16 v15, v16

    move-object/from16 v16, p5

    :try_start_1
    invoke-interface/range {v9 .. v16}, Landroid/app/IWallpaperManager;->semSetUri(Ljava/lang/String;ZIILjava/lang/String;ILandroid/os/Bundle;)V

    .line 2652
    and-int/lit8 v0, v6, 0x2

    const/4 v9, 0x2

    if-ne v0, v9, :cond_3

    .line 2653
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/app/IWallpaperManager;->setKWPTypeLiveWallpaper(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2657
    :cond_3
    goto :goto_3

    .line 2655
    :catch_0
    move-exception v0

    goto :goto_2

    .end local v18    # "resName":Ljava/lang/String;
    .end local p4    # "type":I
    .restart local v12    # "type":I
    .restart local v15    # "resName":Ljava/lang/String;
    :catch_1
    move-exception v0

    move/from16 p4, v12

    move v3, v13

    move-object/from16 v17, v14

    move-object/from16 v18, v15

    .line 2656
    .end local v12    # "type":I
    .end local v15    # "resName":Ljava/lang/String;
    .local v0, "e":Landroid/os/RemoteException;
    .restart local v18    # "resName":Ljava/lang/String;
    .restart local p4    # "type":I
    :goto_2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 2659
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_3
    const/4 v0, 0x5

    move/from16 v9, p4

    .end local p4    # "type":I
    .local v9, "type":I
    if-eq v9, v3, :cond_4

    if-ne v9, v0, :cond_5

    .line 2660
    :cond_4
    invoke-direct/range {p0 .. p0}, Landroid/app/WallpaperManager;->isNeedToClearBackupData()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2661
    invoke-virtual {v7, v6}, Landroid/app/WallpaperManager;->semClearBackupWallpapers(I)V

    .line 2665
    :cond_5
    move-object/from16 v2, v17

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    if-eq v9, v0, :cond_b

    if-eqz v1, :cond_b

    .line 2666
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    move-object/from16 v10, v18

    .end local v18    # "resName":Ljava/lang/String;
    .local v10, "resName":Ljava/lang/String;
    if-eqz v10, :cond_9

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    move-object v12, v1

    move-object v13, v4

    goto/16 :goto_7

    .line 2669
    :cond_6
    :try_start_2
    iget-object v0, v7, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    .line 2670
    .local v0, "pkgContext":Landroid/content/Context;
    if-nez v0, :cond_7

    return-void

    .line 2672
    :cond_7
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "drawable"

    invoke-virtual {v2, v10, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6

    move v11, v2

    .line 2673
    .local v11, "resId":I
    if-gtz v11, :cond_8

    .line 2674
    :try_start_3
    sget-object v2, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v3, "Resource id not found"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 2675
    return-void

    .line 2680
    .end local v0    # "pkgContext":Landroid/content/Context;
    .end local v11    # "resId":I
    :catch_2
    move-exception v0

    move-object v12, v1

    move-object v13, v4

    goto :goto_4

    .line 2678
    :catch_3
    move-exception v0

    move-object v12, v1

    move-object v13, v4

    goto :goto_5

    .line 2677
    .restart local v0    # "pkgContext":Landroid/content/Context;
    .restart local v11    # "resId":I
    :cond_8
    move-object v12, v1

    .end local v1    # "pkgName":Ljava/lang/String;
    .local v12, "pkgName":Ljava/lang/String;
    move-object/from16 v1, p0

    move-object v2, v0

    move v3, v11

    move-object v13, v4

    .end local v4    # "scheme":Ljava/lang/String;
    .local v13, "scheme":Ljava/lang/String;
    move/from16 v4, p3

    move/from16 v5, p2

    move-object/from16 v6, p5

    :try_start_4
    invoke-direct/range {v1 .. v6}, Landroid/app/WallpaperManager;->setPreloadedResource(Landroid/content/Context;IIZLandroid/os/Bundle;)I
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 2682
    nop

    .end local v0    # "pkgContext":Landroid/content/Context;
    .end local v11    # "resId":I
    goto :goto_6

    .line 2680
    :catch_4
    move-exception v0

    goto :goto_4

    .line 2678
    :catch_5
    move-exception v0

    goto :goto_5

    .line 2680
    .end local v12    # "pkgName":Ljava/lang/String;
    .end local v13    # "scheme":Ljava/lang/String;
    .restart local v1    # "pkgName":Ljava/lang/String;
    .restart local v4    # "scheme":Ljava/lang/String;
    :catch_6
    move-exception v0

    move-object v12, v1

    move-object v13, v4

    .line 2681
    .end local v1    # "pkgName":Ljava/lang/String;
    .end local v4    # "scheme":Ljava/lang/String;
    .local v0, "ioe":Ljava/io/IOException;
    .restart local v12    # "pkgName":Ljava/lang/String;
    .restart local v13    # "scheme":Ljava/lang/String;
    :goto_4
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 2678
    .end local v0    # "ioe":Ljava/io/IOException;
    .end local v12    # "pkgName":Ljava/lang/String;
    .end local v13    # "scheme":Ljava/lang/String;
    .restart local v1    # "pkgName":Ljava/lang/String;
    .restart local v4    # "scheme":Ljava/lang/String;
    :catch_7
    move-exception v0

    move-object v12, v1

    move-object v13, v4

    .line 2679
    .end local v1    # "pkgName":Ljava/lang/String;
    .end local v4    # "scheme":Ljava/lang/String;
    .local v0, "nnfe":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v12    # "pkgName":Ljava/lang/String;
    .restart local v13    # "scheme":Ljava/lang/String;
    :goto_5
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 2682
    .end local v0    # "nnfe":Landroid/content/pm/PackageManager$NameNotFoundException;
    nop

    .line 2684
    :goto_6
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v1, "Set wallpaper based on END"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2685
    return-void

    .line 2666
    .end local v12    # "pkgName":Ljava/lang/String;
    .end local v13    # "scheme":Ljava/lang/String;
    .restart local v1    # "pkgName":Ljava/lang/String;
    .restart local v4    # "scheme":Ljava/lang/String;
    :cond_9
    move-object v12, v1

    move-object v13, v4

    .end local v1    # "pkgName":Ljava/lang/String;
    .end local v4    # "scheme":Ljava/lang/String;
    .restart local v12    # "pkgName":Ljava/lang/String;
    .restart local v13    # "scheme":Ljava/lang/String;
    goto :goto_7

    .end local v10    # "resName":Ljava/lang/String;
    .end local v12    # "pkgName":Ljava/lang/String;
    .end local v13    # "scheme":Ljava/lang/String;
    .restart local v1    # "pkgName":Ljava/lang/String;
    .restart local v4    # "scheme":Ljava/lang/String;
    .restart local v18    # "resName":Ljava/lang/String;
    :cond_a
    move-object v12, v1

    move-object v13, v4

    move-object/from16 v10, v18

    .end local v1    # "pkgName":Ljava/lang/String;
    .end local v4    # "scheme":Ljava/lang/String;
    .end local v18    # "resName":Ljava/lang/String;
    .restart local v10    # "resName":Ljava/lang/String;
    .restart local v12    # "pkgName":Ljava/lang/String;
    .restart local v13    # "scheme":Ljava/lang/String;
    goto :goto_7

    .line 2665
    .end local v10    # "resName":Ljava/lang/String;
    .end local v12    # "pkgName":Ljava/lang/String;
    .end local v13    # "scheme":Ljava/lang/String;
    .restart local v1    # "pkgName":Ljava/lang/String;
    .restart local v4    # "scheme":Ljava/lang/String;
    .restart local v18    # "resName":Ljava/lang/String;
    :cond_b
    move-object v12, v1

    move-object v13, v4

    move-object/from16 v10, v18

    .line 2666
    .end local v1    # "pkgName":Ljava/lang/String;
    .end local v4    # "scheme":Ljava/lang/String;
    .end local v18    # "resName":Ljava/lang/String;
    .restart local v10    # "resName":Ljava/lang/String;
    .restart local v12    # "pkgName":Ljava/lang/String;
    .restart local v13    # "scheme":Ljava/lang/String;
    :goto_7
    return-void
.end method

.method public whitelist sendWallpaperCommand(Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)V
    .locals 8
    .param p1, "windowToken"    # Landroid/os/IBinder;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "x"    # I
    .param p4, "y"    # I
    .param p5, "z"    # I
    .param p6, "extras"    # Landroid/os/Bundle;

    .line 3580
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowSession()Landroid/view/IWindowSession;

    move-result-object v0

    const/4 v7, 0x0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v7}, Landroid/view/IWindowSession;->sendWallpaperCommand(Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;Z)Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3585
    nop

    .line 3586
    return-void

    .line 3583
    :catch_0
    move-exception v0

    .line 3584
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setAnimatedLockscreenWallpaper(Ljava/lang/String;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4990
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setAnimatedLockscreenWallpaper: packageName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4991
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Landroid/app/WallpaperManager;->setAnimatedLockscreenWallpaper(Ljava/lang/String;I)V

    .line 4992
    return-void
.end method

.method public blacklist setAnimatedLockscreenWallpaper(Ljava/lang/String;I)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "which"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4996
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setAnimatedLockscreenWallpaper: packageName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", which = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4997
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/app/WallpaperManager;->setAnimatedLockscreenWallpaper(Ljava/lang/String;IZ)V

    .line 4998
    return-void
.end method

.method public blacklist setAnimatedLockscreenWallpaper(Ljava/lang/String;IZ)V
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "which"    # I
    .param p3, "allowBackup"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5002
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setAnimatedLockscreenWallpaper: packageName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", which = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", allowBackup = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5004
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5009
    :try_start_0
    iget-object v0, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    .line 5011
    .local v0, "callingPackage":Ljava/lang/String;
    invoke-direct {p0, p1}, Landroid/app/WallpaperManager;->getThemeWallpaperBackground(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 5012
    .local v1, "animatedBackground":Landroid/graphics/Bitmap;
    sget-object v2, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v2}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v2

    const/4 v3, 0x4

    iget-object v4, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getUserId()I

    move-result v4

    const/high16 v5, 0x3c000000    # 0.0078125f

    invoke-interface {v2, v3, v4, p2, v5}, Landroid/app/IWallpaperManager;->getWallpaperThumbnailFileDescriptor(IIII)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    .line 5013
    .local v2, "thumbnailFileFd":Landroid/os/ParcelFileDescriptor;
    invoke-direct {p0, v1, v2}, Landroid/app/WallpaperManager;->saveWallpaperThumbnailFile(Landroid/graphics/Bitmap;Landroid/os/ParcelFileDescriptor;)V

    .line 5015
    sget-object v3, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v3}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v3

    invoke-interface {v3, p1, v0, p2, p3}, Landroid/app/IWallpaperManager;->setAnimatedWallpaper(Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 5017
    sget-object v3, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v3}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Landroid/app/IWallpaperManager;->setKWPTypeLiveWallpaper(I)V

    .line 5018
    invoke-direct {p0}, Landroid/app/WallpaperManager;->isNeedToClearBackupData()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5019
    invoke-virtual {p0, p2}, Landroid/app/WallpaperManager;->semClearBackupWallpapers(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5023
    .end local v0    # "callingPackage":Ljava/lang/String;
    .end local v1    # "animatedBackground":Landroid/graphics/Bitmap;
    .end local v2    # "thumbnailFileFd":Landroid/os/ParcelFileDescriptor;
    :cond_0
    nop

    .line 5025
    return-void

    .line 5021
    :catch_0
    move-exception v0

    .line 5022
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 5005
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v1, "WallpaperService not running"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5006
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Landroid/os/DeadSystemException;

    invoke-direct {v1}, Landroid/os/DeadSystemException;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public whitelist setBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Z)I
    .locals 1
    .param p1, "fullImage"    # Landroid/graphics/Bitmap;
    .param p2, "visibleCropHint"    # Landroid/graphics/Rect;
    .param p3, "allowBackup"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2752
    const/4 v0, 0x3

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/app/WallpaperManager;->setBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;ZI)I

    move-result v0

    return v0
.end method

.method public whitelist setBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;ZI)I
    .locals 9
    .param p1, "fullImage"    # Landroid/graphics/Bitmap;
    .param p2, "visibleCropHint"    # Landroid/graphics/Rect;
    .param p3, "allowBackup"    # Z
    .param p4, "which"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2779
    iget-object v0, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    .line 2784
    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v6

    .line 2779
    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v1 .. v8}, Landroid/app/WallpaperManager;->setBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;ZIIILandroid/os/Bundle;)I

    move-result v0

    return v0
.end method

.method public greylist-max-p setBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;ZII)I
    .locals 8
    .param p1, "fullImage"    # Landroid/graphics/Bitmap;
    .param p2, "visibleCropHint"    # Landroid/graphics/Rect;
    .param p3, "allowBackup"    # Z
    .param p4, "which"    # I
    .param p5, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2799
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v7}, Landroid/app/WallpaperManager;->setBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;ZIIILandroid/os/Bundle;)I

    move-result v0

    return v0
.end method

.method public blacklist setBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;ZILandroid/os/Bundle;)I
    .locals 9
    .param p1, "fullImage"    # Landroid/graphics/Bitmap;
    .param p2, "visibleCropHint"    # Landroid/graphics/Rect;
    .param p3, "allowBackup"    # Z
    .param p4, "which"    # I
    .param p5, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2808
    iget-object v0, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v6

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v8, p5

    invoke-direct/range {v1 .. v8}, Landroid/app/WallpaperManager;->setBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;ZIIILandroid/os/Bundle;)I

    move-result v0

    return v0
.end method

.method public whitelist setBitmap(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2718
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/app/WallpaperManager;->setBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Z)I

    .line 2719
    return-void
.end method

.method public blacklist setCoverWallpaperCallback(Landroid/app/IWallpaperManagerCallback;)Z
    .locals 2
    .param p1, "callback"    # Landroid/app/IWallpaperManagerCallback;

    .line 4029
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4035
    :try_start_0
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IWallpaperManager;->setCoverWallpaperCallback(Landroid/app/IWallpaperManagerCallback;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 4036
    :catch_0
    move-exception v0

    .line 4037
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 4030
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v1, "WallpaperService not running"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4031
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Landroid/os/DeadSystemException;

    invoke-direct {v1}, Landroid/os/DeadSystemException;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public whitelist setDisplayOffset(Landroid/os/IBinder;II)V
    .locals 2
    .param p1, "windowToken"    # Landroid/os/IBinder;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3344
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowSession()Landroid/view/IWindowSession;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/view/IWindowSession;->setWallpaperDisplayOffset(Landroid/os/IBinder;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3349
    nop

    .line 3350
    return-void

    .line 3347
    :catch_0
    move-exception v0

    .line 3348
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setDisplayPadding(Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "padding"    # Landroid/graphics/Rect;

    .line 3317
    iget-object v0, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "setDisplayPadding"

    invoke-static {v0, v1}, Landroid/os/StrictMode;->assertUiContext(Landroid/content/Context;Ljava/lang/String;)V

    .line 3319
    :try_start_0
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3323
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    .line 3324
    invoke-virtual {v2}, Landroid/content/Context;->getDisplayId()I

    move-result v2

    .line 3323
    invoke-interface {v0, p1, v1, v2}, Landroid/app/IWallpaperManager;->setDisplayPadding(Landroid/graphics/Rect;Ljava/lang/String;I)V

    .line 3328
    nop

    .line 3329
    return-void

    .line 3320
    :cond_0
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v1, "WallpaperService not running"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3321
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Landroid/os/DeadSystemException;

    invoke-direct {v1}, Landroid/os/DeadSystemException;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .end local p0    # "this":Landroid/app/WallpaperManager;
    .end local p1    # "padding":Landroid/graphics/Rect;
    throw v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3326
    .restart local p0    # "this":Landroid/app/WallpaperManager;
    .restart local p1    # "padding":Landroid/graphics/Rect;
    :catch_0
    move-exception v0

    .line 3327
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o setLockWallpaperCallback(Landroid/app/IWallpaperManagerCallback;)Z
    .locals 2
    .param p1, "callback"    # Landroid/app/IWallpaperManagerCallback;

    .line 4010
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4016
    :try_start_0
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IWallpaperManager;->setLockWallpaperCallback(Landroid/app/IWallpaperManagerCallback;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 4017
    :catch_0
    move-exception v0

    .line 4018
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 4011
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v1, "WallpaperService not running"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4012
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Landroid/os/DeadSystemException;

    invoke-direct {v1}, Landroid/os/DeadSystemException;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public blacklist setMotionWallpaper(Ljava/lang/String;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 4936
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setMotionWallpaper: packageName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4937
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Landroid/app/WallpaperManager;->setMotionWallpaper(Ljava/lang/String;I)V

    .line 4938
    return-void
.end method

.method public blacklist setMotionWallpaper(Ljava/lang/String;I)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "which"    # I

    .line 4942
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setMotionWallpaper: packageName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", which = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4943
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroid/app/WallpaperManager;->setMotionWallpaper(Ljava/lang/String;IZ)V

    .line 4944
    return-void
.end method

.method public blacklist setMotionWallpaper(Ljava/lang/String;IZ)V
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "which"    # I
    .param p3, "allowBackup"    # Z

    .line 4948
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setMotionWallpaper: packageName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", which = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", allowBackup = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4949
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4954
    :try_start_0
    iget-object v0, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    .line 4956
    .local v0, "callingPackage":Ljava/lang/String;
    invoke-direct {p0, p1}, Landroid/app/WallpaperManager;->getThemeWallpaperBackground(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 4957
    .local v1, "motionBackground":Landroid/graphics/Bitmap;
    sget-object v2, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v2}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v2

    iget-object v3, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getUserId()I

    move-result v3

    const/high16 v4, 0x3c000000    # 0.0078125f

    const/4 v5, 0x1

    invoke-interface {v2, v5, v3, p2, v4}, Landroid/app/IWallpaperManager;->getWallpaperThumbnailFileDescriptor(IIII)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    .line 4958
    .local v2, "thumbnailFileFd":Landroid/os/ParcelFileDescriptor;
    invoke-direct {p0, v1, v2}, Landroid/app/WallpaperManager;->saveWallpaperThumbnailFile(Landroid/graphics/Bitmap;Landroid/os/ParcelFileDescriptor;)V

    .line 4960
    sget-object v3, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v3}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v3

    invoke-interface {v3, p1, v0, p2, p3}, Landroid/app/IWallpaperManager;->setMotionWallpaper(Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 4962
    sget-object v3, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v3}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v3

    invoke-interface {v3, v5}, Landroid/app/IWallpaperManager;->setKWPTypeLiveWallpaper(I)V

    .line 4963
    invoke-direct {p0}, Landroid/app/WallpaperManager;->isNeedToClearBackupData()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4964
    invoke-virtual {p0, p2}, Landroid/app/WallpaperManager;->semClearBackupWallpapers(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4968
    .end local v0    # "callingPackage":Ljava/lang/String;
    .end local v1    # "motionBackground":Landroid/graphics/Bitmap;
    .end local v2    # "thumbnailFileFd":Landroid/os/ParcelFileDescriptor;
    :cond_0
    nop

    .line 4970
    return-void

    .line 4966
    :catch_0
    move-exception v0

    .line 4967
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 4950
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v1, "WallpaperService not running"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4951
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Landroid/os/DeadSystemException;

    invoke-direct {v1}, Landroid/os/DeadSystemException;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public blacklist setOpenThemeWallpaper(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Z)V
    .locals 0
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "visibleCropHint"    # Landroid/graphics/Rect;
    .param p3, "needBackup"    # Z

    .line 5431
    return-void
.end method

.method public blacklist setOpenThemeWallpaper(Z)V
    .locals 0
    .param p1, "needBackup"    # Z

    .line 5433
    return-void
.end method

.method public whitelist setResource(II)I
    .locals 8
    .param p1, "resid"    # I
    .param p2, "which"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2462
    iget-object v1, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v7}, Landroid/app/WallpaperManager;->setResource(Landroid/content/Context;IIIZZLandroid/os/Bundle;)I

    move-result v0

    return v0
.end method

.method public whitelist setResource(I)V
    .locals 1
    .param p1, "resid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2441
    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Landroid/app/WallpaperManager;->setResource(II)I

    .line 2442
    return-void
.end method

.method public blacklist setResourceAll(I)V
    .locals 4
    .param p1, "resid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4193
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setResourceAll"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4197
    invoke-direct {p0, p1}, Landroid/app/WallpaperManager;->generateBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 4198
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 4199
    invoke-virtual {p0, v0}, Landroid/app/WallpaperManager;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 4201
    :try_start_0
    iget-object v1, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "android.wallpaper.settings_systemui_transparency"

    const/4 v3, 0x2

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4203
    :catch_0
    move-exception v1

    .line 4204
    .local v1, "e":Ljava/lang/SecurityException;
    sget-object v2, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v3, "Can\'t put value of SETTINGS_SYSTEMUI_TRANSPARENCY"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4205
    .end local v1    # "e":Ljava/lang/SecurityException;
    :goto_0
    goto :goto_1

    .line 4207
    :cond_0
    sget-object v1, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "theme bitmap is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4209
    :goto_1
    return-void
.end method

.method public blacklist setSnapshotSource(ILjava/lang/String;)Z
    .locals 2
    .param p1, "key"    # I
    .param p2, "source"    # Ljava/lang/String;

    .line 5352
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 5356
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5361
    :try_start_0
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IWallpaperManager;->setSnapshotSource(ILjava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 5362
    :catch_0
    move-exception v0

    .line 5363
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 5357
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setSnapshotSource: WallpaperService not running"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5358
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Landroid/os/DeadSystemException;

    invoke-direct {v1}, Landroid/os/DeadSystemException;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 5353
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parameter \'source\' cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setSnapshotTestMode(Z)V
    .locals 5
    .param p1, "enable"    # Z

    .line 5294
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5295
    return-void

    .line 5299
    :cond_0
    const/4 v0, 0x0

    .line 5301
    .local v0, "isAllowedToSetTestMode":Z
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 5302
    .local v1, "passList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v2, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5303
    iget-object v2, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5305
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 5306
    .local v3, "callingPkg":Ljava/lang/String;
    const-string v4, "com.samsung.android.app.dressroom"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 5307
    const/4 v0, 0x1

    .line 5308
    goto :goto_1

    .line 5310
    .end local v3    # "callingPkg":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 5312
    :cond_2
    :goto_1
    if-nez v0, :cond_3

    .line 5313
    return-void

    .line 5316
    :cond_3
    sget-object v2, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v2}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 5321
    :try_start_0
    sget-object v2, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v2}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/app/IWallpaperManager;->setSnapshotTestMode(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5324
    nop

    .line 5326
    return-void

    .line 5322
    :catch_0
    move-exception v2

    .line 5323
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    .line 5317
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_4
    sget-object v2, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "setSnapshotTestMode: WallpaperService not running"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5318
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Landroid/os/DeadSystemException;

    invoke-direct {v3}, Landroid/os/DeadSystemException;-><init>()V

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public whitelist setStream(Ljava/io/InputStream;Landroid/graphics/Rect;Z)I
    .locals 1
    .param p1, "bitmapData"    # Ljava/io/InputStream;
    .param p2, "visibleCropHint"    # Landroid/graphics/Rect;
    .param p3, "allowBackup"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2994
    const/4 v0, 0x3

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/app/WallpaperManager;->setStream(Ljava/io/InputStream;Landroid/graphics/Rect;ZI)I

    move-result v0

    return v0
.end method

.method public whitelist setStream(Ljava/io/InputStream;Landroid/graphics/Rect;ZI)I
    .locals 6
    .param p1, "bitmapData"    # Ljava/io/InputStream;
    .param p2, "visibleCropHint"    # Landroid/graphics/Rect;
    .param p3, "allowBackup"    # Z
    .param p4, "which"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3023
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/app/WallpaperManager;->setStream(Ljava/io/InputStream;Landroid/graphics/Rect;ZII)I

    move-result v0

    return v0
.end method

.method public whitelist setStream(Ljava/io/InputStream;)V
    .locals 2
    .param p1, "bitmapData"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2933
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/app/WallpaperManager;->setStream(Ljava/io/InputStream;Landroid/graphics/Rect;Z)I

    .line 2934
    return-void
.end method

.method public blacklist setVideoLockscreenWallpaper(Ljava/lang/String;)V
    .locals 1
    .param p1, "videoFilePath"    # Ljava/lang/String;

    .line 4549
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/app/WallpaperManager;->setVideoLockscreenWallpaper(Ljava/lang/String;Ljava/lang/String;)V

    .line 4550
    return-void
.end method

.method public blacklist setVideoLockscreenWallpaper(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "videoFilePath"    # Ljava/lang/String;
    .param p2, "themePackage"    # Ljava/lang/String;

    .line 4554
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/app/WallpaperManager;->setVideoLockscreenWallpaper(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 4555
    return-void
.end method

.method public blacklist setVideoLockscreenWallpaper(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 7
    .param p1, "videoFilePath"    # Ljava/lang/String;
    .param p2, "themePackage"    # Ljava/lang/String;
    .param p3, "fileName"    # Ljava/lang/String;
    .param p4, "which"    # I

    .line 4560
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    invoke-virtual/range {v0 .. v6}, Landroid/app/WallpaperManager;->setVideoLockscreenWallpaper(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)V

    .line 4561
    return-void
.end method

.method public blacklist setVideoLockscreenWallpaper(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 7
    .param p1, "videoFilePath"    # Ljava/lang/String;
    .param p2, "themePackage"    # Ljava/lang/String;
    .param p3, "fileName"    # Ljava/lang/String;
    .param p4, "userId"    # I
    .param p5, "which"    # I

    .line 4572
    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Landroid/app/WallpaperManager;->setVideoLockscreenWallpaper(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)V

    .line 4573
    return-void
.end method

.method public blacklist setVideoLockscreenWallpaper(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)V
    .locals 9
    .param p1, "videoFilePath"    # Ljava/lang/String;
    .param p2, "themePackage"    # Ljava/lang/String;
    .param p3, "fileName"    # Ljava/lang/String;
    .param p4, "userId"    # I
    .param p5, "which"    # I
    .param p6, "updateSetting"    # Z

    .line 4578
    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v8}, Landroid/app/WallpaperManager;->setVideoWallpaper(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZZLandroid/os/Bundle;)V

    .line 4579
    return-void
.end method

.method public blacklist setVideoLockscreenWallpaper(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 9
    .param p1, "videoFilePath"    # Ljava/lang/String;
    .param p2, "themePackage"    # Ljava/lang/String;
    .param p3, "fileName"    # Ljava/lang/String;
    .param p4, "which"    # I
    .param p5, "allowBackup"    # Z

    .line 4566
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    const/4 v6, 0x1

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    move v7, p5

    invoke-virtual/range {v0 .. v8}, Landroid/app/WallpaperManager;->setVideoWallpaper(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZZLandroid/os/Bundle;)V

    .line 4567
    return-void
.end method

.method public blacklist setVideoWallpaper(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILandroid/os/Bundle;)V
    .locals 9
    .param p1, "videoFilePath"    # Ljava/lang/String;
    .param p2, "themePackage"    # Ljava/lang/String;
    .param p3, "fileName"    # Ljava/lang/String;
    .param p4, "userId"    # I
    .param p5, "which"    # I
    .param p6, "extras"    # Landroid/os/Bundle;

    .line 4593
    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object v8, p6

    invoke-virtual/range {v0 .. v8}, Landroid/app/WallpaperManager;->setVideoWallpaper(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZZLandroid/os/Bundle;)V

    .line 4594
    return-void
.end method

.method public blacklist setVideoWallpaper(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZZLandroid/os/Bundle;)V
    .locals 19
    .param p1, "videoFilePath"    # Ljava/lang/String;
    .param p2, "themePackage"    # Ljava/lang/String;
    .param p3, "fileName"    # Ljava/lang/String;
    .param p4, "userId"    # I
    .param p5, "which"    # I
    .param p6, "updateSetting"    # Z
    .param p7, "allowBackup"    # Z
    .param p8, "extras"    # Landroid/os/Bundle;

    .line 4599
    move-object/from16 v1, p0

    move/from16 v11, p5

    move-object/from16 v12, p8

    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 4604
    :try_start_0
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_9

    const/16 v2, 0x8

    const/high16 v3, 0x3c000000    # 0.0078125f

    move/from16 v13, p4

    :try_start_1
    invoke-interface {v0, v2, v13, v11, v3}, Landroid/app/IWallpaperManager;->getWallpaperThumbnailFileDescriptor(IIII)Landroid/os/ParcelFileDescriptor;

    move-result-object v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_8

    move-object v14, v0

    .line 4605
    .local v14, "thumbnailFileFd":Landroid/os/ParcelFileDescriptor;
    const/4 v2, 0x0

    .line 4607
    .local v2, "isThumbnailCopied":Z
    and-int/lit8 v0, v11, 0x1

    if-eqz v0, :cond_1

    .line 4608
    if-eqz v12, :cond_1

    .line 4609
    :try_start_2
    const-string/jumbo v0, "thumbnailUri"

    invoke-virtual {v12, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    .line 4610
    .local v3, "thumbnailUri":Ljava/lang/String;
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setVideoWallpaper: thumbnailUri = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4612
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4613
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v4, v0

    .line 4614
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    if-eqz v0, :cond_1

    .line 4615
    const/4 v5, 0x0

    .line 4616
    .local v5, "fin":Ljava/io/FileInputStream;
    const/4 v6, 0x0

    .line 4619
    .local v6, "fout":Ljava/io/FileOutputStream;
    :try_start_3
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v5, v0

    .line 4620
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-virtual {v14}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v7

    invoke-direct {v0, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    move-object v6, v0

    .line 4622
    invoke-static {v5, v6}, Landroid/os/FileUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    move-result-wide v7
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const-wide/16 v9, 0x0

    cmp-long v0, v7, v9

    if-lez v0, :cond_0

    .line 4623
    const/4 v2, 0x1

    .line 4628
    :cond_0
    :try_start_4
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 4629
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    .line 4630
    move v0, v2

    goto :goto_2

    .line 4628
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 4625
    :catch_0
    move-exception v0

    .line 4626
    .local v0, "e":Ljava/lang/Exception;
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 4628
    .end local v0    # "e":Ljava/lang/Exception;
    :try_start_6
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 4629
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 4630
    goto :goto_1

    .line 4628
    :goto_0
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 4629
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 4630
    nop

    .end local p0    # "this":Landroid/app/WallpaperManager;
    .end local p1    # "videoFilePath":Ljava/lang/String;
    .end local p2    # "themePackage":Ljava/lang/String;
    .end local p3    # "fileName":Ljava/lang/String;
    .end local p4    # "userId":I
    .end local p5    # "which":I
    .end local p6    # "updateSetting":Z
    .end local p7    # "allowBackup":Z
    .end local p8    # "extras":Landroid/os/Bundle;
    throw v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1

    .line 4665
    .end local v2    # "isThumbnailCopied":Z
    .end local v3    # "thumbnailUri":Ljava/lang/String;
    .end local v4    # "file":Ljava/io/File;
    .end local v5    # "fin":Ljava/io/FileInputStream;
    .end local v6    # "fout":Ljava/io/FileOutputStream;
    .end local v14    # "thumbnailFileFd":Landroid/os/ParcelFileDescriptor;
    .restart local p0    # "this":Landroid/app/WallpaperManager;
    .restart local p1    # "videoFilePath":Ljava/lang/String;
    .restart local p2    # "themePackage":Ljava/lang/String;
    .restart local p3    # "fileName":Ljava/lang/String;
    .restart local p4    # "userId":I
    .restart local p5    # "which":I
    .restart local p6    # "updateSetting":Z
    .restart local p7    # "allowBackup":Z
    .restart local p8    # "extras":Landroid/os/Bundle;
    :catch_1
    move-exception v0

    move-object/from16 v15, p1

    move-object/from16 v16, p2

    move-object/from16 v17, p3

    goto/16 :goto_7

    .line 4636
    .restart local v2    # "isThumbnailCopied":Z
    .restart local v14    # "thumbnailFileFd":Landroid/os/ParcelFileDescriptor;
    :cond_1
    :goto_1
    move v0, v2

    .end local v2    # "isThumbnailCopied":Z
    .local v0, "isThumbnailCopied":Z
    :goto_2
    const/4 v2, 0x0

    .line 4637
    .local v2, "assetFd":Landroid/content/res/AssetFileDescriptor;
    :try_start_7
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_8

    const-string v4, ""

    if-eqz v3, :cond_2

    .line 4638
    move-object v3, v4

    .line 4639
    .end local p1    # "videoFilePath":Ljava/lang/String;
    .local v3, "videoFilePath":Ljava/lang/String;
    move-object/from16 v5, p2

    move-object/from16 v6, p3

    :try_start_8
    invoke-direct {v1, v5, v6}, Landroid/app/WallpaperManager;->getVideoFDFromPackage(Ljava/lang/String;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v7
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_2

    move-object v2, v7

    move-object v10, v2

    move-object v15, v3

    goto :goto_3

    .line 4665
    .end local v0    # "isThumbnailCopied":Z
    .end local v2    # "assetFd":Landroid/content/res/AssetFileDescriptor;
    .end local v14    # "thumbnailFileFd":Landroid/os/ParcelFileDescriptor;
    :catch_2
    move-exception v0

    move-object v15, v3

    move-object/from16 v16, v5

    move-object/from16 v17, v6

    goto/16 :goto_7

    .line 4637
    .end local v3    # "videoFilePath":Ljava/lang/String;
    .restart local v0    # "isThumbnailCopied":Z
    .restart local v2    # "assetFd":Landroid/content/res/AssetFileDescriptor;
    .restart local v14    # "thumbnailFileFd":Landroid/os/ParcelFileDescriptor;
    .restart local p1    # "videoFilePath":Ljava/lang/String;
    :cond_2
    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v15, p1

    move-object v10, v2

    .line 4641
    .end local v2    # "assetFd":Landroid/content/res/AssetFileDescriptor;
    .end local p1    # "videoFilePath":Ljava/lang/String;
    .local v10, "assetFd":Landroid/content/res/AssetFileDescriptor;
    .local v15, "videoFilePath":Ljava/lang/String;
    :goto_3
    :try_start_9
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_7

    if-eqz v2, :cond_3

    .line 4642
    move-object v2, v4

    move-object/from16 v16, v2

    .end local p2    # "themePackage":Ljava/lang/String;
    .local v2, "themePackage":Ljava/lang/String;
    goto :goto_4

    .line 4641
    .end local v2    # "themePackage":Ljava/lang/String;
    .restart local p2    # "themePackage":Ljava/lang/String;
    :cond_3
    move-object/from16 v16, v5

    .line 4644
    .end local p2    # "themePackage":Ljava/lang/String;
    .local v16, "themePackage":Ljava/lang/String;
    :goto_4
    :try_start_a
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_6

    if-eqz v2, :cond_4

    .line 4645
    move-object v2, v4

    move-object v9, v2

    .end local p3    # "fileName":Ljava/lang/String;
    .local v2, "fileName":Ljava/lang/String;
    goto :goto_5

    .line 4644
    .end local v2    # "fileName":Ljava/lang/String;
    .restart local p3    # "fileName":Ljava/lang/String;
    :cond_4
    move-object v9, v6

    .line 4648
    .end local p3    # "fileName":Ljava/lang/String;
    .local v9, "fileName":Ljava/lang/String;
    :goto_5
    if-nez v0, :cond_5

    .line 4649
    :try_start_b
    invoke-direct {v1, v10, v15, v9}, Landroid/app/WallpaperManager;->getVideoWallpaperFrame(Landroid/content/res/AssetFileDescriptor;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 4650
    .local v2, "frame":Landroid/graphics/Bitmap;
    const/16 v3, 0x64

    invoke-direct {v1, v2, v14, v3}, Landroid/app/WallpaperManager;->saveWallpaperThumbnailFile(Landroid/graphics/Bitmap;Landroid/os/ParcelFileDescriptor;I)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_3

    goto :goto_6

    .line 4665
    .end local v0    # "isThumbnailCopied":Z
    .end local v2    # "frame":Landroid/graphics/Bitmap;
    .end local v10    # "assetFd":Landroid/content/res/AssetFileDescriptor;
    .end local v14    # "thumbnailFileFd":Landroid/os/ParcelFileDescriptor;
    :catch_3
    move-exception v0

    move-object/from16 v17, v9

    goto/16 :goto_7

    .line 4653
    .restart local v0    # "isThumbnailCopied":Z
    .restart local v10    # "assetFd":Landroid/content/res/AssetFileDescriptor;
    .restart local v14    # "thumbnailFileFd":Landroid/os/ParcelFileDescriptor;
    :cond_5
    :goto_6
    :try_start_c
    invoke-static {v10}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 4654
    invoke-static {v14}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 4656
    iget-object v2, v1, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v6

    .line 4657
    .local v6, "callingPackage":Ljava/lang/String;
    sget-object v2, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v2}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v2
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_c} :catch_5

    move-object v3, v15

    move-object/from16 v4, v16

    move-object v5, v9

    move/from16 v7, p4

    move/from16 v8, p5

    move-object/from16 v17, v9

    .end local v9    # "fileName":Ljava/lang/String;
    .local v17, "fileName":Ljava/lang/String;
    move/from16 v9, p7

    move-object/from16 v18, v10

    .end local v10    # "assetFd":Landroid/content/res/AssetFileDescriptor;
    .local v18, "assetFd":Landroid/content/res/AssetFileDescriptor;
    move-object/from16 v10, p8

    :try_start_d
    invoke-interface/range {v2 .. v10}, Landroid/app/IWallpaperManager;->setVideoWallpaper(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZLandroid/os/Bundle;)V

    .line 4659
    if-eqz p6, :cond_6

    .line 4660
    sget-object v2, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v2}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Landroid/app/IWallpaperManager;->setKWPTypeLiveWallpaper(I)V

    .line 4662
    :cond_6
    invoke-direct/range {p0 .. p0}, Landroid/app/WallpaperManager;->isNeedToClearBackupData()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 4663
    invoke-virtual {v1, v11}, Landroid/app/WallpaperManager;->semClearBackupWallpapers(I)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_d} :catch_4

    .line 4668
    .end local v0    # "isThumbnailCopied":Z
    .end local v6    # "callingPackage":Ljava/lang/String;
    .end local v14    # "thumbnailFileFd":Landroid/os/ParcelFileDescriptor;
    .end local v18    # "assetFd":Landroid/content/res/AssetFileDescriptor;
    :cond_7
    nop

    .line 4670
    return-void

    .line 4665
    :catch_4
    move-exception v0

    goto :goto_7

    .end local v17    # "fileName":Ljava/lang/String;
    .restart local v9    # "fileName":Ljava/lang/String;
    :catch_5
    move-exception v0

    move-object/from16 v17, v9

    .end local v9    # "fileName":Ljava/lang/String;
    .restart local v17    # "fileName":Ljava/lang/String;
    goto :goto_7

    .end local v17    # "fileName":Ljava/lang/String;
    .restart local p3    # "fileName":Ljava/lang/String;
    :catch_6
    move-exception v0

    move-object/from16 v17, v6

    goto :goto_7

    .end local v16    # "themePackage":Ljava/lang/String;
    .restart local p2    # "themePackage":Ljava/lang/String;
    :catch_7
    move-exception v0

    move-object/from16 v16, v5

    move-object/from16 v17, v6

    goto :goto_7

    .end local v15    # "videoFilePath":Ljava/lang/String;
    .restart local p1    # "videoFilePath":Ljava/lang/String;
    :catch_8
    move-exception v0

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v15, p1

    move-object/from16 v16, v5

    move-object/from16 v17, v6

    goto :goto_7

    :catch_9
    move-exception v0

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move/from16 v13, p4

    move-object/from16 v15, p1

    move-object/from16 v16, v5

    move-object/from16 v17, v6

    .line 4666
    .end local p1    # "videoFilePath":Ljava/lang/String;
    .end local p2    # "themePackage":Ljava/lang/String;
    .end local p3    # "fileName":Ljava/lang/String;
    .local v0, "e":Landroid/os/RemoteException;
    .restart local v15    # "videoFilePath":Ljava/lang/String;
    .restart local v16    # "themePackage":Ljava/lang/String;
    .restart local v17    # "fileName":Ljava/lang/String;
    :goto_7
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 4667
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 4600
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v15    # "videoFilePath":Ljava/lang/String;
    .end local v16    # "themePackage":Ljava/lang/String;
    .end local v17    # "fileName":Ljava/lang/String;
    .restart local p1    # "videoFilePath":Ljava/lang/String;
    .restart local p2    # "themePackage":Ljava/lang/String;
    .restart local p3    # "fileName":Ljava/lang/String;
    :cond_8
    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move/from16 v13, p4

    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setVideoWallpaper: WallpaperService not running"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4601
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Landroid/os/DeadSystemException;

    invoke-direct {v2}, Landroid/os/DeadSystemException;-><init>()V

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public whitelist setWallpaperComponent(Landroid/content/ComponentName;)Z
    .locals 1
    .param p1, "name"    # Landroid/content/ComponentName;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3426
    iget-object v0, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/app/WallpaperManager;->setWallpaperComponent(Landroid/content/ComponentName;I)Z

    move-result v0

    return v0
.end method

.method public greylist setWallpaperComponent(Landroid/content/ComponentName;I)Z
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I

    .line 3498
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 3503
    :try_start_0
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1, p2}, Landroid/app/IWallpaperManager;->setWallpaperComponentChecked(Landroid/content/ComponentName;Ljava/lang/String;I)V

    .line 3507
    const/4 v0, 0x1

    .line 3508
    .local v0, "which":I
    sget-boolean v1, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_COVER_DISPLAY_WATCHFACE:Z

    if-eqz v1, :cond_0

    .line 3509
    const-string v1, "com.samsung.android.aremoji"

    .line 3510
    .local v1, "COVER_AR_PACKAGE":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3511
    or-int/lit8 v0, v0, 0x10

    .line 3515
    .end local v1    # "COVER_AR_PACKAGE":Ljava/lang/String;
    :cond_0
    invoke-direct {p0}, Landroid/app/WallpaperManager;->isNeedToClearBackupData()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3516
    invoke-virtual {p0, v0}, Landroid/app/WallpaperManager;->semClearBackupWallpapers(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3520
    :cond_1
    const/4 v1, 0x1

    return v1

    .line 3521
    .end local v0    # "which":I
    :catch_0
    move-exception v0

    .line 3522
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 3499
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v1, "WallpaperService not running"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3500
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Landroid/os/DeadSystemException;

    invoke-direct {v1}, Landroid/os/DeadSystemException;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public greylist setWallpaperComponentWithExtras(ILandroid/content/ComponentName;Ljava/lang/String;ILandroid/os/Bundle;)Z
    .locals 7
    .param p1, "which"    # I
    .param p2, "name"    # Landroid/content/ComponentName;
    .param p3, "callingPackage"    # Ljava/lang/String;
    .param p4, "userId"    # I
    .param p5, "extras"    # Landroid/os/Bundle;

    .line 4447
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 4452
    invoke-static {p1}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isLock(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4453
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setWallpaperComponentWithExtras : lock type is not supported. which = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4454
    const/4 v0, 0x0

    return v0

    .line 4458
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/app/WallpaperManager;->resetMultipleWallpaperSettingIfNeeded()V

    .line 4459
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v1

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    invoke-interface/range {v1 .. v6}, Landroid/app/IWallpaperManager;->setWallpaperComponentWithExtras(ILandroid/content/ComponentName;Ljava/lang/String;ILandroid/os/Bundle;)V

    .line 4460
    invoke-direct {p0}, Landroid/app/WallpaperManager;->isNeedToClearBackupData()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4461
    invoke-virtual {p0, p1}, Landroid/app/WallpaperManager;->semClearBackupWallpapers(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4463
    :cond_1
    const/4 v0, 0x1

    return v0

    .line 4464
    :catch_0
    move-exception v0

    .line 4465
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 4448
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v1, "WallpaperService not running"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4449
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Landroid/os/DeadSystemException;

    invoke-direct {v1}, Landroid/os/DeadSystemException;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public whitelist setWallpaperDimAmount(F)V
    .locals 2
    .param p1, "dimAmount"    # F
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3438
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3443
    :try_start_0
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    invoke-static {p1}, Landroid/util/MathUtils;->saturate(F)F

    move-result v1

    invoke-interface {v0, v1}, Landroid/app/IWallpaperManager;->setWallpaperDimAmount(F)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3446
    nop

    .line 3447
    return-void

    .line 3444
    :catch_0
    move-exception v0

    .line 3445
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 3439
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v1, "WallpaperService not running"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3440
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Landroid/os/DeadSystemException;

    invoke-direct {v1}, Landroid/os/DeadSystemException;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public whitelist setWallpaperOffsetSteps(FF)V
    .locals 0
    .param p1, "xStep"    # F
    .param p2, "yStep"    # F

    .line 3559
    iput p1, p0, Landroid/app/WallpaperManager;->mWallpaperXStep:F

    .line 3560
    iput p2, p0, Landroid/app/WallpaperManager;->mWallpaperYStep:F

    .line 3561
    return-void
.end method

.method public whitelist setWallpaperOffsets(Landroid/os/IBinder;FF)V
    .locals 6
    .param p1, "windowToken"    # Landroid/os/IBinder;
    .param p2, "xOffset"    # F
    .param p3, "yOffset"    # F

    .line 3542
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowSession()Landroid/view/IWindowSession;

    move-result-object v0

    iget v4, p0, Landroid/app/WallpaperManager;->mWallpaperXStep:F

    iget v5, p0, Landroid/app/WallpaperManager;->mWallpaperYStep:F

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-interface/range {v0 .. v5}, Landroid/view/IWindowSession;->setWallpaperPosition(Landroid/os/IBinder;FFFF)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3547
    nop

    .line 3548
    return-void

    .line 3545
    :catch_0
    move-exception v0

    .line 3546
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setWallpaperUri(Ljava/lang/String;ZI)V
    .locals 1
    .param p1, "uriString"    # Ljava/lang/String;
    .param p2, "allowBackup"    # Z
    .param p3, "which"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2593
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 2594
    .local v0, "uri":Landroid/net/Uri;
    invoke-virtual {p0, v0, p2, p3}, Landroid/app/WallpaperManager;->semSetUri(Landroid/net/Uri;ZI)V

    .line 2595
    return-void
.end method

.method public blacklist setWallpaperZoomOut(Landroid/os/IBinder;F)V
    .locals 3
    .param p1, "windowToken"    # Landroid/os/IBinder;
    .param p2, "zoom"    # F

    .line 3598
    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    if-ltz v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p2, v0

    if-gtz v0, :cond_1

    .line 3601
    if-eqz p1, :cond_0

    .line 3605
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowSession()Landroid/view/IWindowSession;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/view/IWindowSession;->setWallpaperZoomOut(Landroid/os/IBinder;F)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3608
    nop

    .line 3609
    return-void

    .line 3606
    :catch_0
    move-exception v0

    .line 3607
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 3602
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "windowToken must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3599
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "zoom must be between 0 and 1: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist shouldEnableWideColorGamut()Z
    .locals 1

    .line 1383
    iget-boolean v0, p0, Landroid/app/WallpaperManager;->mWcgEnabled:Z

    return v0
.end method

.method public whitelist suggestDesiredDimensions(II)V
    .locals 6
    .param p1, "minimumWidth"    # I
    .param p2, "minimumHeight"    # I

    .line 3260
    iget-object v0, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "suggestDesiredDimensions"

    invoke-static {v0, v1}, Landroid/os/StrictMode;->assertUiContext(Landroid/content/Context;Ljava/lang/String;)V

    .line 3272
    :try_start_0
    const-string/jumbo v0, "sys.max_texture_size"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3275
    .local v0, "maximumTextureSize":I
    goto :goto_0

    .line 3298
    .end local v0    # "maximumTextureSize":I
    :catch_0
    move-exception v0

    goto :goto_2

    .line 3273
    :catch_1
    move-exception v0

    .line 3274
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    move v0, v1

    .line 3277
    .local v0, "maximumTextureSize":I
    :goto_0
    if-lez v0, :cond_2

    .line 3278
    if-gt p1, v0, :cond_0

    if-le p2, v0, :cond_2

    .line 3280
    :cond_0
    int-to-float v1, p2

    int-to-float v2, p1

    div-float/2addr v1, v2

    .line 3281
    .local v1, "aspect":F
    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    if-le p1, p2, :cond_1

    .line 3282
    move p1, v0

    .line 3283
    int-to-float v4, p1

    mul-float/2addr v4, v1

    float-to-double v4, v4

    add-double/2addr v4, v2

    double-to-int p2, v4

    goto :goto_1

    .line 3285
    :cond_1
    move p2, v0

    .line 3286
    int-to-float v4, p2

    div-float/2addr v4, v1

    float-to-double v4, v4

    add-double/2addr v4, v2

    double-to-int p1, v4

    .line 3291
    .end local v1    # "aspect":F
    :cond_2
    :goto_1
    :try_start_1
    sget-object v1, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v1}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 3295
    sget-object v1, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v1}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v1

    iget-object v2, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    .line 3296
    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getDisplayId()I

    move-result v3

    .line 3295
    invoke-interface {v1, p1, p2, v2, v3}, Landroid/app/IWallpaperManager;->setDimensionHints(IILjava/lang/String;I)V

    .line 3300
    .end local v0    # "maximumTextureSize":I
    nop

    .line 3301
    return-void

    .line 3292
    .restart local v0    # "maximumTextureSize":I
    :cond_3
    sget-object v1, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v2, "WallpaperService not running"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3293
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Landroid/os/DeadSystemException;

    invoke-direct {v2}, Landroid/os/DeadSystemException;-><init>()V

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .end local p0    # "this":Landroid/app/WallpaperManager;
    .end local p1    # "minimumWidth":I
    .end local p2    # "minimumHeight":I
    throw v1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 3299
    .local v0, "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/app/WallpaperManager;
    .restart local p1    # "minimumWidth":I
    .restart local p2    # "minimumHeight":I
    :goto_2
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist wallpaperSupportsWcg(I)Z
    .locals 5
    .param p1, "which"    # I

    .line 1842
    invoke-virtual {p0}, Landroid/app/WallpaperManager;->shouldEnableWideColorGamut()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1843
    return v1

    .line 1845
    :cond_0
    invoke-virtual {p0}, Landroid/app/WallpaperManager;->getColorManagementProxy()Landroid/app/WallpaperManager$ColorManagementProxy;

    move-result-object v0

    .line 1846
    .local v0, "cmProxy":Landroid/app/WallpaperManager$ColorManagementProxy;
    sget-object v2, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    iget-object v3, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, v1, p1, v0}, Landroid/app/WallpaperManager$Globals;->peekWallpaperBitmap(Landroid/content/Context;ZILandroid/app/WallpaperManager$ColorManagementProxy;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1847
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 1848
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object v3

    sget-object v4, Landroid/graphics/ColorSpace$Named;->SRGB:Landroid/graphics/ColorSpace$Named;

    invoke-static {v4}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v4

    if-eq v3, v4, :cond_1

    .line 1849
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/WallpaperManager$ColorManagementProxy;->isSupportedColorSpace(Landroid/graphics/ColorSpace;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 1847
    :goto_0
    return v1
.end method

.method public blacklist wallpaperSupportsWcg(Landroid/graphics/Bitmap;)Z
    .locals 4
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 1862
    invoke-virtual {p0}, Landroid/app/WallpaperManager;->shouldEnableWideColorGamut()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1863
    return v1

    .line 1865
    :cond_0
    invoke-virtual {p0}, Landroid/app/WallpaperManager;->getColorManagementProxy()Landroid/app/WallpaperManager$ColorManagementProxy;

    move-result-object v0

    .line 1866
    .local v0, "cmProxy":Landroid/app/WallpaperManager$ColorManagementProxy;
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1867
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object v2

    sget-object v3, Landroid/graphics/ColorSpace$Named;->SRGB:Landroid/graphics/ColorSpace$Named;

    invoke-static {v3}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v3

    if-eq v2, v3, :cond_1

    .line 1868
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/WallpaperManager$ColorManagementProxy;->isSupportedColorSpace(Landroid/graphics/ColorSpace;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 1866
    :goto_0
    return v1
.end method
