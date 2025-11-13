.class public Lcom/android/systemui/keyguardimage/KeyguardImageProvider;
.super Landroid/content/ContentProvider;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mClockImageCreator:[Lcom/android/systemui/keyguardimage/ImageCreator;

.field public mCreatorsForFixedShortcut:[Lcom/android/systemui/keyguardimage/ImageCreator;

.field public mCreatorsForWallpaper:[Lcom/android/systemui/keyguardimage/ImageCreator;

.field public final mHandler:Landroid/os/Handler;

.field public mWasShortcutEnabled:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/keyguardimage/KeyguardImageProvider;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/keyguardimage/KeyguardImageProvider;->mWasShortcutEnabled:Z

    return-void
.end method


# virtual methods
.method public final delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/android/systemui/keyguardimage/ImageOptionCreator;->createImageOption(Landroid/content/Context;Landroid/net/Uri;Z)Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;

    move-result-object p0

    if-eqz p0, :cond_0

    iget p0, p0, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->type:I

    if-ne p0, v0, :cond_0

    const-string p0, "image/jpeg"

    goto :goto_0

    :cond_0
    const-string p0, "image/png"

    :goto_0
    return-object p0
.end method

.method public final insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final onCreate()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 16

    move-object/from16 v1, p0

    const-string v0, "KeyguardImageProvider"

    const-string v2, "openFile() %s / pid: %d"

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toSafeString()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/android/systemui/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_19

    const/4 v2, 0x0

    move-object/from16 v3, p1

    invoke-static {v0, v3, v2}, Lcom/android/systemui/keyguardimage/ImageOptionCreator;->createImageOption(Landroid/content/Context;Landroid/net/Uri;Z)Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;

    move-result-object v4

    if-eqz v4, :cond_18

    const-string v5, "KeyguardImageProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "openFile() imageOption "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "image/png"

    iget v6, v4, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->type:I

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eq v6, v7, :cond_16

    const/4 v9, 0x5

    if-ne v6, v9, :cond_0

    goto/16 :goto_14

    :cond_0
    const/4 v11, 0x2

    if-eq v6, v11, :cond_13

    const/4 v12, 0x4

    if-ne v6, v12, :cond_1

    goto/16 :goto_f

    :cond_1
    const/4 v12, 0x3

    if-ne v6, v12, :cond_2

    move v6, v7

    goto :goto_0

    :cond_2
    move v6, v2

    :goto_0
    monitor-enter p0

    :try_start_0
    iget-object v13, v1, Lcom/android/systemui/keyguardimage/KeyguardImageProvider;->mClockImageCreator:[Lcom/android/systemui/keyguardimage/ImageCreator;

    if-nez v13, :cond_3

    new-instance v13, Lcom/android/systemui/keyguardimage/ClockImageCreator;

    invoke-direct {v13, v0}, Lcom/android/systemui/keyguardimage/ClockImageCreator;-><init>(Landroid/content/Context;)V

    filled-new-array {v13}, [Lcom/android/systemui/keyguardimage/ImageCreator;

    move-result-object v13

    iput-object v13, v1, Lcom/android/systemui/keyguardimage/KeyguardImageProvider;->mClockImageCreator:[Lcom/android/systemui/keyguardimage/ImageCreator;

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_e

    :cond_3
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v14, "lockscreen_show_shortcut"

    invoke-static {v13, v14, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    if-ne v13, v7, :cond_4

    move v13, v7

    goto :goto_2

    :cond_4
    move v13, v2

    :goto_2
    const-string v14, "KeyguardImageProvider"

    const-string v15, "getImageCreator isShortcutEnabled= "

    const-string v9, ", wasShortcutEnabled= "

    invoke-static {v15, v9, v13}, Landroidx/slice/widget/RowView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v10, v1, Lcom/android/systemui/keyguardimage/KeyguardImageProvider;->mWasShortcutEnabled:Z

    invoke-static {v9, v10, v14}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    iget-boolean v9, v1, Lcom/android/systemui/keyguardimage/KeyguardImageProvider;->mWasShortcutEnabled:Z

    if-eq v9, v13, :cond_5

    move v9, v7

    goto :goto_3

    :cond_5
    move v9, v2

    :goto_3
    iput-boolean v13, v1, Lcom/android/systemui/keyguardimage/KeyguardImageProvider;->mWasShortcutEnabled:Z

    if-nez v13, :cond_6

    if-nez v6, :cond_6

    monitor-enter p0

    :try_start_1
    iget-object v0, v1, Lcom/android/systemui/keyguardimage/KeyguardImageProvider;->mClockImageCreator:[Lcom/android/systemui/keyguardimage/ImageCreator;

    monitor-exit p0

    goto/16 :goto_8

    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :cond_6
    monitor-enter p0

    if-eqz v13, :cond_8

    :try_start_2
    iget-object v10, v1, Lcom/android/systemui/keyguardimage/KeyguardImageProvider;->mCreatorsForFixedShortcut:[Lcom/android/systemui/keyguardimage/ImageCreator;

    if-eqz v10, :cond_7

    array-length v10, v10

    if-ge v10, v12, :cond_8

    goto :goto_4

    :catchall_2
    move-exception v0

    goto/16 :goto_d

    :cond_7
    :goto_4
    iget-object v10, v1, Lcom/android/systemui/keyguardimage/KeyguardImageProvider;->mClockImageCreator:[Lcom/android/systemui/keyguardimage/ImageCreator;

    aget-object v10, v10, v2

    new-instance v14, Lcom/android/systemui/keyguardimage/LeftShortcutImageCreator;

    invoke-direct {v14, v0}, Lcom/android/systemui/keyguardimage/LeftShortcutImageCreator;-><init>(Landroid/content/Context;)V

    new-instance v15, Lcom/android/systemui/keyguardimage/RightShortcutImageCreator;

    invoke-direct {v15, v0}, Lcom/android/systemui/keyguardimage/RightShortcutImageCreator;-><init>(Landroid/content/Context;)V

    filled-new-array {v10, v14, v15}, [Lcom/android/systemui/keyguardimage/ImageCreator;

    move-result-object v10

    iput-object v10, v1, Lcom/android/systemui/keyguardimage/KeyguardImageProvider;->mCreatorsForFixedShortcut:[Lcom/android/systemui/keyguardimage/ImageCreator;

    goto :goto_5

    :cond_8
    if-nez v13, :cond_9

    iget-object v10, v1, Lcom/android/systemui/keyguardimage/KeyguardImageProvider;->mCreatorsForFixedShortcut:[Lcom/android/systemui/keyguardimage/ImageCreator;

    if-nez v10, :cond_9

    iget-object v10, v1, Lcom/android/systemui/keyguardimage/KeyguardImageProvider;->mClockImageCreator:[Lcom/android/systemui/keyguardimage/ImageCreator;

    iput-object v10, v1, Lcom/android/systemui/keyguardimage/KeyguardImageProvider;->mCreatorsForFixedShortcut:[Lcom/android/systemui/keyguardimage/ImageCreator;

    :cond_9
    :goto_5
    iget-object v10, v1, Lcom/android/systemui/keyguardimage/KeyguardImageProvider;->mCreatorsForFixedShortcut:[Lcom/android/systemui/keyguardimage/ImageCreator;

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v6, :cond_d

    monitor-enter p0

    :try_start_3
    iget-object v6, v1, Lcom/android/systemui/keyguardimage/KeyguardImageProvider;->mCreatorsForWallpaper:[Lcom/android/systemui/keyguardimage/ImageCreator;

    if-eqz v6, :cond_a

    if-eqz v9, :cond_c

    :cond_a
    iput-object v8, v1, Lcom/android/systemui/keyguardimage/KeyguardImageProvider;->mCreatorsForWallpaper:[Lcom/android/systemui/keyguardimage/ImageCreator;

    if-eqz v13, :cond_b

    new-instance v6, Lcom/android/systemui/keyguardimage/WallpaperImageProviderCreator;

    invoke-direct {v6, v0}, Lcom/android/systemui/keyguardimage/WallpaperImageProviderCreator;-><init>(Landroid/content/Context;)V

    iget-object v0, v1, Lcom/android/systemui/keyguardimage/KeyguardImageProvider;->mClockImageCreator:[Lcom/android/systemui/keyguardimage/ImageCreator;

    aget-object v0, v0, v2

    iget-object v9, v1, Lcom/android/systemui/keyguardimage/KeyguardImageProvider;->mCreatorsForFixedShortcut:[Lcom/android/systemui/keyguardimage/ImageCreator;

    aget-object v10, v9, v7

    aget-object v9, v9, v11

    filled-new-array {v6, v0, v10, v9}, [Lcom/android/systemui/keyguardimage/ImageCreator;

    move-result-object v0

    iput-object v0, v1, Lcom/android/systemui/keyguardimage/KeyguardImageProvider;->mCreatorsForWallpaper:[Lcom/android/systemui/keyguardimage/ImageCreator;

    goto :goto_6

    :catchall_3
    move-exception v0

    goto :goto_7

    :cond_b
    new-instance v6, Lcom/android/systemui/keyguardimage/WallpaperImageProviderCreator;

    invoke-direct {v6, v0}, Lcom/android/systemui/keyguardimage/WallpaperImageProviderCreator;-><init>(Landroid/content/Context;)V

    iget-object v0, v1, Lcom/android/systemui/keyguardimage/KeyguardImageProvider;->mClockImageCreator:[Lcom/android/systemui/keyguardimage/ImageCreator;

    aget-object v0, v0, v2

    filled-new-array {v6, v0}, [Lcom/android/systemui/keyguardimage/ImageCreator;

    move-result-object v0

    iput-object v0, v1, Lcom/android/systemui/keyguardimage/KeyguardImageProvider;->mCreatorsForWallpaper:[Lcom/android/systemui/keyguardimage/ImageCreator;

    :cond_c
    :goto_6
    iget-object v0, v1, Lcom/android/systemui/keyguardimage/KeyguardImageProvider;->mCreatorsForWallpaper:[Lcom/android/systemui/keyguardimage/ImageCreator;

    monitor-exit p0

    goto :goto_8

    :goto_7
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    throw v0

    :cond_d
    move-object v0, v10

    :goto_8
    iget v6, v4, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->type:I

    if-ne v6, v12, :cond_e

    const-string v5, "image/jpeg"

    :cond_e
    iget v6, v4, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->width:I

    iget v9, v4, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->height:I

    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v9, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    new-instance v9, Landroid/graphics/Canvas;

    invoke-direct {v9, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v10, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v10, v7}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>(I)V

    iget-object v7, v1, Lcom/android/systemui/keyguardimage/KeyguardImageProvider;->mHandler:Landroid/os/Handler;

    new-instance v11, Lcom/android/systemui/keyguardimage/KeyguardImageProvider$$ExternalSyntheticLambda0;

    const/4 v12, 0x1

    invoke-direct {v11, v0, v4, v10, v12}, Lcom/android/systemui/keyguardimage/KeyguardImageProvider$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;Ljava/util/concurrent/BlockingDeque;I)V

    invoke-virtual {v7, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :try_start_4
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v11, 0xbb8

    invoke-virtual {v10, v11, v12, v0}, Ljava/util/concurrent/LinkedBlockingDeque;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/util/List;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    if-eqz v4, :cond_10

    :try_start_5
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_10

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/Pair;

    iget-object v10, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v10, Landroid/graphics/Bitmap;

    new-instance v11, Landroid/graphics/Rect;

    iget-object v12, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v13, v12

    check-cast v13, Landroid/graphics/Point;

    iget v13, v13, Landroid/graphics/Point;->x:I

    move-object v14, v12

    check-cast v14, Landroid/graphics/Point;

    iget v14, v14, Landroid/graphics/Point;->y:I

    check-cast v12, Landroid/graphics/Point;

    iget v12, v12, Landroid/graphics/Point;->x:I

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v15

    add-int/2addr v12, v15

    iget-object v7, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->y:I

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v15

    add-int/2addr v7, v15

    invoke-direct {v11, v13, v14, v12, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v9, v10, v8, v11, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_9

    :catch_0
    move-exception v0

    :goto_a
    move-object v8, v0

    goto :goto_b

    :cond_f
    invoke-interface {v4}, Ljava/util/List;->clear()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_b

    :catch_1
    move-exception v0

    move-object v4, v8

    goto :goto_a

    :cond_10
    :goto_b
    if-nez v8, :cond_11

    if-nez v4, :cond_17

    :cond_11
    const-string v0, "KeyguardImageProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "openFile failed "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v8, :cond_12

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    goto :goto_c

    :cond_12
    const-string v2, ""

    :goto_c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/io/FileNotFoundException;

    const-string v1, "operation failed"

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_d
    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v0

    :goto_e
    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw v0

    :cond_13
    :goto_f
    new-instance v0, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v0, v7}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>(I)V

    iget-object v6, v1, Lcom/android/systemui/keyguardimage/KeyguardImageProvider;->mHandler:Landroid/os/Handler;

    new-instance v7, Lcom/android/systemui/keyguardimage/KeyguardImageProvider$$ExternalSyntheticLambda0;

    const/4 v9, 0x0

    invoke-direct {v7, v1, v4, v0, v9}, Lcom/android/systemui/keyguardimage/KeyguardImageProvider$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;Ljava/util/concurrent/BlockingDeque;I)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :try_start_8
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v6, 0xbb8

    invoke-virtual {v0, v6, v7, v4}, Ljava/util/concurrent/LinkedBlockingDeque;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/graphics/Bitmap;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    if-nez v4, :cond_14

    :try_start_9
    const-string v0, "KeyguardImageProvider"

    const-string v6, "openFile, clock bitmap is null"

    invoke-static {v0, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    goto :goto_12

    :catch_2
    move-exception v0

    :goto_10
    move-object v8, v0

    goto :goto_11

    :catch_3
    move-exception v0

    move-object v4, v8

    goto :goto_10

    :goto_11
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    :cond_14
    :goto_12
    if-nez v8, :cond_15

    :goto_13
    move-object v6, v4

    goto :goto_15

    :cond_15
    new-instance v0, Ljava/io/FileNotFoundException;

    const-string v1, "operation failed"

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_16
    :goto_14
    const-string v0, "image/jpeg"

    new-instance v5, Lcom/android/systemui/keyguardimage/WallpaperImageProviderCreator;

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/android/systemui/keyguardimage/WallpaperImageProviderCreator;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v4, v8}, Lcom/android/systemui/keyguardimage/WallpaperImageCreator;->createImage(Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;Landroid/graphics/Point;)Landroid/graphics/Bitmap;

    move-result-object v4

    move-object v5, v0

    goto :goto_13

    :cond_17
    :goto_15
    new-instance v0, Lcom/android/systemui/keyguardimage/KeyguardImageProvider$MyWriter;

    invoke-direct {v0, v2}, Lcom/android/systemui/keyguardimage/KeyguardImageProvider$MyWriter;-><init>(I)V

    const/4 v4, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v5

    move-object v5, v6

    move-object v6, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentProvider;->openPipeHelper(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/Object;Landroid/content/ContentProvider$PipeDataWriter;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0

    :cond_18
    const-string v0, "KeyguardImageProvider"

    const-string/jumbo v1, "wrong uri"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/io/FileNotFoundException;

    const-string/jumbo v1, "wrong uri"

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_19
    const-string v0, "KeyguardImageProvider"

    const-string v1, "not prepared"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/io/FileNotFoundException;

    const-string v1, "illegal state"

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
