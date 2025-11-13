.class public interface abstract Lcom/android/systemui/shared/settings/data/repository/SecureSettingsRepository;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public static intSetting$default(Lcom/android/systemui/shared/settings/data/repository/SecureSettingsRepository;)Lkotlinx/coroutines/flow/Flow;
    .locals 4

    check-cast p0, Lcom/android/systemui/shared/settings/data/repository/SecureSettingsRepositoryImpl;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/android/systemui/shared/settings/data/repository/SecureSettingsRepositoryImpl$intSetting$1;

    const/4 v1, 0x0

    const-string v2, "notification_history_enabled"

    invoke-direct {v0, p0, v2, v1}, Lcom/android/systemui/shared/settings/data/repository/SecureSettingsRepositoryImpl$intSetting$1;-><init>(Lcom/android/systemui/shared/settings/data/repository/SecureSettingsRepositoryImpl;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0}, Lkotlinx/coroutines/flow/FlowKt;->callbackFlow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/CallbackFlowBuilder;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/shared/settings/data/repository/SecureSettingsRepositoryImpl$intSetting$$inlined$map$1;

    const/4 v3, 0x0

    invoke-direct {v1, v0, p0, v2, v3}, Lcom/android/systemui/shared/settings/data/repository/SecureSettingsRepositoryImpl$intSetting$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/shared/settings/data/repository/SecureSettingsRepositoryImpl;Ljava/lang/String;I)V

    iget-object p0, p0, Lcom/android/systemui/shared/settings/data/repository/SecureSettingsRepositoryImpl;->backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    invoke-static {v1, p0}, Lkotlinx/coroutines/flow/FlowKt;->flowOn(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p0

    return-object p0
.end method
