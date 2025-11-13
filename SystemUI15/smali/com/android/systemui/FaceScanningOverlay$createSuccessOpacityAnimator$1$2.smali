.class public final Lcom/android/systemui/FaceScanningOverlay$createSuccessOpacityAnimator$1$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/FaceScanningOverlay;


# direct methods
.method public constructor <init>(Lcom/android/systemui/FaceScanningOverlay;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/FaceScanningOverlay$createSuccessOpacityAnimator$1$2;->this$0:Lcom/android/systemui/FaceScanningOverlay;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/android/systemui/FaceScanningOverlay$createSuccessOpacityAnimator$1$2;->this$0:Lcom/android/systemui/FaceScanningOverlay;

    iget-object p1, p1, Lcom/android/systemui/FaceScanningOverlay;->rimPaint:Landroid/graphics/Paint;

    const/16 v0, 0xff

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object p0, p0, Lcom/android/systemui/FaceScanningOverlay$createSuccessOpacityAnimator$1$2;->this$0:Lcom/android/systemui/FaceScanningOverlay;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
