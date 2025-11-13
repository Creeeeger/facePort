.class public final Landroidx/recyclerview/animation/SeslFloatAnimatable$animateTo$lambda$2$lambda$1$$inlined$doOnEnd$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field public final synthetic $cont$inlined:Lkotlinx/coroutines/CancellableContinuation;

.field public final synthetic this$0:Landroidx/recyclerview/animation/SeslFloatAnimatable;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CancellableContinuation;Landroidx/recyclerview/animation/SeslFloatAnimatable;)V
    .locals 0

    iput-object p1, p0, Landroidx/recyclerview/animation/SeslFloatAnimatable$animateTo$lambda$2$lambda$1$$inlined$doOnEnd$1;->$cont$inlined:Lkotlinx/coroutines/CancellableContinuation;

    iput-object p2, p0, Landroidx/recyclerview/animation/SeslFloatAnimatable$animateTo$lambda$2$lambda$1$$inlined$doOnEnd$1;->this$0:Landroidx/recyclerview/animation/SeslFloatAnimatable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object p1, p0, Landroidx/recyclerview/animation/SeslFloatAnimatable$animateTo$lambda$2$lambda$1$$inlined$doOnEnd$1;->$cont$inlined:Lkotlinx/coroutines/CancellableContinuation;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    new-instance v1, Landroidx/recyclerview/animation/SeslFloatAnimatable$animateTo$2$2$2$1;

    iget-object p0, p0, Landroidx/recyclerview/animation/SeslFloatAnimatable$animateTo$lambda$2$lambda$1$$inlined$doOnEnd$1;->this$0:Landroidx/recyclerview/animation/SeslFloatAnimatable;

    invoke-direct {v1, p0}, Landroidx/recyclerview/animation/SeslFloatAnimatable$animateTo$2$2$2$1;-><init>(Landroidx/recyclerview/animation/SeslFloatAnimatable;)V

    invoke-interface {p1, v0, v1}, Lkotlinx/coroutines/CancellableContinuation;->resume(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
