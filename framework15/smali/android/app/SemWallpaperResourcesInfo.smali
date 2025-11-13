.class public Landroid/app/SemWallpaperResourcesInfo;
.super Ljava/lang/Object;
.source "SemWallpaperResourcesInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/SemWallpaperResourcesInfo$ResourceParser;,
        Landroid/app/SemWallpaperResourcesInfo$ResourceData;,
        Landroid/app/SemWallpaperResourcesInfo$Item;,
        Landroid/app/SemWallpaperResourcesInfo$TypeParams;
    }
.end annotation


# static fields
.field protected static final blacklist DEBUG:Z

.field protected static final blacklist TAG:Ljava/lang/String; = "WallpaperResourcesInfo"

.field private static final blacklist WALLPAPER_PACKAGE:Ljava/lang/String; = "com.samsung.android.wallpaper.res"


# instance fields
.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mResPkgContext:Landroid/content/Context;

.field private blacklist mResource:Landroid/app/SemWallpaperResourcesInfo$ResourceData;

.field private blacklist mVersion:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Landroid/app/SemWallpaperResourcesInfo;->DEBUG:Z

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 5

    const-string v0, "com.samsung.android.wallpaper.res"

    const-string v1, "WallpaperResourcesInfo"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x1

    iput v2, p0, Landroid/app/SemWallpaperResourcesInfo;->mVersion:I

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p1, v0, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v3

    iput-object v3, p0, Landroid/app/SemWallpaperResourcesInfo;->mResPkgContext:Landroid/content/Context;

    iget-object v3, p0, Landroid/app/SemWallpaperResourcesInfo;->mResPkgContext:Landroid/content/Context;

    if-eqz v3, :cond_0

    new-instance v3, Landroid/app/SemWallpaperResourcesInfo$ResourceParser;

    iget-object v4, p0, Landroid/app/SemWallpaperResourcesInfo;->mResPkgContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/app/SemWallpaperResourcesInfo$ResourceParser;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v0}, Landroid/app/SemWallpaperResourcesInfo$ResourceParser;->parseJson(Ljava/lang/String;)Landroid/app/SemWallpaperResourcesInfo$ResourceData;

    move-result-object v0

    iput-object v0, p0, Landroid/app/SemWallpaperResourcesInfo;->mResource:Landroid/app/SemWallpaperResourcesInfo$ResourceData;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "init: e="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v0, p0, Landroid/app/SemWallpaperResourcesInfo;->mResource:Landroid/app/SemWallpaperResourcesInfo$ResourceData;

    if-nez v0, :cond_1

    new-instance v0, Landroid/app/SemWallpaperResourcesInfo$ResourceData;

    invoke-direct {v0}, Landroid/app/SemWallpaperResourcesInfo$ResourceData;-><init>()V

    iput-object v0, p0, Landroid/app/SemWallpaperResourcesInfo;->mResource:Landroid/app/SemWallpaperResourcesInfo$ResourceData;

    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/app/SemWallpaperResourcesInfo;->mContext:Landroid/content/Context;

    iget-object v0, p0, Landroid/app/SemWallpaperResourcesInfo;->mContext:Landroid/content/Context;

    if-nez v0, :cond_4

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "init: failed to get app context. context="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "), resPkgContext="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/app/SemWallpaperResourcesInfo;->mResPkgContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_1
    invoke-virtual {p1, v0, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Landroid/app/SemWallpaperResourcesInfo;->mContext:Landroid/content/Context;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v2

    :goto_1
    iget-object v2, p0, Landroid/app/SemWallpaperResourcesInfo;->mContext:Landroid/content/Context;

    if-nez v2, :cond_3

    iget-object v2, p0, Landroid/app/SemWallpaperResourcesInfo;->mResPkgContext:Landroid/content/Context;

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/app/SemWallpaperResourcesInfo;->mResPkgContext:Landroid/content/Context;

    goto :goto_2

    :cond_2
    move-object v2, p1

    :goto_2
    iput-object v2, p0, Landroid/app/SemWallpaperResourcesInfo;->mContext:Landroid/content/Context;

    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init: mContext="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/app/SemWallpaperResourcesInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-void
.end method

.method private blacklist getDefaultWallpaperItem(II)Landroid/app/SemWallpaperResourcesInfo$Item;
    .locals 2

    invoke-direct {p0, p1}, Landroid/app/SemWallpaperResourcesInfo;->getModeEnsuredWhich(I)I

    move-result p1

    invoke-direct {p0}, Landroid/app/SemWallpaperResourcesInfo;->getDeviceColorCode()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroid/app/SemWallpaperResourcesInfo;->mResource:Landroid/app/SemWallpaperResourcesInfo$ResourceData;

    invoke-virtual {v1, p1, v0, p2}, Landroid/app/SemWallpaperResourcesInfo$ResourceData;->getDefaultWallpaperItem(ILjava/lang/String;I)Landroid/app/SemWallpaperResourcesInfo$Item;

    move-result-object v1

    return-object v1
.end method

.method private blacklist getDeviceColorCode()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Landroid/app/SemWallpaperResourcesInfo;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/WallpaperManager;->getDeviceColor(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return-object v1

    :cond_0
    invoke-direct {p0, v0}, Landroid/app/SemWallpaperResourcesInfo;->getRefinedColorCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private blacklist getModeEnsuredWhich(I)I
    .locals 3

    invoke-static {p1}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isModeAbsent(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getModeEnsuredWhich: mode is missing. which="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    const-string v2, "WallpaperResourcesInfo"

    invoke-static {v2, v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    or-int/lit8 p1, p1, 0x4

    :cond_0
    return p1
.end method

.method private blacklist getRefinedColorCode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public blacklist dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    const-string v0, "[Default wallpaper type from json]"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/SemWallpaperResourcesInfo;->mResource:Landroid/app/SemWallpaperResourcesInfo$ResourceData;

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/SemWallpaperResourcesInfo$ResourceData;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public blacklist getDefaultImageFileName(I)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/app/SemWallpaperResourcesInfo;->getDefaultWallpaperItem(II)Landroid/app/SemWallpaperResourcesInfo$Item;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return-object v1

    :cond_0
    iget-object v1, v0, Landroid/app/SemWallpaperResourcesInfo$Item;->fileName:Ljava/lang/String;

    return-object v1
.end method

.method public blacklist getDefaultImageWallpaper(I)Ljava/io/InputStream;
    .locals 6

    iget-object v0, p0, Landroid/app/SemWallpaperResourcesInfo;->mResPkgContext:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "WallpaperResourcesInfo"

    if-nez v0, :cond_0

    const-string v0, "getDefaultImageWallpaper: the resource context is not available"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    invoke-virtual {p0, p1}, Landroid/app/SemWallpaperResourcesInfo;->getDefaultImageFileName(I)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDefaultImageWallpaper: resourceName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v1

    :cond_1
    const/16 v3, 0x2e

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Landroid/app/SemWallpaperResourcesInfo;->mResPkgContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "drawable"

    const-string v5, "com.samsung.android.wallpaper.res"

    invoke-virtual {v3, v0, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getDefaultImageWallpaper: wallpaperResId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-gtz v3, :cond_2

    return-object v1

    :cond_2
    iget-object v1, p0, Landroid/app/SemWallpaperResourcesInfo;->mResPkgContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    return-object v1
.end method

.method public blacklist getDefaultLiveWallpaperComponentName(I)Landroid/content/ComponentName;
    .locals 5

    const/4 v0, 0x7

    invoke-direct {p0, p1, v0}, Landroid/app/SemWallpaperResourcesInfo;->getDefaultWallpaperItem(II)Landroid/app/SemWallpaperResourcesInfo$Item;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "WallpaperResourcesInfo"

    if-nez v0, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDefaultLiveWallpaperComponentName: no matched item"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    iget-object v3, v0, Landroid/app/SemWallpaperResourcesInfo$Item;->typeParams:Landroid/app/SemWallpaperResourcesInfo$TypeParams;

    if-eqz v3, :cond_2

    iget-object v3, v0, Landroid/app/SemWallpaperResourcesInfo$Item;->typeParams:Landroid/app/SemWallpaperResourcesInfo$TypeParams;

    iget-object v3, v3, Landroid/app/SemWallpaperResourcesInfo$TypeParams;->mServicePkgName:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, v0, Landroid/app/SemWallpaperResourcesInfo$Item;->typeParams:Landroid/app/SemWallpaperResourcesInfo$TypeParams;

    iget-object v3, v3, Landroid/app/SemWallpaperResourcesInfo$TypeParams;->mServiceClassName:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, v0, Landroid/app/SemWallpaperResourcesInfo$Item;->typeParams:Landroid/app/SemWallpaperResourcesInfo$TypeParams;

    iget-object v2, v2, Landroid/app/SemWallpaperResourcesInfo$TypeParams;->mServicePkgName:Ljava/lang/String;

    iget-object v3, v0, Landroid/app/SemWallpaperResourcesInfo$Item;->typeParams:Landroid/app/SemWallpaperResourcesInfo$TypeParams;

    iget-object v3, v3, Landroid/app/SemWallpaperResourcesInfo$TypeParams;->mServiceClassName:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_2
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDefaultLiveWallpaperComponentName: empty component name. which="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public blacklist getDefaultLiveWallpaperExtras(I)Landroid/os/Bundle;
    .locals 4

    const/4 v0, 0x7

    invoke-direct {p0, p1, v0}, Landroid/app/SemWallpaperResourcesInfo;->getDefaultWallpaperItem(II)Landroid/app/SemWallpaperResourcesInfo$Item;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDefaultLiveWallpaperExtras: no matched item. which="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "WallpaperResourcesInfo"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    iget-object v2, v0, Landroid/app/SemWallpaperResourcesInfo$Item;->typeParams:Landroid/app/SemWallpaperResourcesInfo$TypeParams;

    if-eqz v2, :cond_2

    iget-object v3, v2, Landroid/app/SemWallpaperResourcesInfo$TypeParams;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v3}, Landroid/os/Bundle;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    new-instance v1, Landroid/os/Bundle;

    iget-object v3, v2, Landroid/app/SemWallpaperResourcesInfo$TypeParams;->mExtras:Landroid/os/Bundle;

    invoke-direct {v1, v3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    return-object v1

    :cond_2
    :goto_0
    return-object v1
.end method

.method public blacklist getDefaultMultipackStyle(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/app/SemWallpaperResourcesInfo;->mResource:Landroid/app/SemWallpaperResourcesInfo$ResourceData;

    invoke-virtual {v0, p1}, Landroid/app/SemWallpaperResourcesInfo$ResourceData;->getDefaultMultipackStyle(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getDefaultVideoFrameInfo(Ljava/lang/String;)I
    .locals 2

    iget-object v0, p0, Landroid/app/SemWallpaperResourcesInfo;->mResource:Landroid/app/SemWallpaperResourcesInfo$ResourceData;

    invoke-virtual {v0, p1}, Landroid/app/SemWallpaperResourcesInfo$ResourceData;->getVideoItemByFilename(Ljava/lang/String;)Landroid/app/SemWallpaperResourcesInfo$Item;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    iget v1, v0, Landroid/app/SemWallpaperResourcesInfo$Item;->videoFrameInfo:I

    return v1
.end method

.method public blacklist getDefaultVideoWallpaperFileName(I)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    const/16 v1, 0x8

    invoke-direct {p0, p1, v1}, Landroid/app/SemWallpaperResourcesInfo;->getDefaultWallpaperItem(II)Landroid/app/SemWallpaperResourcesInfo$Item;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, v1, Landroid/app/SemWallpaperResourcesInfo$Item;->fileName:Ljava/lang/String;

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDefaultVideoWallpaperFileName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "WallpaperResourcesInfo"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public blacklist getDefaultWallpaperType(ILjava/lang/String;)I
    .locals 4

    invoke-direct {p0, p1}, Landroid/app/SemWallpaperResourcesInfo;->getModeEnsuredWhich(I)I

    move-result v0

    iget-object v1, p0, Landroid/app/SemWallpaperResourcesInfo;->mResource:Landroid/app/SemWallpaperResourcesInfo$ResourceData;

    invoke-virtual {v1, v0, p2}, Landroid/app/SemWallpaperResourcesInfo$ResourceData;->getDefaultWallpaperType(ILjava/lang/String;)I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDefaultWallpaperType: which = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "WallpaperResourcesInfo"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public blacklist isBlackFirstFrame(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Landroid/app/SemWallpaperResourcesInfo;->mResource:Landroid/app/SemWallpaperResourcesInfo$ResourceData;

    invoke-virtual {v0, p1}, Landroid/app/SemWallpaperResourcesInfo$ResourceData;->getVideoItemByFilename(Ljava/lang/String;)Landroid/app/SemWallpaperResourcesInfo$Item;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    iget-boolean v1, v0, Landroid/app/SemWallpaperResourcesInfo$Item;->isBlackFirstFrame:Z

    return v1
.end method

.method public blacklist isDefaultMultipack(I)Z
    .locals 3

    invoke-direct {p0}, Landroid/app/SemWallpaperResourcesInfo;->getDeviceColorCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/app/SemWallpaperResourcesInfo;->getDefaultWallpaperType(ILjava/lang/String;)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public blacklist isDefaultVideo(I)Z
    .locals 3

    invoke-direct {p0}, Landroid/app/SemWallpaperResourcesInfo;->getDeviceColorCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/app/SemWallpaperResourcesInfo;->getDefaultWallpaperType(ILjava/lang/String;)I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public blacklist isDefaultWallpaperPaired(II)Z
    .locals 3

    invoke-static {p1}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->getMode(I)I

    move-result v0

    or-int/lit8 v1, v0, 0x1

    invoke-direct {p0, v1, p2}, Landroid/app/SemWallpaperResourcesInfo;->getDefaultWallpaperItem(II)Landroid/app/SemWallpaperResourcesInfo$Item;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v2, 0x0

    return v2

    :cond_0
    iget v2, v1, Landroid/app/SemWallpaperResourcesInfo$Item;->which:I

    invoke-static {v2}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isSystemAndLock(I)Z

    move-result v2

    return v2
.end method

.method public blacklist isKnownColorCode(Ljava/lang/String;)Z
    .locals 3

    invoke-direct {p0, p1}, Landroid/app/SemWallpaperResourcesInfo;->getRefinedColorCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Landroid/app/SemWallpaperResourcesInfo;->mResource:Landroid/app/SemWallpaperResourcesInfo$ResourceData;

    invoke-virtual {v0, p1}, Landroid/app/SemWallpaperResourcesInfo$ResourceData;->isKnownColorCode(Ljava/lang/String;)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isKnownColorCode: code = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isKnown = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WallpaperResourcesInfo"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public blacklist isSupportCMF()Z
    .locals 1

    iget-object v0, p0, Landroid/app/SemWallpaperResourcesInfo;->mResource:Landroid/app/SemWallpaperResourcesInfo$ResourceData;

    invoke-virtual {v0}, Landroid/app/SemWallpaperResourcesInfo$ResourceData;->isSupportCMF()Z

    move-result v0

    return v0
.end method
