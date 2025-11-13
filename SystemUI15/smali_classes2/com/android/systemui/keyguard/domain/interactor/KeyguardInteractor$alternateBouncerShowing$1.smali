.class final Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor$alternateBouncerShowing$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function3;"
    }
.end annotation


# instance fields
.field synthetic Z$0:Z

.field synthetic Z$1:Z

.field label:I


# direct methods
.method public constructor <init>(Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    check-cast p3, Lkotlin/coroutines/Continuation;

    new-instance p2, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor$alternateBouncerShowing$1;

    invoke-direct {p2, p3}, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor$alternateBouncerShowing$1;-><init>(Lkotlin/coroutines/Continuation;)V

    iput-boolean p0, p2, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor$alternateBouncerShowing$1;->Z$0:Z

    iput-boolean p1, p2, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor$alternateBouncerShowing$1;->Z$1:Z

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p2, p0}, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor$alternateBouncerShowing$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor$alternateBouncerShowing$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-boolean p0, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor$alternateBouncerShowing$1;->Z$0:Z

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-boolean p1, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor$alternateBouncerShowing$1;->Z$0:Z

    iget-boolean v1, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor$alternateBouncerShowing$1;->Z$1:Z

    if-eqz v1, :cond_3

    iput-boolean p1, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor$alternateBouncerShowing$1;->Z$0:Z

    iput v2, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor$alternateBouncerShowing$1;->label:I

    const-wide/16 v1, 0x258

    invoke-static {v1, v2, p0}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    move p0, p1

    :goto_0
    move p1, p0

    :cond_3
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
