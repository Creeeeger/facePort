.class public Landroid/sec/clipboard/util/ClipboardDataBitmapUtil;
.super Ljava/lang/Object;
.source "ClipboardDataBitmapUtil.java"


# static fields
.field private static final blacklist CLIPBOARD_LANDSCAPE_COLUMN:I = 0x5

.field private static final blacklist CLIPBOARD_PORTRAIT_COLUMN:I = 0x3

.field private static final blacklist HTML_IMAG_MAX_HEIGHT:I = 0x6e

.field private static final blacklist LENGTH_CONTENT_URI:I

.field private static final blacklist PREFIX_CONTENT_URI:Ljava/lang/String; = "content://"

.field private static final blacklist TAG:Ljava/lang/String; = "ClipboardDataBitmapUtil"


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 56
    const-string v0, "content://"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Landroid/sec/clipboard/util/ClipboardDataBitmapUtil;->LENGTH_CONTENT_URI:I

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 6
    .param p0, "options"    # Landroid/graphics/BitmapFactory$Options;
    .param p1, "reqWidth"    # I
    .param p2, "reqHeight"    # I

    .line 344
    iget v0, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 345
    .local v0, "height":I
    iget v1, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 346
    .local v1, "width":I
    const/4 v2, 0x1

    .line 348
    .local v2, "inSampleSize":I
    if-gt v0, p2, :cond_0

    if-le v1, p1, :cond_2

    .line 349
    :cond_0
    int-to-float v3, v0

    int-to-float v4, p2

    div-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 350
    .local v3, "heightRatio":I
    int-to-float v4, v1

    int-to-float v5, p1

    div-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 352
    .local v4, "widthRatio":I
    if-ge v3, v4, :cond_1

    move v5, v3

    goto :goto_0

    :cond_1
    move v5, v4

    :goto_0
    move v2, v5

    .line 355
    .end local v3    # "heightRatio":I
    .end local v4    # "widthRatio":I
    :cond_2
    return v2
.end method

.method public static blacklist convertDpToPixel(Landroid/content/Context;F)F
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dp"    # F

    .line 378
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v0, v0

    const/high16 v1, 0x43200000    # 160.0f

    div-float/2addr v0, v1

    mul-float/2addr v0, p1

    return v0
.end method

.method public static blacklist downloadSimpleBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 9
    .param p0, "urlname"    # Ljava/lang/String;
    .param p1, "reqWidth"    # I
    .param p2, "reqHeight"    # I

    .line 88
    const-string v0, "ClipboardDataBitmapUtil"

    const/4 v1, 0x0

    .line 92
    .local v1, "result":Landroid/graphics/Bitmap;
    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 93
    .local v3, "url":Ljava/net/URL;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "url : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    .line 96
    .local v4, "connection":Ljava/net/URLConnection;
    const/16 v5, 0x7d0

    invoke-virtual {v4, v5}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 97
    const/16 v5, 0xbb8

    invoke-virtual {v4, v5}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 98
    invoke-virtual {v4}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    .line 100
    .local v5, "is":Ljava/io/InputStream;
    new-instance v6, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v6}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 101
    .local v6, "bitmapOption":Landroid/graphics/BitmapFactory$Options;
    const/4 v7, 0x1

    iput-boolean v7, v6, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 102
    iput-boolean v7, v6, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 104
    if-eqz v5, :cond_0

    .line 105
    invoke-static {v5, v2, v6}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v7

    move-object v1, v7

    .line 106
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 109
    :cond_0
    iget v7, v6, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    const/4 v8, -0x1

    if-le v7, v8, :cond_3

    iget v7, v6, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-gt v7, v8, :cond_1

    goto :goto_0

    .line 115
    :cond_1
    invoke-static {v6, p1, p2}, Landroid/sec/clipboard/util/ClipboardDataBitmapUtil;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v7

    iput v7, v6, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 118
    const/4 v7, 0x0

    iput-boolean v7, v6, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 119
    invoke-virtual {v3}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v7

    move-object v5, v7

    .line 121
    if-eqz v5, :cond_2

    .line 122
    invoke-static {v5, v2, v6}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v7

    move-object v1, v7

    .line 123
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 131
    .end local v3    # "url":Ljava/net/URL;
    .end local v4    # "connection":Ljava/net/URLConnection;
    .end local v6    # "bitmapOption":Landroid/graphics/BitmapFactory$Options;
    :cond_2
    nop

    .line 133
    return-object v1

    .line 110
    .restart local v3    # "url":Ljava/net/URL;
    .restart local v4    # "connection":Ljava/net/URLConnection;
    .restart local v6    # "bitmapOption":Landroid/graphics/BitmapFactory$Options;
    :cond_3
    :goto_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Return null because received bitmap size is invalid. bitmapOption.outWidth :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v6, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", bitmapOption.outHeight :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v6, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    return-object v1

    .line 128
    .end local v3    # "url":Ljava/net/URL;
    .end local v4    # "connection":Ljava/net/URLConnection;
    .end local v5    # "is":Ljava/io/InputStream;
    .end local v6    # "bitmapOption":Landroid/graphics/BitmapFactory$Options;
    :catch_0
    move-exception v3

    .line 129
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    return-object v2

    .line 125
    .end local v3    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v3

    .line 126
    .local v3, "e":Ljava/lang/Throwable;
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    return-object v2
.end method

