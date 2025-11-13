.class Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper$WallpaperData;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field private mHints:Landroid/app/SemWallpaperColors;

.field private mIntelligentCrops:Ljava/lang/String;

.field private mPath:Ljava/lang/String;

.field private mRect:Landroid/graphics/Rect;

.field private mType:I

.field private mUri:Landroid/net/Uri;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x2

    iput v0, p0, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper$WallpaperData;->mType:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper$WallpaperData;->mPath:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper$WallpaperData;->mIntelligentCrops:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper$WallpaperData;->mUri:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper$WallpaperData;->mHints:Landroid/app/SemWallpaperColors;

    iput-object v0, p0, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper$WallpaperData;->mRect:Landroid/graphics/Rect;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper$WallpaperData;-><init>()V

    return-void
.end method

.method private getRect(Ljava/lang/String;)Landroid/graphics/Rect;
    .locals 5

    const-string p0, "PluginHomeWallpaper"

    const-string v0, "[.^][^.]+$"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "_rect.txt"

    invoke-static {p1, v0}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    new-instance v3, Ljava/io/BufferedReader;

    invoke-direct {v3, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/graphics/Rect;->unflattenFromString(Ljava/lang/String;)Landroid/graphics/Rect;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_6

    :catch_0
    move-exception v1

    goto :goto_5

    :catchall_0
    move-exception v2

    goto :goto_3

    :catchall_1
    move-exception v3

    goto :goto_1

    :catchall_2
    move-exception v4

    :try_start_7
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_0

    :catchall_3
    move-exception v3

    :try_start_8
    invoke-virtual {v4, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :goto_1
    :try_start_9
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    goto :goto_2

    :catchall_4
    move-exception v2

    :try_start_a
    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw v3
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
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    throw v2
    :try_end_c
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_c} :catch_1
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_0

    :goto_5
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    :catch_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getRect, "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is not available"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_6
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getRect, rectPath: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", rect: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method


# virtual methods
.method public getHints()Landroid/app/SemWallpaperColors;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper$WallpaperData;->mHints:Landroid/app/SemWallpaperColors;

    return-object p0
.end method

.method public getIntelligentCrops()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper$WallpaperData;->mIntelligentCrops:Ljava/lang/String;

    return-object p0
.end method

.method public getPath()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper$WallpaperData;->mPath:Ljava/lang/String;

    return-object p0
.end method

.method public getRect()Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper$WallpaperData;->mRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method public getType()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper$WallpaperData;->mType:I

    return p0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper$WallpaperData;->mUri:Landroid/net/Uri;

    return-object p0
.end method

.method public hasData()Z
    .locals 2

    iget v0, p0, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper$WallpaperData;->mType:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper$WallpaperData;->mPath:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper$WallpaperData;->mUri:Landroid/net/Uri;

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public resetAll()V
    .locals 1

    const/4 v0, -0x2

    iput v0, p0, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper$WallpaperData;->mType:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper$WallpaperData;->mPath:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper$WallpaperData;->mUri:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper$WallpaperData;->mHints:Landroid/app/SemWallpaperColors;

    iput-object v0, p0, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper$WallpaperData;->mRect:Landroid/graphics/Rect;

    return-void
.end method

.method public resetData()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper$WallpaperData;->mPath:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper$WallpaperData;->mUri:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper$WallpaperData;->mHints:Landroid/app/SemWallpaperColors;

    iput-object v0, p0, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper$WallpaperData;->mRect:Landroid/graphics/Rect;

    return-void
.end method

.method public setHints(Landroid/app/SemWallpaperColors;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper$WallpaperData;->mHints:Landroid/app/SemWallpaperColors;

    return-void
.end method

.method public setIntelligentCrops(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper$WallpaperData;->mIntelligentCrops:Ljava/lang/String;

    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper$WallpaperData;->mPath:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper$WallpaperData;->mUri:Landroid/net/Uri;

    invoke-direct {p0, p1}, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper$WallpaperData;->getRect(Ljava/lang/String;)Landroid/graphics/Rect;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper$WallpaperData;->mRect:Landroid/graphics/Rect;

    return-void
.end method

.method public setType(I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper$WallpaperData;->mType:I

    return-void
.end method

.method public setUri(Landroid/net/Uri;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper$WallpaperData;->mPath:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper$WallpaperData;->mUri:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper$WallpaperData;->mRect:Landroid/graphics/Rect;

    return-void
.end method
