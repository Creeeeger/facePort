.class public Lcom/samsung/android/multiwindow/FrameDrawHelper;
.super Ljava/lang/Object;
.source "FrameDrawHelper.java"


# static fields
.field public static final blacklist DEBUG:Z = false

.field private static final blacklist STROKE_RADIUS_DEFAULT_IN_DIP:I = 0xe

.field public static final blacklist STROKE_WIDTH_DEFAULT_IN_DIP:I = 0x5

.field public static final blacklist TAG:Ljava/lang/String; = "FrameDrawHelper"


# instance fields
.field private blacklist mBackgroundColor:I

.field private final blacklist mContext:Landroid/content/Context;

.field private blacklist mIsNightMode:Z

.field private final blacklist mPaintContent:Landroid/graphics/Paint;

.field private final blacklist mPaintDocking:Landroid/graphics/Paint;

.field private final blacklist mPaintRoot:Landroid/graphics/Paint;

.field private blacklist mStrokeRadius:F

.field private blacklist mThickness:F

.field private final blacklist mView:Landroid/view/View;


# direct methods
.method public constructor blacklist <init>(Landroid/view/View;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/multiwindow/FrameDrawHelper;->mPaintRoot:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/multiwindow/FrameDrawHelper;->mPaintContent:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/multiwindow/FrameDrawHelper;->mPaintDocking:Landroid/graphics/Paint;

    iput-object p1, p0, Lcom/samsung/android/multiwindow/FrameDrawHelper;->mView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/multiwindow/FrameDrawHelper;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/samsung/android/multiwindow/FrameDrawHelper;->mPaintRoot:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/samsung/android/multiwindow/FrameDrawHelper;->mPaintRoot:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    iget-object v0, p0, Lcom/samsung/android/multiwindow/FrameDrawHelper;->mPaintRoot:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object v0, p0, Lcom/samsung/android/multiwindow/FrameDrawHelper;->mPaintRoot:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/samsung/android/multiwindow/FrameDrawHelper;->mPaintContent:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/samsung/android/multiwindow/FrameDrawHelper;->mPaintContent:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    iget-object v0, p0, Lcom/samsung/android/multiwindow/FrameDrawHelper;->mPaintContent:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object v0, p0, Lcom/samsung/android/multiwindow/FrameDrawHelper;->mPaintContent:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/samsung/android/multiwindow/FrameDrawHelper;->mPaintDocking:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/samsung/android/multiwindow/FrameDrawHelper;->mPaintDocking:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    iget-object v0, p0, Lcom/samsung/android/multiwindow/FrameDrawHelper;->mPaintDocking:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object v0, p0, Lcom/samsung/android/multiwindow/FrameDrawHelper;->mPaintDocking:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method


# virtual methods
.method public blacklist drawFrame(Landroid/graphics/Canvas;I)V
    .locals 10

    iget-object v0, p0, Lcom/samsung/android/multiwindow/FrameDrawHelper;->mPaintContent:Landroid/graphics/Paint;

    iget v1, p0, Lcom/samsung/android/multiwindow/FrameDrawHelper;->mBackgroundColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/samsung/android/multiwindow/FrameDrawHelper;->mPaintRoot:Landroid/graphics/Paint;

    iget v1, p0, Lcom/samsung/android/multiwindow/FrameDrawHelper;->mBackgroundColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/samsung/android/multiwindow/FrameDrawHelper;->mPaintContent:Landroid/graphics/Paint;

    iget v1, p0, Lcom/samsung/android/multiwindow/FrameDrawHelper;->mThickness:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/samsung/android/multiwindow/FrameDrawHelper;->mPaintRoot:Landroid/graphics/Paint;

    iget v1, p0, Lcom/samsung/android/multiwindow/FrameDrawHelper;->mThickness:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/samsung/android/multiwindow/FrameDrawHelper;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/multiwindow/FrameDrawHelper;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/samsung/android/multiwindow/FrameDrawHelper;->mView:Landroid/view/View;

    instance-of v3, v3, Lcom/android/internal/policy/DecorView;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/multiwindow/FrameDrawHelper;->mView:Landroid/view/View;

    check-cast v3, Lcom/android/internal/policy/DecorView;

    invoke-virtual {v3}, Lcom/android/internal/policy/DecorView;->getDexTaskDockingState()I

    move-result v2

    :cond_0
    if-eqz v2, :cond_1

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    return-void

    :cond_1
    iget v3, p0, Lcom/samsung/android/multiwindow/FrameDrawHelper;->mStrokeRadius:F

    float-to-int v3, v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {v4, v5, p2, v3}, Lcom/samsung/android/util/SemViewUtils;->getRoundedCorner(IIII)Landroid/graphics/Path;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/multiwindow/FrameDrawHelper;->mPaintContent:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    int-to-float v3, v0

    iget v4, p0, Lcom/samsung/android/multiwindow/FrameDrawHelper;->mStrokeRadius:F

    sub-float/2addr v3, v4

    float-to-int v3, v3

    iget v4, p0, Lcom/samsung/android/multiwindow/FrameDrawHelper;->mStrokeRadius:F

    float-to-int v4, v4

    const/4 v6, 0x2

    invoke-static {v6, v3, p2, v4}, Lcom/samsung/android/util/SemViewUtils;->getRoundedCorner(IIII)Landroid/graphics/Path;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/multiwindow/FrameDrawHelper;->mPaintContent:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    int-to-float v3, v1

    iget v4, p0, Lcom/samsung/android/multiwindow/FrameDrawHelper;->mStrokeRadius:F

    sub-float/2addr v3, v4

    float-to-int v3, v3

    iget v4, p0, Lcom/samsung/android/multiwindow/FrameDrawHelper;->mStrokeRadius:F

    float-to-int v4, v4

    const/4 v6, 0x4

    invoke-static {v6, v5, v3, v4}, Lcom/samsung/android/util/SemViewUtils;->getRoundedCorner(IIII)Landroid/graphics/Path;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/multiwindow/FrameDrawHelper;->mPaintContent:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    int-to-float v3, v0

    iget v4, p0, Lcom/samsung/android/multiwindow/FrameDrawHelper;->mStrokeRadius:F

    sub-float/2addr v3, v4

    float-to-int v3, v3

    int-to-float v4, v1

    iget v5, p0, Lcom/samsung/android/multiwindow/FrameDrawHelper;->mStrokeRadius:F

    sub-float/2addr v4, v5

    float-to-int v4, v4

    iget v5, p0, Lcom/samsung/android/multiwindow/FrameDrawHelper;->mStrokeRadius:F

    float-to-int v5, v5

    const/16 v6, 0x8

    invoke-static {v6, v3, v4, v5}, Lcom/samsung/android/util/SemViewUtils;->getRoundedCorner(IIII)Landroid/graphics/Path;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/multiwindow/FrameDrawHelper;->mPaintContent:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL_CUSTOMIZABLE_WINDOW_HEADERS:Z

    if-eqz v3, :cond_2

    if-eqz p2, :cond_2

    int-to-float v7, v0

    int-to-float v8, p2

    iget-object v9, p0, Lcom/samsung/android/multiwindow/FrameDrawHelper;->mPaintContent:Landroid/graphics/Paint;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_2
    return-void
.end method

.method public blacklist updateResources(Landroid/content/res/Configuration;)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/multiwindow/FrameDrawHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/multiwindow/FrameDrawHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/multiwindow/FrameDrawHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    :goto_0
    nop

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/content/res/Configuration;->isNightModeActive()Z

    move-result v1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Configuration;->isNightModeActive()Z

    move-result v1

    :goto_1
    iput-boolean v1, p0, Lcom/samsung/android/multiwindow/FrameDrawHelper;->mIsNightMode:Z

    iget-boolean v1, p0, Lcom/samsung/android/multiwindow/FrameDrawHelper;->mIsNightMode:Z

    if-eqz v1, :cond_2

    const v1, 0x106032f

    goto :goto_2

    :cond_2
    const v1, 0x1060330

    :goto_2
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/multiwindow/FrameDrawHelper;->mBackgroundColor:I

    iget-object v1, p0, Lcom/samsung/android/multiwindow/FrameDrawHelper;->mView:Landroid/view/View;

    invoke-static {v1}, Lcom/android/internal/policy/DecorView;->getDensity(Landroid/view/View;)F

    move-result v1

    const/high16 v2, 0x41600000    # 14.0f

    mul-float/2addr v2, v1

    float-to-int v2, v2

    int-to-float v2, v2

    iput v2, p0, Lcom/samsung/android/multiwindow/FrameDrawHelper;->mStrokeRadius:F

    const/high16 v2, 0x40a00000    # 5.0f

    mul-float/2addr v2, v1

    float-to-int v2, v2

    int-to-float v2, v2

    iput v2, p0, Lcom/samsung/android/multiwindow/FrameDrawHelper;->mThickness:F

    iget v2, p0, Lcom/samsung/android/multiwindow/FrameDrawHelper;->mThickness:F

    const/high16 v3, 0x40000000    # 2.0f

    rem-float/2addr v2, v3

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-nez v2, :cond_3

    iget v2, p0, Lcom/samsung/android/multiwindow/FrameDrawHelper;->mThickness:F

    goto :goto_3

    :cond_3
    iget v2, p0, Lcom/samsung/android/multiwindow/FrameDrawHelper;->mThickness:F

    const/high16 v3, 0x3f800000    # 1.0f

    add-float/2addr v2, v3

    :goto_3
    iput v2, p0, Lcom/samsung/android/multiwindow/FrameDrawHelper;->mThickness:F

    return-void
.end method
