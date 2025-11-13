.class public final Lcom/android/systemui/util/AnimatorExtensionsKt$doOnEnd$$inlined$addListener$default$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroidx/core/animation/Animator$AnimatorListener;


# instance fields
.field final synthetic $onEnd:Lkotlin/jvm/functions/Function1;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/util/AnimatorExtensionsKt$doOnEnd$$inlined$addListener$default$1;->$onEnd:Lkotlin/jvm/functions/Function1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroidx/core/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroidx/core/animation/Animator;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/AnimatorExtensionsKt$doOnEnd$$inlined$addListener$default$1;->$onEnd:Lkotlin/jvm/functions/Function1;

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onAnimationEnd(Landroidx/core/animation/Animator;Z)V
    .locals 0

    invoke-interface {p0, p1}, Landroidx/core/animation/Animator$AnimatorListener;->onAnimationEnd(Landroidx/core/animation/Animator;)V

    return-void
.end method

.method public onAnimationRepeat(Landroidx/core/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroidx/core/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroidx/core/animation/Animator;Z)V
    .locals 0

    invoke-interface {p0, p1}, Landroidx/core/animation/Animator$AnimatorListener;->onAnimationStart(Landroidx/core/animation/Animator;)V

    return-void
.end method
