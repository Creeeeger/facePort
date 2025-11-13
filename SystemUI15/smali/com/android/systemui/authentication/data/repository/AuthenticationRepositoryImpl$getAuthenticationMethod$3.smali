.class final Lcom/android/systemui/authentication/data/repository/AuthenticationRepositoryImpl$getAuthenticationMethod$3;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2;"
    }
.end annotation


# instance fields
.field final synthetic $userId:I

.field label:I

.field final synthetic this$0:Lcom/android/systemui/authentication/data/repository/AuthenticationRepositoryImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/authentication/data/repository/AuthenticationRepositoryImpl;ILkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/authentication/data/repository/AuthenticationRepositoryImpl;",
            "I",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/authentication/data/repository/AuthenticationRepositoryImpl$getAuthenticationMethod$3;->this$0:Lcom/android/systemui/authentication/data/repository/AuthenticationRepositoryImpl;

    iput p2, p0, Lcom/android/systemui/authentication/data/repository/AuthenticationRepositoryImpl$getAuthenticationMethod$3;->$userId:I

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance p1, Lcom/android/systemui/authentication/data/repository/AuthenticationRepositoryImpl$getAuthenticationMethod$3;

    iget-object v0, p0, Lcom/android/systemui/authentication/data/repository/AuthenticationRepositoryImpl$getAuthenticationMethod$3;->this$0:Lcom/android/systemui/authentication/data/repository/AuthenticationRepositoryImpl;

    iget p0, p0, Lcom/android/systemui/authentication/data/repository/AuthenticationRepositoryImpl$getAuthenticationMethod$3;->$userId:I

    invoke-direct {p1, v0, p0, p2}, Lcom/android/systemui/authentication/data/repository/AuthenticationRepositoryImpl$getAuthenticationMethod$3;-><init>(Lcom/android/systemui/authentication/data/repository/AuthenticationRepositoryImpl;ILkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/authentication/data/repository/AuthenticationRepositoryImpl$getAuthenticationMethod$3;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/authentication/data/repository/AuthenticationRepositoryImpl$getAuthenticationMethod$3;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/systemui/authentication/data/repository/AuthenticationRepositoryImpl$getAuthenticationMethod$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v0, p0, Lcom/android/systemui/authentication/data/repository/AuthenticationRepositoryImpl$getAuthenticationMethod$3;->label:I

    if-nez v0, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/authentication/data/repository/AuthenticationRepositoryImpl$getAuthenticationMethod$3;->this$0:Lcom/android/systemui/authentication/data/repository/AuthenticationRepositoryImpl;

    iget-object p1, p1, Lcom/android/systemui/authentication/data/repository/AuthenticationRepositoryImpl;->getSecurityMode:Ljava/util/function/Function;

    iget p0, p0, Lcom/android/systemui/authentication/data/repository/AuthenticationRepositoryImpl$getAuthenticationMethod$3;->$userId:I

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p0}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {p1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    sget-object p1, Lcom/android/systemui/authentication/data/repository/AuthenticationRepositoryImpl$getAuthenticationMethod$3$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, p1, p0

    const-string p1, "Invalid security mode!"

    packed-switch p0, :pswitch_data_0

    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_1
    sget-object p0, Lcom/android/systemui/authentication/shared/model/AuthenticationMethodModel$ForgotPassword;->INSTANCE:Lcom/android/systemui/authentication/shared/model/AuthenticationMethodModel$ForgotPassword;

    goto :goto_0

    :pswitch_2
    sget-object p0, Lcom/android/systemui/authentication/shared/model/AuthenticationMethodModel$Swipe;->INSTANCE:Lcom/android/systemui/authentication/shared/model/AuthenticationMethodModel$Swipe;

    goto :goto_0

    :pswitch_3
    sget-object p0, Lcom/android/systemui/authentication/shared/model/AuthenticationMethodModel$SKTCarrierLock;->INSTANCE:Lcom/android/systemui/authentication/shared/model/AuthenticationMethodModel$SKTCarrierLock;

    goto :goto_0

    :pswitch_4
    sget-object p0, Lcom/android/systemui/authentication/shared/model/AuthenticationMethodModel$KNOXGUARD;->INSTANCE:Lcom/android/systemui/authentication/shared/model/AuthenticationMethodModel$KNOXGUARD;

    goto :goto_0

    :pswitch_5
    sget-object p0, Lcom/android/systemui/authentication/shared/model/AuthenticationMethodModel$RMM;->INSTANCE:Lcom/android/systemui/authentication/shared/model/AuthenticationMethodModel$RMM;

    goto :goto_0

    :pswitch_6
    sget-object p0, Lcom/android/systemui/authentication/shared/model/AuthenticationMethodModel$FMM;->INSTANCE:Lcom/android/systemui/authentication/shared/model/AuthenticationMethodModel$FMM;

    goto :goto_0

    :pswitch_7
    sget-object p0, Lcom/android/systemui/authentication/shared/model/AuthenticationMethodModel$Permanent;->INSTANCE:Lcom/android/systemui/authentication/shared/model/AuthenticationMethodModel$Permanent;

    goto :goto_0

    :pswitch_8
    sget-object p0, Lcom/android/systemui/authentication/shared/model/AuthenticationMethodModel$AdminLock;->INSTANCE:Lcom/android/systemui/authentication/shared/model/AuthenticationMethodModel$AdminLock;

    goto :goto_0

    :pswitch_9
    sget-object p0, Lcom/android/systemui/authentication/shared/model/AuthenticationMethodModel$SmartcardPIN;->INSTANCE:Lcom/android/systemui/authentication/shared/model/AuthenticationMethodModel$SmartcardPIN;

    goto :goto_0

    :pswitch_a
    sget-object p0, Lcom/android/systemui/authentication/shared/model/AuthenticationMethodModel$None;->INSTANCE:Lcom/android/systemui/authentication/shared/model/AuthenticationMethodModel$None;

    goto :goto_0

    :pswitch_b
    sget-object p0, Lcom/android/systemui/authentication/shared/model/AuthenticationMethodModel$Pattern;->INSTANCE:Lcom/android/systemui/authentication/shared/model/AuthenticationMethodModel$Pattern;

    goto :goto_0

    :pswitch_c
    sget-object p0, Lcom/android/systemui/authentication/shared/model/AuthenticationMethodModel$Password;->INSTANCE:Lcom/android/systemui/authentication/shared/model/AuthenticationMethodModel$Password;

    goto :goto_0

    :pswitch_d
    sget-object p0, Lcom/android/systemui/authentication/shared/model/AuthenticationMethodModel$Sim;->INSTANCE:Lcom/android/systemui/authentication/shared/model/AuthenticationMethodModel$Sim;

    goto :goto_0

    :pswitch_e
    sget-object p0, Lcom/android/systemui/authentication/shared/model/AuthenticationMethodModel$Pin;->INSTANCE:Lcom/android/systemui/authentication/shared/model/AuthenticationMethodModel$Pin;

    :goto_0
    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_e
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
