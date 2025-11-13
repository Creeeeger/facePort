.class public final synthetic Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout;

.field public final synthetic f$1:I

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout;III)V
    .locals 0

    iput p4, p0, Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout;

    iput p2, p0, Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout$$ExternalSyntheticLambda0;->f$1:I

    iput p3, p0, Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout$$ExternalSyntheticLambda0;->f$2:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    iget v0, p0, Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout;

    iget v1, p0, Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout$$ExternalSyntheticLambda0;->f$1:I

    iget p0, p0, Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout$$ExternalSyntheticLambda0;->f$2:I

    iget-object v2, v0, Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout;->mAnimationView:Lcom/android/systemui/screenshot/sep/widget/CaptureEffectView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v2, p1, v1, p0}, Lcom/android/systemui/screenshot/sep/widget/CaptureEffectView;->setEffectParams(III)V

    iget-object p0, v0, Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout;->mAnimationView:Lcom/android/systemui/screenshot/sep/widget/CaptureEffectView;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout;

    iget v1, p0, Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout$$ExternalSyntheticLambda0;->f$1:I

    iget p0, p0, Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout$$ExternalSyntheticLambda0;->f$2:I

    iget-object v2, v0, Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout;->mAnimationView:Lcom/android/systemui/screenshot/sep/widget/CaptureEffectView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v2, p1, v1, p0}, Lcom/android/systemui/screenshot/sep/widget/CaptureEffectView;->setEffectParams(III)V

    iget-object p0, v0, Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout;->mAnimationView:Lcom/android/systemui/screenshot/sep/widget/CaptureEffectView;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
