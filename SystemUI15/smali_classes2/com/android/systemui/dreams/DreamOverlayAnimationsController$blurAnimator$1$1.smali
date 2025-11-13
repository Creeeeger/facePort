.class public final Lcom/android/systemui/dreams/DreamOverlayAnimationsController$blurAnimator$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic $view:Landroid/view/View;

.field public final synthetic this$0:Lcom/android/systemui/dreams/DreamOverlayAnimationsController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/dreams/DreamOverlayAnimationsController;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/dreams/DreamOverlayAnimationsController$blurAnimator$1$1;->this$0:Lcom/android/systemui/dreams/DreamOverlayAnimationsController;

    iput-object p2, p0, Lcom/android/systemui/dreams/DreamOverlayAnimationsController$blurAnimator$1$1;->$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/dreams/DreamOverlayAnimationsController$blurAnimator$1$1;->this$0:Lcom/android/systemui/dreams/DreamOverlayAnimationsController;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, v0, Lcom/android/systemui/dreams/DreamOverlayAnimationsController;->mCurrentBlurRadius:F

    iget-object p1, p0, Lcom/android/systemui/dreams/DreamOverlayAnimationsController$blurAnimator$1$1;->this$0:Lcom/android/systemui/dreams/DreamOverlayAnimationsController;

    iget-object p1, p1, Lcom/android/systemui/dreams/DreamOverlayAnimationsController;->mBlurUtils:Lcom/android/systemui/statusbar/BlurUtils;

    iget-object v0, p0, Lcom/android/systemui/dreams/DreamOverlayAnimationsController$blurAnimator$1$1;->$view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/dreams/DreamOverlayAnimationsController$blurAnimator$1$1;->this$0:Lcom/android/systemui/dreams/DreamOverlayAnimationsController;

    iget p0, p0, Lcom/android/systemui/dreams/DreamOverlayAnimationsController;->mCurrentBlurRadius:F

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/SurfaceControl;->isValid()Z

    :cond_0
    return-void
.end method
