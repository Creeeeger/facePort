.class public final Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$SinYEvaluator;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/animation/TypeEvaluator;


# instance fields
.field public final adjust:F

.field public final key:F

.field public final pX:F

.field public final pY:F


# direct methods
.method public constructor <init>(FFFF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$SinYEvaluator;->key:F

    iput p2, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$SinYEvaluator;->adjust:F

    iput p3, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$SinYEvaluator;->pX:F

    iput p4, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$SinYEvaluator;->pY:F

    return-void
.end method


# virtual methods
.method public final evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result p2

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->floatValue()F

    move-result p3

    sub-float/2addr p3, p2

    mul-float/2addr p3, p1

    add-float/2addr p3, p2

    iget p1, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$SinYEvaluator;->pX:F

    add-float/2addr p3, p1

    iget p1, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$SinYEvaluator;->key:F

    iget p2, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$SinYEvaluator;->adjust:F

    float-to-double v0, p2

    float-to-double p2, p3

    mul-double/2addr v0, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide p2

    double-to-float p2, p2

    mul-float/2addr p1, p2

    iget p0, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$SinYEvaluator;->pY:F

    add-float/2addr p1, p0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method
