.class final Lcom/android/systemui/media/controls/ui/drawable/SquigglyProgress$drawTraced$computeAmplitude$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2;"
    }
.end annotation


# instance fields
.field final synthetic $waveProgressPx:F

.field final synthetic this$0:Lcom/android/systemui/media/controls/ui/drawable/SquigglyProgress;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/controls/ui/drawable/SquigglyProgress;F)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/controls/ui/drawable/SquigglyProgress$drawTraced$computeAmplitude$1;->this$0:Lcom/android/systemui/media/controls/ui/drawable/SquigglyProgress;

    iput p2, p0, Lcom/android/systemui/media/controls/ui/drawable/SquigglyProgress$drawTraced$computeAmplitude$1;->$waveProgressPx:F

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result p2

    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/drawable/SquigglyProgress$drawTraced$computeAmplitude$1;->this$0:Lcom/android/systemui/media/controls/ui/drawable/SquigglyProgress;

    iget-boolean v1, v0, Lcom/android/systemui/media/controls/ui/drawable/SquigglyProgress;->transitionEnabled:Z

    if-eqz v1, :cond_0

    iget v1, v0, Lcom/android/systemui/media/controls/ui/drawable/SquigglyProgress;->transitionPeriods:F

    iget v0, v0, Lcom/android/systemui/media/controls/ui/drawable/SquigglyProgress;->waveLength:F

    mul-float/2addr v1, v0

    iget v0, p0, Lcom/android/systemui/media/controls/ui/drawable/SquigglyProgress$drawTraced$computeAmplitude$1;->$waveProgressPx:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float v2, v0, v1

    sub-float/2addr v0, v1

    invoke-static {v2, v0, p1}, Landroid/util/MathUtils;->lerpInvSat(FFF)F

    move-result p1

    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/drawable/SquigglyProgress$drawTraced$computeAmplitude$1;->this$0:Lcom/android/systemui/media/controls/ui/drawable/SquigglyProgress;

    iget v0, p0, Lcom/android/systemui/media/controls/ui/drawable/SquigglyProgress;->heightFraction:F

    mul-float/2addr p2, v0

    iget p0, p0, Lcom/android/systemui/media/controls/ui/drawable/SquigglyProgress;->lineAmplitude:F

    mul-float/2addr p2, p0

    mul-float/2addr p2, p1

    goto :goto_0

    :cond_0
    iget p0, v0, Lcom/android/systemui/media/controls/ui/drawable/SquigglyProgress;->heightFraction:F

    mul-float/2addr p2, p0

    iget p0, v0, Lcom/android/systemui/media/controls/ui/drawable/SquigglyProgress;->lineAmplitude:F

    mul-float/2addr p2, p0

    :goto_0
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method
