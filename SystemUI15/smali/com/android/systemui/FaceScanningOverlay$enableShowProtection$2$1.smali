.class public final Lcom/android/systemui/FaceScanningOverlay$enableShowProtection$2$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/FaceScanningOverlay;


# direct methods
.method public constructor <init>(Lcom/android/systemui/FaceScanningOverlay;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/FaceScanningOverlay$enableShowProtection$2$1;->this$0:Lcom/android/systemui/FaceScanningOverlay;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/FaceScanningOverlay$enableShowProtection$2$1;->this$0:Lcom/android/systemui/FaceScanningOverlay;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/systemui/FaceScanningOverlay;->rimAnimator:Landroid/animation/AnimatorSet;

    iget-boolean p1, p0, Lcom/android/systemui/FaceScanningOverlay;->showScanningAnim:Z

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_0
    return-void
.end method
