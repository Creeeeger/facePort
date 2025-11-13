.class public final Lcom/android/systemui/mediaprojection/appselector/view/MediaProjectionTaskView;
.super Landroid/view/View;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final backgroundPaint:Landroid/graphics/Paint;

.field public bitmapShader:Landroid/graphics/BitmapShader;

.field public final cornerRadius:I

.field public final paint:Landroid/graphics/Paint;

.field public final previewPositionHelper:Lcom/android/systemui/shared/recents/utilities/PreviewPositionHelper;

.field public final previewRect:Landroid/graphics/Rect;

.field public task:Lcom/android/systemui/mediaprojection/appselector/data/RecentTask;

.field public thumbnailData:Lcom/android/systemui/shared/recents/model/ThumbnailData;

.field public final windowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/mediaprojection/appselector/view/MediaProjectionTaskView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/mediaprojection/appselector/view/MediaProjectionTaskView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const p2, 0x10104e2

    filled-new-array {p2}, [I

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p2

    const/4 p3, 0x0

    const/high16 v0, -0x1000000

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    const-class p2, Landroid/view/WindowManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p2, Landroid/view/WindowManager;

    iput-object p2, p0, Lcom/android/systemui/mediaprojection/appselector/view/MediaProjectionTaskView;->windowManager:Landroid/view/WindowManager;

    new-instance p2, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p2, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/android/systemui/mediaprojection/appselector/view/MediaProjectionTaskView;->paint:Landroid/graphics/Paint;

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, v0}, Landroid/graphics/Paint;-><init>(I)V

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColor(I)V

    iput-object p2, p0, Lcom/android/systemui/mediaprojection/appselector/view/MediaProjectionTaskView;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f07099b

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/mediaprojection/appselector/view/MediaProjectionTaskView;->cornerRadius:I

    new-instance p1, Lcom/android/systemui/shared/recents/utilities/PreviewPositionHelper;

    invoke-direct {p1}, Lcom/android/systemui/shared/recents/utilities/PreviewPositionHelper;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/mediaprojection/appselector/view/MediaProjectionTaskView;->previewPositionHelper:Lcom/android/systemui/shared/recents/utilities/PreviewPositionHelper;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/mediaprojection/appselector/view/MediaProjectionTaskView;->previewRect:Landroid/graphics/Rect;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/mediaprojection/appselector/view/MediaProjectionTaskView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public final bindTask(Lcom/android/systemui/mediaprojection/appselector/data/RecentTask;Lcom/android/systemui/shared/recents/model/ThumbnailData;)V
    .locals 1

    iput-object p1, p0, Lcom/android/systemui/mediaprojection/appselector/view/MediaProjectionTaskView;->task:Lcom/android/systemui/mediaprojection/appselector/data/RecentTask;

    iput-object p2, p0, Lcom/android/systemui/mediaprojection/appselector/view/MediaProjectionTaskView;->thumbnailData:Lcom/android/systemui/shared/recents/model/ThumbnailData;

    const/high16 p2, -0x1000000

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/android/systemui/mediaprojection/appselector/data/RecentTask;->colorBackground:Ljava/lang/Integer;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0

    :cond_0
    move p1, p2

    :goto_0
    or-int/2addr p1, p2

    iget-object p2, p0, Lcom/android/systemui/mediaprojection/appselector/view/MediaProjectionTaskView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p2, p0, Lcom/android/systemui/mediaprojection/appselector/view/MediaProjectionTaskView;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lcom/android/systemui/mediaprojection/appselector/view/MediaProjectionTaskView;->thumbnailData:Lcom/android/systemui/shared/recents/model/ThumbnailData;

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    iget-object p1, p1, Lcom/android/systemui/shared/recents/model/ThumbnailData;->thumbnail:Landroid/graphics/Bitmap;

    goto :goto_1

    :cond_1
    move-object p1, p2

    :goto_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->prepareToDraw()V

    new-instance p2, Landroid/graphics/BitmapShader;

    sget-object v0, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {p2, p1, v0, v0}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object p2, p0, Lcom/android/systemui/mediaprojection/appselector/view/MediaProjectionTaskView;->bitmapShader:Landroid/graphics/BitmapShader;

    iget-object p1, p0, Lcom/android/systemui/mediaprojection/appselector/view/MediaProjectionTaskView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    invoke-virtual {p0}, Lcom/android/systemui/mediaprojection/appselector/view/MediaProjectionTaskView;->updateThumbnailMatrix()V

    goto :goto_2

    :cond_2
    iput-object p2, p0, Lcom/android/systemui/mediaprojection/appselector/view/MediaProjectionTaskView;->bitmapShader:Landroid/graphics/BitmapShader;

    iget-object p1, p0, Lcom/android/systemui/mediaprojection/appselector/view/MediaProjectionTaskView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    :goto_2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v4, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v5, v0

    iget v0, p0, Lcom/android/systemui/mediaprojection/appselector/view/MediaProjectionTaskView;->cornerRadius:I

    int-to-float v6, v0

    int-to-float v7, v0

    iget-object v8, p0, Lcom/android/systemui/mediaprojection/appselector/view/MediaProjectionTaskView;->backgroundPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    move-object v1, p1

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/android/systemui/mediaprojection/appselector/view/MediaProjectionTaskView;->task:Lcom/android/systemui/mediaprojection/appselector/data/RecentTask;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/mediaprojection/appselector/view/MediaProjectionTaskView;->bitmapShader:Landroid/graphics/BitmapShader;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/mediaprojection/appselector/view/MediaProjectionTaskView;->thumbnailData:Lcom/android/systemui/shared/recents/model/ThumbnailData;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v4, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v5, v0

    iget v0, p0, Lcom/android/systemui/mediaprojection/appselector/view/MediaProjectionTaskView;->cornerRadius:I

    int-to-float v6, v0

    int-to-float v7, v0

    iget-object v8, p0, Lcom/android/systemui/mediaprojection/appselector/view/MediaProjectionTaskView;->paint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final onSizeChanged(IIII)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/mediaprojection/appselector/view/MediaProjectionTaskView;->updateThumbnailMatrix()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final updateThumbnailMatrix()V
    .locals 22

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/mediaprojection/appselector/view/MediaProjectionTaskView;->previewPositionHelper:Lcom/android/systemui/shared/recents/utilities/PreviewPositionHelper;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v0, Lcom/android/systemui/mediaprojection/appselector/view/MediaProjectionTaskView;->bitmapShader:Landroid/graphics/BitmapShader;

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v2, v0, Lcom/android/systemui/mediaprojection/appselector/view/MediaProjectionTaskView;->thumbnailData:Lcom/android/systemui/shared/recents/model/ThumbnailData;

    if-nez v2, :cond_1

    return-void

    :cond_1
    iget-object v3, v2, Lcom/android/systemui/shared/recents/model/ThumbnailData;->thumbnail:Landroid/graphics/Bitmap;

    if-nez v3, :cond_2

    return-void

    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v4

    if-nez v4, :cond_3

    return-void

    :cond_3
    iget-object v5, v0, Lcom/android/systemui/mediaprojection/appselector/view/MediaProjectionTaskView;->windowManager:Landroid/view/WindowManager;

    invoke-interface {v5}, Landroid/view/WindowManager;->getMaximumWindowMetrics()Landroid/view/WindowMetrics;

    iget-object v5, v0, Lcom/android/systemui/mediaprojection/appselector/view/MediaProjectionTaskView;->previewRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    const/4 v7, 0x0

    invoke-virtual {v5, v7, v7, v6, v3}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {v4}, Landroid/view/Display;->getRotation()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_4

    move v4, v5

    goto :goto_0

    :cond_4
    move v4, v7

    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/android/systemui/shared/recents/utilities/Utilities;->isLargeScreen(Landroid/content/Context;)Z

    move-result v6

    iget-object v8, v0, Lcom/android/systemui/mediaprojection/appselector/view/MediaProjectionTaskView;->previewPositionHelper:Lcom/android/systemui/shared/recents/utilities/PreviewPositionHelper;

    iget-object v9, v0, Lcom/android/systemui/mediaprojection/appselector/view/MediaProjectionTaskView;->previewRect:Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v12, v2, Lcom/android/systemui/shared/recents/model/ThumbnailData;->rotation:I

    sub-int/2addr v12, v3

    if-gez v12, :cond_5

    add-int/lit8 v12, v12, 0x4

    :cond_5
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    iget v13, v2, Lcom/android/systemui/shared/recents/model/ThumbnailData;->windowingMode:I

    if-ne v13, v5, :cond_6

    if-nez v6, :cond_6

    move v6, v5

    goto :goto_1

    :cond_6
    move v6, v7

    :goto_1
    const/4 v13, 0x3

    if-eq v12, v5, :cond_7

    if-ne v12, v13, :cond_8

    :cond_7
    if-eqz v6, :cond_8

    move v14, v5

    goto :goto_2

    :cond_8
    move v14, v7

    :goto_2
    const/4 v15, 0x0

    iget v7, v2, Lcom/android/systemui/shared/recents/model/ThumbnailData;->scale:F

    if-eqz v10, :cond_9

    if-eqz v11, :cond_9

    cmpl-float v17, v7, v15

    if-nez v17, :cond_a

    :cond_9
    move v5, v15

    goto/16 :goto_c

    :cond_a
    if-lez v12, :cond_b

    if-eqz v6, :cond_b

    move v6, v5

    goto :goto_3

    :cond_b
    const/4 v6, 0x0

    :goto_3
    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v13

    int-to-float v13, v13

    div-float/2addr v13, v7

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v7

    int-to-float v10, v10

    int-to-float v11, v11

    div-float v18, v10, v11

    if-eqz v6, :cond_c

    div-float v19, v5, v13

    goto :goto_4

    :cond_c
    div-float v19, v13, v5

    :goto_4
    sub-float v20, v18, v19

    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->abs(F)F

    move-result v20

    add-float v18, v18, v19

    const/high16 v19, 0x40000000    # 2.0f

    div-float v18, v18, v19

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(F)F

    move-result v18

    div-float v20, v20, v18

    const v18, 0x3dcccccd    # 0.1f

    cmpl-float v18, v20, v18

    if-lez v18, :cond_d

    const/16 v18, 0x1

    goto :goto_5

    :cond_d
    const/16 v18, 0x0

    :goto_5
    if-eqz v6, :cond_e

    if-eqz v18, :cond_e

    const/4 v6, 0x0

    const/16 v16, 0x0

    goto :goto_6

    :cond_e
    move/from16 v16, v14

    :goto_6
    if-eqz v18, :cond_f

    iget-object v2, v2, Lcom/android/systemui/shared/recents/model/ThumbnailData;->letterboxInsets:Landroid/graphics/Rect;

    iget v14, v2, Landroid/graphics/Rect;->left:I

    int-to-float v14, v14

    iput v14, v3, Landroid/graphics/RectF;->left:F

    iget v15, v2, Landroid/graphics/Rect;->right:I

    int-to-float v15, v15

    iput v15, v3, Landroid/graphics/RectF;->right:F

    move/from16 v19, v6

    iget v6, v2, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    iput v6, v3, Landroid/graphics/RectF;->top:F

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    iput v2, v3, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v14, v15

    sub-float v14, v13, v14

    add-float/2addr v6, v2

    sub-float v2, v5, v6

    goto :goto_7

    :cond_f
    move/from16 v19, v6

    move v2, v5

    move v14, v13

    :goto_7
    if-eqz v16, :cond_10

    move/from16 v21, v11

    move v11, v10

    move/from16 v10, v21

    :cond_10
    div-float v6, v10, v11

    div-float v15, v14, v6

    cmpl-float v16, v15, v2

    if-lez v16, :cond_13

    cmpg-float v15, v2, v11

    if-gez v15, :cond_11

    invoke-static {v11, v5}, Ljava/lang/Math;->min(FF)F

    move-result v5

    move v15, v5

    goto :goto_8

    :cond_11
    move v15, v2

    :goto_8
    mul-float v5, v15, v6

    cmpl-float v11, v5, v13

    if-lez v11, :cond_12

    div-float v15, v13, v6

    goto :goto_9

    :cond_12
    move v13, v5

    goto :goto_9

    :cond_13
    move v13, v14

    :goto_9
    if-eqz v4, :cond_14

    iget v4, v3, Landroid/graphics/RectF;->left:F

    sub-float/2addr v14, v13

    add-float/2addr v14, v4

    iput v14, v3, Landroid/graphics/RectF;->left:F

    iget v4, v3, Landroid/graphics/RectF;->right:F

    const/4 v5, 0x0

    cmpg-float v6, v4, v5

    if-gez v6, :cond_15

    add-float/2addr v14, v4

    iput v14, v3, Landroid/graphics/RectF;->left:F

    iput v5, v3, Landroid/graphics/RectF;->right:F

    goto :goto_a

    :cond_14
    const/4 v5, 0x0

    iget v4, v3, Landroid/graphics/RectF;->right:F

    sub-float/2addr v14, v13

    add-float/2addr v14, v4

    iput v14, v3, Landroid/graphics/RectF;->right:F

    iget v4, v3, Landroid/graphics/RectF;->left:F

    cmpg-float v6, v4, v5

    if-gez v6, :cond_15

    add-float/2addr v14, v4

    iput v14, v3, Landroid/graphics/RectF;->right:F

    iput v5, v3, Landroid/graphics/RectF;->left:F

    :cond_15
    :goto_a
    iget v4, v3, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v2, v15

    add-float/2addr v2, v4

    iput v2, v3, Landroid/graphics/RectF;->bottom:F

    iget v4, v3, Landroid/graphics/RectF;->top:F

    cmpg-float v6, v4, v5

    if-gez v6, :cond_16

    add-float/2addr v2, v4

    iput v2, v3, Landroid/graphics/RectF;->bottom:F

    iput v5, v3, Landroid/graphics/RectF;->top:F

    goto :goto_b

    :cond_16
    cmpg-float v6, v2, v5

    if-gez v6, :cond_17

    add-float/2addr v4, v2

    iput v4, v3, Landroid/graphics/RectF;->top:F

    iput v5, v3, Landroid/graphics/RectF;->bottom:F

    :cond_17
    :goto_b
    mul-float/2addr v13, v7

    div-float/2addr v10, v13

    move/from16 v16, v19

    goto :goto_d

    :goto_c
    move v10, v5

    const/16 v16, 0x0

    :goto_d
    if-nez v16, :cond_18

    iget-object v2, v8, Lcom/android/systemui/shared/recents/utilities/PreviewPositionHelper;->mMatrix:Landroid/graphics/Matrix;

    iget v4, v3, Landroid/graphics/RectF;->left:F

    neg-float v4, v4

    mul-float/2addr v4, v7

    iget v3, v3, Landroid/graphics/RectF;->top:F

    neg-float v3, v3

    mul-float/2addr v3, v7

    invoke-virtual {v2, v4, v3}, Landroid/graphics/Matrix;->setTranslate(FF)V

    goto :goto_f

    :cond_18
    iget-object v2, v8, Lcom/android/systemui/shared/recents/utilities/PreviewPositionHelper;->mMatrix:Landroid/graphics/Matrix;

    mul-int/lit8 v3, v12, 0x5a

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->setRotate(F)V

    const/4 v2, 0x1

    if-eq v12, v2, :cond_1b

    const/4 v2, 0x2

    if-eq v12, v2, :cond_1a

    const/4 v2, 0x3

    if-eq v12, v2, :cond_19

    move v2, v5

    move v15, v2

    goto :goto_e

    :cond_19
    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    move v15, v5

    goto :goto_e

    :cond_1a
    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v15, v2

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    goto :goto_e

    :cond_1b
    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    move v15, v2

    move v2, v5

    :goto_e
    iget-object v3, v8, Lcom/android/systemui/shared/recents/utilities/PreviewPositionHelper;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v15, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    :goto_f
    iget-object v2, v8, Lcom/android/systemui/shared/recents/utilities/PreviewPositionHelper;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v10, v10}, Landroid/graphics/Matrix;->postScale(FF)Z

    iget-object v2, v0, Lcom/android/systemui/mediaprojection/appselector/view/MediaProjectionTaskView;->previewPositionHelper:Lcom/android/systemui/shared/recents/utilities/PreviewPositionHelper;

    iget-object v2, v2, Lcom/android/systemui/shared/recents/utilities/PreviewPositionHelper;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    iget-object v0, v0, Lcom/android/systemui/mediaprojection/appselector/view/MediaProjectionTaskView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    return-void
.end method
