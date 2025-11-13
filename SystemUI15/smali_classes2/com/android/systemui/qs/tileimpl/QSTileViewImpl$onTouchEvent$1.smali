.class public final Lcom/android/systemui/qs/tileimpl/QSTileViewImpl$onTouchEvent$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl$onTouchEvent$1;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl$onTouchEvent$1;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->longPressEffect:Lcom/android/systemui/haptics/qs/QSLongPressEffect;

    iget-object v0, p0, Lcom/android/systemui/haptics/qs/QSLongPressEffect;->state:Lcom/android/systemui/haptics/qs/QSLongPressEffect$State;

    sget-object v1, Lcom/android/systemui/haptics/qs/QSLongPressEffect$State;->TIMEOUT_WAIT:Lcom/android/systemui/haptics/qs/QSLongPressEffect$State;

    if-ne v0, v1, :cond_2

    iget-object p0, p0, Lcom/android/systemui/haptics/qs/QSLongPressEffect;->callback:Lcom/android/systemui/qs/tileimpl/QSTileViewImpl$initLongPressEffectCallback$1;

    if-eqz p0, :cond_2

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl$initLongPressEffectCallback$1;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->longPressEffectAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->longPressEffect:Lcom/android/systemui/haptics/qs/QSLongPressEffect;

    if-eqz v1, :cond_1

    iget v1, v1, Lcom/android/systemui/haptics/qs/QSLongPressEffect;->effectDuration:I

    int-to-long v1, v1

    goto :goto_0

    :cond_1
    const-wide/16 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v1, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl$initLongPressEffectCallback$1$onStartAnimator$lambda$3$$inlined$doOnStart$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl$initLongPressEffectCallback$1$onStartAnimator$lambda$3$$inlined$doOnStart$1;-><init>(Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v1, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl$initLongPressEffectCallback$1$onStartAnimator$1$2;

    invoke-direct {v1, v0, p0}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl$initLongPressEffectCallback$1$onStartAnimator$1$2;-><init>(Landroid/animation/ValueAnimator;Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v1, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl$initLongPressEffectCallback$1$onStartAnimator$lambda$3$$inlined$doOnEnd$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl$initLongPressEffectCallback$1$onStartAnimator$lambda$3$$inlined$doOnEnd$1;-><init>(Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v1, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl$initLongPressEffectCallback$1$onStartAnimator$lambda$3$$inlined$doOnCancel$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl$initLongPressEffectCallback$1$onStartAnimator$lambda$3$$inlined$doOnCancel$1;-><init>(Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    iput-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->longPressEffectAnimator:Landroid/animation/ValueAnimator;

    :cond_2
    :goto_1
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
