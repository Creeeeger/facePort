.class public Lcom/samsung/android/graphics/spr/document/debug/SprDebug;
.super Ljava/lang/Object;
.source "SprDebug.java"


# static fields
.field public static final blacklist DEBUG_HIGH:I = 0x3

.field public static final blacklist DEBUG_LOW:I = 0x1

.field public static final blacklist DEBUG_MID:I = 0x2

.field public static blacklist IsDebug:Z

.field private static blacklist mDebugLevel:Ljava/lang/Integer;

.field private static blacklist mTextOutlinePaint:Landroid/graphics/Paint;

.field private static blacklist mTextPaint:Landroid/graphics/Paint;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 8

    .line 22
    const/4 v0, 0x0

    .line 38
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 22
    sput-boolean v0, Lcom/samsung/android/graphics/spr/document/debug/SprDebug;->IsDebug:Z

    .line 23
    const/4 v2, 0x0

    sput-object v2, Lcom/samsung/android/graphics/spr/document/debug/SprDebug;->mDebugLevel:Ljava/lang/Integer;

    .line 24
    sput-object v2, Lcom/samsung/android/graphics/spr/document/debug/SprDebug;->mTextPaint:Landroid/graphics/Paint;

    .line 25
    sput-object v2, Lcom/samsung/android/graphics/spr/document/debug/SprDebug;->mTextOutlinePaint:Landroid/graphics/Paint;

    .line 28
    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v3, "eng"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 30
    :try_start_0
    const-string v2, "android.os.SystemProperties"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 31
    .local v2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v4, "getInt"

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/Class;

    const-class v7, Ljava/lang/String;

    aput-object v7, v6, v0

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v3

    invoke-virtual {v2, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 32
    .local v4, "md":Ljava/lang/reflect/Method;
    new-array v5, v5, [Ljava/lang/Object;

    const-string/jumbo v6, "persist.sys.spr.debug"

    aput-object v6, v5, v0

    aput-object v1, v5, v3

    invoke-virtual {v4, v2, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    sput-object v5, Lcom/samsung/android/graphics/spr/document/debug/SprDebug;->mDebugLevel:Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "md":Ljava/lang/reflect/Method;
    goto :goto_0

    .line 33
    :catch_0
    move-exception v2

    .line 34
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 35
    sput-object v1, Lcom/samsung/android/graphics/spr/document/debug/SprDebug;->mDebugLevel:Ljava/lang/Integer;

    .line 36
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    goto :goto_1

    .line 38
    :cond_0
    sput-object v1, Lcom/samsung/android/graphics/spr/document/debug/SprDebug;->mDebugLevel:Ljava/lang/Integer;

    .line 41
    :goto_1
    sget-object v1, Lcom/samsung/android/graphics/spr/document/debug/SprDebug;->mDebugLevel:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lt v1, v3, :cond_1

    move v0, v3

    :cond_1
    sput-boolean v0, Lcom/samsung/android/graphics/spr/document/debug/SprDebug;->IsDebug:Z

    .line 42
    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist drawDebugInfo(Landroid/graphics/Canvas;Lcom/samsung/android/graphics/spr/document/SprDocument;III)V
    .locals 2
    .param p0, "canvas"    # Landroid/graphics/Canvas;
    .param p1, "document"    # Lcom/samsung/android/graphics/spr/document/SprDocument;
    .param p2, "displayWidth"    # I
    .param p3, "displayHeight"    # I
    .param p4, "dpi"    # I

    .line 86
    sget-object v0, Lcom/samsung/android/graphics/spr/document/debug/SprDebug;->mDebugLevel:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_2

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 89
    invoke-virtual {p1}, Lcom/samsung/android/graphics/spr/document/SprDocument;->isNinePatch()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "N"

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/graphics/spr/document/SprDocument;->isIntrinsic()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, ""

    goto :goto_0

    :cond_1
    const-string v1, "C"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 90
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    rem-int/lit16 v1, v1, 0x2710

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x14

    .line 87
    invoke-static {p0, v0, v1}, Lcom/samsung/android/graphics/spr/document/debug/SprDebug;->drawText(Landroid/graphics/Canvas;Ljava/lang/String;I)V

    .line 91
    iget-object v0, p1, Lcom/samsung/android/graphics/spr/document/SprDocument;->mName:Ljava/lang/String;

    const/16 v1, 0x28

    invoke-static {p0, v0, v1}, Lcom/samsung/android/graphics/spr/document/debug/SprDebug;->drawText(Landroid/graphics/Canvas;Ljava/lang/String;I)V

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x3c

    invoke-static {p0, v0, v1}, Lcom/samsung/android/graphics/spr/document/debug/SprDebug;->drawText(Landroid/graphics/Canvas;Ljava/lang/String;I)V

    .line 94
    sget-object v0, Lcom/samsung/android/graphics/spr/document/debug/SprDebug;->mDebugLevel:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_2

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/samsung/android/graphics/spr/document/SprDocument;->getLoadingTime()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ms E:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/graphics/spr/document/SprDocument;->getTotalElementCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " S:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 96
    invoke-virtual {p1}, Lcom/samsung/android/graphics/spr/document/SprDocument;->getTotalSegmentCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " A:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/graphics/spr/document/SprDocument;->getTotalAttributeCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x50

    .line 95
    invoke-static {p0, v0, v1}, Lcom/samsung/android/graphics/spr/document/debug/SprDebug;->drawText(Landroid/graphics/Canvas;Ljava/lang/String;I)V

    .line 99
    :cond_2
    return-void
.end method

.method public static blacklist drawRect(Landroid/graphics/Canvas;Lcom/samsung/android/graphics/spr/document/SprDocument;II)V
    .locals 7
    .param p0, "canvas"    # Landroid/graphics/Canvas;
    .param p1, "document"    # Lcom/samsung/android/graphics/spr/document/SprDocument;
    .param p2, "displayWidth"    # I
    .param p3, "displayHeight"    # I

    .line 65
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 66
    .local v0, "debugPaint":Landroid/graphics/Paint;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 67
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 68
    const/high16 v1, 0x40a00000    # 5.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 70
    const/high16 v1, -0x10000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 71
    iget v2, p1, Lcom/samsung/android/graphics/spr/document/SprDocument;->mLeft:F

    iget v3, p1, Lcom/samsung/android/graphics/spr/document/SprDocument;->mTop:F

    iget v1, p1, Lcom/samsung/android/graphics/spr/document/SprDocument;->mLeft:F

    int-to-float v4, p2

    add-float/2addr v4, v1

    iget v1, p1, Lcom/samsung/android/graphics/spr/document/SprDocument;->mTop:F

    int-to-float v5, p3

    add-float/2addr v5, v1

    move-object v1, p0

    move-object v6, v0

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 73
    return-void
.end method

.method private static blacklist drawText(Landroid/graphics/Canvas;Ljava/lang/String;I)V
    .locals 4
    .param p0, "canvas"    # Landroid/graphics/Canvas;
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "y"    # I

    .line 102
    sget-object v0, Lcom/samsung/android/graphics/spr/document/debug/SprDebug;->mTextOutlinePaint:Landroid/graphics/Paint;

    const/high16 v1, 0x41a00000    # 20.0f

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 103
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/samsung/android/graphics/spr/document/debug/SprDebug;->mTextOutlinePaint:Landroid/graphics/Paint;

    .line 104
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 105
    sget-object v0, Lcom/samsung/android/graphics/spr/document/debug/SprDebug;->mTextOutlinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 106
    sget-object v0, Lcom/samsung/android/graphics/spr/document/debug/SprDebug;->mTextOutlinePaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 107
    sget-object v0, Lcom/samsung/android/graphics/spr/document/debug/SprDebug;->mTextOutlinePaint:Landroid/graphics/Paint;

    const/high16 v3, -0x1000000

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 108
    sget-object v0, Lcom/samsung/android/graphics/spr/document/debug/SprDebug;->mTextOutlinePaint:Landroid/graphics/Paint;

    const/high16 v3, 0x40800000    # 4.0f

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 111
    :cond_0
    sget-object v0, Lcom/samsung/android/graphics/spr/document/debug/SprDebug;->mTextPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_1

    .line 112
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/samsung/android/graphics/spr/document/debug/SprDebug;->mTextPaint:Landroid/graphics/Paint;

    .line 113
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 114
    sget-object v0, Lcom/samsung/android/graphics/spr/document/debug/SprDebug;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 115
    sget-object v0, Lcom/samsung/android/graphics/spr/document/debug/SprDebug;->mTextPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 116
    sget-object v0, Lcom/samsung/android/graphics/spr/document/debug/SprDebug;->mTextPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 119
    :cond_1
    int-to-float v0, p2

    sget-object v1, Lcom/samsung/android/graphics/spr/document/debug/SprDebug;->mTextOutlinePaint:Landroid/graphics/Paint;

    const/high16 v2, 0x40a00000    # 5.0f

    invoke-virtual {p0, p1, v2, v0, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 120
    int-to-float v0, p2

    sget-object v1, Lcom/samsung/android/graphics/spr/document/debug/SprDebug;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1, v2, v0, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 121
    return-void
.end method

.method public static blacklist preDraw(Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;)V
    .locals 3
    .param p0, "object"    # Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;

    .line 76
    sget-object v0, Lcom/samsung/android/graphics/spr/document/debug/SprDebug;->mDebugLevel:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->strokePaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    .line 77
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->isVisibleStroke:Z

    .line 78
    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->strokePaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    const/16 v2, 0xff

    invoke-static {v2, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 79
    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 83
    :cond_0
    return-void
.end method


# virtual methods
.method public blacklist dumpPNG(Lcom/samsung/android/graphics/spr/document/SprDocument;III)V
    .locals 7
    .param p1, "document"    # Lcom/samsung/android/graphics/spr/document/SprDocument;
    .param p2, "displayWidth"    # I
    .param p3, "displayHeight"    # I
    .param p4, "dpi"    # I

    .line 45
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p3, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 46
    .local v0, "bm":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 47
    .local v2, "c":Landroid/graphics/Canvas;
    const/4 v5, 0x0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/graphics/spr/document/SprDocument;->draw(Landroid/graphics/Canvas;IIII)V

    .line 51
    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v3, "/sdcard/spr_debug"

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 52
    .local v1, "dir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 53
    :cond_0
    new-instance v3, Ljava/io/FileOutputStream;

    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v6

    rem-int/lit16 v6, v6, 0x2710

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".png"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v1, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 54
    .local v3, "out":Ljava/io/OutputStream;
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x5a

    invoke-virtual {v0, v4, v5, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 55
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 59
    .end local v1    # "dir":Ljava/io/File;
    .end local v3    # "out":Ljava/io/OutputStream;
    :catch_0
    move-exception v1

    .line 60
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 57
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 58
    .local v1, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 61
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :cond_1
    :goto_0
    nop

    .line 62
    :goto_1
    return-void
.end method
