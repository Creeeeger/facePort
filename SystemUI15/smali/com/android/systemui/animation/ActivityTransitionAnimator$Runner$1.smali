.class final synthetic Lcom/android/systemui/animation/ActivityTransitionAnimator$Runner$1;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReferenceImpl;",
        "Lkotlin/jvm/functions/Function0;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 7

    const-class v3, Lcom/android/systemui/animation/ActivityTransitionAnimator$Runner;

    const-string v5, "dispose()V"

    const/4 v6, 0x0

    const/4 v1, 0x0

    const-string v4, "dispose"

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget-object p0, p0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    check-cast p0, Lcom/android/systemui/animation/ActivityTransitionAnimator$Runner;

    iget-object v0, p0, Lcom/android/systemui/animation/ActivityTransitionAnimator$Runner;->this$0:Lcom/android/systemui/animation/ActivityTransitionAnimator;

    iget-object v0, v0, Lcom/android/systemui/animation/ActivityTransitionAnimator;->mainExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/systemui/animation/ActivityTransitionAnimator$Runner$dispose$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/animation/ActivityTransitionAnimator$Runner$dispose$1;-><init>(Lcom/android/systemui/animation/ActivityTransitionAnimator$Runner;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
