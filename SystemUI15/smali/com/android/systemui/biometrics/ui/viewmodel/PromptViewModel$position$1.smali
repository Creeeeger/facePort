.class final Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$position$1;
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

.field synthetic L$1:Ljava/lang/Object;

.field synthetic L$2:Ljava/lang/Object;

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

    const/4 v0, 0x6

    invoke-direct {p0, v0, p1}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    check-cast p2, Lcom/android/systemui/biometrics/shared/model/PromptKind;

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    check-cast p4, Lcom/android/systemui/biometrics/shared/model/DisplayRotation;

    check-cast p5, Lcom/android/systemui/biometrics/shared/model/BiometricModalities;

    check-cast p6, Lkotlin/coroutines/Continuation;

    new-instance p3, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$position$1;

    invoke-direct {p3, p6}, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$position$1;-><init>(Lkotlin/coroutines/Continuation;)V

    iput-boolean p0, p3, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$position$1;->Z$0:Z

    iput-object p2, p3, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$position$1;->L$0:Ljava/lang/Object;

    iput-boolean p1, p3, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$position$1;->Z$1:Z

    iput-object p4, p3, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$position$1;->L$1:Ljava/lang/Object;

    iput-object p5, p3, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$position$1;->L$2:Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p3, p0}, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$position$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v0, p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$position$1;->label:I

    if-nez v0, :cond_5

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-boolean p1, p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$position$1;->Z$0:Z

    iget-object v0, p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$position$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/biometrics/shared/model/PromptKind;

    iget-boolean v1, p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$position$1;->Z$1:Z

    iget-object v2, p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$position$1;->L$1:Ljava/lang/Object;

    check-cast v2, Lcom/android/systemui/biometrics/shared/model/DisplayRotation;

    iget-object p0, p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$position$1;->L$2:Ljava/lang/Object;

    check-cast p0, Lcom/android/systemui/biometrics/shared/model/BiometricModalities;

    if-nez p1, :cond_4

    if-nez v1, :cond_4

    invoke-interface {v0}, Lcom/android/systemui/biometrics/shared/model/PromptKind;->isOnePaneNoSensorLandscapeBiometric()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/android/systemui/biometrics/shared/model/DisplayRotation;->ROTATION_90:Lcom/android/systemui/biometrics/shared/model/DisplayRotation;

    if-ne v2, p1, :cond_1

    sget-object p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptPosition;->Right:Lcom/android/systemui/biometrics/ui/viewmodel/PromptPosition;

    goto :goto_1

    :cond_1
    sget-object p1, Lcom/android/systemui/biometrics/shared/model/DisplayRotation;->ROTATION_270:Lcom/android/systemui/biometrics/shared/model/DisplayRotation;

    if-ne v2, p1, :cond_2

    sget-object p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptPosition;->Left:Lcom/android/systemui/biometrics/ui/viewmodel/PromptPosition;

    goto :goto_1

    :cond_2
    sget-object p1, Lcom/android/systemui/biometrics/shared/model/DisplayRotation;->ROTATION_180:Lcom/android/systemui/biometrics/shared/model/DisplayRotation;

    if-ne v2, p1, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/biometrics/shared/model/BiometricModalities;->getHasUdfps()Z

    move-result p0

    if-eqz p0, :cond_3

    sget-object p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptPosition;->Top:Lcom/android/systemui/biometrics/ui/viewmodel/PromptPosition;

    goto :goto_1

    :cond_3
    sget-object p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptPosition;->Bottom:Lcom/android/systemui/biometrics/ui/viewmodel/PromptPosition;

    goto :goto_1

    :cond_4
    :goto_0
    sget-object p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptPosition;->Bottom:Lcom/android/systemui/biometrics/ui/viewmodel/PromptPosition;

    :goto_1
    return-object p0

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
