.class public final Lcom/android/systemui/wallpaper/MultiPackDispatcher;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static mRetryCount:I

.field public static mRetryCountSub:I


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mHandler:Lcom/android/systemui/wallpaper/MultiPackDispatcher$MyHandler;

.field public final mLoggerWrapper:Lcom/android/systemui/wallpaper/log/WallpaperLogger;

.field public mOnApplyMultipackListener:Lcom/android/systemui/wallpaper/PluginWallpaperController$1;

.field public final mPluginLockUtils:Lcom/android/systemui/pluginlock/PluginLockUtils;

.field public final mSelectedUserId:I


# direct methods
.method public static -$$Nest$mrequestImageWallpaper(Lcom/android/systemui/wallpaper/MultiPackDispatcher;Ljava/lang/String;)V
    .locals 9

    iget-object v0, p0, Lcom/android/systemui/wallpaper/MultiPackDispatcher;->mLoggerWrapper:Lcom/android/systemui/wallpaper/log/WallpaperLogger;

    check-cast v0, Lcom/android/systemui/wallpaper/log/WallpaperLoggerImpl;

    const-string v1, "MultiPackDispatcher"

    const-string/jumbo v2, "requestImageWallpaper for subuser."

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/wallpaper/log/WallpaperLoggerImpl;->log(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/wallpaper/MultiPackDispatcher;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v2

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_2

    array-length v3, v0

    if-gtz v3, :cond_0

    goto :goto_1

    :cond_0
    array-length v3, v0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_3

    aget-object v6, v0, v5

    if-eqz v6, :cond_1

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "1"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_3

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    const-string p1, "getFirstImage list is empty."

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    move-object v3, v4

    goto :goto_4

    :cond_3
    move-object v6, v4

    :goto_3
    if-nez v6, :cond_4

    const-string p1, "getFirstImage firstFile is null"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_4
    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v3, "getFirstImage path = "

    const-string v5, ", firstFilePath"

    invoke-static {v3, p1, v5, v0, v1}, Lcom/android/systemui/bixby2/controller/MWBixbyController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_5

    :try_start_0
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {p1}, Ljava/io/File;->canRead()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, p1

    goto :goto_4

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5
    const-string p1, "getFirstImage return null"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :goto_4
    if-nez v3, :cond_6

    const-string/jumbo p0, "requestImageWallpaper bitmap is null"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_6
    :try_start_1
    const-string/jumbo p1, "requestImageWallpaper setBitmap"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v7, p0, Lcom/android/systemui/wallpaper/MultiPackDispatcher;->mSelectedUserId:I

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v4, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/app/WallpaperManager;->setBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;ZII)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_5
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/wallpaper/log/WallpaperLogger;Lcom/android/systemui/pluginlock/PluginLockUtils;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/wallpaper/MultiPackDispatcher;->mOnApplyMultipackListener:Lcom/android/systemui/wallpaper/PluginWallpaperController$1;

    iput-object p1, p0, Lcom/android/systemui/wallpaper/MultiPackDispatcher;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/wallpaper/MultiPackDispatcher;->mLoggerWrapper:Lcom/android/systemui/wallpaper/log/WallpaperLogger;

    iput-object p3, p0, Lcom/android/systemui/wallpaper/MultiPackDispatcher;->mPluginLockUtils:Lcom/android/systemui/pluginlock/PluginLockUtils;

    iput p4, p0, Lcom/android/systemui/wallpaper/MultiPackDispatcher;->mSelectedUserId:I

    return-void
.end method

.method public static enableDlsIfDisabled(Landroid/content/Context;)Z
    .locals 8

    const-string v0, "MultiPackDispatcher"

    const-string v1, "com.samsung.android.dynamiclock"

    const-string v2, "enableDlsIfDisabled: state = "

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x2

    if-ne v4, v6, :cond_0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v1, v5, v3}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    invoke-virtual {p0, v1}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result p0

    if-ne p0, v6, :cond_0

    const-string p0, "enableDlsIfDisabled: Failed to enable dls."

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    return v5

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "enableDlsIfDisabled: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v1, v0}, Lcom/android/keyguard/KeyguardUCMViewController$StateMachine$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    return v3
.end method


# virtual methods
.method public final startMultipack(I)Z
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/wallpaper/MultiPackDispatcher;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v0

    const-string/jumbo v1, "startMultipack: which ="

    invoke-static {p1, v1}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/wallpaper/MultiPackDispatcher;->mLoggerWrapper:Lcom/android/systemui/wallpaper/log/WallpaperLogger;

    check-cast v2, Lcom/android/systemui/wallpaper/log/WallpaperLoggerImpl;

    const-string v3, "MultiPackDispatcher"

    invoke-virtual {v2, v3, v1}, Lcom/android/systemui/wallpaper/log/WallpaperLoggerImpl;->log(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/wallpaper/MultiPackDispatcher;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/wallpaper/MultiPackDispatcher;->enableDlsIfDisabled(Landroid/content/Context;)Z

    move-result v1

    const/4 v4, 0x0

    if-nez v1, :cond_0

    const-string/jumbo p0, "startMultipack: Cannot start multipack. DLS is diabled."

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_0
    invoke-virtual {v0, p1}, Landroid/app/WallpaperManager;->semGetUri(I)Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "startMultipack: uri is null., uid = "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/wallpaper/MultiPackDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, v3, p0}, Lcom/android/systemui/wallpaper/log/WallpaperLoggerImpl;->log(Ljava/lang/String;Ljava/lang/String;)V

    return v4

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/wallpaper/MultiPackDispatcher;->mHandler:Lcom/android/systemui/wallpaper/MultiPackDispatcher$MyHandler;

    if-nez v1, :cond_2

    new-instance v1, Lcom/android/systemui/wallpaper/MultiPackDispatcher$MyHandler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v1, p0, v5}, Lcom/android/systemui/wallpaper/MultiPackDispatcher$MyHandler;-><init>(Lcom/android/systemui/wallpaper/MultiPackDispatcher;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/systemui/wallpaper/MultiPackDispatcher;->mHandler:Lcom/android/systemui/wallpaper/MultiPackDispatcher$MyHandler;

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v5, "/data/overlays/homewallpaper/"

    invoke-static {v5, v1}, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "startMultipack: uri = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", fullPath = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", which = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Lcom/android/systemui/wallpaper/log/WallpaperLoggerImpl;->log(Ljava/lang/String;Ljava/lang/String;)V

    and-int/lit8 p1, p1, 0x30

    if-eqz p1, :cond_3

    sput v4, Lcom/android/systemui/wallpaper/MultiPackDispatcher;->mRetryCountSub:I

    goto :goto_0

    :cond_3
    sput v4, Lcom/android/systemui/wallpaper/MultiPackDispatcher;->mRetryCount:I

    :goto_0
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    iput v4, v2, Landroid/os/Message;->what:I

    const/4 v5, 0x1

    if-eqz p1, :cond_4

    move v4, v5

    :cond_4
    const-string/jumbo p1, "screen"

    invoke-virtual {v3, p1, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo p1, "wallpaper_path"

    invoke-virtual {v3, p1, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p1, "uri"

    invoke-virtual {v3, p1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {v2, v3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object p0, p0, Lcom/android/systemui/wallpaper/MultiPackDispatcher;->mHandler:Lcom/android/systemui/wallpaper/MultiPackDispatcher$MyHandler;

    const-wide/16 v0, 0x64

    invoke-virtual {p0, v2, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return v5
.end method
