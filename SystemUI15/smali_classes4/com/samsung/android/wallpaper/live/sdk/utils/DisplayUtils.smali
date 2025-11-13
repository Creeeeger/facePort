.class public final Lcom/samsung/android/wallpaper/live/sdk/utils/DisplayUtils;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertDisplayRotationToAngle(I)I
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/16 p0, 0x10e

    return p0

    :cond_1
    const/16 p0, 0xb4

    return p0

    :cond_2
    const/16 p0, 0x5a

    return p0
.end method

.method public static copySurfaceToBitmapSync(Landroid/view/SurfaceHolder;Landroid/graphics/Rect;Landroid/util/Size;)Landroid/graphics/Bitmap;
    .locals 19

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p0, :cond_0

    const-string v0, "DisplayUtils"

    const-string v1, "copySurfaceToBitmapSync : surface holder is null"

    invoke-static {v0, v1}, Lcom/samsung/android/wallpaper/live/sdk/utils/SdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_0
    invoke-interface/range {p0 .. p0}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v12

    if-eqz v12, :cond_4

    invoke-virtual {v12}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    goto/16 :goto_3

    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v13

    new-instance v15, Ljava/lang/Object;

    invoke-direct {v15}, Ljava/lang/Object;-><init>()V

    new-instance v11, Landroid/os/HandlerThread;

    const-string v3, "wallpaperScreenshot"

    invoke-direct {v11, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Landroid/os/HandlerThread;->start()V

    new-instance v10, Landroid/os/Handler;

    invoke-virtual {v11}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v10, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-array v9, v1, [Landroid/graphics/Bitmap;

    aput-object v2, v9, v0

    new-array v8, v1, [Z

    aput-boolean v0, v8, v0

    monitor-enter v15

    :try_start_0
    new-instance v7, Lcom/samsung/android/wallpaper/live/sdk/utils/DisplayUtils$$ExternalSyntheticLambda0;

    move-object v3, v7

    move-object/from16 v4, p2

    move-object v5, v12

    move-object/from16 v6, p0

    move-object v1, v7

    move-object v7, v9

    move-object/from16 v16, v8

    move-object/from16 v8, p1

    move-object/from16 v17, v9

    move-object/from16 v9, v16

    move-object/from16 p0, v10

    move-object v10, v15

    move-object/from16 v18, v11

    move-object/from16 v11, p0

    invoke-direct/range {v3 .. v11}, Lcom/samsung/android/wallpaper/live/sdk/utils/DisplayUtils$$ExternalSyntheticLambda0;-><init>(Landroid/util/Size;Landroid/graphics/Rect;Landroid/view/SurfaceHolder;[Landroid/graphics/Bitmap;Landroid/graphics/Rect;[ZLjava/lang/Object;Landroid/os/Handler;)V

    move-object/from16 v3, p0

    invoke-virtual {v3, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v3, 0x7d0

    :try_start_1
    invoke-virtual {v15, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    :goto_0
    :try_start_2
    aget-boolean v1, v16, v0

    if-nez v1, :cond_2

    aput-object v2, v17, v0

    :cond_2
    monitor-exit v15
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual/range {v18 .. v18}, Landroid/os/HandlerThread;->quitSafely()Z

    aget-object v1, v17, v0

    if-eqz v1, :cond_3

    const/4 v2, 0x1

    goto :goto_1

    :cond_3
    move v2, v0

    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long/2addr v3, v13

    const-string v5, "DisplayUtils"

    const-string v6, "copySurfaceToBitmapSync : elapsed="

    const-string v7, ", surface=("

    invoke-static {v6, v3, v4, v7}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "), src="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", outBmp="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/samsung/android/wallpaper/live/sdk/utils/BitmapUtils;->getBitmapSizeString(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", pxCpyFin="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-boolean v0, v16, v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", isSuccess="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/samsung/android/wallpaper/live/sdk/utils/SdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :goto_2
    :try_start_3
    monitor-exit v15
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :cond_4
    :goto_3
    const-string v0, "DisplayUtils"

    const-string v1, "copySurfaceToBitmapSync : frame is empty"

    invoke-static {v0, v1}, Lcom/samsung/android/wallpaper/live/sdk/utils/SdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method public static getDisplayIdByWhich(ILandroid/content/Context;)I
    .locals 7

    and-int/lit8 v0, p0, 0x3c

    const-string v1, "SEC_FLOATING_FEATURE_SIP_CONFIG_FOLD_UX_VERSION"

    const/4 v2, 0x1

    const/4 v3, 0x4

    const/4 v4, 0x0

    if-eq v0, v3, :cond_5

    const/16 v3, 0x8

    if-eq v0, v3, :cond_4

    const/16 v3, 0x10

    if-eq v0, v3, :cond_2

    const/16 v1, 0x20

    const/4 v3, -0x1

    const-string v5, "DisplayUtils"

    if-eq v0, v1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "getDisplayIdByWhich : unsupported mode. mode="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Lcom/samsung/android/wallpaper/live/sdk/utils/SdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_0
    const-string p0, "com.samsung.android.hardware.display.category.VIEW_COVER_DISPLAY"

    const-string v0, "display"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/display/DisplayManager;

    :try_start_0
    const-class v0, Landroid/hardware/display/DisplayManager;

    const-string v1, "getDisplays"

    new-array v2, v2, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    aput-object v6, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/view/Display;

    array-length p1, p0

    if-lez p1, :cond_1

    aget-object p0, p0, v4

    invoke-virtual {p0}, Landroid/view/Display;->getDisplayId()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "getDisplayIdByWhich : e="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Lcom/samsung/android/wallpaper/live/sdk/utils/SdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return v3

    :cond_2
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getInt(Ljava/lang/String;)I

    move-result p0

    and-int/lit8 p0, p0, 0xf

    if-ne p0, v2, :cond_3

    invoke-static {p1}, Lcom/samsung/android/wallpaper/live/sdk/utils/SdkFoldUtils;->isFolded(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_3

    return v4

    :cond_3
    return v2

    :cond_4
    const/4 p0, 0x2

    return p0

    :cond_5
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getInt(Ljava/lang/String;)I

    move-result p0

    and-int/lit8 p0, p0, 0xf

    if-ne p0, v2, :cond_6

    invoke-static {p1}, Lcom/samsung/android/wallpaper/live/sdk/utils/SdkFoldUtils;->isFolded(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_6

    return v2

    :cond_6
    return v4
.end method

.method public static getDisplayInfo(ILandroid/content/Context;)Ljava/lang/Object;
    .locals 6

    const-string v0, "Cannot load class: android.view.DisplayInfo : "

    const-string v1, "display"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p1, p0}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_0

    return-object p1

    :cond_0
    :try_start_0
    const-string v1, "android.view.DisplayInfo"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/LinkageError; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SdkReflectUtils"

    invoke-static {v1, v0}, Lcom/samsung/android/wallpaper/live/sdk/utils/SdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, p1

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "getDisplayInfo"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {p0, v0, v2}, Lcom/samsung/android/wallpaper/live/sdk/utils/SdkReflectUtils;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    return-object v1

    :catch_1
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getDisplayInfoByWhich: e="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "DisplayUtils"

    invoke-static {v0, p0}, Lcom/samsung/android/wallpaper/live/sdk/utils/SdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method public static getDisplayRotation(ILandroid/content/Context;)I
    .locals 2

    invoke-static {p0, p1}, Lcom/samsung/android/wallpaper/live/sdk/utils/DisplayUtils;->getDisplayIdByWhich(ILandroid/content/Context;)I

    move-result p0

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    invoke-static {p0, p1}, Lcom/samsung/android/wallpaper/live/sdk/utils/DisplayUtils;->getDisplayInfo(ILandroid/content/Context;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const-string v0, "rotation"

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/samsung/android/wallpaper/live/sdk/utils/SdkReflectUtils;->getFieldValue(Ljava/lang/reflect/Field;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "getDisplayRotation: e="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DisplayUtils"

    invoke-static {p1, p0}, Lcom/samsung/android/wallpaper/live/sdk/utils/SdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public static getDisplaySize(Landroid/content/Context;II)Landroid/graphics/Point;
    .locals 6

    invoke-static {p1, p0}, Lcom/samsung/android/wallpaper/live/sdk/utils/DisplayUtils;->getDisplayIdByWhich(ILandroid/content/Context;)I

    move-result v0

    const/4 v1, -0x1

    const-string v2, "DisplayUtils"

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    :goto_0
    move-object v1, v3

    goto :goto_1

    :cond_0
    :try_start_0
    invoke-static {v0, p0}, Lcom/samsung/android/wallpaper/live/sdk/utils/DisplayUtils;->getDisplayInfo(ILandroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v4, "logicalWidth"

    invoke-virtual {v1, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    const-string v5, "logicalHeight"

    invoke-virtual {v1, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-static {v4, v0}, Lcom/samsung/android/wallpaper/live/sdk/utils/SdkReflectUtils;->getFieldValue(Ljava/lang/reflect/Field;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v1, v0}, Lcom/samsung/android/wallpaper/live/sdk/utils/SdkReflectUtils;->getFieldValue(Ljava/lang/reflect/Field;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, v4, v0}, Landroid/graphics/Point;-><init>(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "getDisplaySize: e="

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/wallpaper/live/sdk/utils/SdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :goto_1
    if-nez v1, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "getDisplaySize: failed to get display size. which="

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/samsung/android/wallpaper/live/sdk/utils/SdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    :cond_2
    invoke-static {p1, p0}, Lcom/samsung/android/wallpaper/live/sdk/utils/DisplayUtils;->getDisplayRotation(ILandroid/content/Context;)I

    move-result p0

    const/4 p1, 0x0

    const/4 v0, 0x3

    const/4 v2, 0x1

    if-eq p0, v2, :cond_4

    if-ne p0, v0, :cond_3

    goto :goto_2

    :cond_3
    move p0, p1

    goto :goto_3

    :cond_4
    :goto_2
    move p0, v2

    :goto_3
    if-eq p2, v2, :cond_5

    if-ne p2, v0, :cond_6

    :cond_5
    move p1, v2

    :cond_6
    if-ne p0, p1, :cond_7

    return-object v1

    :cond_7
    new-instance p0, Landroid/graphics/Point;

    iget p1, v1, Landroid/graphics/Point;->y:I

    iget p2, v1, Landroid/graphics/Point;->x:I

    invoke-direct {p0, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    return-object p0
.end method
