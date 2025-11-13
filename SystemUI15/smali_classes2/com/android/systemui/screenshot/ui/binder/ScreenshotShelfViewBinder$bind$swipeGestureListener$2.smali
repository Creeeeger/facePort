.class final Lcom/android/systemui/screenshot/ui/binder/ScreenshotShelfViewBinder$bind$swipeGestureListener$2;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0;"
    }
.end annotation


# instance fields
.field final synthetic $animationController:Lcom/android/systemui/screenshot/ui/ScreenshotAnimationController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/screenshot/ui/ScreenshotAnimationController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/screenshot/ui/binder/ScreenshotShelfViewBinder$bind$swipeGestureListener$2;->$animationController:Lcom/android/systemui/screenshot/ui/ScreenshotAnimationController;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    iget-object p0, p0, Lcom/android/systemui/screenshot/ui/binder/ScreenshotShelfViewBinder$bind$swipeGestureListener$2;->$animationController:Lcom/android/systemui/screenshot/ui/ScreenshotAnimationController;

    iget-object v0, p0, Lcom/android/systemui/screenshot/ui/ScreenshotAnimationController;->animator:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/screenshot/ui/ScreenshotAnimationController;->view:Lcom/android/systemui/screenshot/ui/ScreenshotShelfView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getTranslationX()F

    move-result v0

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput v0, v1, v2

    const/4 v0, 0x0

    const/4 v2, 0x1

    aput v0, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/screenshot/ui/ScreenshotAnimationController$getSwipeReturnAnimation$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/screenshot/ui/ScreenshotAnimationController$getSwipeReturnAnimation$1;-><init>(Lcom/android/systemui/screenshot/ui/ScreenshotAnimationController;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iput-object v0, p0, Lcom/android/systemui/screenshot/ui/ScreenshotAnimationController;->animator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
