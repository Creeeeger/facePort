.class public final Lcom/android/systemui/media/audiovisseekbar/utils/animator/SingleStateValueAnimator;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final animator:Landroid/animation/ValueAnimator;

.field public final callback:Lkotlin/jvm/functions/Function1;

.field public goal:F

.field public listening:Z

.field public value:F


# direct methods
.method public constructor <init>()V
    .locals 8

    const/16 v6, 0xf

    const/4 v7, 0x0

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/media/audiovisseekbar/utils/animator/SingleStateValueAnimator;-><init>(FJLandroid/view/animation/Interpolator;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(FJLandroid/view/animation/Interpolator;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FJ",
            "Landroid/view/animation/Interpolator;",
            "Lkotlin/jvm/functions/Function1;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p5, p0, Lcom/android/systemui/media/audiovisseekbar/utils/animator/SingleStateValueAnimator;->callback:Lkotlin/jvm/functions/Function1;

    iput p1, p0, Lcom/android/systemui/media/audiovisseekbar/utils/animator/SingleStateValueAnimator;->value:F

    iput p1, p0, Lcom/android/systemui/media/audiovisseekbar/utils/animator/SingleStateValueAnimator;->goal:F

    const/4 p5, 0x2

    new-array p5, p5, [F

    const/4 v0, 0x0

    aput p1, p5, v0

    const/4 v0, 0x1

    aput p1, p5, v0

    invoke-static {p5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {p1, p4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance p2, Lcom/android/systemui/media/audiovisseekbar/utils/animator/SingleStateValueAnimator$animator$1$1;

    invoke-direct {p2, p0}, Lcom/android/systemui/media/audiovisseekbar/utils/animator/SingleStateValueAnimator$animator$1$1;-><init>(Lcom/android/systemui/media/audiovisseekbar/utils/animator/SingleStateValueAnimator;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iput-object p1, p0, Lcom/android/systemui/media/audiovisseekbar/utils/animator/SingleStateValueAnimator;->animator:Landroid/animation/ValueAnimator;

    return-void
.end method

.method public synthetic constructor <init>(FJLandroid/view/animation/Interpolator;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 3

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    const-wide/16 p2, 0x190

    :cond_1
    move-wide v0, p2

    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_2

    new-instance p4, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p4}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    :cond_2
    move-object p7, p4

    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_3

    const/4 p5, 0x0

    :cond_3
    move-object v2, p5

    move-object p2, p0

    move p3, p1

    move-wide p4, v0

    move-object p6, p7

    move-object p7, v2

    invoke-direct/range {p2 .. p7}, Lcom/android/systemui/media/audiovisseekbar/utils/animator/SingleStateValueAnimator;-><init>(FJLandroid/view/animation/Interpolator;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method


# virtual methods
.method public final animateTo(F)V
    .locals 4

    iget v0, p0, Lcom/android/systemui/media/audiovisseekbar/utils/animator/SingleStateValueAnimator;->goal:F

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x3dcccccd    # 0.1f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/android/systemui/media/audiovisseekbar/utils/animator/SingleStateValueAnimator;->goal:F

    iget-object v0, p0, Lcom/android/systemui/media/audiovisseekbar/utils/animator/SingleStateValueAnimator;->animator:Landroid/animation/ValueAnimator;

    iget v1, p0, Lcom/android/systemui/media/audiovisseekbar/utils/animator/SingleStateValueAnimator;->value:F

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v1, v2, v3

    const/4 v1, 0x1

    aput p1, v2, v1

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    iget-boolean v0, p0, Lcom/android/systemui/media/audiovisseekbar/utils/animator/SingleStateValueAnimator;->listening:Z

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/media/audiovisseekbar/utils/animator/SingleStateValueAnimator;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    :cond_1
    iput p1, p0, Lcom/android/systemui/media/audiovisseekbar/utils/animator/SingleStateValueAnimator;->value:F

    :goto_0
    return-void
.end method
