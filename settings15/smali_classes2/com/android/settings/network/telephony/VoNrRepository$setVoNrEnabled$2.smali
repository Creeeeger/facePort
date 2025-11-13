.class final Lcom/android/settings/network/telephony/VoNrRepository$setVoNrEnabled$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $enabled:Z

.field label:I

.field final synthetic this$0:Lcom/android/settings/network/telephony/VoNrRepository;


# direct methods
.method public constructor <init>(Lcom/android/settings/network/telephony/VoNrRepository;ZLkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/network/telephony/VoNrRepository$setVoNrEnabled$2;->this$0:Lcom/android/settings/network/telephony/VoNrRepository;

    iput-boolean p2, p0, Lcom/android/settings/network/telephony/VoNrRepository$setVoNrEnabled$2;->$enabled:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance p1, Lcom/android/settings/network/telephony/VoNrRepository$setVoNrEnabled$2;

    iget-object v0, p0, Lcom/android/settings/network/telephony/VoNrRepository$setVoNrEnabled$2;->this$0:Lcom/android/settings/network/telephony/VoNrRepository;

    iget-boolean p0, p0, Lcom/android/settings/network/telephony/VoNrRepository$setVoNrEnabled$2;->$enabled:Z

    invoke-direct {p1, v0, p0, p2}, Lcom/android/settings/network/telephony/VoNrRepository$setVoNrEnabled$2;-><init>(Lcom/android/settings/network/telephony/VoNrRepository;ZLkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/network/telephony/VoNrRepository$setVoNrEnabled$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/settings/network/telephony/VoNrRepository$setVoNrEnabled$2;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/settings/network/telephony/VoNrRepository$setVoNrEnabled$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v0, p0, Lcom/android/settings/network/telephony/VoNrRepository$setVoNrEnabled$2;->label:I

    if-nez v0, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/settings/network/telephony/VoNrRepository$setVoNrEnabled$2;->this$0:Lcom/android/settings/network/telephony/VoNrRepository;

    iget p1, p1, Lcom/android/settings/network/telephony/VoNrRepository;->subId:I

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result p1

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    iget-object p1, p0, Lcom/android/settings/network/telephony/VoNrRepository$setVoNrEnabled$2;->this$0:Lcom/android/settings/network/telephony/VoNrRepository;

    iget-object p1, p1, Lcom/android/settings/network/telephony/VoNrRepository;->telephonyManager:Landroid/telephony/TelephonyManager;

    iget-boolean v1, p0, Lcom/android/settings/network/telephony/VoNrRepository$setVoNrEnabled$2;->$enabled:Z

    invoke-virtual {p1, v1}, Landroid/telephony/TelephonyManager;->setVoNrEnabled(Z)I

    move-result p1

    iget-object v1, p0, Lcom/android/settings/network/telephony/VoNrRepository$setVoNrEnabled$2;->this$0:Lcom/android/settings/network/telephony/VoNrRepository;

    iget v1, v1, Lcom/android/settings/network/telephony/VoNrRepository;->subId:I

    iget-boolean p0, p0, Lcom/android/settings/network/telephony/VoNrRepository$setVoNrEnabled$2;->$enabled:Z

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] setVoNrEnabled: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ", result: "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "VoNrRepository"

    invoke-static {v2, p1, p0}, Landroidx/preference/Preference$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    return-object v0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