.method private static blacklist findImageDegree(Landroid/content/ContentResolver;Landroid/net/Uri;)I
    .locals 10
    .param p0, "contentResolver"    # Landroid/content/ContentResolver;
    .param p1, "uri"    # Landroid/net/Uri;

    .line 244
    const/4 v0, -0x1

    .line 245
    .local v0, "orientation":I
    const/4 v1, 0x0

    .line 247
    .local v1, "_data":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    const-string v3, "content"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, -0x1

    if-eqz v2, :cond_3

    .line 248
    const/4 v2, 0x0

    .line 251
    .local v2, "c":Landroid/database/Cursor;
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, p0

    move-object v5, p1

    :try_start_0
    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    move-object v2, v4

    .line 252
    if-eqz v2, :cond_1

    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 254
    const-string v4, "_data"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 255
    .local v4, "columnIdx":I
    if-eq v4, v3, :cond_0

    .line 256
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object v1, v5

    .line 260
    :cond_0
    const-string/jumbo v5, "orientation"

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v4, v5

    .line 261
    if-eq v4, v3, :cond_1

    .line 263
    :try_start_1
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v5

    .line 266
    goto :goto_0

    .line 264
    :catch_0
    move-exception v5

    .line 265
    .local v5, "nfe":Ljava/lang/NumberFormatException;
    :try_start_2
    invoke-virtual {v5}, Ljava/lang/NumberFormatException;->printStackTrace()V
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 271
    .end local v4    # "columnIdx":I
    .end local v5    # "nfe":Ljava/lang/NumberFormatException;
    :cond_1
    :goto_0
    if-eqz v2, :cond_4

    .line 272
    :goto_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_3

    .line 271
    :catchall_0
    move-exception v3

    goto :goto_2

    .line 268
    :catch_1
    move-exception v4

    .line 269
    .local v4, "sqle":Ljava/lang/RuntimeException;
    :try_start_3
    invoke-virtual {v4}, Ljava/lang/RuntimeException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 271
    .end local v4    # "sqle":Ljava/lang/RuntimeException;
    if-eqz v2, :cond_4

    .line 272
    goto :goto_1

    .line 271
    :goto_2
    if-eqz v2, :cond_2

    .line 272
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 274
    :cond_2
    throw v3

    .line 275
    .end local v2    # "c":Landroid/database/Cursor;
    :cond_3
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    const-string v4, "file"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 276
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    .line 275
    :cond_4
    :goto_3
    nop

    .line 279
    :goto_4
    if-ne v0, v3, :cond_6

    .line 280
    if-nez v1, :cond_5

    .line 281
    const/4 v0, 0x0

    goto :goto_5

    .line 284
    :cond_5
    :try_start_4
    invoke-static {v1}, Landroid/sec/clipboard/util/ClipboardDataBitmapUtil;->getExifOrientation(Ljava/lang/String;)I

    move-result v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    move v0, v2

    .line 288
    goto :goto_5

    .line 285
    :catch_2
    move-exception v2

    .line 286
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 287
    const/4 v0, 0x0

    .line 291
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_6
    :goto_5
    return v0
