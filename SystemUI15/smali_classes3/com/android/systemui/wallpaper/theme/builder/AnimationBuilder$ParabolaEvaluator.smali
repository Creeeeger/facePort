.class public final Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$ParabolaEvaluator;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/animation/TypeEvaluator;


# instance fields
.field public final key:F

.field public final pX:F

.field public final pY:F


# direct methods
.method public constructor <init>(FFF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$ParabolaEvaluator;->key:F

    iput p2, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$ParabolaEvaluator;->pX:F

    iput p3, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$ParabolaEvaluator;->pY:F

    return-void
.end method


# virtual methods
.method public final evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result p2

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->floatValue()F

    move-result p3

    sub-float/2addr p3, p2

    mul-float/2addr p3, p1

    add-float/2addr p3, p2

    iget p1, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$ParabolaEvaluator;->pX:F

    add-float/2addr p3, p1

    iget p1, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$ParabolaEvaluator;->key:F

    mul-float/2addr p1, p3

    mul-float/2addr p1, p3

    iget p0, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$ParabolaEvaluator;->pY:F

    add-float/2addr p1, p0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method
