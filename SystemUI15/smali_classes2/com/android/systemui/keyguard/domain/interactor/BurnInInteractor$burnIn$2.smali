.class final Lcom/android/systemui/keyguard/domain/interactor/BurnInInteractor$burnIn$2;
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
.field synthetic I$0:I

.field synthetic I$1:I

.field label:I

.field final synthetic this$0:Lcom/android/systemui/keyguard/domain/interactor/BurnInInteractor;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/domain/interactor/BurnInInteractor;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/keyguard/domain/interactor/BurnInInteractor;",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/keyguard/domain/interactor/BurnInInteractor$burnIn$2;->this$0:Lcom/android/systemui/keyguard/domain/interactor/BurnInInteractor;

    const/4 p1, 0x3

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    check-cast p3, Lkotlin/coroutines/Continuation;

    new-instance v0, Lcom/android/systemui/keyguard/domain/interactor/BurnInInteractor$burnIn$2;

    iget-object p0, p0, Lcom/android/systemui/keyguard/domain/interactor/BurnInInteractor$burnIn$2;->this$0:Lcom/android/systemui/keyguard/domain/interactor/BurnInInteractor;

    invoke-direct {v0, p0, p3}, Lcom/android/systemui/keyguard/domain/interactor/BurnInInteractor$burnIn$2;-><init>(Lcom/android/systemui/keyguard/domain/interactor/BurnInInteractor;Lkotlin/coroutines/Continuation;)V

    iput p1, v0, Lcom/android/systemui/keyguard/domain/interactor/BurnInInteractor$burnIn$2;->I$0:I

    iput p2, v0, Lcom/android/systemui/keyguard/domain/interactor/BurnInInteractor$burnIn$2;->I$1:I

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, p0}, Lcom/android/systemui/keyguard/domain/interactor/BurnInInteractor$burnIn$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v0, p0, Lcom/android/systemui/keyguard/domain/interactor/BurnInInteractor$burnIn$2;->label:I

    if-nez v0, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget v2, p0, Lcom/android/systemui/keyguard/domain/interactor/BurnInInteractor$burnIn$2;->I$0:I

    iget v3, p0, Lcom/android/systemui/keyguard/domain/interactor/BurnInInteractor$burnIn$2;->I$1:I

    new-instance p1, Lcom/android/systemui/keyguard/shared/model/BurnInModel;

    iget-object p0, p0, Lcom/android/systemui/keyguard/domain/interactor/BurnInInteractor$burnIn$2;->this$0:Lcom/android/systemui/keyguard/domain/interactor/BurnInInteractor;

    iget-object p0, p0, Lcom/android/systemui/keyguard/domain/interactor/BurnInInteractor;->burnInHelperWrapper:Lcom/android/systemui/doze/util/BurnInHelperWrapper;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-float p0, v0

    const v0, 0x476a6000    # 60000.0f

    div-float/2addr p0, v0

    const v0, 0x3e4ccccd    # 0.2f

    const/high16 v1, 0x43350000    # 181.0f

    invoke-static {p0, v0, v1}, Lcom/android/systemui/doze/util/BurnInHelperKt;->zigzag(FFF)F

    move-result p0

    const v0, 0x3f4ccccd    # 0.8f

    add-float v4, p0, v0

    const/4 v7, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x8

    move-object v1, p1

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/keyguard/shared/model/BurnInModel;-><init>(IIFZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p1

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
