.class public Lcom/samsung/android/globalactions/util/ThemeChecker;
.super Ljava/lang/Object;
.source "ThemeChecker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/globalactions/util/ThemeChecker$State;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "ThemeChecker"


# instance fields
.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

.field private final blacklist mScreenCaptureUtil:Lcom/samsung/android/globalactions/util/ScreenCaptureUtil;

.field private blacklist mState:Lcom/samsung/android/globalactions/util/ThemeChecker$State;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;Lcom/samsung/android/globalactions/util/ScreenCaptureUtil;Lcom/samsung/android/globalactions/util/LogWrapper;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/globalactions/util/ThemeChecker;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/globalactions/util/ThemeChecker;->mScreenCaptureUtil:Lcom/samsung/android/globalactions/util/ScreenCaptureUtil;

    iput-object p3, p0, Lcom/samsung/android/globalactions/util/ThemeChecker;->mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

    sget-object v0, Lcom/samsung/android/globalactions/util/ThemeChecker$State;->NEED_CHECKING:Lcom/samsung/android/globalactions/util/ThemeChecker$State;

    iput-object v0, p0, Lcom/samsung/android/globalactions/util/ThemeChecker;->mState:Lcom/samsung/android/globalactions/util/ThemeChecker$State;

    return-void
.end method

