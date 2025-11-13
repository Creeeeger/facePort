.class final Lcom/android/systemui/animation/FontInterpolator$lerp$newAxes$1;
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
.field final synthetic $progress:F

.field final synthetic this$0:Lcom/android/systemui/animation/FontInterpolator;


# direct methods
.method public constructor <init>(FLcom/android/systemui/animation/FontInterpolator;)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/animation/FontInterpolator$lerp$newAxes$1;->$progress:F

    iput-object p2, p0, Lcom/android/systemui/animation/FontInterpolator$lerp$newAxes$1;->this$0:Lcom/android/systemui/animation/FontInterpolator;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/Float;

    check-cast p3, Ljava/lang/Float;

    const-string/jumbo v0, "wght"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/high16 p1, 0x43c80000    # 400.0f

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    goto :goto_0

    :cond_0
    move p2, p1

    :goto_0
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p1

    :cond_1
    iget p0, p0, Lcom/android/systemui/animation/FontInterpolator$lerp$newAxes$1;->$progress:F

    invoke-static {p2, p1, p0}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result p0

    goto :goto_3

    :cond_2
    const-string v0, "ital"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object p1, p0, Lcom/android/systemui/animation/FontInterpolator$lerp$newAxes$1;->this$0:Lcom/android/systemui/animation/FontInterpolator;

    const/4 v0, 0x0

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    goto :goto_1

    :cond_3
    move p2, v0

    :goto_1
    if-eqz p3, :cond_4

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p3

    goto :goto_2

    :cond_4
    move p3, v0

    :goto_2
    iget p0, p0, Lcom/android/systemui/animation/FontInterpolator$lerp$newAxes$1;->$progress:F

    invoke-static {p2, p3, p0}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result p0

    sget-object p2, Lcom/android/systemui/animation/FontInterpolator;->Companion:Lcom/android/systemui/animation/FontInterpolator$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-static {p0, v0, p1}, Lkotlin/ranges/RangesKt___RangesKt;->coerceIn(FFF)F

    move-result p0

    const p1, 0x3dcccccd    # 0.1f

    div-float/2addr p0, p1

    float-to-int p0, p0

    int-to-float p0, p0

    mul-float/2addr p0, p1

    goto :goto_3

    :cond_5
    if-eqz p2, :cond_6

    if-eqz p3, :cond_6

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p2

    iget p0, p0, Lcom/android/systemui/animation/FontInterpolator$lerp$newAxes$1;->$progress:F

    invoke-static {p1, p2, p0}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result p0

    :goto_3
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    :cond_6
    const-string p0, "Unable to interpolate due to unknown default axes value : "

    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
