.class public final Landroid/graphics/BitmapRegionDecoder;
.super Ljava/lang/Object;
.source "BitmapRegionDecoder.java"


# instance fields
.field private greylist-max-o mNativeBitmapRegionDecoder:J

.field private final greylist-max-o mNativeLock:Ljava/lang/Object;

.field private greylist-max-o mRecycled:Z


# direct methods
.method private constructor greylist-max-p <init>(J)V
    .locals 1
    .param p1, "decoder"    # J

    .line 337
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/graphics/BitmapRegionDecoder;->mNativeLock:Ljava/lang/Object;

    .line 338
    iput-wide p1, p0, Landroid/graphics/BitmapRegionDecoder;->mNativeBitmapRegionDecoder:J

    .line 339
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/BitmapRegionDecoder;->mRecycled:Z

    .line 340
    return-void
.end method

.method private greylist-max-o checkRecycled(Ljava/lang/String;)V
    .locals 1
    .param p1, "errorMessage"    # Ljava/lang/String;

    .line 420
    iget-boolean v0, p0, Landroid/graphics/BitmapRegionDecoder;->mRecycled:Z

    if-nez v0, :cond_0

    .line 423
    return-void

    .line 421
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static native greylist-max-o nativeClean(J)V
.end method

.method private static native blacklist nativeDecodeRegion(JIIIILandroid/graphics/BitmapFactory$Options;JJ)Landroid/graphics/Bitmap;
.end method

.method private static native greylist-max-o nativeGetHeight(J)I
.end method

.method private static native greylist-max-o nativeGetWidth(J)I
.end method

.method private static native blacklist nativeNewInstance(J)Landroid/graphics/BitmapRegionDecoder;
.end method

.method private static native blacklist nativeNewInstance(Ljava/io/FileDescriptor;)Landroid/graphics/BitmapRegionDecoder;
.end method

