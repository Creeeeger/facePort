.class final Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel$contentDescriptionId$1$1;
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

.field synthetic Z$0:Z

.field synthetic Z$1:Z

.field synthetic Z$2:Z

.field label:I

.field final synthetic this$0:Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel;


# direct methods
.method public constructor <init>(Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel;",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel$contentDescriptionId$1$1;->this$0:Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel;

    const/4 p1, 0x6

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lcom/android/systemui/biometrics/shared/model/FingerprintSensorType;

    check-cast p2, Lcom/android/systemui/biometrics/ui/viewmodel/PromptAuthState;

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    check-cast p4, Ljava/lang/Boolean;

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p4

    check-cast p5, Ljava/lang/Boolean;

    invoke-virtual {p5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p5

    check-cast p6, Lkotlin/coroutines/Continuation;

    new-instance v0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel$contentDescriptionId$1$1;

    iget-object p0, p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel$contentDescriptionId$1$1;->this$0:Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel;

    invoke-direct {v0, p0, p6}, Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel$contentDescriptionId$1$1;-><init>(Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel$contentDescriptionId$1$1;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel$contentDescriptionId$1$1;->L$1:Ljava/lang/Object;

    iput-boolean p3, v0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel$contentDescriptionId$1$1;->Z$0:Z

    iput-boolean p4, v0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel$contentDescriptionId$1$1;->Z$1:Z

    iput-boolean p5, v0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel$contentDescriptionId$1$1;->Z$2:Z

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, p0}, Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel$contentDescriptionId$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v0, p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel$contentDescriptionId$1$1;->label:I

    if-nez v0, :cond_6

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel$contentDescriptionId$1$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lcom/android/systemui/biometrics/shared/model/FingerprintSensorType;

    iget-object v0, p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel$contentDescriptionId$1$1;->L$1:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptAuthState;

    iget-boolean v1, p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel$contentDescriptionId$1$1;->Z$0:Z

    iget-boolean v2, p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel$contentDescriptionId$1$1;->Z$1:Z

    iget-boolean v3, p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel$contentDescriptionId$1$1;->Z$2:Z

    iget-object p0, p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel$contentDescriptionId$1$1;->this$0:Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel;

    iget-boolean v0, v0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptAuthState;->isAuthenticated:Z

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, -0x1

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    sget-object v0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    if-ne p1, v4, :cond_0

    goto :goto_1

    :cond_0
    const p0, 0x7f1306ca

    goto :goto_1

    :cond_1
    if-nez v1, :cond_3

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    if-eqz v3, :cond_5

    const p0, 0x7f130246

    goto :goto_1

    :cond_3
    :goto_0
    sget-object p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    if-ne p0, v4, :cond_4

    const p0, 0x7f131109

    goto :goto_1

    :cond_4
    const p0, 0x7f1306cb

    :cond_5
    :goto_1
    new-instance p1, Ljava/lang/Integer;

    invoke-direct {p1, p0}, Ljava/lang/Integer;-><init>(I)V

    return-object p1

    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
