.class final Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel$iconOverlayAsset$1$1;
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

    iput-object p1, p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel$iconOverlayAsset$1$1;->this$0:Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel;

    const/4 p1, 0x6

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lcom/android/systemui/biometrics/shared/model/DisplayRotation;

    check-cast p2, Lcom/android/systemui/biometrics/shared/model/FingerprintSensorType;

    check-cast p3, Lcom/android/systemui/biometrics/ui/viewmodel/PromptAuthState;

    check-cast p4, Ljava/lang/Boolean;

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p4

    check-cast p5, Ljava/lang/Boolean;

    invoke-virtual {p5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p5

    check-cast p6, Lkotlin/coroutines/Continuation;

    new-instance v0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel$iconOverlayAsset$1$1;

    iget-object p0, p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel$iconOverlayAsset$1$1;->this$0:Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel;

    invoke-direct {v0, p0, p6}, Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel$iconOverlayAsset$1$1;-><init>(Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel$iconOverlayAsset$1$1;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel$iconOverlayAsset$1$1;->L$1:Ljava/lang/Object;

    iput-object p3, v0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel$iconOverlayAsset$1$1;->L$2:Ljava/lang/Object;

    iput-boolean p4, v0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel$iconOverlayAsset$1$1;->Z$0:Z

    iput-boolean p5, v0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel$iconOverlayAsset$1$1;->Z$1:Z

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, p0}, Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel$iconOverlayAsset$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v0, p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel$iconOverlayAsset$1$1;->label:I

    if-nez v0, :cond_13

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel$iconOverlayAsset$1$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lcom/android/systemui/biometrics/shared/model/DisplayRotation;

    iget-object v0, p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel$iconOverlayAsset$1$1;->L$1:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/biometrics/shared/model/FingerprintSensorType;

    iget-object v1, p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel$iconOverlayAsset$1$1;->L$2:Ljava/lang/Object;

    check-cast v1, Lcom/android/systemui/biometrics/ui/viewmodel/PromptAuthState;

    iget-boolean v2, p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel$iconOverlayAsset$1$1;->Z$0:Z

    iget-boolean v3, p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel$iconOverlayAsset$1$1;->Z$1:Z

    sget-object v4, Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel$iconOverlayAsset$1$1$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v4, v0

    const/4 v4, -0x1

    const/4 v5, 0x1

    if-ne v0, v5, :cond_12

    iget-object p0, p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel$iconOverlayAsset$1$1;->this$0:Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel;

    iget-boolean v0, v1, Lcom/android/systemui/biometrics/ui/viewmodel/PromptAuthState;->isAuthenticated:Z

    iget-object p0, p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel;->_previousIconOverlayWasError:Lkotlinx/coroutines/flow/StateFlowImpl;

    const/4 v1, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x2

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_3

    sget-object p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel$WhenMappings;->$EnumSwitchMapping$2:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    if-eq p0, v5, :cond_2

    if-eq p0, v7, :cond_1

    const v4, 0x7f120013

    if-eq p0, v6, :cond_12

    if-ne p0, v1, :cond_0

    goto/16 :goto_1

    :cond_0
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_1
    const v4, 0x7f120014

    goto/16 :goto_1

    :cond_2
    const v4, 0x7f120015

    goto/16 :goto_1

    :cond_3
    sget-object p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel$WhenMappings;->$EnumSwitchMapping$2:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    if-eq p0, v5, :cond_6

    if-eq p0, v7, :cond_5

    const v4, 0x7f120018

    if-eq p0, v6, :cond_12

    if-ne p0, v1, :cond_4

    goto/16 :goto_1

    :cond_4
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_5
    const v4, 0x7f120019

    goto/16 :goto_1

    :cond_6
    const v4, 0x7f12001a

    goto/16 :goto_1

    :cond_7
    const v0, 0x7f120017

    const v8, 0x7f120016

    const v9, 0x7f120006

    if-eqz v2, :cond_10

    invoke-virtual {p0}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_b

    sget-object p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel$WhenMappings;->$EnumSwitchMapping$2:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    if-eq p0, v5, :cond_a

    if-eq p0, v7, :cond_9

    const v4, 0x7f120010

    if-eq p0, v6, :cond_12

    if-ne p0, v1, :cond_8

    goto :goto_1

    :cond_8
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_9
    const v4, 0x7f120011

    goto :goto_1

    :cond_a
    const v4, 0x7f120012

    goto :goto_1

    :cond_b
    sget-object p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel$WhenMappings;->$EnumSwitchMapping$2:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    if-eq p0, v5, :cond_f

    if-eq p0, v7, :cond_e

    if-eq p0, v6, :cond_c

    if-ne p0, v1, :cond_d

    :cond_c
    :goto_0
    move v4, v9

    goto :goto_1

    :cond_d
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_e
    move v4, v8

    goto :goto_1

    :cond_f
    move v4, v0

    goto :goto_1

    :cond_10
    if-eqz v3, :cond_12

    sget-object p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel$WhenMappings;->$EnumSwitchMapping$2:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    if-eq p0, v5, :cond_f

    if-eq p0, v7, :cond_e

    if-eq p0, v6, :cond_c

    if-ne p0, v1, :cond_11

    goto :goto_0

    :cond_11
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_12
    :goto_1
    new-instance p0, Ljava/lang/Integer;

    invoke-direct {p0, v4}, Ljava/lang/Integer;-><init>(I)V

    return-object p0

    :cond_13
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
