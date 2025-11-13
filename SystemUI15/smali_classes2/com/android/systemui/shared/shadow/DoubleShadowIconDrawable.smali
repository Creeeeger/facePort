.class public final Lcom/android/systemui/shared/shadow/DoubleShadowIconDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mCanvasSize:I

.field public final mDoubleShadowNode:Landroid/graphics/RenderNode;

.field public final mIconDrawable:Landroid/graphics/drawable/InsetDrawable;


# direct methods
.method public constructor <init>(Lcom/android/systemui/shared/shadow/DoubleShadowTextHelper$ShadowInfo;Lcom/android/systemui/shared/shadow/DoubleShadowTextHelper$ShadowInfo;Landroid/graphics/drawable/Drawable;II)V
    .locals 4

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    mul-int/lit8 v0, p5, 0x2

    add-int/2addr v0, p4

    iput v0, p0, Lcom/android/systemui/shared/shadow/DoubleShadowIconDrawable;->mCanvasSize:I

    const/4 p4, 0x0

    invoke-virtual {p0, p4, p4, v0, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    new-instance v1, Landroid/graphics/drawable/InsetDrawable;

    invoke-direct {v1, p3, p5}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;I)V

    iput-object v1, p0, Lcom/android/systemui/shared/shadow/DoubleShadowIconDrawable;->mIconDrawable:Landroid/graphics/drawable/InsetDrawable;

    invoke-virtual {v1, p4, p4, v0, v0}, Landroid/graphics/drawable/InsetDrawable;->setBounds(IIII)V

    new-instance p3, Landroid/graphics/RenderNode;

    const-string p5, "DoubleShadowNode"

    invoke-direct {p3, p5}, Landroid/graphics/RenderNode;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p4, p4, v0, v0}, Landroid/graphics/RenderNode;->setPosition(IIII)Z

    iget p4, p2, Lcom/android/systemui/shared/shadow/DoubleShadowTextHelper$ShadowInfo;->blur:F

    new-instance p5, Landroid/graphics/PorterDuffColorFilter;

    iget v0, p2, Lcom/android/systemui/shared/shadow/DoubleShadowTextHelper$ShadowInfo;->alpha:F

    const/4 v1, 0x0

    invoke-static {v0, v1, v1, v1}, Landroid/graphics/Color;->argb(FFFF)I

    move-result v0

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p5, v0, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    sget-object v0, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-static {p4, p4, v0}, Landroid/graphics/RenderEffect;->createBlurEffect(FFLandroid/graphics/Shader$TileMode;)Landroid/graphics/RenderEffect;

    move-result-object p4

    iget v3, p2, Lcom/android/systemui/shared/shadow/DoubleShadowTextHelper$ShadowInfo;->offsetX:F

    iget p2, p2, Lcom/android/systemui/shared/shadow/DoubleShadowTextHelper$ShadowInfo;->offsetY:F

    invoke-static {v3, p2, p4}, Landroid/graphics/RenderEffect;->createOffsetEffect(FFLandroid/graphics/RenderEffect;)Landroid/graphics/RenderEffect;

    move-result-object p2

    invoke-static {p5, p2}, Landroid/graphics/RenderEffect;->createColorFilterEffect(Landroid/graphics/ColorFilter;Landroid/graphics/RenderEffect;)Landroid/graphics/RenderEffect;

    move-result-object p2

    iget p4, p1, Lcom/android/systemui/shared/shadow/DoubleShadowTextHelper$ShadowInfo;->blur:F

    new-instance p5, Landroid/graphics/PorterDuffColorFilter;

    iget v3, p1, Lcom/android/systemui/shared/shadow/DoubleShadowTextHelper$ShadowInfo;->alpha:F

    invoke-static {v3, v1, v1, v1}, Landroid/graphics/Color;->argb(FFFF)I

    move-result v1

    invoke-direct {p5, v1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-static {p4, p4, v0}, Landroid/graphics/RenderEffect;->createBlurEffect(FFLandroid/graphics/Shader$TileMode;)Landroid/graphics/RenderEffect;

    move-result-object p4

    iget v0, p1, Lcom/android/systemui/shared/shadow/DoubleShadowTextHelper$ShadowInfo;->offsetX:F

    iget p1, p1, Lcom/android/systemui/shared/shadow/DoubleShadowTextHelper$ShadowInfo;->offsetY:F

    invoke-static {v0, p1, p4}, Landroid/graphics/RenderEffect;->createOffsetEffect(FFLandroid/graphics/RenderEffect;)Landroid/graphics/RenderEffect;

    move-result-object p1

    invoke-static {p5, p1}, Landroid/graphics/RenderEffect;->createColorFilterEffect(Landroid/graphics/ColorFilter;Landroid/graphics/RenderEffect;)Landroid/graphics/RenderEffect;

    move-result-object p1

    sget-object p4, Landroid/graphics/BlendMode;->DST_ATOP:Landroid/graphics/BlendMode;

    invoke-static {p2, p1, p4}, Landroid/graphics/RenderEffect;->createBlendModeEffect(Landroid/graphics/RenderEffect;Landroid/graphics/RenderEffect;Landroid/graphics/BlendMode;)Landroid/graphics/RenderEffect;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/graphics/RenderNode;->setRenderEffect(Landroid/graphics/RenderEffect;)Z

    iput-object p3, p0, Lcom/android/systemui/shared/shadow/DoubleShadowIconDrawable;->mDoubleShadowNode:Landroid/graphics/RenderNode;

    return-void
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/shared/shadow/DoubleShadowIconDrawable;->mDoubleShadowNode:Landroid/graphics/RenderNode;

    invoke-virtual {v0}, Landroid/graphics/RenderNode;->hasDisplayList()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/shared/shadow/DoubleShadowIconDrawable;->mDoubleShadowNode:Landroid/graphics/RenderNode;

    invoke-virtual {v0}, Landroid/graphics/RenderNode;->beginRecording()Landroid/graphics/RecordingCanvas;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/shared/shadow/DoubleShadowIconDrawable;->mIconDrawable:Landroid/graphics/drawable/InsetDrawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/InsetDrawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/android/systemui/shared/shadow/DoubleShadowIconDrawable;->mDoubleShadowNode:Landroid/graphics/RenderNode;

    invoke-virtual {v0}, Landroid/graphics/RenderNode;->endRecording()V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/shared/shadow/DoubleShadowIconDrawable;->mDoubleShadowNode:Landroid/graphics/RenderNode;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawRenderNode(Landroid/graphics/RenderNode;)V

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/shared/shadow/DoubleShadowIconDrawable;->mIconDrawable:Landroid/graphics/drawable/InsetDrawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/InsetDrawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public final getIntrinsicHeight()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/shared/shadow/DoubleShadowIconDrawable;->mCanvasSize:I

    return p0
.end method

.method public final getIntrinsicWidth()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/shared/shadow/DoubleShadowIconDrawable;->mCanvasSize:I

    return p0
.end method

.method public final getOpacity()I
    .locals 0

    const/4 p0, -0x2

    return p0
.end method

.method public final setAlpha(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/shared/shadow/DoubleShadowIconDrawable;->mIconDrawable:Landroid/graphics/drawable/InsetDrawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/InsetDrawable;->setAlpha(I)V

    return-void
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/shared/shadow/DoubleShadowIconDrawable;->mIconDrawable:Landroid/graphics/drawable/InsetDrawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/InsetDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method public final setTint(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/shared/shadow/DoubleShadowIconDrawable;->mIconDrawable:Landroid/graphics/drawable/InsetDrawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/InsetDrawable;->setTint(I)V

    return-void
.end method

.method public final setTintList(Landroid/content/res/ColorStateList;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/shared/shadow/DoubleShadowIconDrawable;->mIconDrawable:Landroid/graphics/drawable/InsetDrawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/InsetDrawable;->setTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method
