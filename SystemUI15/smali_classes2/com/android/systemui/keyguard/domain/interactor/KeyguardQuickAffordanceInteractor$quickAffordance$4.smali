.class final Lcom/android/systemui/keyguard/domain/interactor/KeyguardQuickAffordanceInteractor$quickAffordance$4;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function6;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function6;"
    }
.end annotation


# instance fields
.field synthetic L$0:Ljava/lang/Object;

.field synthetic Z$0:Z

.field synthetic Z$1:Z

.field synthetic Z$2:Z

.field synthetic Z$3:Z

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

    const/4 v0, 0x6

    invoke-direct {p0, v0, p1}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/android/systemui/keyguard/domain/model/KeyguardQuickAffordanceModel;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    check-cast p4, Ljava/lang/Boolean;

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    check-cast p5, Ljava/lang/Boolean;

    invoke-virtual {p5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p4

    check-cast p6, Lkotlin/coroutines/Continuation;

    new-instance p5, Lcom/android/systemui/keyguard/domain/interactor/KeyguardQuickAffordanceInteractor$quickAffordance$4;

    invoke-direct {p5, p6}, Lcom/android/systemui/keyguard/domain/interactor/KeyguardQuickAffordanceInteractor$quickAffordance$4;-><init>(Lkotlin/coroutines/Continuation;)V

    iput-object p1, p5, Lcom/android/systemui/keyguard/domain/interactor/KeyguardQuickAffordanceInteractor$quickAffordance$4;->L$0:Ljava/lang/Object;

    iput-boolean p0, p5, Lcom/android/systemui/keyguard/domain/interactor/KeyguardQuickAffordanceInteractor$quickAffordance$4;->Z$0:Z

    iput-boolean p2, p5, Lcom/android/systemui/keyguard/domain/interactor/KeyguardQuickAffordanceInteractor$quickAffordance$4;->Z$1:Z

    iput-boolean p3, p5, Lcom/android/systemui/keyguard/domain/interactor/KeyguardQuickAffordanceInteractor$quickAffordance$4;->Z$2:Z

    iput-boolean p4, p5, Lcom/android/systemui/keyguard/domain/interactor/KeyguardQuickAffordanceInteractor$quickAffordance$4;->Z$3:Z

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p5, p0}, Lcom/android/systemui/keyguard/domain/interactor/KeyguardQuickAffordanceInteractor$quickAffordance$4;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v0, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardQuickAffordanceInteractor$quickAffordance$4;->label:I

    if-nez v0, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardQuickAffordanceInteractor$quickAffordance$4;->L$0:Ljava/lang/Object;

    check-cast p1, Lcom/android/systemui/keyguard/domain/model/KeyguardQuickAffordanceModel;

    iget-boolean v0, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardQuickAffordanceInteractor$quickAffordance$4;->Z$0:Z

    iget-boolean v1, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardQuickAffordanceInteractor$quickAffordance$4;->Z$1:Z

    iget-boolean v2, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardQuickAffordanceInteractor$quickAffordance$4;->Z$2:Z

    iget-boolean p0, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardQuickAffordanceInteractor$quickAffordance$4;->Z$3:Z

    if-nez v0, :cond_0

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/android/systemui/keyguard/domain/model/KeyguardQuickAffordanceModel$Hidden;->INSTANCE:Lcom/android/systemui/keyguard/domain/model/KeyguardQuickAffordanceModel$Hidden;

    :goto_0
    return-object p1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
