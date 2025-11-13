.class public Landroid/window/SnapshotDrawerUtils;
.super Ljava/lang/Object;
.source "SnapshotDrawerUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/window/SnapshotDrawerUtils$SnapshotSurface;,
        Landroid/window/SnapshotDrawerUtils$SystemBarBackgroundPainter;
    }
.end annotation


# static fields
.field static final blacklist FLAG_INHERIT_EXCLUDES:I = 0x3186e03a

.field private static final blacklist TAG:Ljava/lang/String; = "SnapshotDrawerUtils"

.field private static final blacklist sBackgroundPaint:Landroid/graphics/Paint;

.field private static blacklist sToolkitSetFrameRateReadOnlyFlagValue:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetsBackgroundPaint()Landroid/graphics/Paint;
    .locals 1

    sget-object v0, Landroid/window/SnapshotDrawerUtils;->sBackgroundPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$smisAspectRatioMatch(Landroid/graphics/Rect;II)Z
    .locals 0

    invoke-static {p0, p1, p2}, Landroid/window/SnapshotDrawerUtils;->isAspectRatioMatch(Landroid/graphics/Rect;II)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smisAspectRatioMatch(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 0

    invoke-static {p0, p1}, Landroid/window/SnapshotDrawerUtils;->isAspectRatioMatch(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result p0

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    invoke-static {}, Landroid/view/flags/Flags;->toolkitSetFrameRateReadOnly()Z

    move-result v0

    sput-boolean v0, Landroid/window/SnapshotDrawerUtils;->sToolkitSetFrameRateReadOnlyFlagValue:Z

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Landroid/window/SnapshotDrawerUtils;->sBackgroundPaint:Landroid/graphics/Paint;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist createLayoutParameters(Landroid/window/StartingWindowInfo;Ljava/lang/CharSequence;IILandroid/os/IBinder;)Landroid/view/WindowManager$LayoutParams;
    .locals 9

    invoke-static {}, Lcom/android/window/flags/Flags;->drawSnapshotAspectRatioMatch()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/window/StartingWindowInfo;->mainWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/window/StartingWindowInfo;->topOpaqueWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    :goto_0
    iget-object v1, p0, Landroid/window/StartingWindowInfo;->mainWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v2, p0, Landroid/window/StartingWindowInfo;->topOpaqueWindowInsetsState:Landroid/view/InsetsState;

    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    new-instance v3, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v3}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iget-object v4, v0, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    iget v4, v4, Landroid/view/InsetsFlags;->appearance:I

    iget v5, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v6, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    iget-object v7, v1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    iput-object v7, v3, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    iget v7, v1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    iput v7, v3, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    iget v7, v1, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    iput v7, v3, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    iput p2, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    iput p3, v3, Landroid/view/WindowManager$LayoutParams;->format:I

    const v7, -0x3186e03b

    and-int/2addr v7, v5

    or-int/lit8 v7, v7, 0x8

    or-int/lit8 v7, v7, 0x10

    iput v7, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v7, 0x8800

    and-int/2addr v7, v6

    const/high16 v8, 0x20000000

    or-int/2addr v7, v8

    iput v7, v3, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    iput-object p4, v3, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    const/4 v7, -0x1

    iput v7, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v7, v3, Landroid/view/WindowManager$LayoutParams;->height:I

    iget-object v7, v3, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    iput v4, v7, Landroid/view/InsetsFlags;->appearance:I

    iget-object v7, v3, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    iget-object v8, v0, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    iget v8, v8, Landroid/view/InsetsFlags;->behavior:I

    iput v8, v7, Landroid/view/InsetsFlags;->behavior:I

    iget v7, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    iput v7, v3, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    invoke-virtual {v0}, Landroid/view/WindowManager$LayoutParams;->getFitInsetsTypes()I

    move-result v7

    invoke-virtual {v3, v7}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    invoke-virtual {v0}, Landroid/view/WindowManager$LayoutParams;->getFitInsetsSides()I

    move-result v7

    invoke-virtual {v3, v7}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsSides(I)V

    invoke-virtual {v0}, Landroid/view/WindowManager$LayoutParams;->isFitInsetsIgnoringVisibility()Z

    move-result v7

    invoke-virtual {v3, v7}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsIgnoringVisibility(Z)V

    sget-boolean v7, Landroid/window/SnapshotDrawerUtils;->sToolkitSetFrameRateReadOnlyFlagValue:Z

    if-eqz v7, :cond_2

    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Landroid/view/WindowManager$LayoutParams;->setFrameRatePowerSavingsBalanced(Z)V

    :cond_2
    invoke-virtual {v3, p1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    iget v7, v3, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    or-int/lit8 v7, v7, 0x1

    iput v7, v3, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    return-object v3

    :cond_3
    :goto_1
    const-string v3, "SnapshotDrawerUtils"

    const-string/jumbo v4, "unable to create taskSnapshot surface "

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    return-object v3
.end method

.method public static blacklist drawSnapshotOnSurface(Landroid/window/StartingWindowInfo;Landroid/view/WindowManager$LayoutParams;Landroid/view/SurfaceControl;Landroid/window/TaskSnapshot;Landroid/graphics/Rect;Landroid/view/InsetsState;Z)V
    .locals 14

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "SnapshotDrawerUtils"

    const-string v3, "Unable to draw snapshot on an empty windowBounds"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v2, Landroid/window/SnapshotDrawerUtils$SnapshotSurface;

    invoke-virtual {p1}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    invoke-direct {v2, v4, v5, v3}, Landroid/window/SnapshotDrawerUtils$SnapshotSurface;-><init>(Landroid/view/SurfaceControl;Landroid/window/TaskSnapshot;Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/android/window/flags/Flags;->drawSnapshotAspectRatioMatch()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, v0, Landroid/window/StartingWindowInfo;->mainWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    goto :goto_0

    :cond_1
    iget-object v3, v0, Landroid/window/StartingWindowInfo;->topOpaqueWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    :goto_0
    iget-object v12, v0, Landroid/window/StartingWindowInfo;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    nop

    invoke-static {v12}, Landroid/window/SnapshotDrawerUtils;->getOrCreateTaskDescription(Landroid/app/ActivityManager$RunningTaskInfo;)Landroid/app/ActivityManager$TaskDescription;

    move-result-object v13

    iget v7, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v8, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    iget-object v6, v3, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    iget v9, v6, Landroid/view/InsetsFlags;->appearance:I

    iget v11, v0, Landroid/window/StartingWindowInfo;->requestedVisibleTypes:I

    move-object v6, v2

    move-object v10, v13

    invoke-virtual/range {v6 .. v11}, Landroid/window/SnapshotDrawerUtils$SnapshotSurface;->initiateSystemBarPainter(IIILandroid/app/ActivityManager$TaskDescription;I)V

    invoke-static/range {p4 .. p5}, Landroid/window/SnapshotDrawerUtils;->getSystemBarInsets(Landroid/graphics/Rect;Landroid/view/InsetsState;)Landroid/graphics/Rect;

    move-result-object v6

    move-object/from16 v7, p4

    invoke-virtual {v2, v7, v6}, Landroid/window/SnapshotDrawerUtils$SnapshotSurface;->setFrames(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    move/from16 v8, p6

    invoke-static {v2, v8}, Landroid/window/SnapshotDrawerUtils$SnapshotSurface;->-$$Nest$mdrawSnapshot(Landroid/window/SnapshotDrawerUtils$SnapshotSurface;Z)V

    return-void
.end method

.method public static blacklist getOrCreateTaskDescription(Landroid/app/ActivityManager$RunningTaskInfo;)Landroid/app/ActivityManager$TaskDescription;
    .locals 2

    iget-object v0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/app/ActivityManager$TaskDescription;

    invoke-direct {v0}, Landroid/app/ActivityManager$TaskDescription;-><init>()V

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager$TaskDescription;->setBackgroundColor(I)V

    :goto_0
    return-object v0
.end method

.method static blacklist getSystemBarInsets(Landroid/graphics/Rect;Landroid/view/InsetsState;)Landroid/graphics/Rect;
    .locals 2

    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, p0, v0, v1}, Landroid/view/InsetsState;->calculateInsets(Landroid/graphics/Rect;IZ)Landroid/graphics/Insets;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Insets;->toRect()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist isAspectRatioMatch(Landroid/graphics/Rect;II)Z
    .locals 4

    invoke-virtual {p0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    int-to-float v0, p1

    int-to-float v2, p2

    div-float/2addr v0, v2

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v2, 0x3c23d70a    # 0.01f

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private static blacklist isAspectRatioMatch(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 4

    invoke-virtual {p0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    nop

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v2, 0x3c23d70a    # 0.01f

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    :cond_2
    :goto_0
    return v1
.end method
