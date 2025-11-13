.class public final Lcom/android/compose/animation/scene/transformation/ScaleSize;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/compose/animation/scene/transformation/PropertyTransformation;


# instance fields
.field public final height:F

.field public final matcher:Lcom/android/compose/animation/scene/ElementMatcher;

.field public final width:F


# direct methods
.method public constructor <init>(Lcom/android/compose/animation/scene/ElementMatcher;FF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/compose/animation/scene/transformation/ScaleSize;->matcher:Lcom/android/compose/animation/scene/ElementMatcher;

    iput p2, p0, Lcom/android/compose/animation/scene/transformation/ScaleSize;->width:F

    iput p3, p0, Lcom/android/compose/animation/scene/transformation/ScaleSize;->height:F

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/compose/animation/scene/ElementMatcher;FFILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p5, p4, 0x2

    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p5, :cond_0

    move p2, v0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    move p3, v0

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/compose/animation/scene/transformation/ScaleSize;-><init>(Lcom/android/compose/animation/scene/ElementMatcher;FF)V

    return-void
.end method


# virtual methods
.method public final getMatcher()Lcom/android/compose/animation/scene/ElementMatcher;
    .locals 0

    iget-object p0, p0, Lcom/android/compose/animation/scene/transformation/ScaleSize;->matcher:Lcom/android/compose/animation/scene/ElementMatcher;

    return-object p0
.end method

.method public final transform(Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl;Lcom/android/compose/animation/scene/SceneKey;Lcom/android/compose/animation/scene/Element;Lcom/android/compose/animation/scene/Element$SceneState;Lcom/android/compose/animation/scene/TransitionState$Transition;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p6, Landroidx/compose/ui/unit/IntSize;

    iget-wide p1, p6, Landroidx/compose/ui/unit/IntSize;->packedValue:J

    sget-object p3, Landroidx/compose/ui/unit/IntSize;->Companion:Landroidx/compose/ui/unit/IntSize$Companion;

    const/16 p3, 0x20

    shr-long p3, p1, p3

    long-to-int p3, p3

    int-to-float p3, p3

    iget p4, p0, Lcom/android/compose/animation/scene/transformation/ScaleSize;->width:F

    mul-float/2addr p3, p4

    invoke-static {p3}, Lkotlin/math/MathKt__MathJVMKt;->roundToInt(F)I

    move-result p3

    const-wide p4, 0xffffffffL

    and-long/2addr p1, p4

    long-to-int p1, p1

    int-to-float p1, p1

    iget p0, p0, Lcom/android/compose/animation/scene/transformation/ScaleSize;->height:F

    mul-float/2addr p1, p0

    invoke-static {p1}, Lkotlin/math/MathKt__MathJVMKt;->roundToInt(F)I

    move-result p0

    invoke-static {p3, p0}, Landroidx/compose/ui/unit/IntSizeKt;->IntSize(II)J

    move-result-wide p0

    invoke-static {p0, p1}, Landroidx/compose/ui/unit/IntSize;->box-impl(J)Landroidx/compose/ui/unit/IntSize;

    move-result-object p0

    return-object p0
.end method
