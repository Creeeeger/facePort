.class public Lcom/samsung/android/globalactions/util/ScreenCaptureUtil;
.super Ljava/lang/Object;
.source "ScreenCaptureUtil.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "ScreenCaptureUtil"


# instance fields
.field private blacklist mCapture:Landroid/graphics/Bitmap;

.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

.field private blacklist mSemWindowManager:Lcom/samsung/android/view/SemWindowManager;

.field private blacklist mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;Lcom/samsung/android/globalactions/util/LogWrapper;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/globalactions/util/ScreenCaptureUtil;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/globalactions/util/ScreenCaptureUtil;->mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/samsung/android/globalactions/util/ScreenCaptureUtil;->mWindowManager:Landroid/view/WindowManager;

    invoke-static {}, Lcom/samsung/android/view/SemWindowManager;->getInstance()Lcom/samsung/android/view/SemWindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/globalactions/util/ScreenCaptureUtil;->mSemWindowManager:Lcom/samsung/android/view/SemWindowManager;

    return-void
.end method

.method private blacklist captureScreen()V
    .locals 18

    move-object/from16 v0, p0

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    iget-object v2, v0, Lcom/samsung/android/globalactions/util/ScreenCaptureUtil;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getDisplayId()I

    move-result v13

    invoke-virtual {v2, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v14

    iget v3, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v15

    const/16 v16, 0x96b

    const/16 v17, 0x0

    iget-object v3, v0, Lcom/samsung/android/globalactions/util/ScreenCaptureUtil;->mSemWindowManager:Lcom/samsung/android/view/SemWindowManager;

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    div-int/lit8 v8, v14, 0x5

    div-int/lit8 v9, v15, 0x5

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v6, 0x0

    const/4 v10, 0x0

    move v4, v13

    move/from16 v5, v16

    invoke-virtual/range {v3 .. v12}, Lcom/samsung/android/view/SemWindowManager;->screenshot(IIZLandroid/graphics/Rect;IIZIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    if-nez v3, :cond_0

    iget-object v4, v0, Lcom/samsung/android/globalactions/util/ScreenCaptureUtil;->mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

    const-string v5, "ScreenCaptureUtil"

    const-string v6, "bitmap is null !!!!"

    invoke-virtual {v4, v5, v6}, Lcom/samsung/android/globalactions/util/LogWrapper;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iput-object v3, v0, Lcom/samsung/android/globalactions/util/ScreenCaptureUtil;->mCapture:Landroid/graphics/Bitmap;

    return-void
.end method

.method private static blacklist rotateBitmap(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    .locals 8

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->postRotate(F)Z

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v7, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p0

    move-object v6, v0

    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public blacklist clearScreenShot()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/globalactions/util/ScreenCaptureUtil;->mCapture:Landroid/graphics/Bitmap;

    return-void
.end method

.method public blacklist takeScreenShot()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/globalactions/util/ScreenCaptureUtil;->mCapture:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/globalactions/util/ScreenCaptureUtil;->captureScreen()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/globalactions/util/ScreenCaptureUtil;->mCapture:Landroid/graphics/Bitmap;

    return-object v0
.end method
