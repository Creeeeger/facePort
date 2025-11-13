.class public Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;
.super Ljava/lang/Object;
.source "MultiWindowEdgeDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector$Utils;
    }
.end annotation


# static fields
.field public static final blacklist EDGE_LEFT_TOP:I = 0x5

.field public static final blacklist EDGE_NONE:I = 0x0

.field public static final blacklist EDGE_RIGHT_TOP:I = 0x9

.field private static final blacklist MAX_EFFECTIVE_DEGREES:I = 0x46

.field private static final blacklist MIN_EFFECTIVE_DEGREES:I = 0x14

.field private static final blacklist SAFE_DEBUG:Z

.field private static final blacklist STRAIGHT_ANGLE:I = 0xb4

.field private static final blacklist TAG:Ljava/lang/String;

.field private static final blacklist WIDTH_SCALE_FOR_LANDSCAPE_CORNER_R:F = 1.25f

.field private static blacklist sDefaultValue:I

.field private static blacklist sHeight:I

.field private static blacklist sScreenHeight:I

.field private static blacklist sScreenWidth:I

.field private static blacklist sWidth:I


# instance fields
.field private final blacklist mContext:Landroid/content/Context;

.field private blacklist mCornerRadius:I

.field private blacklist mEdgeFlags:I

.field private blacklist mGestureThreshold:I

.field private blacklist mIsMultiWindowPointerDetector:Z

.field private blacklist mMaxDegrees:I

.field private blacklist mMinDegrees:I

.field private blacklist mMoving:Z

.field private blacklist mScreenOrientation:I

.field private blacklist mStartX:I

.field private blacklist mStartY:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 51
    const-class v0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->TAG:Ljava/lang/String;

    .line 53
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->SAFE_DEBUG:Z

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 93
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;-><init>(Landroid/content/Context;Z)V

    .line 94
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isMultiWindowPointerDetector"    # Z

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    const/16 v0, 0x14

    iput v0, p0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->mMinDegrees:I

    .line 74
    const/16 v0, 0x46

    iput v0, p0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->mMaxDegrees:I

    .line 79
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->mIsMultiWindowPointerDetector:Z

    .line 83
    iput v0, p0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->mScreenOrientation:I

    .line 84
    iput v0, p0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->mEdgeFlags:I

    .line 89
    iput-boolean v0, p0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->mMoving:Z

    .line 98
    iput-object p1, p0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->mContext:Landroid/content/Context;

    .line 99
    iput-boolean p2, p0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->mIsMultiWindowPointerDetector:Z

    .line 100
    invoke-direct {p0, p1}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v0

    sput v0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->sDefaultValue:I

    .line 101
    invoke-direct {p0}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->loadResources()V

    .line 102
    invoke-direct {p0}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->updateScreenInfo()V

    .line 103
    return-void
.end method

.method private blacklist ensureScreenInfo()V
    .locals 6

    .line 174
    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 175
    .local v0, "currentWidth":I
    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 176
    .local v1, "currentHeight":I
    if-le v0, v1, :cond_0

    const/4 v2, 0x2

    goto :goto_0

    .line 177
    :cond_0
    const/4 v2, 0x1

    :goto_0
    nop

    .line 178
    .local v2, "currentOrientation":I
    iget v3, p0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->mScreenOrientation:I

    if-eq v3, v2, :cond_1

    .line 179
    sget-object v3, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ensureScreenInfo: ScreenInfo is wrong, mScreenOr="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->mScreenOrientation:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", currentOr="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    invoke-direct {p0}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->updateScreenInfo()V

    .line 182
    :cond_1
    return-void
.end method

