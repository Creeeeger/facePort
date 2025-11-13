.class public final Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherScrim;
.super Landroid/graphics/drawable/Drawable;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field public mAlpha:I

.field public mCircleX:I

.field public mCircleY:I

.field public final mDarkColor:I

.field public final mRadialGradientPaint:Landroid/graphics/Paint;

.field public mSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/16 v0, 0xff

    iput v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherScrim;->mAlpha:I

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherScrim;->mRadialGradientPaint:Landroid/graphics/Paint;

    const v0, 0x7f06018b

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherScrim;->mDarkColor:I

    return-void
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 8

    iget v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherScrim;->mAlpha:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v1, v0, Landroid/graphics/Rect;->left:I

    int-to-float v3, v1

    iget v1, v0, Landroid/graphics/Rect;->top:I

    int-to-float v4, v1

    iget v1, v0, Landroid/graphics/Rect;->right:I

    int-to-float v5, v1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v0

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherScrim;->mRadialGradientPaint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public final getAlpha()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherScrim;->mAlpha:I

    return p0
.end method

.method public final getOpacity()I
    .locals 0

    const/4 p0, -0x3

    return p0
.end method

.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    if-ne p2, p6, :cond_0

    if-ne p3, p7, :cond_0

    if-ne p4, p8, :cond_0

    if-eq p5, p9, :cond_1

    :cond_0
    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    invoke-static {p4, p5}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherScrim;->mSize:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherScrim;->updatePaint()V

    :cond_1
    return-void
.end method

.method public final setAlpha(I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherScrim;->mAlpha:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherScrim;->updatePaint()V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method

.method public final updatePaint()V
    .locals 10

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherScrim;->mSize:I

    if-nez v1, :cond_0

    return-void

    :cond_0
    int-to-float v1, v1

    const/high16 v2, 0x40200000    # 2.5f

    mul-float v6, v1, v2

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherScrim;->mRadialGradientPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/RadialGradient;

    iget v3, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherScrim;->mCircleX:I

    int-to-float v4, v3

    iget v3, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherScrim;->mCircleY:I

    int-to-float v5, v3

    iget v3, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherScrim;->mDarkColor:I

    invoke-static {v3}, Landroid/graphics/Color;->alpha(I)I

    move-result v3

    iget p0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherScrim;->mAlpha:I

    mul-int/2addr v3, p0

    int-to-float p0, v3

    const/high16 v3, 0x437f0000    # 255.0f

    div-float/2addr p0, v3

    float-to-int p0, p0

    invoke-static {p0, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    filled-new-array {p0, v0}, [I

    move-result-object v7

    const/4 p0, 0x0

    const v3, 0x3dcccccd    # 0.1f

    invoke-static {p0, v3}, Ljava/lang/Math;->max(FF)F

    move-result p0

    const/4 v3, 0x2

    new-array v8, v3, [F

    aput p0, v8, v0

    const/high16 p0, 0x3f800000    # 1.0f

    const/4 v0, 0x1

    aput p0, v8, v0

    sget-object v9, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v3, v2

    invoke-direct/range {v3 .. v9}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    return-void
.end method