.method private static native blacklist nativeNewInstance(Ljava/io/InputStream;[B)Landroid/graphics/BitmapRegionDecoder;
.end method

.method private static native blacklist nativeNewInstance([BII)Landroid/graphics/BitmapRegionDecoder;
.end method

.method private static native blacklist nativeNewInstanceQMG(J)Landroid/graphics/BitmapRegionDecoder;
.end method

.method private static native blacklist nativeNewInstanceQMG(Ljava/io/InputStream;[B)Landroid/graphics/BitmapRegionDecoder;
.end method

.method public static whitelist newInstance(Landroid/os/ParcelFileDescriptor;)Landroid/graphics/BitmapRegionDecoder;
    .locals 1
    .param p0, "pfd"    # Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 125
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapRegionDecoder;->nativeNewInstance(Ljava/io/FileDescriptor;)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist newInstance(Ljava/io/FileDescriptor;Z)Landroid/graphics/BitmapRegionDecoder;
    .locals 1
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "isShareable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 110
    invoke-static {p0}, Landroid/graphics/BitmapRegionDecoder;->nativeNewInstance(Ljava/io/FileDescriptor;)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist newInstance(Ljava/io/InputStream;)Landroid/graphics/BitmapRegionDecoder;
    .locals 2
    .param p0, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 166
    instance-of v0, p0, Landroid/content/res/AssetManager$AssetInputStream;

    if-eqz v0, :cond_0

    .line 167
    move-object v0, p0

    check-cast v0, Landroid/content/res/AssetManager$AssetInputStream;

    .line 168
    invoke-virtual {v0}, Landroid/content/res/AssetManager$AssetInputStream;->getNativeAsset()J

    move-result-wide v0

    .line 167
    invoke-static {v0, v1}, Landroid/graphics/BitmapRegionDecoder;->nativeNewInstance(J)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v0

    return-object v0

    .line 173
    :cond_0
    const/16 v0, 0x4000

    new-array v0, v0, [B

    .line 174
    .local v0, "tempStorage":[B
    invoke-static {p0, v0}, Landroid/graphics/BitmapRegionDecoder;->nativeNewInstance(Ljava/io/InputStream;[B)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v1

    return-object v1
.end method

.method public static whitelist newInstance(Ljava/io/InputStream;Z)Landroid/graphics/BitmapRegionDecoder;
    .locals 1
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "isShareable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 150
    invoke-static {p0}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/io/InputStream;)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist newInstance(Ljava/lang/String;)Landroid/graphics/BitmapRegionDecoder;
    .locals 4
    .param p0, "pathName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 313
    const/4 v0, 0x0

    .line 314
    .local v0, "decoder":Landroid/graphics/BitmapRegionDecoder;
    const/4 v1, 0x0

    .line 317
    .local v1, "stream":Ljava/io/InputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    .line 318
    invoke-static {v1}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/io/InputStream;)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v2

    .line 320
    nop

    .line 322
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 325
    :goto_0
    goto :goto_1

    .line 323
    :catch_0
    move-exception v2

    goto :goto_0

    .line 328
    :goto_1
    return-object v0

    .line 320
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_0

    .line 322
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 325
    goto :goto_2

    .line 323
    :catch_1
    move-exception v3

    .line 327
    :cond_0
    :goto_2
    throw v2
.end method

.method public static whitelist newInstance(Ljava/lang/String;Z)Landroid/graphics/BitmapRegionDecoder;
    .locals 13
    .param p0, "pathName"    # Ljava/lang/String;
    .param p1, "isShareable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 212
    const/4 v0, 0x0

    .line 213
    .local v0, "decoder":Landroid/graphics/BitmapRegionDecoder;
    const/4 v1, 0x0

    .line 214
    .local v1, "stream":Ljava/io/InputStream;
    const-string v2, ".dcf"

    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 215
    new-instance v2, Landroid/drm/DrmManagerClient;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/drm/DrmManagerClient;-><init>(Landroid/content/Context;)V

    .line 216
    .local v2, "drmClient":Landroid/drm/DrmManagerClient;
    const/4 v3, 0x7

    invoke-virtual {v2, p0, v3}, Landroid/drm/DrmManagerClient;->checkRightsStatus(Ljava/lang/String;I)I

    move-result v3

    .line 218
    .local v3, "rightStatus":I
    const-string v4, "BitmapRegionDecoder"

    if-nez v3, :cond_2

    .line 219
    .end local v2    # "drmClient":Landroid/drm/DrmManagerClient;
    const-string v5, "application/vnd.oma.drm.content"

    .line 220
    .local v5, "mimeType":Ljava/lang/String;
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v6

    .line 221
    .local v6, "fileLength":J
    new-instance v8, Landroid/drm/DrmInfoRequest;

    const/16 v9, 0xa

    invoke-direct {v8, v9, v5}, Landroid/drm/DrmInfoRequest;-><init>(ILjava/lang/String;)V

    .line 222
    .local v8, "drmInfoRequest":Landroid/drm/DrmInfoRequest;
    const-string v9, "drm_path"

    invoke-virtual {v8, v9, p0}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 223
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "LENGTH"

    invoke-virtual {v8, v10, v9}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 225
    invoke-virtual {v2, v8}, Landroid/drm/DrmManagerClient;->acquireDrmInfo(Landroid/drm/DrmInfoRequest;)Landroid/drm/DrmInfo;

    move-result-object v9

    .line 226
    .local v9, "resultInfo":Landroid/drm/DrmInfo;
    const-string/jumbo v10, "status"

    invoke-virtual {v9, v10}, Landroid/drm/DrmInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    .line 227
    .local v10, "status":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "newInstance acquireDrmInfo status is "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    const-string/jumbo v11, "success"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 230
    invoke-virtual {v9}, Landroid/drm/DrmInfo;->getData()[B

    move-result-object v11

    if-eqz v11, :cond_0

    .line 231
    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v9}, Landroid/drm/DrmInfo;->getData()[B

    move-result-object v11

    invoke-direct {v4, v11}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object v1, v4

    .line 232
    invoke-static {v1, p1}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/io/InputStream;Z)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v0

    goto :goto_0

    .line 234
    :cond_0
    const-string/jumbo v11, "newInstance acquireDrmInfo resultInfo is null"

    invoke-static {v4, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 237
    :cond_1
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "newInstance FAIL status = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "INFO"

    invoke-virtual {v9, v12}, Landroid/drm/DrmInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    .end local v5    # "mimeType":Ljava/lang/String;
    .end local v6    # "fileLength":J
    .end local v8    # "drmInfoRequest":Landroid/drm/DrmInfoRequest;
    .end local v9    # "resultInfo":Landroid/drm/DrmInfo;
    .end local v10    # "status":Ljava/lang/String;
    :goto_0
    goto :goto_1

    .line 241
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "newInstance Rights not present. rightStatus = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    :goto_1
    nop

    .line 245
    invoke-virtual {v2}, Landroid/drm/DrmManagerClient;->release()V

    .line 246
    nop

    .line 248
    .end local v3    # "rightStatus":I
    goto :goto_3

    .line 252
    :cond_3
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    .line 253
    invoke-static {v1, p1}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/io/InputStream;Z)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v2

    .line 255
    nop

    .line 257
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 260
    :goto_2
    goto :goto_3

    .line 258
    :catch_0
    move-exception v2

    goto :goto_2

    .line 264
    :goto_3
    return-object v0

    .line 255
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_4

    .line 257
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 260
    goto :goto_4

    .line 258
    :catch_1
    move-exception v3

    .line 262
    :cond_4
    :goto_4
    throw v2
.end method

.method public static blacklist newInstance(Ljava/lang/String;ZZ)Landroid/graphics/BitmapRegionDecoder;
    .locals 1
    .param p0, "pathName"    # Ljava/lang/String;
    .param p1, "isShareable"    # Z
    .param p2, "isPreview"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 297
    invoke-static {p0, p1}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/lang/String;Z)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist newInstance([BII)Landroid/graphics/BitmapRegionDecoder;
    .locals 2
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 88
    or-int v0, p1, p2

    if-ltz v0, :cond_0

    array-length v0, p0

    add-int v1, p1, p2

    if-lt v0, v1, :cond_0

    .line 91
    invoke-static {p0, p1, p2}, Landroid/graphics/BitmapRegionDecoder;->nativeNewInstance([BII)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v0

    return-object v0

    .line 89
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public static whitelist newInstance([BIIZ)Landroid/graphics/BitmapRegionDecoder;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I
    .param p3, "isShareable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 72
    invoke-static {p0, p1, p2}, Landroid/graphics/BitmapRegionDecoder;->newInstance([BII)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist newInstanceQMG(Ljava/io/InputStream;Z)Landroid/graphics/BitmapRegionDecoder;
    .locals 2
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "isShareable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 185
    instance-of v0, p0, Landroid/content/res/AssetManager$AssetInputStream;

    if-eqz v0, :cond_0

    .line 186
    move-object v0, p0

    check-cast v0, Landroid/content/res/AssetManager$AssetInputStream;

    .line 187
    invoke-virtual {v0}, Landroid/content/res/AssetManager$AssetInputStream;->getNativeAsset()J

    move-result-wide v0

    .line 186
    invoke-static {v0, v1}, Landroid/graphics/BitmapRegionDecoder;->nativeNewInstanceQMG(J)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v0

    return-object v0

    .line 192
    :cond_0
    const/16 v0, 0x4000

    new-array v0, v0, [B

    .line 193
    .local v0, "tempStorage":[B
    invoke-static {p0, v0}, Landroid/graphics/BitmapRegionDecoder;->nativeNewInstanceQMG(Ljava/io/InputStream;[B)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public whitelist decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 16
    .param p1, "rect"    # Landroid/graphics/Rect;
    .param p2, "options"    # Landroid/graphics/BitmapFactory$Options;

    .line 357
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-static/range {p2 .. p2}, Landroid/graphics/BitmapFactory$Options;->validate(Landroid/graphics/BitmapFactory$Options;)V

    .line 358
    iget-object v3, v1, Landroid/graphics/BitmapRegionDecoder;->mNativeLock:Ljava/lang/Object;

    monitor-enter v3

    .line 359
    :try_start_0
    const-string v0, "decodeRegion called on recycled region decoder"

    invoke-direct {v1, v0}, Landroid/graphics/BitmapRegionDecoder;->checkRecycled(Ljava/lang/String;)V

    .line 360
    iget v0, v2, Landroid/graphics/Rect;->right:I

    if-lez v0, :cond_0

    iget v0, v2, Landroid/graphics/Rect;->bottom:I

    if-lez v0, :cond_0

    iget v0, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/BitmapRegionDecoder;->getWidth()I

    move-result v4

    if-ge v0, v4, :cond_0

    iget v0, v2, Landroid/graphics/Rect;->top:I

    .line 361
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/BitmapRegionDecoder;->getHeight()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 363
    iget-wide v5, v1, Landroid/graphics/BitmapRegionDecoder;->mNativeBitmapRegionDecoder:J

    iget v7, v2, Landroid/graphics/Rect;->left:I

    iget v8, v2, Landroid/graphics/Rect;->top:I

    iget v0, v2, Landroid/graphics/Rect;->right:I

    iget v4, v2, Landroid/graphics/Rect;->left:I

    sub-int v9, v0, v4

    iget v0, v2, Landroid/graphics/Rect;->bottom:I

    iget v4, v2, Landroid/graphics/Rect;->top:I

    sub-int v10, v0, v4

    .line 365
    invoke-static/range {p2 .. p2}, Landroid/graphics/BitmapFactory$Options;->nativeInBitmap(Landroid/graphics/BitmapFactory$Options;)J

    move-result-wide v12

    .line 366
    invoke-static/range {p2 .. p2}, Landroid/graphics/BitmapFactory$Options;->nativeColorSpace(Landroid/graphics/BitmapFactory$Options;)J

    move-result-wide v14

    .line 363
    move-object/from16 v11, p2

    invoke-static/range {v5 .. v15}, Landroid/graphics/BitmapRegionDecoder;->nativeDecodeRegion(JIIIILandroid/graphics/BitmapFactory$Options;JJ)Landroid/graphics/Bitmap;

    move-result-object v0

    monitor-exit v3

    return-object v0

    .line 362
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "rectangle is outside the image"

    invoke-direct {v0, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/graphics/BitmapRegionDecoder;
    .end local p1    # "rect":Landroid/graphics/Rect;
    .end local p2    # "options":Landroid/graphics/BitmapFactory$Options;
    throw v0

    .line 367
    .restart local p0    # "this":Landroid/graphics/BitmapRegionDecoder;
    .restart local p1    # "rect":Landroid/graphics/Rect;
    .restart local p2    # "options":Landroid/graphics/BitmapFactory$Options;
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected whitelist test-api finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 428
    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/BitmapRegionDecoder;->recycle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 430
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 431
    nop

    .line 432
    return-void

    .line 430
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 431
    throw v0
.end method

.method public whitelist getHeight()I
    .locals 3

    .line 380
    iget-object v0, p0, Landroid/graphics/BitmapRegionDecoder;->mNativeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 381
    :try_start_0
    const-string v1, "getHeight called on recycled region decoder"

    invoke-direct {p0, v1}, Landroid/graphics/BitmapRegionDecoder;->checkRecycled(Ljava/lang/String;)V

    .line 382
    iget-wide v1, p0, Landroid/graphics/BitmapRegionDecoder;->mNativeBitmapRegionDecoder:J

    invoke-static {v1, v2}, Landroid/graphics/BitmapRegionDecoder;->nativeGetHeight(J)I

    move-result v1

    monitor-exit v0

    return v1

    .line 383
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist getWidth()I
    .locals 3

    .line 372
    iget-object v0, p0, Landroid/graphics/BitmapRegionDecoder;->mNativeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 373
    :try_start_0
    const-string v1, "getWidth called on recycled region decoder"

    invoke-direct {p0, v1}, Landroid/graphics/BitmapRegionDecoder;->checkRecycled(Ljava/lang/String;)V

    .line 374
    iget-wide v1, p0, Landroid/graphics/BitmapRegionDecoder;->mNativeBitmapRegionDecoder:J

    invoke-static {v1, v2}, Landroid/graphics/BitmapRegionDecoder;->nativeGetWidth(J)I

    move-result v1

    monitor-exit v0

    return v1

    .line 375
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final whitelist isRecycled()Z
    .locals 1

    .line 412
    iget-boolean v0, p0, Landroid/graphics/BitmapRegionDecoder;->mRecycled:Z

    return v0
.end method

.method public whitelist recycle()V
    .locals 3

    .line 397
    iget-object v0, p0, Landroid/graphics/BitmapRegionDecoder;->mNativeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 398
    :try_start_0
    iget-boolean v1, p0, Landroid/graphics/BitmapRegionDecoder;->mRecycled:Z

    if-nez v1, :cond_0

    .line 399
    iget-wide v1, p0, Landroid/graphics/BitmapRegionDecoder;->mNativeBitmapRegionDecoder:J

    invoke-static {v1, v2}, Landroid/graphics/BitmapRegionDecoder;->nativeClean(J)V

    .line 400
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/graphics/BitmapRegionDecoder;->mRecycled:Z

    .line 402
    :cond_0
    monitor-exit v0

    .line 403
    return-void

    .line 402
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