.method public static blacklist getColorHSV(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)[F
    .locals 21

    move-object/from16 v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v0, 0x3

    new-array v5, v0, [F

    new-array v6, v0, [F

    const/4 v7, 0x0

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    const/high16 v9, 0x42c80000    # 100.0f

    if-le v0, v8, :cond_0

    int-to-float v10, v8

    goto :goto_0

    :cond_0
    int-to-float v10, v0

    :goto_0
    div-float/2addr v10, v9

    float-to-int v9, v10

    if-gtz v9, :cond_1

    const/4 v9, 0x1

    :cond_1
    iget v10, v1, Landroid/graphics/Rect;->left:I

    iget v11, v1, Landroid/graphics/Rect;->right:I

    iget v12, v1, Landroid/graphics/Rect;->top:I

    iget v13, v1, Landroid/graphics/Rect;->bottom:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move v14, v10

    :goto_1
    const/16 v16, 0x0

    const/16 v17, 0x1

    if-ge v14, v11, :cond_3

    move/from16 v18, v12

    move/from16 v15, v18

    :goto_2
    if-ge v15, v13, :cond_2

    move-object/from16 v1, p0

    move/from16 v19, v0

    :try_start_1
    invoke-virtual {v1, v14, v15}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v0

    invoke-static {v0, v5}, Landroid/graphics/Color;->colorToHSV(I[F)V

    aget v0, v5, v16

    add-float/2addr v2, v0

    aget v0, v5, v17

    add-float/2addr v3, v0

    const/4 v0, 0x2

    aget v20, v5, v0

    add-float v4, v4, v20

    add-int/lit8 v7, v7, 0x1

    add-int/2addr v15, v9

    move-object/from16 v1, p1

    move/from16 v0, v19

    goto :goto_2

    :cond_2
    move-object/from16 v1, p0

    move/from16 v19, v0

    add-int/2addr v14, v9

    move-object/from16 v1, p1

    goto :goto_1

    :cond_3
    move-object/from16 v1, p0

    move/from16 v19, v0

    int-to-float v0, v7

    div-float v0, v2, v0

    aput v0, v6, v16

    int-to-float v0, v7

    div-float v0, v3, v0

    aput v0, v6, v17

    int-to-float v0, v7

    div-float v0, v4, v0

    const/4 v14, 0x2

    aput v0, v6, v14
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v6

    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    move-object/from16 v1, p0

    :goto_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public blacklist getState()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/globalactions/util/ThemeChecker;->mState:Lcom/samsung/android/globalactions/util/ThemeChecker$State;

    sget-object v1, Lcom/samsung/android/globalactions/util/ThemeChecker$State;->NEED_CHECKING:Lcom/samsung/android/globalactions/util/ThemeChecker$State;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/globalactions/util/ThemeChecker;->setThemeState()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/globalactions/util/ThemeChecker;->mState:Lcom/samsung/android/globalactions/util/ThemeChecker$State;

    invoke-virtual {v0}, Lcom/samsung/android/globalactions/util/ThemeChecker$State;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist isWhiteTheme()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/globalactions/util/ThemeChecker;->mState:Lcom/samsung/android/globalactions/util/ThemeChecker$State;

    sget-object v1, Lcom/samsung/android/globalactions/util/ThemeChecker$State;->NEED_CHECKING:Lcom/samsung/android/globalactions/util/ThemeChecker$State;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/globalactions/util/ThemeChecker;->setThemeState()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/globalactions/util/ThemeChecker;->mState:Lcom/samsung/android/globalactions/util/ThemeChecker$State;

    sget-object v1, Lcom/samsung/android/globalactions/util/ThemeChecker$State;->WHITE:Lcom/samsung/android/globalactions/util/ThemeChecker$State;

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist reset()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/globalactions/util/ThemeChecker;->mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

    const-string v1, "ThemeChecker"

    const-string v2, "reset() : state reset"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/globalactions/util/LogWrapper;->v(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/globalactions/util/ThemeChecker$State;->NEED_CHECKING:Lcom/samsung/android/globalactions/util/ThemeChecker$State;

    iput-object v0, p0, Lcom/samsung/android/globalactions/util/ThemeChecker;->mState:Lcom/samsung/android/globalactions/util/ThemeChecker$State;

    iget-object v0, p0, Lcom/samsung/android/globalactions/util/ThemeChecker;->mScreenCaptureUtil:Lcom/samsung/android/globalactions/util/ScreenCaptureUtil;

    invoke-virtual {v0}, Lcom/samsung/android/globalactions/util/ScreenCaptureUtil;->clearScreenShot()V

    return-void
.end method

.method public blacklist setThemeState()V
    .locals 8

    iget-object v0, p0, Lcom/samsung/android/globalactions/util/ThemeChecker;->mScreenCaptureUtil:Lcom/samsung/android/globalactions/util/ScreenCaptureUtil;

    invoke-virtual {v0}, Lcom/samsung/android/globalactions/util/ScreenCaptureUtil;->takeScreenShot()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-static {v0, v1}, Lcom/samsung/android/globalactions/util/ThemeChecker;->getColorHSV(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)[F

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/samsung/android/globalactions/util/ThemeChecker;->mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Whole Area Hue="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget v4, v2, v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", Saturation="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x1

    aget v6, v2, v5

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", Brightness="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v6, 0x2

    aget v7, v2, v6

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v7, "ThemeChecker"

    invoke-virtual {v3, v7, v4}, Lcom/samsung/android/globalactions/util/LogWrapper;->v(Ljava/lang/String;Ljava/lang/String;)V

    aget v3, v2, v5

    const v4, 0x3e99999a    # 0.3f

    cmpg-float v3, v3, v4

    if-gez v3, :cond_0

    aget v3, v2, v6

    const v4, 0x3f6147ae    # 0.88f

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_0

    sget-object v3, Lcom/samsung/android/globalactions/util/ThemeChecker$State;->WHITE:Lcom/samsung/android/globalactions/util/ThemeChecker$State;

    iput-object v3, p0, Lcom/samsung/android/globalactions/util/ThemeChecker;->mState:Lcom/samsung/android/globalactions/util/ThemeChecker$State;

    goto :goto_0

    :cond_0
    sget-object v3, Lcom/samsung/android/globalactions/util/ThemeChecker$State;->BLACK:Lcom/samsung/android/globalactions/util/ThemeChecker$State;

    iput-object v3, p0, Lcom/samsung/android/globalactions/util/ThemeChecker;->mState:Lcom/samsung/android/globalactions/util/ThemeChecker$State;

    :cond_1
    :goto_0
    return-void
.end method
