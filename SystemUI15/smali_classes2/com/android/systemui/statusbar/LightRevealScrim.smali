.class public final Lcom/android/systemui/statusbar/LightRevealScrim;
.super Landroid/view/View;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final dimPaint:Landroid/graphics/Paint;

.field public final gradientPaint:Landroid/graphics/Paint;

.field public interpolatedRevealAmount:F

.field public isScrimOpaque:Z

.field public isScrimOpaqueChangedListener:Ljava/util/function/Consumer;

.field public final logString:Ljava/lang/String;

.field public revealAmount:F

.field public revealDimGradientEndColorAlpha:F

.field public revealEffect:Lcom/android/systemui/statusbar/LightRevealEffect;

.field public final revealGradientCenter:Landroid/graphics/PointF;

.field public final revealGradientEndColor:I

.field public revealGradientEndColorAlpha:F

.field public revealGradientHeight:F

.field public revealGradientWidth:F

.field public scrimLogger:Lcom/android/keyguard/logging/ScrimLogger;

.field public final shaderGradientMatrix:Landroid/graphics/Matrix;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    const/16 v5, 0xc

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/statusbar/LightRevealScrim;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Ljava/lang/Integer;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Ljava/lang/Integer;)V
    .locals 7

    const/16 v5, 0x8

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/statusbar/LightRevealScrim;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Ljava/lang/Integer;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 7

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-class p1, Lcom/android/systemui/statusbar/LightRevealScrim;

    invoke-static {p1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    move-result-object p1

    invoke-virtual {p1}, Lkotlin/jvm/internal/ClassReference;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/view/View;->hashCode()I

    move-result p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "@"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/LightRevealScrim;->logString:Ljava/lang/String;

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/android/systemui/statusbar/LightRevealScrim;->revealAmount:F

    sget-object p2, Lcom/android/systemui/statusbar/LiftReveal;->INSTANCE:Lcom/android/systemui/statusbar/LiftReveal;

    iput-object p2, p0, Lcom/android/systemui/statusbar/LightRevealScrim;->revealEffect:Lcom/android/systemui/statusbar/LightRevealEffect;

    new-instance p2, Landroid/graphics/PointF;

    invoke-direct {p2}, Landroid/graphics/PointF;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/statusbar/LightRevealScrim;->revealGradientCenter:Landroid/graphics/PointF;

    const/high16 p2, -0x1000000

    iput p2, p0, Lcom/android/systemui/statusbar/LightRevealScrim;->revealGradientEndColor:I

    iput p1, p0, Lcom/android/systemui/statusbar/LightRevealScrim;->interpolatedRevealAmount:F

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    sget-object p3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/LightRevealScrim;->dimPaint:Landroid/graphics/Paint;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    new-instance p2, Landroid/graphics/RadialGradient;

    const/4 p3, 0x0

    const/4 p4, -0x1

    filled-new-array {p3, p4}, [I

    move-result-object v4

    const/4 p3, 0x2

    new-array v5, p3, [F

    fill-array-data v5, :array_0

    sget-object v6, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    move-object v0, p2

    invoke-direct/range {v0 .. v6}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    new-instance p2, Landroid/graphics/PorterDuffXfermode;

    sget-object p3, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p2, p3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    iput-object p1, p0, Lcom/android/systemui/statusbar/LightRevealScrim;->gradientPaint:Landroid/graphics/Paint;

    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/LightRevealScrim;->shaderGradientMatrix:Landroid/graphics/Matrix;

    iget-object p1, p0, Lcom/android/systemui/statusbar/LightRevealScrim;->revealEffect:Lcom/android/systemui/statusbar/LightRevealEffect;

    iget p2, p0, Lcom/android/systemui/statusbar/LightRevealScrim;->revealAmount:F

    invoke-interface {p1, p2, p0}, Lcom/android/systemui/statusbar/LightRevealEffect;->setRevealAmountOnScrim(FLcom/android/systemui/statusbar/LightRevealScrim;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/LightRevealScrim;->setPaintColorFilter()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Ljava/lang/Integer;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p6, p5, 0x4

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    move-object p3, v0

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    move-object p4, v0

    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/LightRevealScrim;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method

.method public static leaveLog$default(Lcom/android/systemui/statusbar/LightRevealScrim;Ljava/lang/Integer;Ljava/lang/Float;Ljava/lang/Float;I)V
    .locals 6

    and-int/lit8 v0, p4, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object p1, v1

    :cond_0
    and-int/lit8 v0, p4, 0x2

    if-eqz v0, :cond_1

    move-object p2, v1

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    move-object p3, v1

    :cond_2
    iget-object p4, p0, Lcom/android/systemui/statusbar/LightRevealScrim;->revealEffect:Lcom/android/systemui/statusbar/LightRevealEffect;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/LightRevealScrim;->isScrimOpaque:Z

    const-string v1, ")"

    const-string v2, " -> "

    const-string v3, "("

    if-eqz p3, :cond_3

    invoke-virtual {p3}, Ljava/lang/Number;->floatValue()F

    move-result p3

    iget v4, p0, Lcom/android/systemui/statusbar/LightRevealScrim;->revealAmount:F

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_4

    :cond_3
    iget p3, p0, Lcom/android/systemui/statusbar/LightRevealScrim;->revealAmount:F

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    :cond_4
    if-eqz p2, :cond_5

    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_6

    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result p2

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    :cond_6
    if-eqz p1, :cond_7

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v4

    invoke-static {p1, v4, v3, v2, v1}, Landroidx/compose/foundation/text/HeightInLinesModifierKt$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_8

    :cond_7
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    :cond_8
    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "updateLightReveal revealEffect="

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p4, ", opaque="

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p4, " revealAmount="

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " alpha="

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " vis="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ScrimController"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public final dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    sget-object v0, Lcom/android/systemui/shade/TouchLogger;->Companion:Lcom/android/systemui/shade/TouchLogger$Companion;

    invoke-super {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "LightRevealScrim"

    invoke-static {p1, v0, p0}, Lcom/android/systemui/shade/TouchLogger$Companion;->logDispatchTouch(Landroid/view/MotionEvent;Ljava/lang/String;Z)V

    return p0
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    iget v0, p0, Lcom/android/systemui/statusbar/LightRevealScrim;->revealGradientWidth:F

    const/4 v1, 0x0

    cmpg-float v2, v0, v1

    if-lez v2, :cond_2

    iget v2, p0, Lcom/android/systemui/statusbar/LightRevealScrim;->revealGradientHeight:F

    cmpg-float v3, v2, v1

    if-lez v3, :cond_2

    iget v3, p0, Lcom/android/systemui/statusbar/LightRevealScrim;->revealAmount:F

    cmpg-float v3, v3, v1

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/LightRevealScrim;->shaderGradientMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v0, v2, v1, v1}, Landroid/graphics/Matrix;->setScale(FFFF)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/LightRevealScrim;->revealGradientCenter:Landroid/graphics/PointF;

    iget v1, v0, Landroid/graphics/PointF;->x:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {v3, v1, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/LightRevealScrim;->gradientPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    sget-boolean v0, Lcom/android/systemui/LsRune;->AOD_LIGHT_REVEAL:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v4, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v5, v0

    iget-object v6, p0, Lcom/android/systemui/statusbar/LightRevealScrim;->dimPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v4, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v5, v0

    iget-object v6, p0, Lcom/android/systemui/statusbar/LightRevealScrim;->gradientPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void

    :cond_2
    :goto_0
    iget v0, p0, Lcom/android/systemui/statusbar/LightRevealScrim;->revealAmount:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3

    iget p0, p0, Lcom/android/systemui/statusbar/LightRevealScrim;->revealGradientEndColor:I

    invoke-virtual {p1, p0}, Landroid/graphics/Canvas;->drawColor(I)V

    :cond_3
    return-void
.end method

.method public final onMeasure(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    return-void
.end method

.method public final setAlpha(F)V
    .locals 3

    sget-boolean v0, Lcom/android/systemui/LsRune;->AOD_LIGHT_REVEAL:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result v0

    cmpg-float v1, v0, p1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Lcom/android/systemui/statusbar/LightRevealScrim;->leaveLog$default(Lcom/android/systemui/statusbar/LightRevealScrim;Ljava/lang/Integer;Ljava/lang/Float;Ljava/lang/Float;I)V

    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/LightRevealScrim;->scrimLogger:Lcom/android/keyguard/logging/ScrimLogger;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/LightRevealScrim;->logString:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, " on "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "LightRevealScrim"

    const-string v2, "alpha"

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/keyguard/logging/ScrimLogger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/LightRevealScrim;->updateScrimOpaque()V

    return-void
.end method

.method public final setPaintColorFilter()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/LightRevealScrim;->gradientPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    iget v2, p0, Lcom/android/systemui/statusbar/LightRevealScrim;->revealGradientEndColor:I

    iget v3, p0, Lcom/android/systemui/statusbar/LightRevealScrim;->revealGradientEndColorAlpha:F

    invoke-static {v2, v3}, Lcom/android/systemui/util/ColorUtilKt;->getColorWithAlpha(IF)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    sget-boolean v0, Lcom/android/systemui/LsRune;->AOD_LIGHT_REVEAL:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/LightRevealScrim;->dimPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/systemui/statusbar/LightRevealScrim;->revealGradientEndColor:I

    iget p0, p0, Lcom/android/systemui/statusbar/LightRevealScrim;->revealDimGradientEndColorAlpha:F

    invoke-static {v1, p0}, Lcom/android/systemui/util/ColorUtilKt;->getColorWithAlpha(IF)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setColor(I)V

    :cond_0
    return-void
.end method

.method public final setRevealAmount(F)V
    .locals 5

    iget v0, p0, Lcom/android/systemui/statusbar/LightRevealScrim;->revealAmount:F

    cmpg-float v1, v0, p1

    if-nez v1, :cond_0

    goto/16 :goto_1

    :cond_0
    sget-boolean v1, Lcom/android/systemui/LsRune;->AOD_LIGHT_REVEAL:Z

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    if-eqz v1, :cond_5

    sget-boolean v1, Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;->DEBUG:Z

    if-nez v1, :cond_4

    cmpg-float v1, p1, v3

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    cmpg-float v1, p1, v2

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    cmpg-float v1, v0, v3

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    cmpg-float v1, v0, v2

    if-nez v1, :cond_5

    :cond_4
    :goto_0
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const/4 v1, 0x3

    const/4 v4, 0x0

    invoke-static {p0, v4, v4, v0, v1}, Lcom/android/systemui/statusbar/LightRevealScrim;->leaveLog$default(Lcom/android/systemui/statusbar/LightRevealScrim;Ljava/lang/Integer;Ljava/lang/Float;Ljava/lang/Float;I)V

    :cond_5
    iput p1, p0, Lcom/android/systemui/statusbar/LightRevealScrim;->revealAmount:F

    cmpg-float v0, p1, v3

    if-lez v0, :cond_6

    cmpl-float v0, p1, v2

    if-ltz v0, :cond_7

    :cond_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/LightRevealScrim;->scrimLogger:Lcom/android/keyguard/logging/ScrimLogger;

    if-eqz v0, :cond_7

    iget-object v1, p0, Lcom/android/systemui/statusbar/LightRevealScrim;->logString:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LightRevealScrim"

    const-string/jumbo v3, "revealAmount"

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/keyguard/logging/ScrimLogger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_7
    iget-object v0, p0, Lcom/android/systemui/statusbar/LightRevealScrim;->revealEffect:Lcom/android/systemui/statusbar/LightRevealEffect;

    invoke-interface {v0, p1, p0}, Lcom/android/systemui/statusbar/LightRevealEffect;->setRevealAmountOnScrim(FLcom/android/systemui/statusbar/LightRevealScrim;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/LightRevealScrim;->updateScrimOpaque()V

    iget-object p1, p0, Lcom/android/systemui/statusbar/LightRevealScrim;->logString:Ljava/lang/String;

    const-string v0, "light_reveal_amount "

    invoke-static {v0, p1}, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget v0, p0, Lcom/android/systemui/statusbar/LightRevealScrim;->revealAmount:F

    const/16 v1, 0x64

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    const-wide/16 v1, 0x1000

    invoke-static {v1, v2, p1, v0}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :goto_1
    return-void
.end method

.method public final setRevealEffect(Lcom/android/systemui/statusbar/LightRevealEffect;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/LightRevealScrim;->revealEffect:Lcom/android/systemui/statusbar/LightRevealEffect;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iput-object p1, p0, Lcom/android/systemui/statusbar/LightRevealScrim;->revealEffect:Lcom/android/systemui/statusbar/LightRevealEffect;

    iget v0, p0, Lcom/android/systemui/statusbar/LightRevealScrim;->revealAmount:F

    invoke-interface {p1, v0, p0}, Lcom/android/systemui/statusbar/LightRevealEffect;->setRevealAmountOnScrim(FLcom/android/systemui/statusbar/LightRevealScrim;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/LightRevealScrim;->scrimLogger:Lcom/android/keyguard/logging/ScrimLogger;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/LightRevealScrim;->logString:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " on "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "LightRevealScrim"

    const-string/jumbo v2, "revealEffect"

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/keyguard/logging/ScrimLogger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_1
    return-void
.end method

.method public final setRevealGradientBounds(FFFF)V
    .locals 1

    sub-float/2addr p3, p1

    iput p3, p0, Lcom/android/systemui/statusbar/LightRevealScrim;->revealGradientWidth:F

    sub-float/2addr p4, p2

    iput p4, p0, Lcom/android/systemui/statusbar/LightRevealScrim;->revealGradientHeight:F

    iget-object p0, p0, Lcom/android/systemui/statusbar/LightRevealScrim;->revealGradientCenter:Landroid/graphics/PointF;

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p3, v0

    add-float/2addr p3, p1

    iput p3, p0, Landroid/graphics/PointF;->x:F

    div-float/2addr p4, v0

    add-float/2addr p4, p2

    iput p4, p0, Landroid/graphics/PointF;->y:F

    return-void
.end method

.method public final setRevealGradientEndColorAlpha(F)V
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/LightRevealScrim;->revealGradientEndColorAlpha:F

    cmpg-float v0, v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iput p1, p0, Lcom/android/systemui/statusbar/LightRevealScrim;->revealGradientEndColorAlpha:F

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/LightRevealScrim;->setPaintColorFilter()V

    :goto_0
    return-void
.end method

.method public final setVisibility(I)V
    .locals 3

    sget-boolean v0, Lcom/android/systemui/LsRune;->AOD_LIGHT_REVEAL:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, p1, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-static {p0, v0, v2, v2, v1}, Lcom/android/systemui/statusbar/LightRevealScrim;->leaveLog$default(Lcom/android/systemui/statusbar/LightRevealScrim;Ljava/lang/Integer;Ljava/lang/Float;Ljava/lang/Float;I)V

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/LightRevealScrim;->scrimLogger:Lcom/android/keyguard/logging/ScrimLogger;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/LightRevealScrim;->logString:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " on "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "LightRevealScrim"

    const-string/jumbo v2, "visibility"

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/keyguard/logging/ScrimLogger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/LightRevealScrim;->updateScrimOpaque()V

    return-void
.end method

.method public final updateScrimOpaque()V
    .locals 3

    iget v0, p0, Lcom/android/systemui/statusbar/LightRevealScrim;->revealAmount:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/LightRevealScrim;->isScrimOpaque:Z

    if-eq v1, v0, :cond_2

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/LightRevealScrim;->isScrimOpaque:Z

    iget-object v1, p0, Lcom/android/systemui/statusbar/LightRevealScrim;->isScrimOpaqueChangedListener:Ljava/util/function/Consumer;

    if-eqz v1, :cond_1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/LightRevealScrim;->scrimLogger:Lcom/android/keyguard/logging/ScrimLogger;

    if-eqz v1, :cond_2

    iget-object p0, p0, Lcom/android/systemui/statusbar/LightRevealScrim;->logString:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " on "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "LightRevealScrim"

    const-string v2, "isScrimOpaque"

    invoke-virtual {v1, v0, v2, p0}, Lcom/android/keyguard/logging/ScrimLogger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    return-void
.end method
