.class public Lcom/samsung/android/knox/lockscreen/LSOUtils;
.super Ljava/lang/Object;
.source "LSOUtils.java"


# static fields
.field private static MAX_IMAGE_SIZE:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static convertDipToPixel(Landroid/content/Context;I)I
    .locals 1

    int-to-float p1, p1

    .line 774
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    const/4 v0, 0x1

    .line 773
    invoke-static {v0, p1, p0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method private static decodeFile(Ljava/io/File;II)Landroid/graphics/Bitmap;
    .locals 12

    const-string v0, "decodeFile: error occurs. "

    const-string v1, "LSO_LSOUtils"

    if-le p1, p2, :cond_0

    move v2, p2

    goto :goto_0

    :cond_0
    move v2, p1

    :goto_0
    const/4 v3, 0x0

    .line 471
    :try_start_0
    invoke-static {p0}, Lcom/samsung/android/knox/lockscreen/LSOUtils;->getBitmapSize(Ljava/io/File;)Landroid/graphics/Point;

    move-result-object v4

    const/4 v5, 0x1

    .line 474
    iget v6, v4, Landroid/graphics/Point;->y:I

    const-wide/high16 v7, 0x3fe0000000000000L    # 0.5

    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    if-le v6, p2, :cond_1

    iget v11, v4, Landroid/graphics/Point;->x:I

    if-le v11, p1, :cond_1

    int-to-double p1, v2

    .line 478
    invoke-static {v6, v11}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-double v4, v2

    div-double/2addr p1, v4

    .line 477
    invoke-static {p1, p2}, Ljava/lang/Math;->log(D)D

    move-result-wide p1

    .line 479
    invoke-static {v7, v8}, Ljava/lang/Math;->log(D)D

    move-result-wide v4

    div-double/2addr p1, v4

    .line 477
    invoke-static {p1, p2}, Ljava/lang/Math;->round(D)J

    move-result-wide p1

    long-to-int p1, p1

    int-to-double p1, p1

    .line 475
    invoke-static {v9, v10, p1, p2}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p1

    goto :goto_1

    :cond_1
    if-le v6, p2, :cond_2

    int-to-double p1, p2

    int-to-double v4, v6

    div-double/2addr p1, v4

    .line 483
    invoke-static {p1, p2}, Ljava/lang/Math;->log(D)D

    move-result-wide p1

    .line 484
    invoke-static {v7, v8}, Ljava/lang/Math;->log(D)D

    move-result-wide v4

    div-double/2addr p1, v4

    .line 483
    invoke-static {p1, p2}, Ljava/lang/Math;->round(D)J

    move-result-wide p1

    long-to-int p1, p1

    int-to-double p1, p1

    .line 481
    invoke-static {v9, v10, p1, p2}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p1

    :goto_1
    double-to-int v5, p1

    goto :goto_2

    .line 485
    :cond_2
    iget p2, v4, Landroid/graphics/Point;->x:I

    if-le p2, p1, :cond_3

    int-to-double v4, p1

    int-to-double p1, p2

    div-double/2addr v4, p1

    .line 488
    invoke-static {v4, v5}, Ljava/lang/Math;->log(D)D

    move-result-wide p1

    .line 489
    invoke-static {v7, v8}, Ljava/lang/Math;->log(D)D

    move-result-wide v4

    div-double/2addr p1, v4

    .line 488
    invoke-static {p1, p2}, Ljava/lang/Math;->round(D)J

    move-result-wide p1

    long-to-int p1, p1

    int-to-double p1, p1

    .line 486
    invoke-static {v9, v10, p1, p2}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p1

    goto :goto_1

    .line 493
    :cond_3
    :goto_2
    new-instance p1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 494
    iput v5, p1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 495
    new-instance p2, Ljava/io/FileInputStream;

    invoke-direct {p2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 496
    :try_start_1
    invoke-static {p2, v3, p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 504
    :try_start_2
    invoke-virtual {p2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_5

    :catch_0
    move-exception p0

    .line 507
    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    :catch_1
    move-exception p0

    goto :goto_3

    :catch_2
    move-exception p0

    goto :goto_4

    :catchall_0
    move-exception p0

    goto :goto_6

    :catch_3
    move-exception p0

    move-object p2, v3

    .line 500
    :goto_3
    :try_start_3
    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz p2, :cond_4

    .line 504
    :try_start_4
    invoke-virtual {p2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_5

    :catch_4
    move-exception p0

    move-object p2, v3

    :goto_4
    :try_start_5
    const-string p1, "decodeFile: ioexception"

    .line 498
    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz p2, :cond_4

    .line 504
    :try_start_6
    invoke-virtual {p2}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    :cond_4
    :goto_5
    return-object v3

    :catchall_1
    move-exception p0

    move-object v3, p2

    :goto_6
    if-eqz v3, :cond_5

    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_7

    :catch_5
    move-exception p1

    .line 507
    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 509
    :cond_5
    :goto_7
    throw p0
.end method

.method private static getBitmapSize(Ljava/io/File;)Landroid/graphics/Point;
    .locals 6

    const-string v0, "getBitmapSize: error occurs. "

    const-string v1, "LSO_LSOUtils"

    .line 432
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    const/4 v3, 0x0

    .line 436
    :try_start_0
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v5, 0x1

    .line 437
    iput-boolean v5, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 439
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 440
    :try_start_1
    invoke-static {v5, v3, v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 442
    iget p0, v4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput p0, v2, Landroid/graphics/Point;->x:I

    .line 443
    iget p0, v4, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iput p0, v2, Landroid/graphics/Point;->y:I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 451
    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_2

    :catchall_0
    move-exception p0

    move-object v3, v5

    goto :goto_3

    :catch_0
    move-exception p0

    move-object v3, v5

    goto :goto_0

    :catch_1
    move-exception p0

    move-object v3, v5

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_3

    :catch_2
    move-exception p0

    .line 447
    :goto_0
    :try_start_3
    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v3, :cond_0

    .line 451
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_2

    :catch_3
    move-exception p0

    .line 454
    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :catch_4
    move-exception p0

    .line 445
    :goto_1
    :try_start_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getBitmapSize: ioexception. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v3, :cond_0

    .line 451
    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    :cond_0
    :goto_2
    return-object v2

    :goto_3
    if-eqz v3, :cond_1

    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_4

    :catch_5
    move-exception v2

    .line 454
    invoke-static {v1, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 456
    :cond_1
    :goto_4
    throw p0
.end method

.method public static getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 5

    const-string v0, "LSO_LSOUtils"

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    .line 750
    :cond_0
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 751
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 752
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDrawable() - Image found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    move-object v1, p0

    goto :goto_0

    .line 755
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDrawable() - Image not found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 758
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDrawable() error occurs. imagePath = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-object v1
.end method

.method public static getMaxBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 5

    const-string v0, "LSO_LSOUtils"

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    .line 191
    :cond_0
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 192
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 193
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Image found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    invoke-static {v2, p1, p2}, Lcom/samsung/android/knox/lockscreen/LSOUtils;->decodeFile(Ljava/io/File;II)Landroid/graphics/Bitmap;

    move-result-object p0

    move-object v1, p0

    goto :goto_0

    .line 196
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Image not found: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 199
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "getBitmap: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v1
.end method

.method public static getMaxImageSize(Landroid/content/Context;)I
    .locals 2

    .line 83
    sget v0, Lcom/samsung/android/knox/lockscreen/LSOUtils;->MAX_IMAGE_SIZE:I

    if-lez v0, :cond_0

    return v0

    .line 87
    :cond_0
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    const-string/jumbo v1, "window"

    .line 89
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    .line 90
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 92
    iget p0, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    if-le p0, v0, :cond_1

    .line 93
    sput p0, Lcom/samsung/android/knox/lockscreen/LSOUtils;->MAX_IMAGE_SIZE:I

    goto :goto_0

    .line 95
    :cond_1
    sput v0, Lcom/samsung/android/knox/lockscreen/LSOUtils;->MAX_IMAGE_SIZE:I

    .line 98
    :goto_0
    sget p0, Lcom/samsung/android/knox/lockscreen/LSOUtils;->MAX_IMAGE_SIZE:I

    return p0
.end method

.method public static getResourceDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 778
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 783
    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getResourceString(Landroid/content/Context;I)Ljava/lang/String;
    .locals 0

    .line 764
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 769
    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static isTablet()Z
    .locals 2

    const-string/jumbo v0, "ro.build.characteristics"

    .line 77
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "tablet"

    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static scaledBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 2

    const/4 v0, 0x0

    .line 522
    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-gt v1, p1, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-le v1, p2, :cond_1

    :cond_0
    const/4 v1, 0x0

    .line 523
    invoke-static {p0, p1, p2, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    move-object v0, p0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "LSO_LSOUtils"

    const-string/jumbo p2, "scaledBitmap: error occurs. "

    .line 528
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-object v0
.end method
