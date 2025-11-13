.class public final Landroidx/recyclerview/animation/SeslColorAnimatable;
.super Landroidx/recyclerview/animation/SeslAnimatable;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final onValueUpdated:Lkotlin/jvm/functions/Function1;


# direct methods
.method public constructor <init>(ILandroidx/recyclerview/animation/SeslAnimatable$AnimationSpec;Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroidx/recyclerview/animation/SeslAnimatable$AnimationSpec;",
            "Lkotlin/jvm/functions/Function1;",
            ")V"
        }
    .end annotation

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/animation/SeslAnimatable;-><init>(Ljava/lang/Object;Landroidx/recyclerview/animation/SeslAnimatable$AnimationSpec;)V

    iput-object p3, p0, Landroidx/recyclerview/animation/SeslColorAnimatable;->onValueUpdated:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final animateTo(Ljava/lang/Object;Landroidx/recyclerview/animation/SeslAnimatable$AnimationSpec;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    new-instance v0, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static {p3}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsJvmKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p3

    const/4 v1, 0x1

    invoke-direct {v0, p3, v1}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;I)V

    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->initCancellability()V

    new-instance p3, Landroidx/recyclerview/animation/SeslColorAnimatable$animateTo$2$1;

    invoke-direct {p3, p0}, Landroidx/recyclerview/animation/SeslColorAnimatable$animateTo$2$1;-><init>(Landroidx/recyclerview/animation/SeslColorAnimatable;)V

    invoke-virtual {v0, p3}, Lkotlinx/coroutines/CancellableContinuationImpl;->invokeOnCancellation(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p0}, Landroidx/recyclerview/animation/SeslAnimatable;->dispose()V

    invoke-virtual {p0}, Landroidx/recyclerview/animation/SeslAnimatable;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p3

    if-eq p3, p1, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/animation/SeslAnimatable;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p3

    filled-new-array {p3, p1}, [I

    move-result-object p1

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofArgb([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    check-cast p2, Landroidx/recyclerview/animation/SeslAnimatable$SimpleAnimationSpec;

    iget-wide v1, p2, Landroidx/recyclerview/animation/SeslAnimatable$SimpleAnimationSpec;->duration:J

    invoke-virtual {p1, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p2, p2, Landroidx/recyclerview/animation/SeslAnimatable$SimpleAnimationSpec;->interpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance p2, Landroidx/recyclerview/animation/SeslColorAnimatable$animateTo$2$2$1;

    invoke-direct {p2, p0}, Landroidx/recyclerview/animation/SeslColorAnimatable$animateTo$2$2$1;-><init>(Landroidx/recyclerview/animation/SeslColorAnimatable;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance p2, Landroidx/recyclerview/animation/SeslColorAnimatable$animateTo$lambda$2$lambda$1$$inlined$doOnEnd$1;

    invoke-direct {p2, v0, p0}, Landroidx/recyclerview/animation/SeslColorAnimatable$animateTo$lambda$2$lambda$1$$inlined$doOnEnd$1;-><init>(Lkotlinx/coroutines/CancellableContinuation;Landroidx/recyclerview/animation/SeslColorAnimatable;)V

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iput-object p1, p0, Landroidx/recyclerview/animation/SeslAnimatable;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :cond_0
    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    if-ne p0, p1, :cond_1

    goto :goto_0

    :cond_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_0
    return-object p0
.end method
