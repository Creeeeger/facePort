.class public final Lcom/android/systemui/util/AnimatorExtensionsKt;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public static final addListener(Landroidx/core/animation/Animator;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Landroidx/core/animation/Animator$AnimatorListener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/core/animation/Animator;",
            "Lkotlin/jvm/functions/Function1;",
            "Lkotlin/jvm/functions/Function1;",
            "Lkotlin/jvm/functions/Function1;",
            "Lkotlin/jvm/functions/Function1;",
            ")",
            "Landroidx/core/animation/Animator$AnimatorListener;"
        }
    .end annotation

    new-instance v0, Lcom/android/systemui/util/AnimatorExtensionsKt$addListener$listener$1;

    invoke-direct {v0, p4, p1, p3, p2}, Lcom/android/systemui/util/AnimatorExtensionsKt$addListener$listener$1;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p0, v0}, Landroidx/core/animation/Animator;->addListener(Landroidx/core/animation/Animator$AnimatorListener;)V

    return-object v0
.end method

.method public static synthetic addListener$default(Landroidx/core/animation/Animator;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/core/animation/Animator$AnimatorListener;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    sget-object p1, Lcom/android/systemui/util/AnimatorExtensionsKt$addListener$1;->INSTANCE:Lcom/android/systemui/util/AnimatorExtensionsKt$addListener$1;

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    sget-object p2, Lcom/android/systemui/util/AnimatorExtensionsKt$addListener$2;->INSTANCE:Lcom/android/systemui/util/AnimatorExtensionsKt$addListener$2;

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    sget-object p3, Lcom/android/systemui/util/AnimatorExtensionsKt$addListener$3;->INSTANCE:Lcom/android/systemui/util/AnimatorExtensionsKt$addListener$3;

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    sget-object p4, Lcom/android/systemui/util/AnimatorExtensionsKt$addListener$4;->INSTANCE:Lcom/android/systemui/util/AnimatorExtensionsKt$addListener$4;

    :cond_3
    new-instance p5, Lcom/android/systemui/util/AnimatorExtensionsKt$addListener$listener$1;

    invoke-direct {p5, p4, p1, p3, p2}, Lcom/android/systemui/util/AnimatorExtensionsKt$addListener$listener$1;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p0, p5}, Landroidx/core/animation/Animator;->addListener(Landroidx/core/animation/Animator$AnimatorListener;)V

    return-object p5
.end method

.method public static final doOnCancel(Landroidx/core/animation/Animator;Lkotlin/jvm/functions/Function1;)Landroidx/core/animation/Animator$AnimatorListener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/core/animation/Animator;",
            "Lkotlin/jvm/functions/Function1;",
            ")",
            "Landroidx/core/animation/Animator$AnimatorListener;"
        }
    .end annotation

    new-instance v0, Lcom/android/systemui/util/AnimatorExtensionsKt$doOnCancel$$inlined$addListener$default$1;

    invoke-direct {v0, p1}, Lcom/android/systemui/util/AnimatorExtensionsKt$doOnCancel$$inlined$addListener$default$1;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p0, v0}, Landroidx/core/animation/Animator;->addListener(Landroidx/core/animation/Animator$AnimatorListener;)V

    return-object v0
.end method

.method public static final doOnEnd(Landroidx/core/animation/Animator;Lkotlin/jvm/functions/Function1;)Landroidx/core/animation/Animator$AnimatorListener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/core/animation/Animator;",
            "Lkotlin/jvm/functions/Function1;",
            ")",
            "Landroidx/core/animation/Animator$AnimatorListener;"
        }
    .end annotation

    new-instance v0, Lcom/android/systemui/util/AnimatorExtensionsKt$doOnEnd$$inlined$addListener$default$1;

    invoke-direct {v0, p1}, Lcom/android/systemui/util/AnimatorExtensionsKt$doOnEnd$$inlined$addListener$default$1;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p0, v0}, Landroidx/core/animation/Animator;->addListener(Landroidx/core/animation/Animator$AnimatorListener;)V

    return-object v0
.end method

.method public static final doOnRepeat(Landroidx/core/animation/Animator;Lkotlin/jvm/functions/Function1;)Landroidx/core/animation/Animator$AnimatorListener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/core/animation/Animator;",
            "Lkotlin/jvm/functions/Function1;",
            ")",
            "Landroidx/core/animation/Animator$AnimatorListener;"
        }
    .end annotation

    new-instance v0, Lcom/android/systemui/util/AnimatorExtensionsKt$doOnRepeat$$inlined$addListener$default$1;

    invoke-direct {v0, p1}, Lcom/android/systemui/util/AnimatorExtensionsKt$doOnRepeat$$inlined$addListener$default$1;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p0, v0}, Landroidx/core/animation/Animator;->addListener(Landroidx/core/animation/Animator$AnimatorListener;)V

    return-object v0
.end method

.method public static final doOnStart(Landroidx/core/animation/Animator;Lkotlin/jvm/functions/Function1;)Landroidx/core/animation/Animator$AnimatorListener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/core/animation/Animator;",
            "Lkotlin/jvm/functions/Function1;",
            ")",
            "Landroidx/core/animation/Animator$AnimatorListener;"
        }
    .end annotation

    new-instance v0, Lcom/android/systemui/util/AnimatorExtensionsKt$doOnStart$$inlined$addListener$default$1;

    invoke-direct {v0, p1}, Lcom/android/systemui/util/AnimatorExtensionsKt$doOnStart$$inlined$addListener$default$1;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p0, v0}, Landroidx/core/animation/Animator;->addListener(Landroidx/core/animation/Animator$AnimatorListener;)V

    return-object v0
.end method
