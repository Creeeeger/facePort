.class public Lcom/samsung/android/multiwindow/FrameDrawHelper;
.super Ljava/lang/Object;
.source "FrameDrawHelper.java"


# static fields
.field public static final blacklist DEBUG:Z = false

.field private static final blacklist FRAME_COLOR_DOCKING:I = -0xb1b1b2

.field private static final blacklist FRAME_COLOR_OUTSIDE:I = 0xd000000

.field private static final blacklist FRAME_COLOR_POPOVER_DARK:I = 0x66999999

.field private static final blacklist FRAME_COLOR_POPOVER_LIGHT:I = -0x333334

.field private static final blacklist FRAME_COLOR_RESIZING:I = -0xa1a1a2

.field private static final blacklist STROKE_RADIUS_DEFAULT_IN_DIP:I = 0xe

.field public static final blacklist STROKE_WIDTH_DEFAULT_IN_DIP:I = 0x5

.field private static final blacklist STROKE_WIDTH_POPOVER_DARK:F = 2.0f

.field private static final blacklist STROKE_WIDTH_POPOVER_LIGHT:F = 1.0f

.field public static final blacklist TAG:Ljava/lang/String; = "FrameDrawHelper"


# instance fields
.field private blacklist mBackgroundColor:I

.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mDecor:Lcom/android/internal/policy/DecorView;

.field private blacklist mIsMovingTask:Z

.field private blacklist mIsNightMode:Z

.field private final blacklist mPaintContent:Landroid/graphics/Paint;

.field private final blacklist mPaintDocking:Landroid/graphics/Paint;

.field private final blacklist mPaintRoot:Landroid/graphics/Paint;

.field private blacklist mStrokeRadius:F

.field private blacklist mStrokeRadiusInPopOver:F

.field private blacklist mThickness:F

.field private blacklist mThicknessInPopOver:F


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/policy/DecorView;)V
    .locals 4
    .param p1, "decor"    # Lcom/android/internal/policy/DecorView;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/multiwindow/FrameDrawHelper;->mPaintRoot:Landroid/graphics/Paint;

    .line 39
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/multiwindow/FrameDrawHelper;->mPaintContent:Landroid/graphics/Paint;

    .line 40
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/multiwindow/FrameDrawHelper;->mPaintDocking:Landroid/graphics/Paint;

    .line 50
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/samsung/android/multiwindow/FrameDrawHelper;->mIsMovingTask:Z

    .line 53
    iput-object p1, p0, Lcom/samsung/android/multiwindow/FrameDrawHelper;->mDecor:Lcom/android/internal/policy/DecorView;

    .line 54
    invoke-virtual {p1}, Lcom/android/internal/policy/DecorView;->getContext()Landroid/content/Context;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/multiwindow/FrameDrawHelper;->mContext:Landroid/content/Context;

    .line 56
    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 57
    sget-object v3, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 58
    sget-object v3, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 59
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 61
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 62
    sget-object v0, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 63
    sget-object v0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 64
    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 66
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 67
    sget-object v0, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 68
    sget-object v0, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 69
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 71
    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/FrameDrawHelper;->updateResources()V

    .line 72
    return-void
.end method


