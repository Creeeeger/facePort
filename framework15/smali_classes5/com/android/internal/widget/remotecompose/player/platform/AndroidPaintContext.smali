.class public Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;
.super Lcom/android/internal/widget/remotecompose/core/PaintContext;
.source "AndroidPaintContext.java"


# instance fields
.field blacklist mCanvas:Landroid/graphics/Canvas;

.field blacklist mPaint:Landroid/graphics/Paint;

.field blacklist mTmpRect:Landroid/graphics/Rect;


# direct methods
.method static bridge synthetic blacklist -$$Nest$mgetShaderData(Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;I)Lcom/android/internal/widget/remotecompose/core/operations/ShaderData;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->getShaderData(I)Lcom/android/internal/widget/remotecompose/core/operations/ShaderData;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetText(Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;I)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->getText(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smorigamiToPorterDuffMode(I)Landroid/graphics/PorterDuff$Mode;
    .locals 0

    invoke-static {p0}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->origamiToPorterDuffMode(I)Landroid/graphics/PorterDuff$Mode;

    move-result-object p0

    return-object p0
.end method

.method public constructor blacklist <init>(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Landroid/graphics/Canvas;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;-><init>(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mTmpRect:Landroid/graphics/Rect;

    iput-object p2, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mCanvas:Landroid/graphics/Canvas;

    return-void
.end method

.method private blacklist getPath(IFF)Landroid/graphics/Path;
    .locals 3

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mContext:Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    check-cast v0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iget-object v2, v0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v2, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->containsId(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v2, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->getFromId(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [F

    invoke-static {v1, v2, p2, p3}, Lcom/android/internal/widget/remotecompose/player/platform/FloatsToPath;->genPath(Landroid/graphics/Path;[FFF)V

    :cond_0
    return-object v1
.end method

.method private blacklist getPath(IIFFF)Landroid/graphics/Path;
    .locals 7

    const/4 v0, 0x0

    cmpl-float v0, p3, v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1, p4, p5}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->getPath(IFF)Landroid/graphics/Path;

    move-result-object v0

    return-object v0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p3, v0

    if-nez v0, :cond_1

    invoke-direct {p0, p2, p4, p5}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->getPath(IFF)Landroid/graphics/Path;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mContext:Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    check-cast v0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    iget-object v1, v0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->getFromId(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    iget-object v2, v0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v2, p2}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->getFromId(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [F

    array-length v3, v2

    new-array v3, v3, [F

    const/4 v4, 0x0

    :goto_0
    array-length v5, v3

    if-ge v4, v5, :cond_4

    aget v5, v1, v4

    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-nez v5, :cond_3

    aget v5, v2, v4

    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_1

    :cond_2
    aget v5, v2, v4

    aget v6, v1, v4

    sub-float/2addr v5, v6

    mul-float/2addr v5, p3

    aget v6, v1, v4

    add-float/2addr v5, v6

    aput v5, v3, v4

    goto :goto_2

    :cond_3
    :goto_1
    aget v5, v1, v4

    aput v5, v3, v4

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    new-instance v4, Landroid/graphics/Path;

    invoke-direct {v4}, Landroid/graphics/Path;-><init>()V

    invoke-static {v4, v3, p4, p5}, Lcom/android/internal/widget/remotecompose/player/platform/FloatsToPath;->genPath(Landroid/graphics/Path;[FFF)V

    return-object v4
.end method

.method private blacklist getShaderData(I)Lcom/android/internal/widget/remotecompose/core/operations/ShaderData;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mContext:Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    iget-object v0, v0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->getFromId(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/remotecompose/core/operations/ShaderData;

    return-object v0
.end method

.method private blacklist getText(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mContext:Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    iget-object v0, v0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->getFromId(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static blacklist origamiToBlendMode(I)Landroid/graphics/BlendMode;
    .locals 1

    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_0

    return-object v0

    :pswitch_0
    return-object v0

    :pswitch_1
    sget-object v0, Landroid/graphics/BlendMode;->LUMINOSITY:Landroid/graphics/BlendMode;

    return-object v0

    :pswitch_2
    sget-object v0, Landroid/graphics/BlendMode;->COLOR:Landroid/graphics/BlendMode;

    return-object v0

    :pswitch_3
    sget-object v0, Landroid/graphics/BlendMode;->SATURATION:Landroid/graphics/BlendMode;

    return-object v0

    :pswitch_4
    sget-object v0, Landroid/graphics/BlendMode;->HUE:Landroid/graphics/BlendMode;

    return-object v0

    :pswitch_5
    sget-object v0, Landroid/graphics/BlendMode;->MULTIPLY:Landroid/graphics/BlendMode;

    return-object v0

    :pswitch_6
    sget-object v0, Landroid/graphics/BlendMode;->EXCLUSION:Landroid/graphics/BlendMode;

    return-object v0

    :pswitch_7
    sget-object v0, Landroid/graphics/BlendMode;->DIFFERENCE:Landroid/graphics/BlendMode;

    return-object v0

    :pswitch_8
    sget-object v0, Landroid/graphics/BlendMode;->SOFT_LIGHT:Landroid/graphics/BlendMode;

    return-object v0

    :pswitch_9
    sget-object v0, Landroid/graphics/BlendMode;->HARD_LIGHT:Landroid/graphics/BlendMode;

    return-object v0

    :pswitch_a
    sget-object v0, Landroid/graphics/BlendMode;->COLOR_BURN:Landroid/graphics/BlendMode;

    return-object v0

    :pswitch_b
    sget-object v0, Landroid/graphics/BlendMode;->COLOR_DODGE:Landroid/graphics/BlendMode;

    return-object v0

    :pswitch_c
    sget-object v0, Landroid/graphics/BlendMode;->LIGHTEN:Landroid/graphics/BlendMode;

    return-object v0

    :pswitch_d
    sget-object v0, Landroid/graphics/BlendMode;->DARKEN:Landroid/graphics/BlendMode;

    return-object v0

    :pswitch_e
    sget-object v0, Landroid/graphics/BlendMode;->OVERLAY:Landroid/graphics/BlendMode;

    return-object v0

    :pswitch_f
    sget-object v0, Landroid/graphics/BlendMode;->SCREEN:Landroid/graphics/BlendMode;

    return-object v0

    :pswitch_10
    sget-object v0, Landroid/graphics/BlendMode;->MODULATE:Landroid/graphics/BlendMode;

    return-object v0

    :pswitch_11
    sget-object v0, Landroid/graphics/BlendMode;->PLUS:Landroid/graphics/BlendMode;

    return-object v0

    :pswitch_12
    sget-object v0, Landroid/graphics/BlendMode;->XOR:Landroid/graphics/BlendMode;

    return-object v0

    :pswitch_13
    sget-object v0, Landroid/graphics/BlendMode;->DST_ATOP:Landroid/graphics/BlendMode;

    return-object v0

    :pswitch_14
    sget-object v0, Landroid/graphics/BlendMode;->SRC_ATOP:Landroid/graphics/BlendMode;

    return-object v0

    :pswitch_15
    sget-object v0, Landroid/graphics/BlendMode;->DST_OUT:Landroid/graphics/BlendMode;

    return-object v0

    :pswitch_16
    sget-object v0, Landroid/graphics/BlendMode;->SRC_OUT:Landroid/graphics/BlendMode;

    return-object v0

    :pswitch_17
    sget-object v0, Landroid/graphics/BlendMode;->DST_IN:Landroid/graphics/BlendMode;

    return-object v0

    :pswitch_18
    sget-object v0, Landroid/graphics/BlendMode;->SRC_IN:Landroid/graphics/BlendMode;

    return-object v0

    :pswitch_19
    sget-object v0, Landroid/graphics/BlendMode;->DST_OVER:Landroid/graphics/BlendMode;

    return-object v0

    :pswitch_1a
    sget-object v0, Landroid/graphics/BlendMode;->SRC_OVER:Landroid/graphics/BlendMode;

    return-object v0

    :pswitch_1b
    sget-object v0, Landroid/graphics/BlendMode;->DST:Landroid/graphics/BlendMode;

    return-object v0

    :pswitch_1c
    sget-object v0, Landroid/graphics/BlendMode;->SRC:Landroid/graphics/BlendMode;

    return-object v0

    :pswitch_1d
    sget-object v0, Landroid/graphics/BlendMode;->CLEAR:Landroid/graphics/BlendMode;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static blacklist origamiToPorterDuffMode(I)Landroid/graphics/PorterDuff$Mode;
    .locals 1

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    :pswitch_1
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->ADD:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    :pswitch_2
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    :pswitch_3
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->LIGHTEN:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    :pswitch_4
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->DARKEN:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    :pswitch_5
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->OVERLAY:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    :pswitch_6
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SCREEN:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    :pswitch_7
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->XOR:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    :pswitch_8
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->DST_ATOP:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    :pswitch_9
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    :pswitch_a
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    :pswitch_b
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_OUT:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    :pswitch_c
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    :pswitch_d
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    :pswitch_e
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->DST_OVER:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    :pswitch_f
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    :pswitch_10
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->DST:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    :pswitch_11
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    :pswitch_12
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public blacklist applyPaint(Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;)V
    .locals 1

    new-instance v0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext$1;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext$1;-><init>(Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;)V

    invoke-virtual {p1, p0, v0}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->applyPaintChange(Lcom/android/internal/widget/remotecompose/core/PaintContext;Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintChanges;)V

    return-void
.end method

.method public blacklist clipPath(II)V
    .locals 2

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p0, p1, v0, v1}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->getPath(IFF)Landroid/graphics/Path;

    move-result-object v0

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v1, v0}, Landroid/graphics/Canvas;->clipOutPath(Landroid/graphics/Path;)Z

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    :goto_0
    return-void
.end method

.method public blacklist clipRect(FFFF)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    return-void
.end method

.method public blacklist drawArc(FFFFFF)V
    .locals 9

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mCanvas:Landroid/graphics/Canvas;

    const/4 v7, 0x1

    iget-object v8, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaint:Landroid/graphics/Paint;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v8}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    return-void
.end method

.method public blacklist drawBitmap(IFFFF)V
    .locals 6

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mContext:Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    check-cast v0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    iget-object v1, v0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->containsId(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->getFromId(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v5, 0x0

    invoke-direct {v2, v5, v5, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3, p2, p3, p4, p5}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mCanvas:Landroid/graphics/Canvas;

    iget-object v5, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v1, v2, v3, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public blacklist drawBitmap(IIIIIIIIII)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    iget-object v2, v0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mContext:Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    check-cast v2, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    iget-object v3, v2, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v3, v1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->containsId(I)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v2, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v3, v1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->getFromId(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    iget-object v4, v0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mCanvas:Landroid/graphics/Canvas;

    new-instance v5, Landroid/graphics/Rect;

    move/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v10, Landroid/graphics/Rect;

    move/from16 v11, p6

    move/from16 v12, p7

    move/from16 v13, p8

    move/from16 v14, p9

    invoke-direct {v10, v11, v12, v13, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v15, v0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v3, v5, v10, v15}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0

    :cond_0
    move/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move/from16 v11, p6

    move/from16 v12, p7

    move/from16 v13, p8

    move/from16 v14, p9

    :goto_0
    return-void
.end method

.method public blacklist drawCircle(FFF)V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1, p2, p3, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public blacklist drawLine(FFFF)V
    .locals 6

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mCanvas:Landroid/graphics/Canvas;

    iget-object v5, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaint:Landroid/graphics/Paint;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public blacklist drawOval(FFFF)V
    .locals 6

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mCanvas:Landroid/graphics/Canvas;

    iget-object v5, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaint:Landroid/graphics/Paint;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawOval(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public blacklist drawPath(IFF)V
    .locals 3

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mCanvas:Landroid/graphics/Canvas;

    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->getPath(IFF)Landroid/graphics/Path;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method public blacklist drawRect(FFFF)V
    .locals 6

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mCanvas:Landroid/graphics/Canvas;

    iget-object v5, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaint:Landroid/graphics/Paint;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public blacklist drawRoundRect(FFFFFF)V
    .locals 8

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mCanvas:Landroid/graphics/Canvas;

    iget-object v7, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaint:Landroid/graphics/Paint;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public blacklist drawTextOnPath(IIFF)V
    .locals 6

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mCanvas:Landroid/graphics/Canvas;

    invoke-direct {p0, p1}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->getText(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {p0, p2, v2, v3}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->getPath(IFF)Landroid/graphics/Path;

    move-result-object v2

    iget-object v5, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaint:Landroid/graphics/Paint;

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawTextOnPath(Ljava/lang/String;Landroid/graphics/Path;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public blacklist drawTextRun(IIIIIFFZ)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->getText(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    if-ne p3, v1, :cond_0

    if-eqz p2, :cond_1

    invoke-virtual {v0, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mCanvas:Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0, p6, p7, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public blacklist drawTweenPath(IIFFF)V
    .locals 3

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mCanvas:Landroid/graphics/Canvas;

    invoke-direct/range {p0 .. p5}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->getPath(IIFFF)Landroid/graphics/Path;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method public blacklist getCanvas()Landroid/graphics/Canvas;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mCanvas:Landroid/graphics/Canvas;

    return-object v0
.end method

.method public blacklist getTextBounds(IIIZ[F)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->getText(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    if-ne p3, v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p3

    :cond_0
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v0, p2, p3, v2}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mTmpRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    const/4 v2, 0x0

    aput v1, p5, v2

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mTmpRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    const/4 v2, 0x1

    aput v1, p5, v2

    if-eqz p4, :cond_1

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0, p2, p3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v1

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mTmpRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mTmpRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    :goto_0
    const/4 v2, 0x2

    aput v1, p5, v2

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mTmpRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    const/4 v2, 0x3

    aput v1, p5, v2

    return-void
.end method

.method public blacklist matrixRestore()V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public blacklist matrixRotate(FFF)V
    .locals 1

    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, p1}, Landroid/graphics/Canvas;->rotate(F)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, p1, p2, p3}, Landroid/graphics/Canvas;->rotate(FFF)V

    :goto_0
    return-void
.end method

.method public blacklist matrixSave()V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    return-void
.end method

.method public blacklist matrixScale(FFFF)V
    .locals 1

    invoke-static {p3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Canvas;->scale(FF)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Canvas;->scale(FFFF)V

    :goto_0
    return-void
.end method

.method public blacklist matrixSkew(FF)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Canvas;->skew(FF)V

    return-void
.end method

.method public blacklist matrixTranslate(FF)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Canvas;->translate(FF)V

    return-void
.end method

.method public blacklist reset()V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->reset()V

    return-void
.end method

.method public blacklist scale(FF)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Canvas;->scale(FF)V

    return-void
.end method

.method public blacklist setCanvas(Landroid/graphics/Canvas;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mCanvas:Landroid/graphics/Canvas;

    return-void
.end method

.method public blacklist translate(FF)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Canvas;->translate(FF)V

    return-void
.end method
