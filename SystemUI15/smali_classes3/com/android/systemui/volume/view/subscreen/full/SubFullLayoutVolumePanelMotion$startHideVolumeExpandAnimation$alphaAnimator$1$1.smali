.class public final Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion$startHideVolumeExpandAnimation$alphaAnimator$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic $blurRunnable:Ljava/lang/Runnable;

.field public final synthetic $volumePanelExpandView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion$startHideVolumeExpandAnimation$alphaAnimator$1$1;->$volumePanelExpandView:Landroid/view/View;

    iput-object p2, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion$startHideVolumeExpandAnimation$alphaAnimator$1$1;->$blurRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object p1, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion$startHideVolumeExpandAnimation$alphaAnimator$1$1;->$volumePanelExpandView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result p1

    const v0, 0x3ecccccd    # 0.4f

    cmpg-float p1, p1, v0

    if-gez p1, :cond_0

    sget-boolean p1, Lcom/android/systemui/BasicRune;->VOLUME_PARTIAL_BLUR:Z

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion$startHideVolumeExpandAnimation$alphaAnimator$1$1;->$blurRunnable:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method
