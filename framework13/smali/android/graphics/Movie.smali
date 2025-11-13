.class public Landroid/graphics/Movie;
.super Ljava/lang/Object;
.source "Movie.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private greylist-max-r mNativeMovie:J


# direct methods
.method private constructor greylist-max-p <init>(J)V
    .locals 2
    .param p1, "nativeMovie"    # J

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 39
    iput-wide p1, p0, Landroid/graphics/Movie;->mNativeMovie:J

    .line 40
    return-void

    .line 37
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "native movie creation failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static native whitelist decodeByteArray([BII)Landroid/graphics/Movie;
.end method

.method public static whitelist decodeFile(Ljava/lang/String;)Landroid/graphics/Movie;
    .locals 2
    .param p0, "pathName"    # Ljava/lang/String;

    .line 82
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    .local v0, "is":Ljava/io/InputStream;
    nop

    .line 87
    invoke-static {v0}, Landroid/graphics/Movie;->decodeTempStream(Ljava/io/InputStream;)Landroid/graphics/Movie;

    move-result-object v1

    return-object v1

    .line 84
    .end local v0    # "is":Ljava/io/InputStream;
    :catch_0
    move-exception v0

    .line 85
    .local v0, "e":Ljava/io/FileNotFoundException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public static whitelist decodeStream(Ljava/io/InputStream;)Landroid/graphics/Movie;
    .locals 3
    .param p0, "is"    # Ljava/io/InputStream;

    .line 61
    if-nez p0, :cond_0

    .line 62
    const/4 v0, 0x0

    return-object v0

    .line 64
    :cond_0
    instance-of v0, p0, Landroid/content/res/AssetManager$AssetInputStream;

    if-eqz v0, :cond_1

    .line 65
    move-object v0, p0

    check-cast v0, Landroid/content/res/AssetManager$AssetInputStream;

    invoke-virtual {v0}, Landroid/content/res/AssetManager$AssetInputStream;->getNativeAsset()J

    move-result-wide v0

    .line 66
    .local v0, "asset":J
    invoke-static {v0, v1}, Landroid/graphics/Movie;->nativeDecodeAsset(J)Landroid/graphics/Movie;

    move-result-object v2

    return-object v2

    .line 69
    .end local v0    # "asset":J
    :cond_1
    invoke-static {p0}, Landroid/graphics/Movie;->nativeDecodeStream(Ljava/io/InputStream;)Landroid/graphics/Movie;

    move-result-object v0

    return-object v0
.end method

.method private static greylist-max-o decodeTempStream(Ljava/io/InputStream;)Landroid/graphics/Movie;
    .locals 2
    .param p0, "is"    # Ljava/io/InputStream;

    .line 101
    const/4 v0, 0x0

    .line 103
    .local v0, "moov":Landroid/graphics/Movie;
    :try_start_0
    invoke-static {p0}, Landroid/graphics/Movie;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Movie;

    move-result-object v1

    move-object v0, v1

    .line 104
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    goto :goto_0

    .line 106
    :catch_0
    move-exception v1

    .line 112
    :goto_0
    return-object v0
.end method

.method private native greylist-max-o nDraw(JFFJ)V
.end method

.method private static native greylist-max-o nativeDecodeAsset(J)Landroid/graphics/Movie;
.end method

.method private static native greylist-max-o nativeDecodeStream(Ljava/io/InputStream;)Landroid/graphics/Movie;
.end method

.method private static native greylist-max-o nativeDestructor(J)V
.end method


# virtual methods
.method public whitelist draw(Landroid/graphics/Canvas;FF)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .line 57
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getNativeCanvasWrapper()J

    move-result-wide v1

    const-wide/16 v5, 0x0

    move-object v0, p0

    move v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v6}, Landroid/graphics/Movie;->nDraw(JFFJ)V

    .line 58
    return-void
.end method

.method public whitelist draw(Landroid/graphics/Canvas;FFLandroid/graphics/Paint;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "paint"    # Landroid/graphics/Paint;

    .line 52
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getNativeCanvasWrapper()J

    move-result-wide v1

    .line 53
    if-eqz p4, :cond_0

    invoke-virtual {p4}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v3

    goto :goto_0

    :cond_0
    const-wide/16 v3, 0x0

    :goto_0
    move-wide v5, v3

    .line 52
    move-object v0, p0

    move v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v6}, Landroid/graphics/Movie;->nDraw(JFFJ)V

    .line 54
    return-void
.end method

.method public native whitelist duration()I
.end method

.method protected whitelist test-api finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 93
    :try_start_0
    iget-wide v0, p0, Landroid/graphics/Movie;->mNativeMovie:J

    invoke-static {v0, v1}, Landroid/graphics/Movie;->nativeDestructor(J)V

    .line 94
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/graphics/Movie;->mNativeMovie:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 97
    nop

    .line 98
    return-void

    .line 96
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 97
    throw v0
.end method

.method public native whitelist height()I
.end method

.method public native whitelist isOpaque()Z
.end method

.method public native whitelist setTime(I)Z
.end method

.method public native whitelist width()I
.end method
