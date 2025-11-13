.class public final Lcom/android/systemui/shared/shadow/DoubleShadowTextHelper;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final INSTANCE:Lcom/android/systemui/shared/shadow/DoubleShadowTextHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/shared/shadow/DoubleShadowTextHelper;

    invoke-direct {v0}, Lcom/android/systemui/shared/shadow/DoubleShadowTextHelper;-><init>()V

    sput-object v0, Lcom/android/systemui/shared/shadow/DoubleShadowTextHelper;->INSTANCE:Lcom/android/systemui/shared/shadow/DoubleShadowTextHelper;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static applyShadows(Lcom/android/systemui/shared/shadow/DoubleShadowTextHelper$ShadowInfo;Lcom/android/systemui/shared/shadow/DoubleShadowTextHelper$ShadowInfo;Landroid/widget/TextView;Landroid/graphics/Canvas;Lkotlin/jvm/functions/Function0;)V
    .locals 5

    invoke-virtual {p2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    iget v1, p1, Lcom/android/systemui/shared/shadow/DoubleShadowTextHelper$ShadowInfo;->alpha:F

    const/4 v2, 0x0

    invoke-static {v1, v2, v2, v2}, Landroid/graphics/Color;->argb(FFFF)I

    move-result v1

    iget v3, p1, Lcom/android/systemui/shared/shadow/DoubleShadowTextHelper$ShadowInfo;->offsetX:F

    iget v4, p1, Lcom/android/systemui/shared/shadow/DoubleShadowTextHelper$ShadowInfo;->offsetY:F

    iget p1, p1, Lcom/android/systemui/shared/shadow/DoubleShadowTextHelper$ShadowInfo;->blur:F

    invoke-virtual {v0, p1, v3, v4, v1}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    invoke-interface {p4}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    invoke-virtual {p3}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p2}, Landroid/widget/TextView;->getScrollX()I

    move-result p1

    invoke-virtual {p2}, Landroid/widget/TextView;->getScrollY()I

    move-result v0

    invoke-virtual {p2}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p2}, Landroid/widget/TextView;->getScrollX()I

    move-result v0

    invoke-virtual {p2}, Landroid/widget/TextView;->getWidth()I

    move-result v3

    add-int/2addr v3, v0

    invoke-virtual {p2}, Landroid/widget/TextView;->getScrollY()I

    move-result v0

    invoke-virtual {p2}, Landroid/widget/TextView;->getHeight()I

    move-result v4

    add-int/2addr v4, v0

    invoke-virtual {p3, p1, v1, v3, v4}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    invoke-virtual {p2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p1

    iget p2, p0, Lcom/android/systemui/shared/shadow/DoubleShadowTextHelper$ShadowInfo;->alpha:F

    invoke-static {p2, v2, v2, v2}, Landroid/graphics/Color;->argb(FFFF)I

    move-result p2

    iget v0, p0, Lcom/android/systemui/shared/shadow/DoubleShadowTextHelper$ShadowInfo;->offsetX:F

    iget v1, p0, Lcom/android/systemui/shared/shadow/DoubleShadowTextHelper$ShadowInfo;->offsetY:F

    iget p0, p0, Lcom/android/systemui/shared/shadow/DoubleShadowTextHelper$ShadowInfo;->blur:F

    invoke-virtual {p1, p0, v0, v1, p2}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    invoke-interface {p4}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    invoke-virtual {p3}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method
