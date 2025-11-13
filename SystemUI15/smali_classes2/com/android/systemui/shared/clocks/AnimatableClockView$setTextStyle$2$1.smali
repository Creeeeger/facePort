.class final Lcom/android/systemui/shared/clocks/AnimatableClockView$setTextStyle$2$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1;"
    }
.end annotation


# instance fields
.field final synthetic $color:Ljava/lang/Integer;

.field final synthetic $delay:J

.field final synthetic $duration:J

.field final synthetic $interpolator:Landroid/animation/TimeInterpolator;

.field final synthetic $onAnimationEnd:Ljava/lang/Runnable;

.field final synthetic $this_run:Lcom/android/systemui/shared/clocks/AnimatableClockView;

.field final synthetic $weight:I


# direct methods
.method public constructor <init>(ILjava/lang/Integer;JLandroid/animation/TimeInterpolator;JLjava/lang/Runnable;Lcom/android/systemui/shared/clocks/AnimatableClockView;)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/shared/clocks/AnimatableClockView$setTextStyle$2$1;->$weight:I

    iput-object p2, p0, Lcom/android/systemui/shared/clocks/AnimatableClockView$setTextStyle$2$1;->$color:Ljava/lang/Integer;

    iput-wide p3, p0, Lcom/android/systemui/shared/clocks/AnimatableClockView$setTextStyle$2$1;->$duration:J

    iput-object p5, p0, Lcom/android/systemui/shared/clocks/AnimatableClockView$setTextStyle$2$1;->$interpolator:Landroid/animation/TimeInterpolator;

    iput-wide p6, p0, Lcom/android/systemui/shared/clocks/AnimatableClockView$setTextStyle$2$1;->$delay:J

    iput-object p8, p0, Lcom/android/systemui/shared/clocks/AnimatableClockView$setTextStyle$2$1;->$onAnimationEnd:Ljava/lang/Runnable;

    iput-object p9, p0, Lcom/android/systemui/shared/clocks/AnimatableClockView$setTextStyle$2$1;->$this_run:Lcom/android/systemui/shared/clocks/AnimatableClockView;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    check-cast p1, Lcom/android/systemui/animation/TextAnimator;

    iget v1, p0, Lcom/android/systemui/shared/clocks/AnimatableClockView$setTextStyle$2$1;->$weight:I

    iget-object v2, p0, Lcom/android/systemui/shared/clocks/AnimatableClockView$setTextStyle$2$1;->$color:Ljava/lang/Integer;

    iget-wide v4, p0, Lcom/android/systemui/shared/clocks/AnimatableClockView$setTextStyle$2$1;->$duration:J

    iget-object v6, p0, Lcom/android/systemui/shared/clocks/AnimatableClockView$setTextStyle$2$1;->$interpolator:Landroid/animation/TimeInterpolator;

    iget-wide v7, p0, Lcom/android/systemui/shared/clocks/AnimatableClockView$setTextStyle$2$1;->$delay:J

    iget-object v9, p0, Lcom/android/systemui/shared/clocks/AnimatableClockView$setTextStyle$2$1;->$onAnimationEnd:Ljava/lang/Runnable;

    const/4 v3, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v9}, Lcom/android/systemui/animation/TextAnimator;->setTextStyle$default(Lcom/android/systemui/animation/TextAnimator;ILjava/lang/Integer;ZJLandroid/animation/TimeInterpolator;JLjava/lang/Runnable;)V

    iget-object p0, p0, Lcom/android/systemui/shared/clocks/AnimatableClockView$setTextStyle$2$1;->$this_run:Lcom/android/systemui/shared/clocks/AnimatableClockView;

    iget-object p0, p0, Lcom/android/systemui/shared/clocks/AnimatableClockView;->glyphFilter:Lkotlin/jvm/functions/Function2;

    iget-object p1, p1, Lcom/android/systemui/animation/TextAnimator;->textInterpolator:Lcom/android/systemui/animation/TextInterpolator;

    iput-object p0, p1, Lcom/android/systemui/animation/TextInterpolator;->glyphFilter:Lkotlin/jvm/functions/Function2;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
