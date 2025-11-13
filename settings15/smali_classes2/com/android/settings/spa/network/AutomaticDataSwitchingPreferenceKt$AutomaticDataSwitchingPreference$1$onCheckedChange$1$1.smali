.class final Lcom/android/settings/spa/network/AutomaticDataSwitchingPreferenceKt$AutomaticDataSwitchingPreference$1$onCheckedChange$1$1;
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
.field final synthetic $crossSimCallingViewModel:Lcom/android/settings/network/telephony/wificalling/CrossSimCallingViewModel;

.field final synthetic $newEnabled:Z

.field final synthetic $setAutoDataEnabled:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1;"
        }
    .end annotation
.end field

.field label:I


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function1;ZLcom/android/settings/network/telephony/wificalling/CrossSimCallingViewModel;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/spa/network/AutomaticDataSwitchingPreferenceKt$AutomaticDataSwitchingPreference$1$onCheckedChange$1$1;->$setAutoDataEnabled:Lkotlin/jvm/functions/Function1;

    iput-boolean p2, p0, Lcom/android/settings/spa/network/AutomaticDataSwitchingPreferenceKt$AutomaticDataSwitchingPreference$1$onCheckedChange$1$1;->$newEnabled:Z

    iput-object p3, p0, Lcom/android/settings/spa/network/AutomaticDataSwitchingPreferenceKt$AutomaticDataSwitchingPreference$1$onCheckedChange$1$1;->$crossSimCallingViewModel:Lcom/android/settings/network/telephony/wificalling/CrossSimCallingViewModel;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    new-instance p1, Lcom/android/settings/spa/network/AutomaticDataSwitchingPreferenceKt$AutomaticDataSwitchingPreference$1$onCheckedChange$1$1;

    iget-object v0, p0, Lcom/android/settings/spa/network/AutomaticDataSwitchingPreferenceKt$AutomaticDataSwitchingPreference$1$onCheckedChange$1$1;->$setAutoDataEnabled:Lkotlin/jvm/functions/Function1;

    iget-boolean v1, p0, Lcom/android/settings/spa/network/AutomaticDataSwitchingPreferenceKt$AutomaticDataSwitchingPreference$1$onCheckedChange$1$1;->$newEnabled:Z

    iget-object p0, p0, Lcom/android/settings/spa/network/AutomaticDataSwitchingPreferenceKt$AutomaticDataSwitchingPreference$1$onCheckedChange$1$1;->$crossSimCallingViewModel:Lcom/android/settings/network/telephony/wificalling/CrossSimCallingViewModel;

    invoke-direct {p1, v0, v1, p0, p2}, Lcom/android/settings/spa/network/AutomaticDataSwitchingPreferenceKt$AutomaticDataSwitchingPreference$1$onCheckedChange$1$1;-><init>(Lkotlin/jvm/functions/Function1;ZLcom/android/settings/network/telephony/wificalling/CrossSimCallingViewModel;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/spa/network/AutomaticDataSwitchingPreferenceKt$AutomaticDataSwitchingPreference$1$onCheckedChange$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/settings/spa/network/AutomaticDataSwitchingPreferenceKt$AutomaticDataSwitchingPreference$1$onCheckedChange$1$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/settings/spa/network/AutomaticDataSwitchingPreferenceKt$AutomaticDataSwitchingPreference$1$onCheckedChange$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v0, p0, Lcom/android/settings/spa/network/AutomaticDataSwitchingPreferenceKt$AutomaticDataSwitchingPreference$1$onCheckedChange$1$1;->label:I

    if-nez v0, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/settings/spa/network/AutomaticDataSwitchingPreferenceKt$AutomaticDataSwitchingPreference$1$onCheckedChange$1$1;->$setAutoDataEnabled:Lkotlin/jvm/functions/Function1;

    iget-boolean v0, p0, Lcom/android/settings/spa/network/AutomaticDataSwitchingPreferenceKt$AutomaticDataSwitchingPreference$1$onCheckedChange$1$1;->$newEnabled:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/settings/spa/network/AutomaticDataSwitchingPreferenceKt$AutomaticDataSwitchingPreference$1$onCheckedChange$1$1;->$crossSimCallingViewModel:Lcom/android/settings/network/telephony/wificalling/CrossSimCallingViewModel;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    iget-object p0, p0, Lcom/android/settings/network/telephony/wificalling/CrossSimCallingViewModel;->updateChannel:Lkotlinx/coroutines/channels/BufferedChannel;

    invoke-interface {p0, p1}, Lkotlinx/coroutines/channels/SendChannel;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
