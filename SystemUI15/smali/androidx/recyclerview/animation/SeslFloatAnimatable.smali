.class public final Landroidx/recyclerview/animation/SeslFloatAnimatable;
.super Landroidx/recyclerview/animation/SeslAnimatable;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final onValueUpdated:Lkotlin/jvm/functions/Function1;


# direct methods
.method public constructor <init>(FLandroidx/recyclerview/animation/SeslAnimatable$AnimationSpec;Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F",
            "Landroidx/recyclerview/animation/SeslAnimatable$AnimationSpec;",
            "Lkotlin/jvm/functions/Function1;",
            ")V"
        }
    .end annotation

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/animation/SeslAnimatable;-><init>(Ljava/lang/Object;Landroidx/recyclerview/animation/SeslAnimatable$AnimationSpec;)V

    iput-object p3, p0, Landroidx/recyclerview/animation/SeslFloatAnimatable;->onValueUpdated:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final animateTo(Ljava/lang/Object;Landroidx/recyclerview/animation/SeslAnimatable$AnimationSpec;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4

    const/4 v0, 0x1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    new-instance v1, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static {p3}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsJvmKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p3

    invoke-direct {v1, p3, v0}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;I)V

    invoke-virtual {v1}, Lkotlinx/coroutines/CancellableContinuationImpl;->initCancellability()V

    new-instance p3, Landroidx/recyclerview/animation/SeslFloatAnimatable$animateTo$2$1;

    invoke-direct {p3, p0}, Landroidx/recyclerview/animation/SeslFloatAnimatable$animateTo$2$1;-><init>(Landroidx/recyclerview/animation/SeslFloatAnimatable;)V

    invoke-virtual {v1, p3}, Lkotlinx/coroutines/CancellableContinuationImpl;->invokeOnCancellation(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p0}, Landroidx/recyclerview/animation/SeslAnimatable;->dispose()V

    invoke-virtual {p0}, Landroidx/recyclerview/animation/SeslAnimatable;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->floatValue()F

    move-result p3

    cmpg-float p3, p3, p1

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/animation/SeslAnimatable;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->floatValue()F

    move-result p3

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput p3, v2, v3

    aput p1, v2, v0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    check-cast p2, Landroidx/recyclerview/animation/SeslAnimatable$SimpleAnimationSpec;

    iget-wide v2, p2, Landroidx/recyclerview/animation/SeslAnimatable$SimpleAnimationSpec;->duration:J

    invoke-virtual {p1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p2, p2, Landroidx/recyclerview/animation/SeslAnimatable$SimpleAnimationSpec;->interpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance p2, Landroidx/recyclerview/animation/SeslFloatAnimatable$animateTo$2$2$1;

    invoke-direct {p2, p0}, Landroidx/recyclerview/animation/SeslFloatAnimatable$animateTo$2$2$1;-><init>(Landroidx/recyclerview/animation/SeslFloatAnimatable;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance p2, Landroidx/recyclerview/animation/SeslFloatAnimatable$animateTo$lambda$2$lambda$1$$inlined$doOnEnd$1;

    invoke-direct {p2, v1, p0}, Landroidx/recyclerview/animation/SeslFloatAnimatable$animateTo$lambda$2$lambda$1$$inlined$doOnEnd$1;-><init>(Lkotlinx/coroutines/CancellableContinuation;Landroidx/recyclerview/animation/SeslFloatAnimatable;)V

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iput-object p1, p0, Landroidx/recyclerview/animation/SeslAnimatable;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :goto_0
    invoke-virtual {v1}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    if-ne p0, p1, :cond_1

    goto :goto_1

    :cond_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_1
    return-object p0
.end method
