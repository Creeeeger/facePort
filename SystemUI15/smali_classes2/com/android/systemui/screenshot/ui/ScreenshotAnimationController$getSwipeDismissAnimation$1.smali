.class public final Lcom/android/systemui/screenshot/ui/ScreenshotAnimationController$getSwipeDismissAnimation$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/screenshot/ui/ScreenshotAnimationController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/screenshot/ui/ScreenshotAnimationController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/screenshot/ui/ScreenshotAnimationController$getSwipeDismissAnimation$1;->this$0:Lcom/android/systemui/screenshot/ui/ScreenshotAnimationController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/screenshot/ui/ScreenshotAnimationController$getSwipeDismissAnimation$1;->this$0:Lcom/android/systemui/screenshot/ui/ScreenshotAnimationController;

    iget-object v0, v0, Lcom/android/systemui/screenshot/ui/ScreenshotAnimationController;->view:Lcom/android/systemui/screenshot/ui/ScreenshotShelfView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    iget-object p0, p0, Lcom/android/systemui/screenshot/ui/ScreenshotAnimationController$getSwipeDismissAnimation$1;->this$0:Lcom/android/systemui/screenshot/ui/ScreenshotAnimationController;

    iget-object p0, p0, Lcom/android/systemui/screenshot/ui/ScreenshotAnimationController;->view:Lcom/android/systemui/screenshot/ui/ScreenshotShelfView;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    sub-float/2addr v0, p1

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    return-void
.end method
