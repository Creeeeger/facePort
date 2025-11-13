.class public Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/pluginlock/PluginWallpaperManager;
.implements Lcom/android/systemui/pluginlock/listener/KeyguardListener$UserSwitch;


# static fields
.field private static final FBE_PATH:Ljava/lang/String; = "/data/user_de/0/com.android.systemui/files/fresh_pack/"

.field private static final FBE_SUB_PATH:Ljava/lang/String; = "/data/user_de/0/com.android.systemui/files/fresh_pack_sub/"

.field private static final TAG:Ljava/lang/String; = "PluginWallpaperManagerImpl"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDelegateApp:Lcom/android/systemui/pluginlock/PluginLockDelegateApp;

.field private mIsSwitchingToSub:Z

.field private final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private final mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

.field private mScreenType:I

.field private final mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field private final mUtils:Lcom/android/systemui/pluginlock/PluginLockUtils;


# direct methods
.method public constructor <init>(Lcom/android/systemui/pluginlock/PluginLockMediator;Lcom/android/systemui/pluginlock/PluginLockDelegateApp;Lcom/android/systemui/util/SettingsHelper;Lcom/android/systemui/pluginlock/PluginLockUtils;Landroid/content/Context;Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->mScreenType:I

    iput-boolean v0, p0, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->mIsSwitchingToSub:Z

    iput-object p2, p0, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->mDelegateApp:Lcom/android/systemui/pluginlock/PluginLockDelegateApp;

    iput-object p4, p0, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->mUtils:Lcom/android/systemui/pluginlock/PluginLockUtils;

    iput-object p5, p0, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    iput-object p6, p0, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iput-object p1, p0, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    invoke-interface {p1, p0}, Lcom/android/systemui/pluginlock/PluginLockMediator;->setKeyguardUserSwitchListener(Lcom/android/systemui/pluginlock/listener/KeyguardListener$UserSwitch;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "## PluginWallpaperManagerImpl ##, "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "PluginWallpaperManagerImpl"

    invoke-virtual {p4, p2, p1}, Lcom/android/systemui/pluginlock/PluginLockUtils;->addDump(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean p1, Lcom/android/systemui/LsRune;->LOCKUI_SUB_DISPLAY_LOCK:Z

    const/4 p3, 0x1

    if-nez p1, :cond_1

    sget-boolean p1, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_WATCHFACE:Z

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    sget-boolean p1, Lcom/android/systemui/LsRune;->WALLPAPER_VIRTUAL_DISPLAY:Z

    if-eqz p1, :cond_2

    new-instance p1, Lcom/samsung/android/sdk/cover/ScoverManager;

    invoke-direct {p1, p5}, Lcom/samsung/android/sdk/cover/ScoverManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/samsung/android/sdk/cover/ScoverManager;->getCoverState()Lcom/samsung/android/sdk/cover/ScoverState;

    move-result-object p4

    if-eqz p4, :cond_2

    invoke-virtual {p1}, Lcom/samsung/android/sdk/cover/ScoverManager;->getCoverState()Lcom/samsung/android/sdk/cover/ScoverState;

    move-result-object p1

    iget-boolean p1, p1, Lcom/samsung/android/sdk/cover/ScoverState;->switchState:Z

    if-nez p1, :cond_2

    const-string p1, "PluginLockWallpaperManager, virtual display: mScreenType = PluginLock.SCREEN_SUB"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput p3, p0, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->mScreenType:I

    goto :goto_1

    :cond_1
    :goto_0
    :try_start_0
    invoke-static {p5}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/WallpaperManager;->getLidState()I

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "PluginLockWallpaperManager: mScreenType = PluginLock.SCREEN_SUB"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput p3, p0, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->mScreenType:I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/NullPointerException;->printStackTrace()V

    :cond_2
    :goto_1
    sget-boolean p1, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_WATCHFACE:Z

    if-nez p1, :cond_3

    sget-boolean p1, Lcom/android/systemui/LsRune;->WALLPAPER_VIRTUAL_DISPLAY:Z

    if-eqz p1, :cond_4

    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->fillFbeWallpaperData()V

    :cond_4
    return-void
.end method

.method private fillFbeWallpaperData()V
    .locals 7

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->isFbeWallpaperAvailable(I)Z

    move-result v1

    invoke-virtual {p0, v0}, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->getFbeWallpaperType(I)I

    move-result v2

    invoke-virtual {p0, v0}, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->getFbeWallpaperPath(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->mUtils:Lcom/android/systemui/pluginlock/PluginLockUtils;

    const-string v5, "fillFbeWallpaperData, fbeSubType: "

    const-string v6, ", fbeSubPath: "

    invoke-static {v2, v5, v6, v3}, Lcom/android/keyguard/logging/BiometricMessageDeferralLogger$logUpdateMessage$2$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "PluginWallpaperManagerImpl"

    invoke-virtual {v4, v6, v5}, Lcom/android/systemui/pluginlock/PluginLockUtils;->addDump(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_0

    const/4 v1, -0x2

    if-eq v2, v1, :cond_0

    if-eqz v3, :cond_0

    iget-object v1, p0, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    invoke-interface {v1}, Lcom/android/systemui/pluginlock/PluginLockMediator;->getPluginHomeWallpaper()Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v2, v4, v3}, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper;->setWallpaper(IIILjava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->getFbeSemWallpaperColors(I)Landroid/app/SemWallpaperColors;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper;->setWallpaperHints(Landroid/app/SemWallpaperColors;)V

    :cond_0
    return-void
.end method

.method private getFbeColorFile(I)Ljava/io/File;
    .locals 1

    const-string v0, "color"

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->getFbeFile(ILjava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method private getFbeFile(ILjava/lang/String;)Ljava/io/File;
    .locals 3

    new-instance p0, Ljava/io/File;

    if-nez p1, :cond_0

    const-string p1, "/data/user_de/0/com.android.systemui/files/fresh_pack/"

    goto :goto_0

    :cond_0
    const-string p1, "/data/user_de/0/com.android.systemui/files/fresh_pack_sub/"

    :goto_0
    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_2

    array-length p1, p0

    if-eqz p1, :cond_2

    array-length p1, p0

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p1, :cond_2

    aget-object v1, p0, v0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method private getFbeIcropFile(I)Ljava/io/File;
    .locals 1

    const-string v0, "icrops"

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->getFbeFile(ILjava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method private getFbeRectFile(I)Ljava/io/File;
    .locals 1

    const-string v0, "rect"

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->getFbeFile(ILjava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method private getFbeWallpaperFile(I)Ljava/io/File;
    .locals 1

    const-string v0, "fbe"

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->getFbeFile(ILjava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method private isDynamicLockEnabled()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    invoke-interface {p0}, Lcom/android/systemui/pluginlock/PluginLockMediator;->isDynamicLockEnabled()Z

    move-result p0

    return p0
.end method

.method private isNumeric(Ljava/lang/String;)Z
    .locals 0

    const-string p0, "^(0|[1-9][0-9]*)$"

    invoke-virtual {p1, p0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public fillWallpaperData(IIILjava/lang/String;)V
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    if-eqz v0, :cond_0

    const-string v0, "fillWallpaperData screen:"

    invoke-static {p1, v0}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "PluginWallpaperManagerImpl"

    invoke-static {v2, v0, v1}, Lcom/android/systemui/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    invoke-interface {v0}, Lcom/android/systemui/pluginlock/PluginLockMediator;->getPluginLockWallpaper()Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->mContext:Landroid/content/Context;

    move v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->fillData(Landroid/content/Context;IIILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public getBitmapFromPath(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->mContext:Landroid/content/Context;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/android/systemui/pluginlock/utils/BitmapUtils;->getBitmapFromPath(Landroid/content/Context;Ljava/lang/String;ZZ)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public getBitmapFromPath(Ljava/lang/String;Z)Landroid/graphics/Bitmap;
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->mContext:Landroid/content/Context;

    xor-int/lit8 p2, p2, 0x1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/android/systemui/pluginlock/utils/BitmapUtils;->getBitmapFromPath(Landroid/content/Context;Ljava/lang/String;ZZ)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public getBitmapFromUri(Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->mContext:Landroid/content/Context;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/android/systemui/pluginlock/utils/BitmapUtils;->getBitmapFromUri(Landroid/content/Context;Landroid/net/Uri;ZZ)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public getBitmapFromUri(Landroid/net/Uri;Z)Landroid/graphics/Bitmap;
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->mContext:Landroid/content/Context;

    xor-int/lit8 p2, p2, 0x1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/android/systemui/pluginlock/utils/BitmapUtils;->getBitmapFromUri(Landroid/content/Context;Landroid/net/Uri;ZZ)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public getFbeSemWallpaperColors()Landroid/app/SemWallpaperColors;
    .locals 1

    iget v0, p0, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->mScreenType:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->getFbeSemWallpaperColors(I)Landroid/app/SemWallpaperColors;

    move-result-object p0

    return-object p0
.end method

.method public getFbeSemWallpaperColors(I)Landroid/app/SemWallpaperColors;
    .locals 3

    invoke-direct {p0, p1}, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->getFbeColorFile(I)Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->canRead()Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance p0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {p0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_0

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :try_start_3
    invoke-virtual {p0}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_6

    :catch_0
    move-exception p0

    goto :goto_5

    :catchall_1
    move-exception p0

    goto :goto_3

    :goto_1
    :try_start_5
    invoke-virtual {p0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception p0

    :try_start_6
    invoke-virtual {v1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :goto_3
    :try_start_7
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_4

    :catchall_3
    move-exception v0

    :try_start_8
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    throw p0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    :goto_5
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_6
    :try_start_9
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-static {p0}, Landroid/app/SemWallpaperColors;->fromXml(Ljava/lang/String;)Landroid/app/SemWallpaperColors;

    move-result-object p0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    return-object p0

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    invoke-static {}, Landroid/app/SemWallpaperColors;->getBlankWallpaperColors()Landroid/app/SemWallpaperColors;

    move-result-object p0

    return-object p0
.end method

.method public getFbeWallpaper(I)Landroid/graphics/Bitmap;
    .locals 4

    invoke-direct {p0, p1}, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->getFbeWallpaperFile(I)Ljava/io/File;

    move-result-object v0

    const-string v1, "PluginWallpaperManagerImpl"

    if-eqz v0, :cond_0

    const-string v2, "getFbeWallpaper screen: "

    const-string v3, ", path: "

    invoke-static {p1, v2, v3}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->getBitmapFromPath(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "getFbeWallpaper null"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public getFbeWallpaper(IZ)Landroid/graphics/Bitmap;
    .locals 4

    invoke-direct {p0, p1}, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->getFbeWallpaperFile(I)Ljava/io/File;

    move-result-object v0

    const-string v1, "PluginWallpaperManagerImpl"

    if-eqz v0, :cond_0

    const-string v2, "getFbeWallpaper screen: "

    const-string v3, ", path: "

    invoke-static {p1, v2, v3}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->getBitmapFromPath(Ljava/lang/String;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "getFbeWallpaper null"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public getFbeWallpaperIntelligentCrop(I)Ljava/lang/String;
    .locals 4

    const-string v0, "PluginWallpaperManagerImpl"

    invoke-direct {p0, p1}, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->getFbeIcropFile(I)Ljava/io/File;

    move-result-object p0

    const/4 p1, 0x0

    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance p0, Ljava/io/InputStreamReader;

    invoke-direct {p0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, p0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    invoke-virtual {p0}, Ljava/io/InputStreamReader;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_6

    :catch_0
    move-exception p0

    goto :goto_5

    :catchall_0
    move-exception p0

    goto :goto_3

    :catchall_1
    move-exception v2

    goto :goto_1

    :catchall_2
    move-exception v3

    :try_start_7
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_0

    :catchall_3
    move-exception v2

    :try_start_8
    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :goto_1
    :try_start_9
    invoke-virtual {p0}, Ljava/io/InputStreamReader;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    goto :goto_2

    :catchall_4
    move-exception p0

    :try_start_a
    invoke-virtual {v2, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :goto_3
    :try_start_b
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    goto :goto_4

    :catchall_5
    move-exception v1

    :try_start_c
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    throw p0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0

    :goto_5
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getFbeWallpaperIntelligentCrop: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_6
    const-string p0, "getFbeWallpaperIntelligentCrop: iCrops = "

    invoke-static {p0, p1, v0}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method public getFbeWallpaperPath()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->mScreenType:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->getFbeWallpaperPath(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getFbeWallpaperPath(I)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->getFbeWallpaperFile(I)Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method public getFbeWallpaperRect()Landroid/graphics/Rect;
    .locals 1

    iget v0, p0, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->mScreenType:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->getFbeWallpaperRect(I)Landroid/graphics/Rect;

    const/4 p0, 0x0

    return-object p0
.end method

.method public getFbeWallpaperRect(I)Landroid/graphics/Rect;
    .locals 3

    invoke-direct {p0, p1}, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->getFbeRectFile(I)Ljava/io/File;

    move-result-object p0

    const/4 p1, 0x0

    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance p0, Ljava/io/InputStreamReader;

    invoke-direct {p0, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, p0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/Rect;->unflattenFromString(Ljava/lang/String;)Landroid/graphics/Rect;

    move-result-object p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    invoke-virtual {p0}, Ljava/io/InputStreamReader;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_6

    :catch_0
    move-exception p0

    goto :goto_5

    :catchall_0
    move-exception p0

    goto :goto_3

    :catchall_1
    move-exception v1

    goto :goto_1

    :catchall_2
    move-exception v2

    :try_start_7
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_0

    :catchall_3
    move-exception v1

    :try_start_8
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :goto_1
    :try_start_9
    invoke-virtual {p0}, Ljava/io/InputStreamReader;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    goto :goto_2

    :catchall_4
    move-exception p0

    :try_start_a
    invoke-virtual {v1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :goto_3
    :try_start_b
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    goto :goto_4

    :catchall_5
    move-exception v0

    :try_start_c
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    throw p0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0

    :goto_5
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_6
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "getFbeWallpaperRect, rect: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "PluginWallpaperManagerImpl"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1
.end method

.method public getFbeWallpaperType(I)I
    .locals 4

    const/4 v0, 0x2

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->mUtils:Lcom/android/systemui/pluginlock/PluginLockUtils;

    invoke-virtual {v2}, Lcom/android/systemui/pluginlock/PluginLockUtils;->isGoingToRescueParty()Z

    move-result v2

    const/4 v3, -0x2

    if-eqz v2, :cond_0

    return v3

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->getFbeWallpaperFile(I)Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    const-string p1, "_"

    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    aget-object p0, p0, v1

    if-eqz p0, :cond_4

    const/4 p1, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string/jumbo v2, "video"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    move p1, v0

    goto :goto_0

    :sswitch_1
    const-string v2, "image"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    move p1, v1

    goto :goto_0

    :sswitch_2
    const-string v2, "gif"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :goto_0
    packed-switch p1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return v0

    :pswitch_1
    return v1

    :pswitch_2
    const/16 p0, 0x16

    return p0

    :cond_4
    :goto_1
    return v3

    :sswitch_data_0
    .sparse-switch
        0x18fc4 -> :sswitch_2
        0x5faa95b -> :sswitch_1
        0x6b0147b -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getHomeCurrentScreen()I
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    invoke-interface {p0}, Lcom/android/systemui/pluginlock/PluginLockMediator;->getPluginHomeWallpaper()Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper;->getCurrentScreen()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getHomeWallpaperBitmap(I)Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    invoke-interface {p0}, Lcom/android/systemui/pluginlock/PluginLockMediator;->getPluginHomeWallpaper()Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper;->getWallpaperBitmap(I)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getHomeWallpaperIntelligentCrop(I)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    invoke-interface {p0}, Lcom/android/systemui/pluginlock/PluginLockMediator;->getPluginHomeWallpaper()Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper;->getIntelligentCrops(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getHomeWallpaperPath(I)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    invoke-interface {p0}, Lcom/android/systemui/pluginlock/PluginLockMediator;->getPluginHomeWallpaper()Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper;->getWallpaperPath(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getHomeWallpaperRect(I)Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    invoke-interface {p0}, Lcom/android/systemui/pluginlock/PluginLockMediator;->getPluginHomeWallpaper()Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper;->getWallpaperRect(I)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getHomeWallpaperType(I)I
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    invoke-interface {p0}, Lcom/android/systemui/pluginlock/PluginLockMediator;->getPluginHomeWallpaper()Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper;->getWallpaperType(I)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x2

    return p0
.end method

.method public getSubFbeWallpaperType()I
    .locals 4

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->mUtils:Lcom/android/systemui/pluginlock/PluginLockUtils;

    invoke-virtual {v1}, Lcom/android/systemui/pluginlock/PluginLockUtils;->isGoingToRescueParty()Z

    move-result v1

    const/4 v2, -0x2

    if-eqz v1, :cond_0

    return v2

    :cond_0
    invoke-direct {p0, v0}, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->getFbeWallpaperFile(I)Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Ljava/io/File;->canRead()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v1, "_"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    aget-object p0, p0, v0

    if-eqz p0, :cond_4

    const/4 v1, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :goto_0
    move v0, v1

    goto :goto_1

    :sswitch_0
    const-string/jumbo v0, "video"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    goto :goto_1

    :sswitch_1
    const-string v3, "image"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :sswitch_2
    const-string v0, "gif"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :cond_3
    :goto_1
    packed-switch v0, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    const/16 p0, 0x17

    return p0

    :pswitch_1
    const/16 p0, 0x15

    return p0

    :pswitch_2
    const/16 p0, 0x16

    return p0

    :cond_4
    :goto_2
    return v2

    :sswitch_data_0
    .sparse-switch
        0x18fc4 -> :sswitch_2
        0x5faa95b -> :sswitch_1
        0x6b0147b -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getWallpaperBitmap()Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    invoke-interface {p0}, Lcom/android/systemui/pluginlock/PluginLockMediator;->getPluginLockWallpaper()Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->getWallpaperBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getWallpaperBitmap(I)Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    invoke-interface {p0}, Lcom/android/systemui/pluginlock/PluginLockMediator;->getPluginLockWallpaper()Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->getWallpaperBitmap(I)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getWallpaperIndex()I
    .locals 6

    const-string v0, "PluginWallpaperManagerImpl"

    const-string v1, "getWallpaperIndex: strIndex = "

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->isCustomPackApplied()Z

    move-result v2

    const/4 v3, -0x1

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->isMultiPackApplied()Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->getWallpaperPath()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    return v3

    :cond_1
    :try_start_0
    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const-string v4, "."

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_2

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_2
    :goto_0
    const-string v4, "[^0-9]"

    const-string v5, ""

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->isNumeric(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->isMultiPackApplied()Z

    move-result p0

    if-eqz p0, :cond_3

    add-int/lit8 v4, v4, -0x1

    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", index = "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v4

    :goto_1
    const-string v1, "getWallpaperIndex, "

    invoke-static {v1, p0, v0}, Lcom/android/keyguard/EmergencyButton$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    :cond_4
    return v3
.end method

.method public getWallpaperIndex(ILandroid/os/Bundle;)I
    .locals 8

    const-string v0, "getWallpaperIndex: strIndex = "

    sget-boolean v1, Lcom/android/systemui/LsRune;->SUBSCREEN_WATCHFACE:Z

    const-string v2, "PluginWallpaperManagerImpl"

    const/4 v3, -0x1

    if-eqz v1, :cond_6

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    goto/16 :goto_3

    :cond_0
    if-eqz p2, :cond_1

    const-string v4, "caller"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "multi_pack_size"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    move p2, v3

    :goto_0
    const-string v5, "getWallpaperIndex: screen = "

    const-string v6, ", source = "

    const-string v7, ", size = "

    invoke-static {p1, v5, v6, v4, v7}, Lcom/android/keyguard/KeyguardBiometricLockoutLogger$mKeyguardUpdateMonitorCallback$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->getHomeWallpaperPath(I)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2

    return v3

    :cond_2
    :try_start_0
    const-string v5, "/"

    invoke-virtual {p1, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v5, v1

    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const-string v5, "."

    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-lez v5, :cond_3

    const/4 v6, 0x0

    invoke-virtual {p1, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_3
    :goto_1
    const-string v5, "[^0-9]"

    const-string v6, ""

    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->isNumeric(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_5

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    const-string v5, "Cover"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    add-int/lit8 p0, p0, -0x1

    if-ne p0, v3, :cond_4

    add-int/lit8 p0, p2, -0x1

    :cond_4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", index = "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :goto_2
    const-string p1, "getWallpaperIndex: "

    invoke-static {p1, p0, v2}, Lcom/android/keyguard/EmergencyButton$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    :cond_5
    return v3

    :cond_6
    :goto_3
    const-string p0, "getWallpaperIndex: Not supported yet! screen = "

    invoke-static {p1, p0, v2}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return v3
.end method

.method public getWallpaperIntelligentCrop()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    invoke-interface {p0}, Lcom/android/systemui/pluginlock/PluginLockMediator;->getPluginLockWallpaper()Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->getWallpaperIntelligentCrop()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getWallpaperIntelligentCrop(I)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    invoke-interface {p0}, Lcom/android/systemui/pluginlock/PluginLockMediator;->getPluginLockWallpaper()Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->getWallpaperIntelligentCrop(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getWallpaperPath()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    invoke-interface {p0}, Lcom/android/systemui/pluginlock/PluginLockMediator;->getPluginLockWallpaper()Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->getWallpaperPath()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getWallpaperPath(I)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    invoke-interface {p0}, Lcom/android/systemui/pluginlock/PluginLockMediator;->getPluginLockWallpaper()Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->getWallpaperPath(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getWallpaperType()I
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    invoke-interface {p0}, Lcom/android/systemui/pluginlock/PluginLockMediator;->getPluginLockWallpaper()Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->getWallpaperType()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getWallpaperType(I)I
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    invoke-interface {p0}, Lcom/android/systemui/pluginlock/PluginLockMediator;->getPluginLockWallpaper()Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->getWallpaperType(I)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getWallpaperUpdateStyle()I
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    invoke-interface {p0}, Lcom/android/systemui/pluginlock/PluginLockMediator;->getPluginLockWallpaper()Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->getUpdateStyle()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getWallpaperUri()Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    invoke-interface {p0}, Lcom/android/systemui/pluginlock/PluginLockMediator;->getPluginLockWallpaper()Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->getWallpaperUri()Landroid/net/Uri;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getWallpaperUri(I)Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    invoke-interface {p0}, Lcom/android/systemui/pluginlock/PluginLockMediator;->getPluginLockWallpaper()Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->getWallpaperUri(I)Landroid/net/Uri;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public hasBackupWallpaper(I)Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->mDelegateApp:Lcom/android/systemui/pluginlock/PluginLockDelegateApp;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/systemui/pluginlock/PluginLockDelegateApp;->hasBackupWallpaper(I)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isCloneDisplayRequired()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    invoke-interface {p0}, Lcom/android/systemui/pluginlock/PluginLockMediator;->getPluginLockWallpaper()Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->isCloneDisplayRequired()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isCustomPackApplied()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    invoke-interface {v0}, Lcom/android/systemui/pluginlock/PluginLockMediator;->getPluginLockWallpaper()Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->isDynamicLockEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->isCustomPack()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isCustomPackApplied(I)Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    invoke-interface {v0}, Lcom/android/systemui/pluginlock/PluginLockMediator;->getPluginLockWallpaper()Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->isDynamicLockEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->isCustomPack(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isDynamicWallpaperEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    invoke-interface {v0}, Lcom/android/systemui/pluginlock/PluginLockMediator;->getPluginLockWallpaper()Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->isDynamicLockEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->isDynamicWallpaper()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isDynamicWallpaperEnabled(I)Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    invoke-interface {v0}, Lcom/android/systemui/pluginlock/PluginLockMediator;->getPluginLockWallpaper()Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->isDynamicLockEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->isDynamicWallpaper(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isFbeAvailable()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->isFbeRequired()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->isFbeWallpaperAvailable()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isFbeAvailable(I)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->isFbeRequired(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->isFbeWallpaperAvailable(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isFbeRequired()Z
    .locals 1

    iget v0, p0, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->mScreenType:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->isFbeRequired(I)Z

    move-result p0

    return p0
.end method

.method public isFbeRequired(I)Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isUserUnlocked$1()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/util/SettingsHelper;->getPluginLockValue(I)I

    move-result v0

    rem-int/lit8 v0, v0, 0xa

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p0, p1}, Lcom/android/systemui/util/SettingsHelper;->getPluginLockValue(I)I

    move-result p0

    const/16 p1, 0x7530

    if-ne p0, p1, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isFbeWallpaperAvailable()Z
    .locals 1

    iget v0, p0, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->mScreenType:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->isFbeWallpaperAvailable(I)Z

    move-result p0

    return p0
.end method

.method public isFbeWallpaperAvailable(I)Z
    .locals 7

    invoke-direct {p0, p1}, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->getFbeWallpaperFile(I)Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    const-string v4, "isFbeWallpaperAvailable: screen = "

    const-string v5, ", flag = "

    const-string v6, ", file = "

    invoke-static {v4, p1, v5, v3, v6}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    const-string v0, "null"

    :goto_1
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PluginWallpaperManagerImpl"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_2

    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->mUtils:Lcom/android/systemui/pluginlock/PluginLockUtils;

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/PluginLockUtils;->isGoingToRescueParty()Z

    move-result p0

    if-nez p0, :cond_2

    move v1, v2

    :cond_2
    return v1
.end method

.method public isFbeWallpaperVideo()Z
    .locals 1

    iget v0, p0, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->mScreenType:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->isFbeWallpaperVideo(I)Z

    move-result p0

    return p0
.end method

.method public isFbeWallpaperVideo(I)Z
    .locals 3

    invoke-direct {p0, p1}, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->getFbeWallpaperFile(I)Ljava/io/File;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->canRead()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v1, "_"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    aget-object p1, p1, v1

    if-eqz p1, :cond_0

    const-string/jumbo v2, "video"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->mUtils:Lcom/android/systemui/pluginlock/PluginLockUtils;

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/PluginLockUtils;->isGoingToRescueParty()Z

    move-result p0

    if-nez p0, :cond_0

    move v0, v1

    :cond_0
    return v0
.end method

.method public isHomeWallpaperRequired(I)Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    invoke-interface {p0, p1}, Lcom/android/systemui/pluginlock/PluginLockMediator;->isHomeWallpaperRequired(I)Z

    move-result p0

    return p0
.end method

.method public isMultiPackApplied()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    invoke-interface {v0}, Lcom/android/systemui/pluginlock/PluginLockMediator;->getPluginLockWallpaper()Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->isDynamicLockEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->isMultiPack()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isMultiPackApplied(I)Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    invoke-interface {v0}, Lcom/android/systemui/pluginlock/PluginLockMediator;->getPluginLockWallpaper()Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->isDynamicLockEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->isMultiPack(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isServiceWallpaperApplied()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    invoke-interface {v0}, Lcom/android/systemui/pluginlock/PluginLockMediator;->getPluginLockWallpaper()Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->isDynamicLockEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->isServiceWallpaper()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isServiceWallpaperApplied(I)Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    invoke-interface {v0}, Lcom/android/systemui/pluginlock/PluginLockMediator;->getPluginLockWallpaper()Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->isDynamicLockEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->isServiceWallpaper(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isVideoWallpaperEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    invoke-interface {v0}, Lcom/android/systemui/pluginlock/PluginLockMediator;->getPluginLockWallpaper()Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->isDynamicLockEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->isVideoWallpaper()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isVideoWallpaperEnabled(I)Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    invoke-interface {v0}, Lcom/android/systemui/pluginlock/PluginLockMediator;->getPluginLockWallpaper()Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->isDynamicLockEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->isVideoWallpaper(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isWallpaperSrcBitmap()Z
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->getWallpaperBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isWallpaperSrcBitmap(I)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->getWallpaperBitmap(I)Landroid/graphics/Bitmap;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isWallpaperSrcPath()Z
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->getWallpaperPath()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isWallpaperSrcPath(I)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->getWallpaperPath(I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isWallpaperSrcUri()Z
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->getWallpaperUri()Landroid/net/Uri;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isWallpaperSrcUri(I)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->getWallpaperUri(I)Landroid/net/Uri;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onColorAreasChanged(I)V
    .locals 0

    return-void
.end method

.method public onHomeWallpaperChanged(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    invoke-interface {v0}, Lcom/android/systemui/pluginlock/PluginLockMediator;->getPluginHomeWallpaper()Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper;->getKey(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper;->resetWallpaper(I)V

    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    invoke-interface {p0, p1}, Lcom/android/systemui/pluginlock/PluginLockMediator;->onWallpaperChanged(I)V

    :cond_0
    return-void
.end method

.method public onLockWallpaperChanged(I)V
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    invoke-interface {v0}, Lcom/android/systemui/pluginlock/PluginLockMediator;->isDynamicLockEnabled()Z

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->mUtils:Lcom/android/systemui/pluginlock/PluginLockUtils;

    invoke-virtual {v1}, Lcom/android/systemui/pluginlock/PluginLockUtils;->isCurrentOwner()Z

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->mUtils:Lcom/android/systemui/pluginlock/PluginLockUtils;

    const-string v3, "notifyWallpaperChanged, enabled:"

    const-string v4, ", mIsSwitchingToSub: "

    invoke-static {v3, v4, v0}, Landroidx/slice/widget/RowView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->mIsSwitchingToSub:Z

    const-string v5, ", isOwner: "

    const-string v6, ", screen:"

    invoke-static {v3, v4, v5, v1, v6}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "PluginWallpaperManagerImpl"

    invoke-virtual {v2, v4, v3}, Lcom/android/systemui/pluginlock/PluginLockUtils;->addDump(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    invoke-interface {v2}, Lcom/android/systemui/pluginlock/PluginLockMediator;->getPluginLockWallpaper()Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;

    move-result-object v2

    if-eqz v2, :cond_2

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->mIsSwitchingToSub:Z

    if-nez v0, :cond_2

    if-eqz v1, :cond_2

    sget-boolean v0, Lcom/android/systemui/LsRune;->LOCKUI_SUB_DISPLAY_LOCK:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    invoke-virtual {v2, v1}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->setWholeRecoverRequired(Z)V

    const/4 v0, -0x1

    invoke-virtual {v2, v0}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->setRecoverRequestedScreen(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->setWholeRecoverRequired(Z)V

    invoke-virtual {v2, p1}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->setRecoverRequestedScreen(I)V

    :cond_1
    :goto_0
    invoke-virtual {v2}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->recover()V

    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->mDelegateApp:Lcom/android/systemui/pluginlock/PluginLockDelegateApp;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    invoke-interface {v0, v1}, Lcom/android/systemui/pluginlock/PluginLockMediator;->recoverItem(I)V

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->mUtils:Lcom/android/systemui/pluginlock/PluginLockUtils;

    const-string v1, "onLockWallpaperChanged called"

    invoke-virtual {v0, v4, v1}, Lcom/android/systemui/pluginlock/PluginLockUtils;->addDump(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->mDelegateApp:Lcom/android/systemui/pluginlock/PluginLockDelegateApp;

    invoke-virtual {v0, p1}, Lcom/android/systemui/pluginlock/PluginLockDelegateApp;->onWallpaperChanged(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->mUtils:Lcom/android/systemui/pluginlock/PluginLockUtils;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onLockWallpaperChanged, "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v4, v0}, Lcom/android/systemui/pluginlock/PluginLockUtils;->addDump(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_1
    return-void
.end method

.method public onLockWallpaperChanged(IZ)V
    .locals 0

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->onLockWallpaperChanged(I)V

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    invoke-interface {p0}, Lcom/android/systemui/pluginlock/PluginLockMediator;->getPluginLockWallpaper()Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->resetWallpaperData(I)V

    :cond_1
    return-void
.end method

.method public onUserSwitchComplete(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->mUtils:Lcom/android/systemui/pluginlock/PluginLockUtils;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onUserSwitchComplete, userId: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "PluginWallpaperManagerImpl"

    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/pluginlock/PluginLockUtils;->addDump(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->mIsSwitchingToSub:Z

    return-void
.end method

.method public onUserSwitching(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->mUtils:Lcom/android/systemui/pluginlock/PluginLockUtils;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onUserSwitching, userId: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "PluginWallpaperManagerImpl"

    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/pluginlock/PluginLockUtils;->addDump(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->mIsSwitchingToSub:Z

    return-void
.end method

.method public onWallpaperConsumed(IZ)V
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    invoke-interface {v0}, Lcom/android/systemui/pluginlock/PluginLockMediator;->isDynamicLockEnabled()Z

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->mUtils:Lcom/android/systemui/pluginlock/PluginLockUtils;

    invoke-virtual {v1}, Lcom/android/systemui/pluginlock/PluginLockUtils;->isCurrentOwner()Z

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->mUtils:Lcom/android/systemui/pluginlock/PluginLockUtils;

    const-string v3, "onWallpaperConsumed, enabled:"

    const-string v4, ", mIsSwitchingToSub: "

    invoke-static {v3, v4, v0}, Landroidx/slice/widget/RowView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->mIsSwitchingToSub:Z

    const-string v5, ", isOwner: "

    const-string v6, ", screen:"

    invoke-static {v3, v4, v5, v1, v6}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", updateColor:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "PluginWallpaperManagerImpl"

    invoke-virtual {v2, v4, v3}, Lcom/android/systemui/pluginlock/PluginLockUtils;->addDump(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    invoke-interface {v2}, Lcom/android/systemui/pluginlock/PluginLockMediator;->getPluginLockWallpaper()Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;

    move-result-object v2

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->mIsSwitchingToSub:Z

    if-nez v0, :cond_0

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->mDelegateApp:Lcom/android/systemui/pluginlock/PluginLockDelegateApp;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->mUtils:Lcom/android/systemui/pluginlock/PluginLockUtils;

    const-string v1, "onWallpaperConsumed called"

    invoke-virtual {v0, v4, v1}, Lcom/android/systemui/pluginlock/PluginLockUtils;->addDump(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->mDelegateApp:Lcom/android/systemui/pluginlock/PluginLockDelegateApp;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/pluginlock/PluginLockDelegateApp;->onWallpaperConsumed(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->mUtils:Lcom/android/systemui/pluginlock/PluginLockUtils;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "onWallpaperConsumed, "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, v4, p2}, Lcom/android/systemui/pluginlock/PluginLockUtils;->addDump(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public setHomeWallpaperCallback(Lcom/android/systemui/pluginlock/component/PluginWallpaperCallback;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    invoke-interface {p0}, Lcom/android/systemui/pluginlock/PluginLockMediator;->getPluginHomeWallpaper()Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper;->setWallpaperUpdateCallback(Lcom/android/systemui/pluginlock/component/PluginWallpaperCallback;)V

    :cond_0
    return-void
.end method

.method public setLockWallpaperCallback(Lcom/android/systemui/pluginlock/component/PluginWallpaperCallback;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    invoke-interface {p0}, Lcom/android/systemui/pluginlock/PluginLockMediator;->getPluginLockWallpaper()Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->setWallpaperUpdateCallback(Lcom/android/systemui/pluginlock/component/PluginWallpaperCallback;)V

    :cond_0
    return-void
.end method
