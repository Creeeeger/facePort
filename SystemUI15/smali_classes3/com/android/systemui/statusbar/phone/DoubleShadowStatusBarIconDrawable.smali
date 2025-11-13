.class public final Lcom/android/systemui/statusbar/phone/DoubleShadowStatusBarIconDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public drawShadowOnly:Z

.field public final iconHeight:I

.field public final iconWidth:I

.field public final mDoubleShadowNode:Landroid/graphics/RenderNode;

.field public final mIconDrawable:Landroid/graphics/drawable/InsetDrawable;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;Landroid/content/Context;II)V
    .locals 5

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    iput p3, p0, Lcom/android/systemui/statusbar/phone/DoubleShadowStatusBarIconDrawable;->iconWidth:I

    iput p4, p0, Lcom/android/systemui/statusbar/phone/DoubleShadowStatusBarIconDrawable;->iconHeight:I

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f071496

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    new-instance v0, Lcom/android/systemui/shared/shadow/DoubleShadowTextHelper$ShadowInfo;

    const/4 v1, 0x0

    const v2, 0x3e4ccccd    # 0.2f

    invoke-direct {v0, p2, v1, v1, v2}, Lcom/android/systemui/shared/shadow/DoubleShadowTextHelper$ShadowInfo;-><init>(FFFF)V

    new-instance v2, Lcom/android/systemui/shared/shadow/DoubleShadowTextHelper$ShadowInfo;

    invoke-direct {v2, p2, v1, v1, v1}, Lcom/android/systemui/shared/shadow/DoubleShadowTextHelper$ShadowInfo;-><init>(FFFF)V

    const/4 p2, 0x0

    invoke-virtual {p0, p2, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    new-instance v3, Landroid/graphics/drawable/InsetDrawable;

    invoke-direct {v3, p1, p2}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;I)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/DoubleShadowStatusBarIconDrawable;->mIconDrawable:Landroid/graphics/drawable/InsetDrawable;

    invoke-virtual {v3, p2, p2, p3, p4}, Landroid/graphics/drawable/InsetDrawable;->setBounds(IIII)V

    new-instance p1, Landroid/graphics/RenderNode;

    const-string v3, "DoubleShadowNode"

    invoke-direct {p1, v3}, Landroid/graphics/RenderNode;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2, p2, p3, p4}, Landroid/graphics/RenderNode;->setPosition(IIII)Z

    new-instance p2, Landroid/graphics/PorterDuffColorFilter;

    iget p3, v2, Lcom/android/systemui/shared/shadow/DoubleShadowTextHelper$ShadowInfo;->alpha:F

    invoke-static {p3, v1, v1, v1}, Landroid/graphics/Color;->argb(FFFF)I

    move-result p3

    sget-object p4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p2, p3, p4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    sget-object p3, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    iget v3, v2, Lcom/android/systemui/shared/shadow/DoubleShadowTextHelper$ShadowInfo;->blur:F

    invoke-static {v3, v3, p3}, Landroid/graphics/RenderEffect;->createBlurEffect(FFLandroid/graphics/Shader$TileMode;)Landroid/graphics/RenderEffect;

    move-result-object v3

    iget v4, v2, Lcom/android/systemui/shared/shadow/DoubleShadowTextHelper$ShadowInfo;->offsetX:F

    iget v2, v2, Lcom/android/systemui/shared/shadow/DoubleShadowTextHelper$ShadowInfo;->offsetY:F

    invoke-static {v4, v2, v3}, Landroid/graphics/RenderEffect;->createOffsetEffect(FFLandroid/graphics/RenderEffect;)Landroid/graphics/RenderEffect;

    move-result-object v2

    invoke-static {p2, v2}, Landroid/graphics/RenderEffect;->createColorFilterEffect(Landroid/graphics/ColorFilter;Landroid/graphics/RenderEffect;)Landroid/graphics/RenderEffect;

    move-result-object p2

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    iget v3, v0, Lcom/android/systemui/shared/shadow/DoubleShadowTextHelper$ShadowInfo;->alpha:F

    invoke-static {v3, v1, v1, v1}, Landroid/graphics/Color;->argb(FFFF)I

    move-result v1

    invoke-direct {v2, v1, p4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iget p4, v0, Lcom/android/systemui/shared/shadow/DoubleShadowTextHelper$ShadowInfo;->blur:F

    invoke-static {p4, p4, p3}, Landroid/graphics/RenderEffect;->createBlurEffect(FFLandroid/graphics/Shader$TileMode;)Landroid/graphics/RenderEffect;

    move-result-object p3

    iget p4, v0, Lcom/android/systemui/shared/shadow/DoubleShadowTextHelper$ShadowInfo;->offsetX:F

    iget v0, v0, Lcom/android/systemui/shared/shadow/DoubleShadowTextHelper$ShadowInfo;->offsetY:F

    invoke-static {p4, v0, p3}, Landroid/graphics/RenderEffect;->createOffsetEffect(FFLandroid/graphics/RenderEffect;)Landroid/graphics/RenderEffect;

    move-result-object p3

    invoke-static {v2, p3}, Landroid/graphics/RenderEffect;->createColorFilterEffect(Landroid/graphics/ColorFilter;Landroid/graphics/RenderEffect;)Landroid/graphics/RenderEffect;

    move-result-object p3

    sget-object p4, Landroid/graphics/BlendMode;->DST_ATOP:Landroid/graphics/BlendMode;

    invoke-static {p2, p3, p4}, Landroid/graphics/RenderEffect;->createBlendModeEffect(Landroid/graphics/RenderEffect;Landroid/graphics/RenderEffect;Landroid/graphics/BlendMode;)Landroid/graphics/RenderEffect;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/graphics/RenderNode;->setRenderEffect(Landroid/graphics/RenderEffect;)Z

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/DoubleShadowStatusBarIconDrawable;->mDoubleShadowNode:Landroid/graphics/RenderNode;

    return-void
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DoubleShadowStatusBarIconDrawable;->mDoubleShadowNode:Landroid/graphics/RenderNode;

    invoke-virtual {v0}, Landroid/graphics/RenderNode;->hasDisplayList()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DoubleShadowStatusBarIconDrawable;->mDoubleShadowNode:Landroid/graphics/RenderNode;

    invoke-virtual {v0}, Landroid/graphics/RenderNode;->beginRecording()Landroid/graphics/RecordingCanvas;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DoubleShadowStatusBarIconDrawable;->mIconDrawable:Landroid/graphics/drawable/InsetDrawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/InsetDrawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DoubleShadowStatusBarIconDrawable;->mDoubleShadowNode:Landroid/graphics/RenderNode;

    invoke-virtual {v0}, Landroid/graphics/RenderNode;->endRecording()V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DoubleShadowStatusBarIconDrawable;->mDoubleShadowNode:Landroid/graphics/RenderNode;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawRenderNode(Landroid/graphics/RenderNode;)V

    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/DoubleShadowStatusBarIconDrawable;->drawShadowOnly:Z

    if-nez v0, :cond_2

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DoubleShadowStatusBarIconDrawable;->mIconDrawable:Landroid/graphics/drawable/InsetDrawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/InsetDrawable;->draw(Landroid/graphics/Canvas;)V

    :cond_2
    return-void
.end method

.method public final getIntrinsicHeight()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/statusbar/phone/DoubleShadowStatusBarIconDrawable;->iconHeight:I

    return p0
.end method

.method public final getIntrinsicWidth()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/statusbar/phone/DoubleShadowStatusBarIconDrawable;->iconWidth:I

    return p0
.end method

.method public final getOpacity()I
    .locals 0

    const/4 p0, -0x2

    return p0
.end method

.method public final setAlpha(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DoubleShadowStatusBarIconDrawable;->mIconDrawable:Landroid/graphics/drawable/InsetDrawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/InsetDrawable;->setAlpha(I)V

    return-void
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DoubleShadowStatusBarIconDrawable;->mIconDrawable:Landroid/graphics/drawable/InsetDrawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/InsetDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method public final setTint(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DoubleShadowStatusBarIconDrawable;->mIconDrawable:Landroid/graphics/drawable/InsetDrawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/InsetDrawable;->setTint(I)V

    return-void
.end method

.method public final setTintList(Landroid/content/res/ColorStateList;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DoubleShadowStatusBarIconDrawable;->mIconDrawable:Landroid/graphics/drawable/InsetDrawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/InsetDrawable;->setTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method