# virtual methods
.method public blacklist drawFrame(Landroid/graphics/Canvas;)V
    .locals 25
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 108
    move-object/from16 v0, p0

    move-object/from16 v9, p1

    iget-object v1, v0, Lcom/samsung/android/multiwindow/FrameDrawHelper;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v1}, Lcom/android/internal/policy/DecorView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->isPopOver()Z

    move-result v10

    .line 109
    .local v10, "isPopOver":Z
    if-eqz v10, :cond_1

    .line 111
    iget-object v1, v0, Lcom/samsung/android/multiwindow/FrameDrawHelper;->mPaintRoot:Landroid/graphics/Paint;

    iget-boolean v2, v0, Lcom/samsung/android/multiwindow/FrameDrawHelper;->mIsNightMode:Z

    if-eqz v2, :cond_0

    const v2, 0x66999999

    goto :goto_0

    :cond_0
    const v2, -0x333334

    :goto_0
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 114
    iget-object v1, v0, Lcom/samsung/android/multiwindow/FrameDrawHelper;->mPaintRoot:Landroid/graphics/Paint;

    iget v2, v0, Lcom/samsung/android/multiwindow/FrameDrawHelper;->mThicknessInPopOver:F

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 117
    const/4 v1, 0x0

    .line 118
    .local v1, "offset":I
    iget v2, v0, Lcom/samsung/android/multiwindow/FrameDrawHelper;->mStrokeRadiusInPopOver:F

    move v11, v1

    move v12, v2

    .local v2, "radius":F
    goto :goto_1

    .line 121
    .end local v1    # "offset":I
    .end local v2    # "radius":F
    :cond_1
    iget-object v1, v0, Lcom/samsung/android/multiwindow/FrameDrawHelper;->mPaintContent:Landroid/graphics/Paint;

    iget v2, v0, Lcom/samsung/android/multiwindow/FrameDrawHelper;->mBackgroundColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 122
    iget-object v1, v0, Lcom/samsung/android/multiwindow/FrameDrawHelper;->mPaintRoot:Landroid/graphics/Paint;

    iget v2, v0, Lcom/samsung/android/multiwindow/FrameDrawHelper;->mBackgroundColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 125
    iget-object v1, v0, Lcom/samsung/android/multiwindow/FrameDrawHelper;->mPaintContent:Landroid/graphics/Paint;

    iget v2, v0, Lcom/samsung/android/multiwindow/FrameDrawHelper;->mThickness:F

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 126
    iget-object v1, v0, Lcom/samsung/android/multiwindow/FrameDrawHelper;->mPaintRoot:Landroid/graphics/Paint;

    iget v2, v0, Lcom/samsung/android/multiwindow/FrameDrawHelper;->mThickness:F

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 129
    iget v1, v0, Lcom/samsung/android/multiwindow/FrameDrawHelper;->mThickness:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    float-to-int v1, v1

    .line 130
    .restart local v1    # "offset":I
    iget v2, v0, Lcom/samsung/android/multiwindow/FrameDrawHelper;->mStrokeRadius:F

    move v11, v1

    move v12, v2

    .line 133
    .end local v1    # "offset":I
    .local v11, "offset":I
    .local v12, "radius":F
    :goto_1
    iget-object v1, v0, Lcom/samsung/android/multiwindow/FrameDrawHelper;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v1}, Lcom/android/internal/policy/DecorView;->getWidth()I

    move-result v13

    .line 134
    .local v13, "width":I
    iget-object v1, v0, Lcom/samsung/android/multiwindow/FrameDrawHelper;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v1}, Lcom/android/internal/policy/DecorView;->getHeight()I

    move-result v14

    .line 135
    .local v14, "height":I
    iget-object v1, v0, Lcom/samsung/android/multiwindow/FrameDrawHelper;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v1}, Lcom/android/internal/policy/DecorView;->getPaddingStart()I

    move-result v1

    sub-int v15, v1, v11

    .line 136
    .local v15, "left":I
    iget-object v1, v0, Lcom/samsung/android/multiwindow/FrameDrawHelper;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v1}, Lcom/android/internal/policy/DecorView;->getPaddingTop()I

    move-result v1

    sub-int v8, v1, v11

    .line 137
    .local v8, "top":I
    iget-object v1, v0, Lcom/samsung/android/multiwindow/FrameDrawHelper;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v1}, Lcom/android/internal/policy/DecorView;->getPaddingEnd()I

    move-result v1

    sub-int v1, v13, v1

    add-int v7, v1, v11

    .line 138
    .local v7, "right":I
    iget-object v1, v0, Lcom/samsung/android/multiwindow/FrameDrawHelper;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v1}, Lcom/android/internal/policy/DecorView;->getPaddingBottom()I

    move-result v1

    sub-int v1, v14, v1

    add-int v6, v1, v11

    .line 147
    .local v6, "bottom":I
    iget-object v1, v0, Lcom/samsung/android/multiwindow/FrameDrawHelper;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v1}, Lcom/android/internal/policy/DecorView;->getDexTaskDockingState()I

    move-result v5

    .line 148
    .local v5, "dexDockingState":I
    iget-boolean v1, v0, Lcom/samsung/android/multiwindow/FrameDrawHelper;->mIsMovingTask:Z

    const/4 v4, 0x1

    if-nez v1, :cond_6

    if-eqz v5, :cond_6

    const/4 v1, -0x1

    if-eq v5, v1, :cond_6

    .line 150
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 152
    .local v1, "path":Landroid/graphics/Path;
    iget-object v2, v0, Lcom/samsung/android/multiwindow/FrameDrawHelper;->mPaintDocking:Landroid/graphics/Paint;

    iget v3, v0, Lcom/samsung/android/multiwindow/FrameDrawHelper;->mThickness:F

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 153
    iget-object v2, v0, Lcom/samsung/android/multiwindow/FrameDrawHelper;->mPaintDocking:Landroid/graphics/Paint;

    const v3, -0xb1b1b2

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 155
    if-eqz v10, :cond_3

    .line 156
    iget-object v3, v0, Lcom/samsung/android/multiwindow/FrameDrawHelper;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v3}, Lcom/android/internal/policy/DecorView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v3, v3, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 157
    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->isPopOverWithoutOutlineEffect()Z

    move-result v3

    .line 158
    .local v3, "isPopOverForMultiPaneLayout":Z
    if-ne v5, v4, :cond_2

    if-eqz v3, :cond_2

    .line 159
    add-int v4, v15, v13

    add-int/2addr v4, v11

    int-to-float v4, v4

    int-to-float v2, v8

    invoke-virtual {v1, v4, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 160
    int-to-float v2, v14

    iget v4, v0, Lcom/samsung/android/multiwindow/FrameDrawHelper;->mThickness:F

    add-float/2addr v2, v4

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v2}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 161
    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    .line 162
    iget-object v2, v0, Lcom/samsung/android/multiwindow/FrameDrawHelper;->mPaintDocking:Landroid/graphics/Paint;

    invoke-virtual {v9, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 163
    return-void

    .line 165
    .end local v3    # "isPopOverForMultiPaneLayout":Z
    :cond_2
    goto :goto_3

    .line 166
    :cond_3
    if-ne v5, v4, :cond_4

    .line 167
    add-int v2, v15, v13

    add-int/2addr v2, v11

    int-to-float v2, v2

    int-to-float v3, v8

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 168
    int-to-float v2, v14

    iget v3, v0, Lcom/samsung/android/multiwindow/FrameDrawHelper;->mThickness:F

    add-float/2addr v2, v3

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Landroid/graphics/Path;->rLineTo(FF)V

    goto :goto_2

    .line 169
    :cond_4
    const/4 v2, 0x2

    if-ne v5, v2, :cond_5

    .line 170
    add-int v2, v15, v11

    int-to-float v2, v2

    int-to-float v3, v8

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 171
    int-to-float v2, v14

    iget v3, v0, Lcom/samsung/android/multiwindow/FrameDrawHelper;->mThickness:F

    add-float/2addr v2, v3

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 173
    :cond_5
    :goto_2
    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    .line 174
    iget-object v2, v0, Lcom/samsung/android/multiwindow/FrameDrawHelper;->mPaintDocking:Landroid/graphics/Paint;

    invoke-virtual {v9, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 175
    return-void

    .line 180
    .end local v1    # "path":Landroid/graphics/Path;
    :cond_6
    :goto_3
    iget-object v1, v0, Lcom/samsung/android/multiwindow/FrameDrawHelper;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v1}, Lcom/android/internal/policy/DecorView;->getMultiSplitActions()Lcom/samsung/android/multiwindow/MultiSplitActions;

    move-result-object v17

    .line 181
    .local v17, "actions":Lcom/samsung/android/multiwindow/MultiSplitActions;
    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/multiwindow/MultiSplitActions;->isEmbeddedMode()Z

    move-result v18

    .line 182
    .local v18, "isEmbeddedMode":Z
    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/multiwindow/MultiSplitActions;->getActivityEmbeddingState()I

    move-result v3

    .line 183
    .local v3, "embeddingState":I
    if-eqz v18, :cond_8

    .line 184
    const/4 v2, 0x2

    if-ne v3, v2, :cond_7

    .line 185
    float-to-int v1, v12

    invoke-static {v13, v14, v15, v8, v1}, Lcom/samsung/android/util/SemViewUtils;->getSmoothLeftRoundedRect(IIIII)Landroid/graphics/Path;

    move-result-object v1

    iget-object v2, v0, Lcom/samsung/android/multiwindow/FrameDrawHelper;->mPaintRoot:Landroid/graphics/Paint;

    invoke-virtual {v9, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    move/from16 v16, v3

    move/from16 v19, v5

    move/from16 v20, v6

    move/from16 v24, v7

    move/from16 v21, v8

    move/from16 v23, v10

    move v10, v4

    goto :goto_4

    .line 188
    :cond_7
    float-to-int v1, v12

    invoke-static {v13, v14, v15, v8, v1}, Lcom/samsung/android/util/SemViewUtils;->getSmoothRightRoundedRect(IIIII)Landroid/graphics/Path;

    move-result-object v1

    iget-object v2, v0, Lcom/samsung/android/multiwindow/FrameDrawHelper;->mPaintRoot:Landroid/graphics/Paint;

    invoke-virtual {v9, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    move/from16 v16, v3

    move/from16 v19, v5

    move/from16 v20, v6

    move/from16 v24, v7

    move/from16 v21, v8

    move/from16 v23, v10

    move v10, v4

    goto :goto_4

    .line 191
    :cond_8
    if-eqz v10, :cond_9

    .line 192
    float-to-int v1, v12

    invoke-static {v13, v14, v15, v8, v1}, Lcom/samsung/android/util/SemViewUtils;->getSmoothRoundedRect(IIIII)Landroid/graphics/Path;

    move-result-object v1

    iget-object v2, v0, Lcom/samsung/android/multiwindow/FrameDrawHelper;->mPaintRoot:Landroid/graphics/Paint;

    invoke-virtual {v9, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    move/from16 v16, v3

    move/from16 v19, v5

    move/from16 v20, v6

    move/from16 v24, v7

    move/from16 v21, v8

    move/from16 v23, v10

    move v10, v4

    goto :goto_4

    .line 195
    :cond_9
    int-to-float v2, v15

    int-to-float v1, v8

    int-to-float v4, v7

    move/from16 v20, v5

    .end local v5    # "dexDockingState":I
    .local v20, "dexDockingState":I
    int-to-float v5, v6

    move/from16 v21, v8

    .end local v8    # "top":I
    .local v21, "top":I
    iget-object v8, v0, Lcom/samsung/android/multiwindow/FrameDrawHelper;->mPaintRoot:Landroid/graphics/Paint;

    move/from16 v22, v1

    move-object/from16 v1, p1

    const/16 v16, 0x2

    move/from16 v23, v10

    move/from16 v10, v16

    move/from16 v16, v3

    .end local v3    # "embeddingState":I
    .end local v10    # "isPopOver":Z
    .local v16, "embeddingState":I
    .local v23, "isPopOver":Z
    move/from16 v3, v22

    const/4 v10, 0x1

    move/from16 v19, v20

    .end local v20    # "dexDockingState":I
    .local v19, "dexDockingState":I
    move/from16 v20, v6

    .end local v6    # "bottom":I
    .local v20, "bottom":I
    move v6, v12

    move/from16 v24, v7

    .end local v7    # "right":I
    .local v24, "right":I
    move v7, v12

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 199
    :goto_4
    iget-object v1, v0, Lcom/samsung/android/multiwindow/FrameDrawHelper;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v1}, Lcom/android/internal/policy/DecorView;->getCaptionHeight()I

    move-result v1

    .line 200
    .local v1, "decorCaptionHeight":I
    if-eqz v1, :cond_a

    .line 201
    const/4 v2, 0x0

    iget v3, v0, Lcom/samsung/android/multiwindow/FrameDrawHelper;->mStrokeRadius:F

    float-to-int v3, v3

    invoke-static {v10, v2, v1, v3}, Lcom/samsung/android/util/SemViewUtils;->getRoundedCorner(IIII)Landroid/graphics/Path;

    move-result-object v2

    iget-object v3, v0, Lcom/samsung/android/multiwindow/FrameDrawHelper;->mPaintContent:Landroid/graphics/Paint;

    invoke-virtual {v9, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 203
    iget-object v2, v0, Lcom/samsung/android/multiwindow/FrameDrawHelper;->mDecor:Lcom/android/internal/policy/DecorView;

    .line 204
    invoke-virtual {v2}, Lcom/android/internal/policy/DecorView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget v3, v0, Lcom/samsung/android/multiwindow/FrameDrawHelper;->mStrokeRadius:F

    sub-float/2addr v2, v3

    float-to-int v2, v2

    float-to-int v3, v3

    .line 203
    const/4 v4, 0x2

    invoke-static {v4, v2, v1, v3}, Lcom/samsung/android/util/SemViewUtils;->getRoundedCorner(IIII)Landroid/graphics/Path;

    move-result-object v2

    iget-object v3, v0, Lcom/samsung/android/multiwindow/FrameDrawHelper;->mPaintContent:Landroid/graphics/Paint;

    invoke-virtual {v9, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 207
    :cond_a
    return-void
.end method

.method public blacklist updateDecorMovingState(Z)V
    .locals 0
    .param p1, "isMovingTask"    # Z

    .line 102
    iput-boolean p1, p0, Lcom/samsung/android/multiwindow/FrameDrawHelper;->mIsMovingTask:Z

    .line 103
    return-void
.end method

.method public blacklist updateResources()V
    .locals 6

    .line 75
    iget-object v0, p0, Lcom/samsung/android/multiwindow/FrameDrawHelper;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->getDecorCaptionResources()Lcom/samsung/android/util/DecorCaptionResources;

    move-result-object v0

    .line 76
    .local v0, "res":Lcom/samsung/android/util/DecorCaptionResources;
    invoke-virtual {v0}, Lcom/samsung/android/util/DecorCaptionResources;->isNightModeEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/multiwindow/FrameDrawHelper;->mIsNightMode:Z

    .line 79
    iget-object v1, p0, Lcom/samsung/android/multiwindow/FrameDrawHelper;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v1}, Lcom/android/internal/policy/DecorView;->isDexEnabled()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 80
    iget-object v1, p0, Lcom/samsung/android/multiwindow/FrameDrawHelper;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/android/internal/R$styleable;->DecorCaptionView:[I

    iget-boolean v5, p0, Lcom/samsung/android/multiwindow/FrameDrawHelper;->mIsNightMode:Z

    if-eqz v5, :cond_0

    .line 81
    const v5, 0x103049d

    goto :goto_0

    .line 82
    :cond_0
    const v5, 0x103049e

    .line 80
    :goto_0
    invoke-virtual {v1, v2, v4, v3, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .local v1, "a":Landroid/content/res/TypedArray;
    goto :goto_2

    .line 84
    .end local v1    # "a":Landroid/content/res/TypedArray;
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/multiwindow/FrameDrawHelper;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/android/internal/R$styleable;->DecorCaptionView:[I

    iget-boolean v5, p0, Lcom/samsung/android/multiwindow/FrameDrawHelper;->mIsNightMode:Z

    if-eqz v5, :cond_2

    .line 85
    const v5, 0x103049c

    goto :goto_1

    .line 86
    :cond_2
    const v5, 0x103049f

    .line 84
    :goto_1
    invoke-virtual {v1, v2, v4, v3, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 88
    .restart local v1    # "a":Landroid/content/res/TypedArray;
    :goto_2
    const/16 v2, 0xe

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/multiwindow/FrameDrawHelper;->mBackgroundColor:I

    .line 89
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 92
    invoke-virtual {v0}, Lcom/samsung/android/util/DecorCaptionResources;->getDensity()F

    move-result v2

    .line 93
    .local v2, "density":F
    const/high16 v3, 0x41600000    # 14.0f

    mul-float/2addr v3, v2

    float-to-int v3, v3

    int-to-float v3, v3

    iput v3, p0, Lcom/samsung/android/multiwindow/FrameDrawHelper;->mStrokeRadius:F

    .line 94
    const/high16 v3, 0x40a00000    # 5.0f

    mul-float/2addr v3, v2

    float-to-int v3, v3

    int-to-float v3, v3

    iput v3, p0, Lcom/samsung/android/multiwindow/FrameDrawHelper;->mThickness:F

    .line 97
    const v3, 0x10503ac

    invoke-virtual {v0, v3}, Lcom/samsung/android/util/DecorCaptionResources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    iput v3, p0, Lcom/samsung/android/multiwindow/FrameDrawHelper;->mStrokeRadiusInPopOver:F

    .line 98
    iget-boolean v3, p0, Lcom/samsung/android/multiwindow/FrameDrawHelper;->mIsNightMode:Z

    if-eqz v3, :cond_3

    const/high16 v3, 0x40000000    # 2.0f

    goto :goto_3

    :cond_3
    const/high16 v3, 0x3f800000    # 1.0f

    :goto_3
    iput v3, p0, Lcom/samsung/android/multiwindow/FrameDrawHelper;->mThicknessInPopOver:F

    .line 99
    return-void
.end method