.method private blacklist getEdgeFlags(Landroid/view/MotionEvent;)I
    .locals 6
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 257
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    .line 258
    .local v0, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    .line 260
    .local v1, "y":F
    const/4 v2, 0x0

    .line 263
    .local v2, "flags":I
    sget v3, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->sHeight:I

    int-to-float v3, v3

    cmpl-float v3, v1, v3

    if-lez v3, :cond_0

    .line 264
    return v2

    .line 266
    :cond_0
    const/4 v2, 0x1

    .line 269
    sget v3, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->sWidth:I

    int-to-float v4, v3

    cmpg-float v4, v0, v4

    if-gez v4, :cond_1

    .line 270
    or-int/lit8 v2, v2, 0x4

    goto :goto_0

    .line 271
    :cond_1
    sget v4, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->sScreenWidth:I

    sub-int/2addr v4, v3

    int-to-float v3, v4

    cmpl-float v3, v0, v3

    if-lez v3, :cond_2

    .line 272
    or-int/lit8 v2, v2, 0x8

    .line 275
    :cond_2
    :goto_0
    iget-boolean v3, p0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->mIsMultiWindowPointerDetector:Z

    if-eqz v3, :cond_3

    .line 276
    sget-object v3, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkEdgeFlags: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector$Utils;->edgeFlagToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "], w="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->sWidth:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", h="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->sHeight:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", screenWidth="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->sScreenWidth:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", caller="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x3

    .line 277
    invoke-static {v5}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 276
    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    :cond_3
    return v2
.end method

.method private blacklist getStatusBarHeight(Landroid/content/Context;)I
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 438
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getCutout()Landroid/view/DisplayCutout;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->getStatusBarHeight(Landroid/content/res/Resources;Landroid/view/DisplayCutout;)I

    move-result v0

    return v0
.end method

.method private blacklist getStatusBarHeight(Landroid/content/res/Resources;Landroid/view/DisplayCutout;)I
    .locals 4
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "cutout"    # Landroid/view/DisplayCutout;

    .line 445
    const v0, 0x10504cc

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 446
    .local v0, "defaultSize":I
    const/4 v1, 0x0

    if-nez p2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    move-result v2

    .line 447
    .local v2, "safeInsetTop":I
    :goto_0
    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Landroid/view/DisplayCutout;->getWaterfallInsets()Landroid/graphics/Insets;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Insets;->top:I

    .line 450
    .local v1, "waterfallInsetTop":I
    :goto_1
    add-int v3, v0, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    return v3
.end method

.method private blacklist getTopFullscreenTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;
    .locals 6

    .line 229
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getInstance()Lcom/samsung/android/multiwindow/MultiWindowManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getVisibleTasks()Ljava/util/List;

    move-result-object v0

    .line 230
    .local v0, "taskInfos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 233
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 234
    .local v3, "taskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    invoke-virtual {v3}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 235
    return-object v3

    .line 237
    .end local v3    # "taskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    :cond_1
    goto :goto_0

    .line 238
    :cond_2
    return-object v1

    .line 231
    :cond_3
    :goto_1
    return-object v1
.end method

.method private blacklist isEffectiveAngle(II)Z
    .locals 5
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    .line 310
    const/4 v0, 0x0

    .line 311
    .local v0, "degrees":I
    iget v1, p0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->mEdgeFlags:I

    sparse-switch v1, :sswitch_data_0

    .line 319
    const/4 v0, 0x0

    goto :goto_0

    .line 316
    :sswitch_0
    int-to-double v1, p2

    int-to-double v3, p1

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v1

    double-to-int v1, v1

    rsub-int v0, v1, 0xb4

    .line 317
    goto :goto_0

    .line 313
    :sswitch_1
    int-to-double v1, p2

    int-to-double v3, p1

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v1

    double-to-int v0, v1

    .line 314
    nop

    .line 322
    :goto_0
    iget v1, p0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->mMinDegrees:I

    if-lt v0, v1, :cond_0

    iget v1, p0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->mMaxDegrees:I

    if-gt v0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    .line 323
    .local v1, "result":Z
    :goto_1
    sget-object v2, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isEffectiveAngle: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", degrees="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    return v1

    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_1
        0x9 -> :sswitch_0
    .end sparse-switch
