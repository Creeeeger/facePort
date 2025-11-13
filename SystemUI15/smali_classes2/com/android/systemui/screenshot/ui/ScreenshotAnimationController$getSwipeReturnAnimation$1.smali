.class public final Lcom/android/systemui/screenshot/ui/ScreenshotAnimationController$getSwipeReturnAnimation$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/screenshot/ui/ScreenshotAnimationController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/screenshot/ui/ScreenshotAnimationController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/screenshot/ui/ScreenshotAnimationController$getSwipeReturnAnimation$1;->this$0:Lcom/android/systemui/screenshot/ui/ScreenshotAnimationController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/screenshot/ui/ScreenshotAnimationController$getSwipeReturnAnimation$1;->this$0:Lcom/android/systemui/screenshot/ui/ScreenshotAnimationController;

    iget-object p0, p0, Lcom/android/systemui/screenshot/ui/ScreenshotAnimationController;->view:Lcom/android/systemui/screenshot/ui/ScreenshotShelfView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    return-void
.end method
