.class public Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final synthetic $r8$clinit:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "WallpaperFilter"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyFilter(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 7

    new-instance v0, Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter$ImageFilterParams;

    invoke-direct {v0, p1}, Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter$ImageFilterParams;-><init>(Ljava/lang/String;)V

    const-string p1, "WallpaperFilter"

    if-nez p2, :cond_0

    const-string p0, "applyFilter: null bitmap. skipped"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_0
    iget v1, v0, Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter$ImageFilterParams;->mBlurRadius:F

    const/4 v2, 0x0

    cmpg-float v3, v2, v1

    if-gez v3, :cond_1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "applyStackBlur : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " x "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter$ProcessingRange;

    invoke-direct {p1, v4}, Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter$ProcessingRange;-><init>(I)V

    new-instance v4, Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter$$ExternalSyntheticLambda0;

    const/4 v5, 0x0

    invoke-direct {v4, p0, p2, v1, v5}, Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter;Landroid/graphics/Bitmap;II)V

    const-string v5, "StackBlur1"

    invoke-virtual {p0, v5, p1, v4}, Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter;->applyFilterOnMultiThread(Ljava/lang/String;Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter$ProcessingRange;Ljava/util/function/Consumer;)V

    new-instance p1, Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter$ProcessingRange;

    invoke-direct {p1, v3}, Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter$ProcessingRange;-><init>(I)V

    new-instance v3, Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter$$ExternalSyntheticLambda0;

    const/4 v4, 0x1

    invoke-direct {v3, p0, p2, v1, v4}, Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter;Landroid/graphics/Bitmap;II)V

    const-string v1, "StackBlur2"

    invoke-virtual {p0, v1, p1, v3}, Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter;->applyFilterOnMultiThread(Ljava/lang/String;Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter$ProcessingRange;Ljava/util/function/Consumer;)V

    :cond_1
    iget p1, v0, Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter$ImageFilterParams;->mNoiseValue:F

    cmpg-float v1, v2, p1

    if-gez v1, :cond_2

    float-to-double v3, p1

    const/16 p1, 0x4e20

    invoke-virtual {p0, v3, v4, p1}, Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter;->nativeCreateGaussianNoiseSamples(DI)[I

    move-result-object p1

    new-instance v1, Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter$ProcessingRange;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-direct {v1, v3}, Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter$ProcessingRange;-><init>(I)V

    new-instance v3, Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0, p2, p1}, Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter$$ExternalSyntheticLambda3;-><init>(Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter;Landroid/graphics/Bitmap;[I)V

    const-string p1, "GaussianNoise"

    invoke-virtual {p0, p1, v1, v3}, Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter;->applyFilterOnMultiThread(Ljava/lang/String;Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter$ProcessingRange;Ljava/util/function/Consumer;)V

    :cond_2
    iget p1, v0, Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter$ImageFilterParams;->mHighlightAmount:F

    cmpg-float v0, v2, p1

    if-gez v0, :cond_3

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    new-instance v0, Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter$ProcessingRange;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter$ProcessingRange;-><init>(I)V

    new-instance v1, Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter$$ExternalSyntheticLambda0;

    const/4 v2, 0x2

    invoke-direct {v1, p0, p2, p1, v2}, Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter;Landroid/graphics/Bitmap;II)V

    const-string p1, "highlight"

    invoke-virtual {p0, p1, v0, v1}, Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter;->applyFilterOnMultiThread(Ljava/lang/String;Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter$ProcessingRange;Ljava/util/function/Consumer;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public final applyFilterOnMultiThread(Ljava/lang/String;Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter$ProcessingRange;Ljava/util/function/Consumer;)V
    .locals 17

    const/4 v0, 0x4

    new-array v12, v0, [Z

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    aput-boolean v1, v12, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    monitor-enter v12

    move-object/from16 v2, p2

    :try_start_0
    iget v13, v2, Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter$ProcessingRange;->totalSize:I

    add-int/lit8 v2, v13, 0x3

    div-int/lit8 v14, v2, 0x4

    move v15, v1

    :goto_1
    if-ge v15, v0, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    new-instance v9, Ljava/lang/Thread;

    new-instance v8, Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter$1;

    move-object v1, v8

    move-object/from16 v2, p0

    move v3, v14

    move v4, v15

    move v5, v0

    move v6, v13

    move-object/from16 v7, p1

    move-object v0, v8

    move-object/from16 v8, p3

    move-object/from16 v16, v9

    move-object v9, v12

    invoke-direct/range {v1 .. v11}, Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter$1;-><init>(Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter;IIIILjava/lang/String;Ljava/util/function/Consumer;[ZJ)V

    move-object/from16 v1, v16

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Ljava/lang/Thread;->setPriority(I)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v15, v15, 0x1

    const/4 v0, 0x4

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_1
    :try_start_1
    invoke-virtual {v12}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    :try_start_2
    monitor-exit v12

    return-void

    :goto_2
    monitor-exit v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public native nativeCreateGaussianNoiseSamples(DI)[I
.end method

.method public native nativeSetGaussianNoise(Landroid/graphics/Bitmap;II[I)V
.end method

.method public native nativeSetHighLightFilter(Landroid/graphics/Bitmap;III)V
.end method

.method public native nativeStackBlur(Landroid/graphics/Bitmap;IIII)V
.end method