.end method

.method public static blacklist getBitmapFromContentUri(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .line 171
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 172
    return-object v0

    .line 175
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 176
    .local v1, "contentResolver":Landroid/content/ContentResolver;
    if-nez v1, :cond_1

    .line 177
    return-object v0

    .line 180
    :cond_1
    const/4 v0, 0x0

    .line 181
    .local v0, "result":Landroid/graphics/Bitmap;
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    .line 182
    .local v2, "uriString":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    sget v4, Landroid/sec/clipboard/util/ClipboardDataBitmapUtil;->LENGTH_CONTENT_URI:I

    if-le v3, v4, :cond_4

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v4, "content://"

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_4

    .line 184
    :try_start_0
    invoke-virtual {v1, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    .local v3, "is":Ljava/io/InputStream;
    :try_start_1
    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v4

    .line 186
    if-eqz v3, :cond_2

    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 189
    .end local v3    # "is":Ljava/io/InputStream;
    :cond_2
    goto :goto_1

    .line 184
    .restart local v3    # "is":Ljava/io/InputStream;
    :catchall_0
    move-exception v4

    if-eqz v3, :cond_3

    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v5

    :try_start_4
    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "result":Landroid/graphics/Bitmap;
    .end local v1    # "contentResolver":Landroid/content/ContentResolver;
    .end local v2    # "uriString":Ljava/lang/String;
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "uri":Landroid/net/Uri;
    :cond_3
    :goto_0
    throw v4
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 186
    .end local v3    # "is":Ljava/io/InputStream;
    .restart local v0    # "result":Landroid/graphics/Bitmap;
    .restart local v1    # "contentResolver":Landroid/content/ContentResolver;
    .restart local v2    # "uriString":Ljava/lang/String;
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "uri":Landroid/net/Uri;
    :catch_0
    move-exception v3

    .line 187
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getUriPathBitmap error :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ClipboardDataBitmapUtil"

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    const/4 v0, 0x0

    .line 193
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_4
    :goto_1
    return-object v0
.end method

.method private static blacklist getExifOrientation(Ljava/lang/String;)I
    .locals 4
    .param p0, "filepath"    # Ljava/lang/String;

    .line 295
    const/4 v0, 0x0

    .line 296
    .local v0, "degree":I
    const/4 v1, 0x0

    .line 298
    .local v1, "exif":Landroid/media/ExifInterface;
    :try_start_0
    new-instance v2, Landroid/media/ExifInterface;

    invoke-direct {v2, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 301
    goto :goto_0

    .line 299
    :catch_0
    move-exception v2

    .line 300
    .local v2, "ex":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 302
    .end local v2    # "ex":Ljava/io/IOException;
    :goto_0
    if-eqz v1, :cond_0

    .line 303
    const-string v2, "Orientation"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v2

    .line 305
    .local v2, "orientation":I
    if-eq v2, v3, :cond_0

    .line 307
    sparse-switch v2, :sswitch_data_0

    goto :goto_1

    .line 315
    :sswitch_0
    const/16 v0, 0x10e

    goto :goto_1

    .line 309
    :sswitch_1
    const/16 v0, 0x5a

    .line 310
    goto :goto_1

    .line 312
    :sswitch_2
    const/16 v0, 0xb4

    .line 320
    .end local v2    # "orientation":I
    :cond_0
    :goto_1
    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_2
        0x6 -> :sswitch_1
        0x8 -> :sswitch_0
    .end sparse-switch
.end method

.method public static blacklist getFilePathBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 5
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "reqWidth"    # I
    .param p2, "reqHeight"    # I

    .line 138
    const-string v0, "ClipboardDataBitmapUtil"

    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 139
    .local v1, "bitmapOption":Landroid/graphics/BitmapFactory$Options;
    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 140
    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 143
    :try_start_0
    invoke-static {p0, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 145
    .local v2, "result":Landroid/graphics/Bitmap;
    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    const/4 v4, -0x1

    if-le v3, v4, :cond_2

    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-gt v3, v4, :cond_0

    goto :goto_0

    .line 151
    :cond_0
    invoke-static {v1, p1, p2}, Landroid/sec/clipboard/util/ClipboardDataBitmapUtil;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v3

    iput v3, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 154
    const/4 v3, 0x0

    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 156
    invoke-static {p0, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    .end local v2    # "result":Landroid/graphics/Bitmap;
    .local v0, "result":Landroid/graphics/Bitmap;
    nop

    .line 162
    invoke-static {p0}, Landroid/sec/clipboard/util/ClipboardDataBitmapUtil;->getExifOrientation(Ljava/lang/String;)I

    move-result v2

    .line 163
    .local v2, "degree":I
    if-eqz v2, :cond_1

    .line 164
    invoke-static {v0, v2}, Landroid/sec/clipboard/util/ClipboardDataBitmapUtil;->rotateBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 167
    :cond_1
    return-object v0

    .line 146
    .end local v0    # "result":Landroid/graphics/Bitmap;
    .local v2, "result":Landroid/graphics/Bitmap;
    :cond_2
    :goto_0
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Return null because received bitmap size is invalid. bitmapOption.outWidth :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", bitmapOption.outHeight :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 147
    return-object v2

    .line 157
    .end local v2    # "result":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v2

    .line 158
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getFilePathBitmap error :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    const/4 v0, 0x0

    return-object v0
.end method

.method public static blacklist getResizeBitmap([BII)Landroid/graphics/Bitmap;
    .locals 5
    .param p0, "bytes"    # [B
    .param p1, "reqWidth"    # I
    .param p2, "reqHeight"    # I

    .line 59
    const/4 v0, 0x2

    .line 61
    .local v0, "sampleSize":I
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 62
    .local v1, "bitmapOption":Landroid/graphics/BitmapFactory$Options;
    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 63
    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 66
    :try_start_0
    array-length v2, p0

    const/4 v3, 0x0

    invoke-static {p0, v3, v2, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 70
    .local v2, "bm":Landroid/graphics/Bitmap;
    nop

    .line 72
    :goto_0
    iget v4, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    div-int/2addr v4, v0

    if-lt v4, p1, :cond_0

    iget v4, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    div-int/2addr v4, v0

    if-lt v4, p2, :cond_0

    .line 73
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 75
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 76
    iput v0, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 79
    :try_start_1
    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 80
    array-length v4, p0

    invoke-static {p0, v3, v4, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v2, v3

    .line 83
    goto :goto_1

    .line 81
    :catch_0
    move-exception v3

    .line 82
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 84
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_1
    return-object v2

    .line 67
    .end local v2    # "bm":Landroid/graphics/Bitmap;
    :catch_1
    move-exception v2

    .line 68
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 69
    const/4 v3, 0x0

    return-object v3
.end method

.method public static blacklist getThumbReqHeigth(Landroid/content/Context;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 374
    const/high16 v0, 0x42dc0000    # 110.0f

    invoke-static {p0, v0}, Landroid/sec/clipboard/util/ClipboardDataBitmapUtil;->convertDpToPixel(Landroid/content/Context;F)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public static blacklist getThumbReqWidth(Landroid/content/Context;)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 361
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 362
    .local v0, "displayWidth":I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 364
    .local v1, "displayHeigth":I
    if-ge v0, v1, :cond_0

    .line 365
    int-to-float v2, v0

    const/high16 v3, 0x40400000    # 3.0f

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .local v2, "reqWidth":I
    goto :goto_0

    .line 367
    .end local v2    # "reqWidth":I
    :cond_0
    int-to-float v2, v0

    const/high16 v3, 0x40a00000    # 5.0f

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 370
    .restart local v2    # "reqWidth":I
    :goto_0
    return v2
.end method

.method public static blacklist getUriPathBitmap(Landroid/content/Context;Landroid/net/Uri;II)Landroid/graphics/Bitmap;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "reqWidth"    # I
    .param p3, "reqHeight"    # I

    .line 197
    const-string v0, "ClipboardDataBitmapUtil"

    const/4 v1, 0x0

    .line 198
    .local v1, "result":Landroid/graphics/Bitmap;
    const/4 v2, 0x0

    if-nez p0, :cond_0

    .line 199
    return-object v2

    .line 202
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 203
    .local v3, "contentResolver":Landroid/content/ContentResolver;
    if-nez v3, :cond_1

    .line 204
    return-object v2

    .line 209
    :cond_1
    :try_start_0
    invoke-virtual {v3, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v4

    .line 211
    .local v4, "is":Ljava/io/InputStream;
    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 212
    .local v5, "bitmapOption":Landroid/graphics/BitmapFactory$Options;
    const/4 v6, 0x1

    iput-boolean v6, v5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 213
    iput-boolean v6, v5, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 214
    if-eqz v4, :cond_2

    .line 215
    invoke-static {v4, v2, v5}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 216
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 219
    :cond_2
    iget v6, v5, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    const/4 v7, -0x1

    if-le v6, v7, :cond_5

    iget v6, v5, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-gt v6, v7, :cond_3

    goto :goto_0

    .line 225
    :cond_3
    invoke-static {v5, p2, p3}, Landroid/sec/clipboard/util/ClipboardDataBitmapUtil;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v6

    iput v6, v5, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 228
    const/4 v6, 0x0

    iput-boolean v6, v5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 229
    invoke-virtual {v3, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v6

    move-object v4, v6

    .line 231
    if-eqz v4, :cond_4

    .line 232
    invoke-static {v4, v2, v5}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    move-object v1, v2

    .line 233
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 238
    .end local v5    # "bitmapOption":Landroid/graphics/BitmapFactory$Options;
    :cond_4
    goto :goto_1

    .line 220
    .restart local v5    # "bitmapOption":Landroid/graphics/BitmapFactory$Options;
    :cond_5
    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Return null because received bitmap size is invalid. bitmapOption.outWidth :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v5, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", bitmapOption.outHeight :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v5, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 221
    return-object v2

    .line 235
    .end local v4    # "is":Ljava/io/InputStream;
    .end local v5    # "bitmapOption":Landroid/graphics/BitmapFactory$Options;
    :catch_0
    move-exception v2

    .line 236
    .local v2, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getUriPathBitmap error :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    const/4 v1, 0x0

    .line 240
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1
    return-object v1
.end method

.method private static blacklist rotateBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 8
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "degrees"    # I

    .line 324
    if-eqz p1, :cond_1

    if-eqz p0, :cond_1

    .line 325
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 326
    .local v0, "m":Landroid/graphics/Matrix;
    int-to-float v1, p1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v3

    invoke-virtual {v0, v1, v2, v4}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 329
    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v7, 0x1

    move-object v1, p0

    move-object v6, v0

    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 330
    .local v1, "converted":Landroid/graphics/Bitmap;
    invoke-virtual {p0, v1}, Landroid/graphics/Bitmap;->sameAs(Landroid/graphics/Bitmap;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 331
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 332
    move-object p0, v1

    .line 336
    .end local v1    # "converted":Landroid/graphics/Bitmap;
    :cond_0
    goto :goto_0

    .line 334
    :catch_0
    move-exception v1

    .line 335
    .local v1, "ex":Ljava/lang/OutOfMemoryError;
    invoke-virtual {v1}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    .line 338
    .end local v0    # "m":Landroid/graphics/Matrix;
    .end local v1    # "ex":Ljava/lang/OutOfMemoryError;
    :cond_1
    :goto_0
    return-object p0
.end method