.end method

.method private blacklist isExceedThreshold(II)Z
    .locals 5
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    .line 301
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 302
    .local v0, "distance":I
    iget v1, p0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->mGestureThreshold:I

    if-lt v0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 303
    .local v1, "result":Z
    :goto_0
    sget-object v2, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isExceedThreshold: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", dx="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 304
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", dy="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", distance="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", threshold="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->mGestureThreshold:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 303
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    return v1
.end method

.method private blacklist isNotSupportEdge(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 247
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private blacklist isTopTaskHomeOrRecents()Z
    .locals 4

    .line 215
    invoke-direct {p0}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->getTopFullscreenTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    .line 216
    .local v0, "topTaskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 217
    return v1

    .line 219
    :cond_0
    invoke-virtual {v0}, Landroid/app/ActivityManager$RunningTaskInfo;->getActivityType()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    .line 220
    invoke-virtual {v0}, Landroid/app/ActivityManager$RunningTaskInfo;->getActivityType()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    goto :goto_0

    .line 224
    :cond_1
    return v1

    .line 221
    :cond_2
    :goto_0
    sget-object v1, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->TAG:Ljava/lang/String;

    const-string v2, "isTopTaskHomeOrRecents"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    const/4 v1, 0x1

    return v1
.end method

.method private blacklist loadResources()V
    .locals 2

    .line 117
    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v0

    sput v0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->sHeight:I

    sput v0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->sWidth:I

    .line 118
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->updateCustomBounds()V

    .line 119
    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x105023c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->mCornerRadius:I

    .line 121
    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x105023d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->mGestureThreshold:I

    .line 124
    sget-boolean v0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->SAFE_DEBUG:Z

    if-eqz v0, :cond_0

    .line 125
    invoke-direct {p0}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->updateFromSystemProperties()V

    .line 127
    :cond_0
    return-void
.end method

.method public static blacklist updateCustomBounds()V
    .locals 2

    .line 130
    sget v0, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_FREEFORM_CORNER_GESTURE_CUSTOM_VALUE:I

    .line 131
    .local v0, "customValue":I
    if-lez v0, :cond_0

    .line 132
    sput v0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->sHeight:I

    sput v0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->sWidth:I

    goto :goto_0

    .line 134
    :cond_0
    sget v1, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->sDefaultValue:I

    sput v1, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->sHeight:I

    sput v1, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->sWidth:I

    .line 136
    :goto_0
    return-void
.end method

.method private blacklist updateFromSystemProperties()V
    .locals 8

    .line 328
    sget-boolean v0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->SAFE_DEBUG:Z

    if-nez v0, :cond_0

    return-void

    .line 330
    :cond_0
    const-string/jumbo v0, "persist.dev.freeform.gesture.w"

    const/4 v1, -0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 331
    .local v0, "sysWidth":I
    const-string/jumbo v2, "persist.dev.freeform.gesture.h"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 332
    .local v2, "sysHeight":I
    const-string/jumbo v3, "persist.dev.freeform.gesture.r"

    invoke-static {v3, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 333
    .local v3, "sysCornerRadius":I
    const-string/jumbo v4, "persist.dev.freeform.gesture.dr"

    invoke-static {v4, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 334
    .local v1, "sysDegrees":I
    const/4 v4, 0x0

    .line 336
    .local v4, "changed":Z
    if-ltz v0, :cond_1

    sget v5, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->sWidth:I

    if-eq v5, v0, :cond_1

    .line 337
    sput v0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->sWidth:I

    .line 338
    const/4 v4, 0x1

    .line 340
    :cond_1
    if-ltz v2, :cond_2

    sget v5, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->sHeight:I

    if-eq v5, v2, :cond_2

    .line 341
    sput v2, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->sHeight:I

    .line 342
    const/4 v4, 0x1

    .line 344
    :cond_2
    if-ltz v3, :cond_3

    iget v5, p0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->mCornerRadius:I

    if-eq v5, v3, :cond_3

    .line 345
    iput v3, p0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->mCornerRadius:I

    .line 346
    const/4 v4, 0x1

    .line 348
    :cond_3
    if-ltz v1, :cond_4

    iget v5, p0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->mMaxDegrees:I

    if-eq v5, v1, :cond_4

    .line 349
    iput v1, p0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->mMaxDegrees:I

    .line 350
    const/4 v4, 0x1

    .line 352
    :cond_4
    if-eqz v4, :cond_5

    .line 353
    sget-object v5, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updateFromSystemProperties: sWidth="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->sWidth:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", sHeight="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->sHeight:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", mCornerRadius="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->mCornerRadius:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", mMaxDegrees="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->mMaxDegrees:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    :cond_5
    return-void
.end method

.method private blacklist updateScreenInfo()V
    .locals 8

    .line 139
    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v0

    .line 140
    .local v0, "display":Landroid/view/Display;
    if-nez v0, :cond_0

    .line 141
    sget-object v1, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "display is null, mContext="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    return-void

    .line 145
    :cond_0
    new-instance v1, Landroid/view/DisplayInfo;

    invoke-direct {v1}, Landroid/view/DisplayInfo;-><init>()V

    .line 146
    .local v1, "displayInfo":Landroid/view/DisplayInfo;
    invoke-virtual {v0, v1}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    .line 148
    sget v2, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->sScreenWidth:I

    iget v3, v1, Landroid/view/DisplayInfo;->logicalWidth:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v2, v3, :cond_2

    sget v2, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->sScreenHeight:I

    iget v3, v1, Landroid/view/DisplayInfo;->logicalHeight:I

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    move v2, v4

    goto :goto_1

    :cond_2
    :goto_0
    move v2, v5

    .line 151
    .local v2, "changed":Z
    :goto_1
    if-nez v2, :cond_3

    iget v3, p0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->mScreenOrientation:I

    if-nez v3, :cond_4

    :cond_3
    move v4, v5

    :cond_4
    move v3, v4

    .line 152
    .local v3, "needUpdate":Z
    if-eqz v3, :cond_7

    .line 153
    iget v4, v1, Landroid/view/DisplayInfo;->logicalWidth:I

    sput v4, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->sScreenWidth:I

    .line 154
    iget v4, v1, Landroid/view/DisplayInfo;->logicalHeight:I

    sput v4, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->sScreenHeight:I

    .line 155
    sget v6, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->sScreenWidth:I

    const/4 v7, 0x2

    if-le v6, v4, :cond_5

    move v5, v7

    :cond_5
    iput v5, p0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->mScreenOrientation:I

    .line 157
    if-ne v5, v7, :cond_6

    .line 158
    sget v4, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->sWidth:I

    int-to-float v4, v4

    const/high16 v5, 0x3fa00000    # 1.25f

    mul-float/2addr v4, v5

    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v4, v5

    float-to-int v4, v4

    sput v4, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->sWidth:I

    .line 161
    :cond_6
    sget-boolean v4, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->SAFE_DEBUG:Z

    if-eqz v4, :cond_7

    .line 162
    sget-object v4, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateScreenInfo: sScreenWidth="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->sScreenWidth:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", sScreenHeight="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->sScreenHeight:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mScreenOrientation="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->mScreenOrientation:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", sWidth="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->sWidth:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    :cond_7
    return-void
.end method


# virtual methods
.method public blacklist getEdgeFlags()I
    .locals 1

    .line 252
    iget v0, p0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->mEdgeFlags:I

    return v0
.end method

.method public blacklist interceptTouchForCornerGesture(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 460
    sget-boolean v0, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_FREEFORM_CORNER_GESTURE_ENABLED:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 461
    return v1

    .line 463
    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    .line 464
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 465
    .local v0, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    .line 466
    .local v3, "y":I
    invoke-virtual {p0, v0, v3}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->readyToFreeform(II)Z

    move-result v4

    .line 467
    .local v4, "readyToFreeform":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-nez v5, :cond_1

    .line 468
    iput v0, p0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->mStartX:I

    .line 469
    iput v3, p0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->mStartY:I

    .line 470
    return v1

    .line 472
    :cond_1
    iget-boolean v5, p0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->mMoving:Z

    if-nez v5, :cond_2

    if-eqz v4, :cond_2

    iget v5, p0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->mStartX:I

    sub-int v5, v0, v5

    iget v6, p0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->mStartY:I

    sub-int v6, v3, v6

    invoke-virtual {p0, v5, v6}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->isValidGesture(II)Z

    move-result v5

    if-nez v5, :cond_2

    .line 473
    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->reset()V

    .line 474
    return v1

    .line 476
    :cond_2
    if-eqz v4, :cond_3

    iget-boolean v1, p0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->mMoving:Z

    if-nez v1, :cond_3

    .line 477
    iput-boolean v2, p0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->mMoving:Z

    .line 479
    :cond_3
    return v2

    .line 481
    .end local v0    # "x":I
    .end local v3    # "y":I
    .end local v4    # "readyToFreeform":Z
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v2, :cond_5

    .line 482
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_6

    .line 483
    :cond_5
    iput-boolean v1, p0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->mMoving:Z

    .line 485
    :cond_6
    return v1
.end method

.method public blacklist isEdge()Z
    .locals 2

    .line 243
    iget v0, p0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->mEdgeFlags:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public blacklist isValidGesture(II)Z
    .locals 1
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    .line 297
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->isExceedThreshold(II)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->isEffectiveAngle(II)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist onConfigurationChanged()V
    .locals 0

    .line 106
    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->reset()V

    .line 107
    invoke-direct {p0}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->loadResources()V

    .line 108
    invoke-direct {p0}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->updateScreenInfo()V

    .line 109
    return-void
.end method

.method public blacklist onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 190
    sget-boolean v0, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_FREEFORM_CORNER_GESTURE_ENABLED:Z

    if-nez v0, :cond_0

    .line 192
    const/4 v0, 0x0

    return v0

    .line 194
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->isEdge()Z

    move-result v0

    .line 195
    .local v0, "onTouchEvent":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 207
    :pswitch_1
    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->reset()V

    goto :goto_0

    .line 197
    :pswitch_2
    invoke-direct {p0}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->ensureScreenInfo()V

    .line 198
    invoke-direct {p0, p1}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->getEdgeFlags(Landroid/view/MotionEvent;)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->mEdgeFlags:I

    .line 199
    invoke-direct {p0, p1}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->isNotSupportEdge(Landroid/view/MotionEvent;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->isTopTaskHomeOrRecents()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 200
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->reset()V

    .line 202
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->isEdge()Z

    move-result v0

    .line 203
    nop

    .line 211
    :goto_0
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public blacklist readyToFreeform(II)Z
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 283
    iget v0, p0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->mCornerRadius:I

    mul-int/2addr v0, v0

    .line 284
    .local v0, "radius":I
    const/4 v1, 0x0

    .line 285
    .local v1, "distance":I
    iget v2, p0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->mEdgeFlags:I

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    .line 290
    :sswitch_0
    sget v2, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->sScreenWidth:I

    sub-int v3, v2, p1

    sub-int/2addr v2, p1

    mul-int/2addr v3, v2

    mul-int v2, p2, p2

    add-int v1, v3, v2

    goto :goto_0

    .line 287
    :sswitch_1
    mul-int v2, p1, p1

    mul-int v3, p2, p2

    add-int v1, v2, v3

    .line 288
    nop

    .line 293
    :goto_0
    if-ge v0, v1, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_1
    return v2

    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_1
        0x9 -> :sswitch_0
    .end sparse-switch
.end method

.method public blacklist reset()V
    .locals 1

    .line 113
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->mEdgeFlags:I

    .line 114
    return-void
.end method
