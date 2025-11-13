.class public final Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "BackgroundBlurDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;,
        Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;
    }
.end annotation


# static fields
.field private static final blacklist DEBUG:Z

.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private final blacklist mAggregator:Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;

.field private blacklist mAlpha:F

.field private blacklist mBlurRadius:I

.field private blacklist mColorCurve:Landroid/view/SemBlurInfo$ColorCurve;

.field private blacklist mCornerRadiusBL:F

.field private blacklist mCornerRadiusBR:F

.field private blacklist mCornerRadiusTL:F

.field private blacklist mCornerRadiusTR:F

.field private final blacklist mHandler:Landroid/os/Handler;

.field private final blacklist mPaint:Landroid/graphics/Paint;

.field public final blacklist mPositionUpdateListener:Landroid/graphics/RenderNode$PositionUpdateListener;

.field private final blacklist mRect:Landroid/graphics/Rect;

.field private final blacklist mRectPath:Landroid/graphics/Path;

.field private final blacklist mRenderNode:Landroid/graphics/RenderNode;

.field private blacklist mScaleX:F

.field private blacklist mScaleY:F

.field private final blacklist mTmpRadii:[F

.field private blacklist mVisible:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAggregator(Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;)Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->mAggregator:Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAlpha(Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;)F
    .locals 0

    iget p0, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->mAlpha:F

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmBlurRadius(Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;)I
    .locals 0

    iget p0, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->mBlurRadius:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmColorCurve(Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;)Landroid/view/SemBlurInfo$ColorCurve;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->mColorCurve:Landroid/view/SemBlurInfo$ColorCurve;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCornerRadiusBL(Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;)F
    .locals 0

    iget p0, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->mCornerRadiusBL:F

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCornerRadiusBR(Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;)F
    .locals 0

    iget p0, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->mCornerRadiusBR:F

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCornerRadiusTL(Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;)F
    .locals 0

    iget p0, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->mCornerRadiusTL:F

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCornerRadiusTR(Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;)F
    .locals 0

    iget p0, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->mCornerRadiusTR:F

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHandler(Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRect(Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;)Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->mRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmScaleX(Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;)F
    .locals 0

    iget p0, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->mScaleX:F

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmScaleY(Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;)F
    .locals 0

    iget p0, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->mScaleY:F

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmVisible(Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->mVisible:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetDEBUG()Z
    .locals 1

    sget-boolean v0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->DEBUG:Z

    return v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 2

    .line 60
    const-class v0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->TAG:Ljava/lang/String;

    .line 63
    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string/jumbo v0, "viewroot.debug.blur"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    sput-boolean v1, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->DEBUG:Z

    return-void
.end method

.method private constructor blacklist <init>(Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;)V
    .locals 5
    .param p1, "aggregator"    # Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;

    .line 141
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->mColorCurve:Landroid/view/SemBlurInfo$ColorCurve;

    .line 70
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->mPaint:Landroid/graphics/Paint;

    .line 71
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->mRectPath:Landroid/graphics/Path;

    .line 72
    const/16 v1, 0x8

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->mTmpRadii:[F

    .line 74
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->mVisible:Z

    .line 83
    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->mAlpha:F

    .line 86
    iput v2, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->mScaleX:F

    .line 87
    iput v2, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->mScaleY:F

    .line 92
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->mRect:Landroid/graphics/Rect;

    .line 96
    new-instance v2, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$1;

    invoke-direct {v2, p0}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$1;-><init>(Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;)V

    iput-object v2, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->mPositionUpdateListener:Landroid/graphics/RenderNode$PositionUpdateListener;

    .line 142
    iput-object p1, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->mAggregator:Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;

    .line 143
    new-instance v3, Landroid/graphics/PorterDuffXfermode;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 144
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 145
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 146
    new-instance v0, Landroid/graphics/RenderNode;

    const-string v1, "BackgroundBlurDrawable"

    invoke-direct {v0, v1}, Landroid/graphics/RenderNode;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->mRenderNode:Landroid/graphics/RenderNode;

    .line 147
    invoke-virtual {v0, v2}, Landroid/graphics/RenderNode;->addPositionUpdateListener(Landroid/graphics/RenderNode$PositionUpdateListener;)V

    .line 149
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->mHandler:Landroid/os/Handler;

    .line 151
    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;-><init>(Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;)V

    return-void
.end method

.method private blacklist updatePath()V
    .locals 8

    .line 271
    iget-object v0, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->mTmpRadii:[F

    iget v1, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->mCornerRadiusTL:F

    const/4 v2, 0x1

    aput v1, v0, v2

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 272
    iget v1, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->mCornerRadiusTR:F

    const/4 v2, 0x3

    aput v1, v0, v2

    const/4 v2, 0x2

    aput v1, v0, v2

    .line 273
    iget v1, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->mCornerRadiusBL:F

    const/4 v2, 0x5

    aput v1, v0, v2

    const/4 v2, 0x4

    aput v1, v0, v2

    .line 274
    iget v1, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->mCornerRadiusBR:F

    const/4 v2, 0x7

    aput v1, v0, v2

    const/4 v2, 0x6

    aput v1, v0, v2

    .line 275
    iget-object v0, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->mRectPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 276
    invoke-virtual {p0}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->getAlpha()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 279
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 280
    .local v0, "bounds":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->mRectPath:Landroid/graphics/Path;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v3, v0, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    iget v4, v0, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    iget-object v6, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->mTmpRadii:[F

    sget-object v7, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Path;->addRoundRect(FFFF[FLandroid/graphics/Path$Direction;)V

    .line 282
    return-void

    .line 277
    .end local v0    # "bounds":Landroid/graphics/Rect;
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public whitelist draw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 155
    iget-object v0, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->mRectPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->getAlpha()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 160
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 161
    iget-object v0, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->mRectPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 162
    iget-object v0, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->mRenderNode:Landroid/graphics/RenderNode;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawRenderNode(Landroid/graphics/RenderNode;)V

    goto :goto_0

    .line 164
    :cond_1
    sget-object v0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->TAG:Ljava/lang/String;

    const-string v1, "BackgroundBlur is not supported on S/W canvas!!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    :goto_0
    return-void

    .line 156
    :cond_2
    :goto_1
    return-void
.end method

.method public whitelist getOpacity()I
    .locals 1

    .line 291
    const/4 v0, -0x3

    return v0
.end method

.method public whitelist setAlpha(I)V
    .locals 3
    .param p1, "alpha"    # I

    .line 204
    iget v0, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->mAlpha:F

    int-to-float v1, p1

    const/high16 v2, 0x437f0000    # 255.0f

    div-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 205
    int-to-float v0, p1

    div-float/2addr v0, v2

    iput v0, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->mAlpha:F

    .line 206
    invoke-virtual {p0}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->invalidateSelf()V

    .line 207
    iget-object v0, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->mAggregator:Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;

    invoke-virtual {v0, p0}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->onBlurDrawableUpdated(Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;)V

    .line 209
    :cond_0
    return-void
.end method

.method public blacklist setBlurColorCurve(Landroid/view/SemBlurInfo$ColorCurve;)V
    .locals 1
    .param p1, "colorCurve"    # Landroid/view/SemBlurInfo$ColorCurve;

    .line 225
    iget-object v0, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->mColorCurve:Landroid/view/SemBlurInfo$ColorCurve;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 226
    :cond_0
    iput-object p1, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->mColorCurve:Landroid/view/SemBlurInfo$ColorCurve;

    .line 227
    invoke-virtual {p0}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->invalidateSelf()V

    .line 228
    iget-object v0, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->mAggregator:Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;

    invoke-virtual {v0, p0}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->onBlurDrawableUpdated(Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;)V

    .line 230
    :cond_1
    return-void
.end method

.method public blacklist setBlurRadius(I)V
    .locals 1
    .param p1, "blurRadius"    # I

    .line 215
    iget v0, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->mBlurRadius:I

    if-eq v0, p1, :cond_0

    .line 216
    iput p1, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->mBlurRadius:I

    .line 217
    invoke-virtual {p0}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->invalidateSelf()V

    .line 218
    iget-object v0, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->mAggregator:Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;

    invoke-virtual {v0, p0}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->onBlurDrawableUpdated(Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;)V

    .line 220
    :cond_0
    return-void
.end method

.method public whitelist setBounds(IIII)V
    .locals 1
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 265
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 266
    iget-object v0, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->mRenderNode:Landroid/graphics/RenderNode;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/RenderNode;->setPosition(IIII)Z

    .line 267
    invoke-direct {p0}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->updatePath()V

    .line 268
    return-void
.end method

.method public blacklist setColor(I)V
    .locals 1
    .param p1, "color"    # I

    .line 189
    iget-object v0, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 190
    return-void
.end method

.method public whitelist setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 2
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    .line 286
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "not implemented"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setCornerRadius(F)V
    .locals 0
    .param p1, "cornerRadius"    # F

    .line 237
    invoke-virtual {p0, p1, p1, p1, p1}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->setCornerRadius(FFFF)V

    .line 238
    return-void
.end method

.method public blacklist setCornerRadius(FFFF)V
    .locals 1
    .param p1, "cornerRadiusTL"    # F
    .param p2, "cornerRadiusTR"    # F
    .param p3, "cornerRadiusBL"    # F
    .param p4, "cornerRadiusBR"    # F

    .line 249
    iget v0, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->mCornerRadiusTL:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->mCornerRadiusTR:F

    cmpl-float v0, v0, p2

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->mCornerRadiusBL:F

    cmpl-float v0, v0, p3

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->mCornerRadiusBR:F

    cmpl-float v0, v0, p4

    if-eqz v0, :cond_1

    .line 253
    :cond_0
    iput p1, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->mCornerRadiusTL:F

    .line 254
    iput p2, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->mCornerRadiusTR:F

    .line 255
    iput p3, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->mCornerRadiusBL:F

    .line 256
    iput p4, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->mCornerRadiusBR:F

    .line 257
    invoke-direct {p0}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->updatePath()V

    .line 258
    invoke-virtual {p0}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->invalidateSelf()V

    .line 259
    iget-object v0, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->mAggregator:Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;

    invoke-virtual {v0, p0}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->onBlurDrawableUpdated(Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;)V

    .line 261
    :cond_1
    return-void
.end method

.method public blacklist setScaleX(F)V
    .locals 2
    .param p1, "scaleX"    # F

    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setScaleX, scaleX : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BackgroundBlurDrawable"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    iput p1, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->mScaleX:F

    .line 174
    iget-object v0, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->mAggregator:Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;

    invoke-virtual {v0, p0}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->onBlurDrawableUpdated(Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;)V

    .line 175
    return-void
.end method

.method public blacklist setScaleY(F)V
    .locals 2
    .param p1, "scaleY"    # F

    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setScaleY, scaleY : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BackgroundBlurDrawable"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    iput p1, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->mScaleY:F

    .line 181
    iget-object v0, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->mAggregator:Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;

    invoke-virtual {v0, p0}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->onBlurDrawableUpdated(Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;)V

    .line 182
    return-void
.end method

.method public whitelist setVisible(ZZ)Z
    .locals 2
    .param p1, "visible"    # Z
    .param p2, "restart"    # Z

    .line 194
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v0

    .line 195
    .local v0, "changed":Z
    if-eqz v0, :cond_0

    .line 196
    iput-boolean p1, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->mVisible:Z

    .line 197
    iget-object v1, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->mAggregator:Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;

    invoke-virtual {v1, p0}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->onBlurDrawableUpdated(Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;)V

    .line 199
    :cond_0
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    .line 296
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BackgroundBlurDrawable{blurRadius="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->mBlurRadius:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", corners={"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->mCornerRadiusTL:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->mCornerRadiusTR:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->mCornerRadiusBL:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->mCornerRadiusBR:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}, alpha="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->mAlpha:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", visible="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->mVisible:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 305
    iget-object v1, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->mColorCurve:Landroid/view/SemBlurInfo$ColorCurve;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", blurColorCurve="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->mColorCurve:Landroid/view/SemBlurInfo$ColorCurve;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 296
    return-object v0
.end method
