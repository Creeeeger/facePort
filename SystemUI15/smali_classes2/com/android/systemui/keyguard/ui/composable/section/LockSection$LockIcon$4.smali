.class final Lcom/android/systemui/keyguard/ui/composable/section/LockSection$LockIcon$4;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function3;"
    }
.end annotation


# instance fields
.field final synthetic $context:Landroid/content/Context;

.field final synthetic this$0:Lcom/android/systemui/keyguard/ui/composable/section/LockSection;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/ui/composable/section/LockSection;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/keyguard/ui/composable/section/LockSection$LockIcon$4;->this$0:Lcom/android/systemui/keyguard/ui/composable/section/LockSection;

    iput-object p2, p0, Lcom/android/systemui/keyguard/ui/composable/section/LockSection$LockIcon$4;->$context:Landroid/content/Context;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    check-cast p1, Landroidx/compose/ui/layout/MeasureScope;

    check-cast p2, Landroidx/compose/ui/layout/Measurable;

    check-cast p3, Landroidx/compose/ui/unit/Constraints;

    iget-wide v0, p3, Landroidx/compose/ui/unit/Constraints;->value:J

    iget-object p3, p0, Lcom/android/systemui/keyguard/ui/composable/section/LockSection$LockIcon$4;->this$0:Lcom/android/systemui/keyguard/ui/composable/section/LockSection;

    iget-object p0, p0, Lcom/android/systemui/keyguard/ui/composable/section/LockSection$LockIcon$4;->$context:Landroid/content/Context;

    iget-object v0, p3, Lcom/android/systemui/keyguard/ui/composable/section/LockSection;->windowManager:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v1, v0, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    sget-object v2, Lcom/android/systemui/flags/Flags;->INSTANCE:Lcom/android/systemui/flags/Flags;

    iget-object v2, p3, Lcom/android/systemui/keyguard/ui/composable/section/LockSection;->featureFlags:Lcom/android/systemui/flags/FeatureFlagsClassic;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v2, Landroid/util/DisplayMetrics;->DENSITY_DEVICE_STABLE:I

    int-to-float v2, v2

    const/high16 v3, 0x43200000    # 160.0f

    div-float/2addr v2, v3

    const/16 v3, 0x24

    int-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iget-object p3, p3, Lcom/android/systemui/keyguard/ui/composable/section/LockSection;->authController:Lcom/android/systemui/biometrics/AuthController;

    invoke-virtual {p3}, Lcom/android/systemui/biometrics/AuthController;->getUdfpsLocation()Landroid/graphics/Point;

    move-result-object v3

    invoke-virtual {p3}, Lcom/android/systemui/biometrics/AuthController;->isUdfpsSupported()Z

    move-result v4

    if-eqz v4, :cond_0

    if-eqz v3, :cond_0

    new-instance p0, Lkotlin/Pair;

    iget v0, v3, Landroid/graphics/Point;->x:I

    iget v1, v3, Landroid/graphics/Point;->y:I

    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntOffsetKt;->IntOffset(II)J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntOffset;->box-impl(J)Landroidx/compose/ui/unit/IntOffset;

    move-result-object v0

    invoke-virtual {p3}, Lcom/android/systemui/biometrics/AuthController;->getUdfpsRadius()F

    move-result p3

    float-to-int p3, p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-direct {p0, v0, p3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget p3, p3, Lcom/android/systemui/biometrics/AuthController;->mScaleFactor:F

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v3, 0x7f070750

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    new-instance v3, Lkotlin/Pair;

    const/4 v4, 0x2

    int-to-float v4, v4

    div-float/2addr v1, v4

    float-to-int v1, v1

    add-int/2addr p0, v2

    int-to-float p0, p0

    mul-float/2addr p0, p3

    sub-float/2addr v0, p0

    float-to-int p0, v0

    invoke-static {v1, p0}, Landroidx/compose/ui/unit/IntOffsetKt;->IntOffset(II)J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntOffset;->box-impl(J)Landroidx/compose/ui/unit/IntOffset;

    move-result-object p0

    int-to-float v0, v2

    mul-float/2addr v0, p3

    float-to-int p3, v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-direct {v3, p0, p3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object p0, v3

    :goto_0
    invoke-virtual {p0}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroidx/compose/ui/unit/IntOffset;

    iget-wide v0, p3, Landroidx/compose/ui/unit/IntOffset;->packedValue:J

    invoke-virtual {p0}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    new-instance p3, Landroidx/compose/ui/unit/IntRect;

    const/16 v2, 0x20

    shr-long v2, v0, v2

    long-to-int v2, v2

    sub-int v3, v2, p0

    const-wide v4, 0xffffffffL

    and-long/2addr v0, v4

    long-to-int v0, v0

    sub-int v1, v0, p0

    add-int/2addr v2, p0

    add-int/2addr v0, p0

    invoke-direct {p3, v3, v1, v2, v0}, Landroidx/compose/ui/unit/IntRect;-><init>(IIII)V

    sget-object p0, Landroidx/compose/ui/unit/Constraints;->Companion:Landroidx/compose/ui/unit/Constraints$Companion;

    invoke-virtual {p3}, Landroidx/compose/ui/unit/IntRect;->getWidth()I

    move-result v0

    invoke-virtual {p3}, Landroidx/compose/ui/unit/IntRect;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v1}, Landroidx/compose/ui/unit/Constraints$Companion;->fixed-JhjzzOo(II)J

    move-result-wide v0

    invoke-interface {p2, v0, v1}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object p0

    iget p2, p0, Landroidx/compose/ui/layout/Placeable;->width:I

    iget v0, p0, Landroidx/compose/ui/layout/Placeable;->height:I

    sget-object v1, Lcom/android/systemui/keyguard/ui/composable/blueprint/BlueprintAlignmentLines$LockIcon;->INSTANCE:Lcom/android/systemui/keyguard/ui/composable/blueprint/BlueprintAlignmentLines$LockIcon;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/android/systemui/keyguard/ui/composable/blueprint/BlueprintAlignmentLines$LockIcon;->Left:Landroidx/compose/ui/layout/VerticalAlignmentLine;

    iget v2, p3, Landroidx/compose/ui/unit/IntRect;->left:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lkotlin/Pair;

    invoke-direct {v3, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v1, Lcom/android/systemui/keyguard/ui/composable/blueprint/BlueprintAlignmentLines$LockIcon;->Top:Landroidx/compose/ui/layout/HorizontalAlignmentLine;

    iget v2, p3, Landroidx/compose/ui/unit/IntRect;->top:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v4, Lkotlin/Pair;

    invoke-direct {v4, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v1, Lcom/android/systemui/keyguard/ui/composable/blueprint/BlueprintAlignmentLines$LockIcon;->Right:Landroidx/compose/ui/layout/VerticalAlignmentLine;

    iget v2, p3, Landroidx/compose/ui/unit/IntRect;->right:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v5, Lkotlin/Pair;

    invoke-direct {v5, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v1, Lcom/android/systemui/keyguard/ui/composable/blueprint/BlueprintAlignmentLines$LockIcon;->Bottom:Landroidx/compose/ui/layout/HorizontalAlignmentLine;

    iget p3, p3, Landroidx/compose/ui/unit/IntRect;->bottom:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    new-instance v2, Lkotlin/Pair;

    invoke-direct {v2, v1, p3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {v3, v4, v5, v2}, [Lkotlin/Pair;

    move-result-object p3

    invoke-static {p3}, Lkotlin/collections/MapsKt__MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p3

    new-instance v1, Lcom/android/systemui/keyguard/ui/composable/section/LockSection$LockIcon$4$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/keyguard/ui/composable/section/LockSection$LockIcon$4$1;-><init>(Landroidx/compose/ui/layout/Placeable;)V

    invoke-interface {p1, p2, v0, p3, v1}, Landroidx/compose/ui/layout/MeasureScope;->layout$1(IILjava/util/Map;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object p0

    return-object p0
.end method
