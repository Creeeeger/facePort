.class public final Lcom/android/systemui/animation/back/BottomsheetBackAnimationSpecKt$createBottomsheetAnimationSpec$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/animation/back/BackAnimationSpec;


# instance fields
.field public final synthetic $displayMetricsProvider:Lkotlin/jvm/functions/Function0;

.field public final synthetic $scaleEasing:Landroid/view/animation/Interpolator;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function0;Landroid/view/animation/Interpolator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0;",
            "Landroid/view/animation/Interpolator;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/animation/back/BottomsheetBackAnimationSpecKt$createBottomsheetAnimationSpec$1;->$displayMetricsProvider:Lkotlin/jvm/functions/Function0;

    iput-object p2, p0, Lcom/android/systemui/animation/back/BottomsheetBackAnimationSpecKt$createBottomsheetAnimationSpec$1;->$scaleEasing:Landroid/view/animation/Interpolator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getBackTransformation(Landroid/window/BackEvent;FLcom/android/systemui/animation/back/BackTransformation;)V
    .locals 3

    iget-object p2, p0, Lcom/android/systemui/animation/back/BottomsheetBackAnimationSpecKt$createBottomsheetAnimationSpec$1;->$displayMetricsProvider:Lkotlin/jvm/functions/Function0;

    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/util/DisplayMetrics;

    iget v0, p2, Landroid/util/DisplayMetrics;->widthPixels:I

    const/4 v1, 0x1

    int-to-float v1, v1

    const/16 v2, 0x30

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2, p2}, Lcom/android/systemui/util/DimensionKt;->dpToPx(Ljava/lang/Number;Landroid/util/DisplayMetrics;)F

    move-result p2

    int-to-float v0, v0

    div-float/2addr p2, v0

    sub-float/2addr v1, p2

    invoke-virtual {p1}, Landroid/window/BackEvent;->getProgress()F

    move-result p1

    iget-object p0, p0, Lcom/android/systemui/animation/back/BottomsheetBackAnimationSpecKt$createBottomsheetAnimationSpec$1;->$scaleEasing:Landroid/view/animation/Interpolator;

    invoke-interface {p0, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p0

    const/high16 p1, 0x3f800000    # 1.0f

    sub-float p2, p1, v1

    mul-float/2addr p2, p0

    sub-float/2addr p1, p2

    iput p1, p3, Lcom/android/systemui/animation/back/BackTransformation;->scale:F

    sget-object p0, Lcom/android/systemui/animation/back/ScalePivotPosition;->BOTTOM_CENTER:Lcom/android/systemui/animation/back/ScalePivotPosition;

    iput-object p0, p3, Lcom/android/systemui/animation/back/BackTransformation;->scalePivotPosition:Lcom/android/systemui/animation/back/ScalePivotPosition;

    return-void
.end method
