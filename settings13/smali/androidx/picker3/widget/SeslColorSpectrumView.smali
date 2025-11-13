.class Landroidx/picker3/widget/SeslColorSpectrumView;
.super Landroid/view/View;
.source "SeslColorSpectrumView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/picker3/widget/SeslColorSpectrumView$SpectrumColorChangedListener;
    }
.end annotation


# instance fields
.field private final HUE_COLORS:[I

.field private ROUNDED_CORNER_RADIUS_IN_Px:I

.field private cursorDrawable:Landroid/graphics/drawable/Drawable;

.field private final mContext:Landroid/content/Context;

.field private mCursorPaint:Landroid/graphics/Paint;

.field private final mCursorPaintSize:I

.field private mCursorPosX:F

.field private mCursorPosY:F

.field private final mCursorStrokeSize:I

.field private mHuePaint:Landroid/graphics/Paint;

.field private mListener:Landroidx/picker3/widget/SeslColorSpectrumView$SpectrumColorChangedListener;

.field private final mResources:Landroid/content/res/Resources;

.field private mSaturationPaint:Landroid/graphics/Paint;

.field private mSpectrumRect:Landroid/graphics/Rect;

.field private mStrokePaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 57
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x6

    new-array p2, p2, [I

    .line 37
    fill-array-data p2, :array_0

    iput-object p2, p0, Landroidx/picker3/widget/SeslColorSpectrumView;->HUE_COLORS:[I

    const/4 p2, 0x0

    .line 49
    iput p2, p0, Landroidx/picker3/widget/SeslColorSpectrumView;->ROUNDED_CORNER_RADIUS_IN_Px:I

    .line 58
    iput-object p1, p0, Landroidx/picker3/widget/SeslColorSpectrumView;->mContext:Landroid/content/Context;

    .line 59
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Landroidx/picker3/widget/SeslColorSpectrumView;->mResources:Landroid/content/res/Resources;

    .line 60
    sget v0, Landroidx/picker/R$dimen;->sesl_color_picker_oneui_3_color_swatch_view_width:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 61
    sget v1, Landroidx/picker/R$dimen;->sesl_color_picker_oneui_3_color_spectrum_view_height:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 62
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, p2, p2, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v2, p0, Landroidx/picker3/widget/SeslColorSpectrumView;->mSpectrumRect:Landroid/graphics/Rect;

    .line 63
    sget p2, Landroidx/picker/R$dimen;->sesl_color_picker_spectrum_cursor_paint_size:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroidx/picker3/widget/SeslColorSpectrumView;->mCursorPaintSize:I

    .line 66
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    sget v0, Landroidx/picker/R$dimen;->sesl_color_picker_spectrum_cursor_out_stroke_size:I

    .line 68
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    mul-int/lit8 p1, p1, 0x2

    add-int/2addr p2, p1

    iput p2, p0, Landroidx/picker3/widget/SeslColorSpectrumView;->mCursorStrokeSize:I

    const/4 p1, 0x4

    .line 70
    invoke-static {p1}, Landroidx/picker3/widget/SeslColorSpectrumView;->dpToPx(I)I

    move-result p1

    iput p1, p0, Landroidx/picker3/widget/SeslColorSpectrumView;->ROUNDED_CORNER_RADIUS_IN_Px:I

    .line 72
    invoke-direct {p0}, Landroidx/picker3/widget/SeslColorSpectrumView;->init()V

    return-void

    nop

    :array_0
    .array-data 4
        -0xff01
        -0xffff01
        -0xff0001
        -0xff0100
        -0x100
        -0x10000
    .end array-data
.end method

.method private static dpToPx(I)I
    .locals 1

    int-to-float p0, p0

    .line 221
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p0, v0

    float-to-int p0, p0

    return p0
.end method

.method private init()V
    .locals 3

    .line 76
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroidx/picker3/widget/SeslColorSpectrumView;->mCursorPaint:Landroid/graphics/Paint;

    .line 77
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroidx/picker3/widget/SeslColorSpectrumView;->mStrokePaint:Landroid/graphics/Paint;

    .line 78
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 79
    iget-object v0, p0, Landroidx/picker3/widget/SeslColorSpectrumView;->mStrokePaint:Landroid/graphics/Paint;

    iget-object v1, p0, Landroidx/picker3/widget/SeslColorSpectrumView;->mResources:Landroid/content/res/Resources;

    sget v2, Landroidx/picker/R$color;->sesl_color_picker_stroke_color_spectrumview:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 80
    iget-object v0, p0, Landroidx/picker3/widget/SeslColorSpectrumView;->mStrokePaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 81
    iget-object v0, p0, Landroidx/picker3/widget/SeslColorSpectrumView;->mResources:Landroid/content/res/Resources;

    sget v1, Landroidx/picker/R$drawable;->sesl_color_picker_gradient_wheel_cursor:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroidx/picker3/widget/SeslColorSpectrumView;->cursorDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11

    .line 152
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 154
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Landroidx/picker3/widget/SeslColorSpectrumView;->mSpectrumRect:Landroid/graphics/Rect;

    .line 158
    new-instance v0, Landroid/graphics/LinearGradient;

    iget-object v1, p0, Landroidx/picker3/widget/SeslColorSpectrumView;->mSpectrumRect:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    iget v3, v1, Landroid/graphics/Rect;->top:I

    int-to-float v4, v3

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v5, v1

    int-to-float v6, v3

    iget-object v7, p0, Landroidx/picker3/widget/SeslColorSpectrumView;->HUE_COLORS:[I

    sget-object v8, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v9, 0x0

    move-object v1, v0

    move v3, v4

    move v4, v5

    move v5, v6

    move-object v6, v7

    move-object v7, v9

    invoke-direct/range {v1 .. v8}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 159
    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Landroidx/picker3/widget/SeslColorSpectrumView;->mHuePaint:Landroid/graphics/Paint;

    .line 160
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 161
    iget-object v0, p0, Landroidx/picker3/widget/SeslColorSpectrumView;->mHuePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 163
    new-instance v0, Landroid/graphics/LinearGradient;

    iget-object v1, p0, Landroidx/picker3/widget/SeslColorSpectrumView;->mSpectrumRect:Landroid/graphics/Rect;

    iget v3, v1, Landroid/graphics/Rect;->left:I

    int-to-float v4, v3

    iget v5, v1, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    int-to-float v6, v3

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v7, v1

    sget-object v10, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v8, -0x1

    const/4 v9, 0x0

    move-object v3, v0

    invoke-direct/range {v3 .. v10}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 165
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Landroidx/picker3/widget/SeslColorSpectrumView;->mSaturationPaint:Landroid/graphics/Paint;

    .line 166
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 169
    iget-object v0, p0, Landroidx/picker3/widget/SeslColorSpectrumView;->mSpectrumRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    int-to-float v4, v1

    iget v1, v0, Landroid/graphics/Rect;->top:I

    int-to-float v5, v1

    iget v1, v0, Landroid/graphics/Rect;->right:I

    int-to-float v6, v1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v7, v0

    iget v0, p0, Landroidx/picker3/widget/SeslColorSpectrumView;->ROUNDED_CORNER_RADIUS_IN_Px:I

    int-to-float v8, v0

    int-to-float v9, v0

    iget-object v10, p0, Landroidx/picker3/widget/SeslColorSpectrumView;->mHuePaint:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 170
    iget-object v0, p0, Landroidx/picker3/widget/SeslColorSpectrumView;->mSpectrumRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    int-to-float v4, v1

    iget v1, v0, Landroid/graphics/Rect;->top:I

    int-to-float v5, v1

    iget v1, v0, Landroid/graphics/Rect;->right:I

    int-to-float v6, v1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v7, v0

    iget v0, p0, Landroidx/picker3/widget/SeslColorSpectrumView;->ROUNDED_CORNER_RADIUS_IN_Px:I

    int-to-float v8, v0

    int-to-float v9, v0

    iget-object v10, p0, Landroidx/picker3/widget/SeslColorSpectrumView;->mSaturationPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 171
    iget-object v0, p0, Landroidx/picker3/widget/SeslColorSpectrumView;->mSpectrumRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    int-to-float v4, v1

    iget v1, v0, Landroid/graphics/Rect;->top:I

    int-to-float v5, v1

    iget v1, v0, Landroid/graphics/Rect;->right:I

    int-to-float v6, v1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v7, v0

    iget v0, p0, Landroidx/picker3/widget/SeslColorSpectrumView;->ROUNDED_CORNER_RADIUS_IN_Px:I

    int-to-float v8, v0

    int-to-float v9, v0

    iget-object v10, p0, Landroidx/picker3/widget/SeslColorSpectrumView;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 174
    iget v0, p0, Landroidx/picker3/widget/SeslColorSpectrumView;->mCursorPosX:F

    iget-object v1, p0, Landroidx/picker3/widget/SeslColorSpectrumView;->mSpectrumRect:Landroid/graphics/Rect;

    iget v3, v1, Landroid/graphics/Rect;->left:I

    int-to-float v4, v3

    cmpg-float v0, v0, v4

    if-gez v0, :cond_0

    int-to-float v0, v3

    .line 175
    iput v0, p0, Landroidx/picker3/widget/SeslColorSpectrumView;->mCursorPosX:F

    .line 178
    :cond_0
    iget v0, p0, Landroidx/picker3/widget/SeslColorSpectrumView;->mCursorPosY:F

    iget v3, v1, Landroid/graphics/Rect;->top:I

    add-int/lit8 v4, v3, 0x7

    int-to-float v4, v4

    cmpg-float v0, v0, v4

    if-gtz v0, :cond_1

    add-int/lit8 v3, v3, 0x7

    int-to-float v0, v3

    .line 179
    iput v0, p0, Landroidx/picker3/widget/SeslColorSpectrumView;->mCursorPosY:F

    .line 182
    :cond_1
    iget v0, p0, Landroidx/picker3/widget/SeslColorSpectrumView;->mCursorPosX:F

    iget v3, v1, Landroid/graphics/Rect;->right:I

    int-to-float v4, v3

    cmpl-float v0, v0, v4

    if-lez v0, :cond_2

    int-to-float v0, v3

    .line 183
    iput v0, p0, Landroidx/picker3/widget/SeslColorSpectrumView;->mCursorPosX:F

    .line 186
    :cond_2
    iget v0, p0, Landroidx/picker3/widget/SeslColorSpectrumView;->mCursorPosY:F

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v1

    cmpl-float v0, v0, v3

    if-lez v0, :cond_3

    int-to-float v0, v1

    .line 187
    iput v0, p0, Landroidx/picker3/widget/SeslColorSpectrumView;->mCursorPosY:F

    .line 191
    :cond_3
    iget v0, p0, Landroidx/picker3/widget/SeslColorSpectrumView;->mCursorPosX:F

    iget v1, p0, Landroidx/picker3/widget/SeslColorSpectrumView;->mCursorPosY:F

    iget v3, p0, Landroidx/picker3/widget/SeslColorSpectrumView;->mCursorPaintSize:I

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    iget-object v4, p0, Landroidx/picker3/widget/SeslColorSpectrumView;->mCursorPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 194
    iget-object v0, p0, Landroidx/picker3/widget/SeslColorSpectrumView;->cursorDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Landroidx/picker3/widget/SeslColorSpectrumView;->mCursorPosX:F

    float-to-int v3, v1

    iget v4, p0, Landroidx/picker3/widget/SeslColorSpectrumView;->mCursorPaintSize:I

    div-int/lit8 v5, v4, 0x2

    sub-int/2addr v3, v5

    iget v5, p0, Landroidx/picker3/widget/SeslColorSpectrumView;->mCursorPosY:F

    float-to-int v6, v5

    div-int/lit8 v7, v4, 0x2

    sub-int/2addr v6, v7

    float-to-int v1, v1

    div-int/lit8 v7, v4, 0x2

    add-int/2addr v1, v7

    float-to-int v5, v5

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v5, v4

    invoke-virtual {v0, v3, v6, v1, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 196
    iget-object v0, p0, Landroidx/picker3/widget/SeslColorSpectrumView;->cursorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 197
    invoke-virtual {p0, v2}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 89
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-double v0, v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-double v4, v4

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    add-double/2addr v0, v2

    .line 88
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    .line 91
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 97
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 98
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 94
    invoke-virtual {p0, v0}, Landroid/view/View;->playSoundEffect(I)V

    .line 107
    :cond_2
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 108
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 110
    iget-object v2, p0, Landroidx/picker3/widget/SeslColorSpectrumView;->mSpectrumRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v2, v0, v2

    if-lez v2, :cond_3

    .line 111
    iget-object v0, p0, Landroidx/picker3/widget/SeslColorSpectrumView;->mSpectrumRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    .line 114
    :cond_3
    iget-object v2, p0, Landroidx/picker3/widget/SeslColorSpectrumView;->mSpectrumRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v2, p1, v2

    if-lez v2, :cond_4

    .line 115
    iget-object p1, p0, Landroidx/picker3/widget/SeslColorSpectrumView;->mSpectrumRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    int-to-float p1, p1

    :cond_4
    const/4 v2, 0x0

    cmpg-float v3, v0, v2

    if-gez v3, :cond_5

    move v0, v2

    :cond_5
    const/high16 v3, 0x40e00000    # 7.0f

    cmpg-float v4, p1, v3

    if-gtz v4, :cond_6

    move p1, v3

    .line 127
    :cond_6
    iput v0, p0, Landroidx/picker3/widget/SeslColorSpectrumView;->mCursorPosX:F

    .line 128
    iput p1, p0, Landroidx/picker3/widget/SeslColorSpectrumView;->mCursorPosY:F

    .line 129
    iget-object p1, p0, Landroidx/picker3/widget/SeslColorSpectrumView;->mSpectrumRect:Landroid/graphics/Rect;

    iget v3, p1, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    sub-float/2addr v0, v3

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr v0, p1

    const/high16 p1, 0x43960000    # 300.0f

    mul-float/2addr v0, p1

    .line 130
    iget p1, p0, Landroidx/picker3/widget/SeslColorSpectrumView;->mCursorPosY:F

    iget-object v3, p0, Landroidx/picker3/widget/SeslColorSpectrumView;->mSpectrumRect:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    sub-float/2addr p1, v4

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr p1, v3

    cmpg-float v3, v0, v2

    if-gez v3, :cond_7

    goto :goto_1

    :cond_7
    move v2, v0

    .line 139
    :goto_1
    iget-object v0, p0, Landroidx/picker3/widget/SeslColorSpectrumView;->mListener:Landroidx/picker3/widget/SeslColorSpectrumView$SpectrumColorChangedListener;

    if-eqz v0, :cond_8

    .line 140
    invoke-interface {v0, v2, p1}, Landroidx/picker3/widget/SeslColorSpectrumView$SpectrumColorChangedListener;->onSpectrumColorChanged(FF)V

    goto :goto_2

    :cond_8
    const-string p1, "SeslColorSpectrumView"

    const-string v0, "Listener is not set."

    .line 142
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    :goto_2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return v1
.end method

.method setColor(I)V
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [F

    .line 203
    invoke-static {p1, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 204
    invoke-virtual {p0, p1, v0}, Landroidx/picker3/widget/SeslColorSpectrumView;->updateCursorPosition(I[F)V

    return-void
.end method

.method setOnSpectrumColorChangedListener(Landroidx/picker3/widget/SeslColorSpectrumView$SpectrumColorChangedListener;)V
    .locals 0

    .line 53
    iput-object p1, p0, Landroidx/picker3/widget/SeslColorSpectrumView;->mListener:Landroidx/picker3/widget/SeslColorSpectrumView$SpectrumColorChangedListener;

    return-void
.end method

.method updateCursorColor(I)V
    .locals 2

    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateCursorColor color "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SeslColorSpectrumView"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    iget-object p0, p0, Landroidx/picker3/widget/SeslColorSpectrumView;->mCursorPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public updateCursorPosition(I[F)V
    .locals 4

    .line 208
    iget-object p1, p0, Landroidx/picker3/widget/SeslColorSpectrumView;->mSpectrumRect:Landroid/graphics/Rect;

    if-eqz p1, :cond_0

    .line 209
    iget v0, p1, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    int-to-float p1, p1

    const/4 v1, 0x0

    aget v2, p2, v1

    mul-float/2addr p1, v2

    const/high16 v2, 0x43960000    # 300.0f

    div-float/2addr p1, v2

    add-float/2addr v0, p1

    iput v0, p0, Landroidx/picker3/widget/SeslColorSpectrumView;->mCursorPosX:F

    .line 210
    iget-object p1, p0, Landroidx/picker3/widget/SeslColorSpectrumView;->mSpectrumRect:Landroid/graphics/Rect;

    iget v0, p1, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    int-to-float p1, p1

    const/4 v2, 0x1

    aget v3, p2, v2

    mul-float/2addr p1, v3

    add-float/2addr v0, p1

    iput v0, p0, Landroidx/picker3/widget/SeslColorSpectrumView;->mCursorPosY:F

    .line 211
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "updateCursorPosition() HSV["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v0, p2, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v1, p2, v2

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p2, p2, v2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p2, "] mCursorPosX="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Landroidx/picker3/widget/SeslColorSpectrumView;->mCursorPosX:F

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p2, " mCursorPosY="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Landroidx/picker3/widget/SeslColorSpectrumView;->mCursorPosY:F

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SeslColorSpectrumView"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
