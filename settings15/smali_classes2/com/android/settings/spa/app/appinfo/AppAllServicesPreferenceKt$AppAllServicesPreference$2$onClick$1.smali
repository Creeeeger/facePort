.class final synthetic Lcom/android/settings/spa/app/appinfo/AppAllServicesPreferenceKt$AppAllServicesPreference$2$onClick$1;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReferenceImpl;",
        "Lkotlin/jvm/functions/Function0;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# virtual methods
.method public final bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/android/settings/spa/app/appinfo/AppAllServicesPreferenceKt$AppAllServicesPreference$2$onClick$1;->invoke()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke()V
    .locals 3

    iget-object p0, p0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    check-cast p0, Lcom/android/settings/spa/app/appinfo/AppAllServicesPresenter;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/android/settings/spa/app/appinfo/AppAllServicesPresenter$startActivity$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/spa/app/appinfo/AppAllServicesPresenter$startActivity$1;-><init>(Lcom/android/settings/spa/app/appinfo/AppAllServicesPresenter;Lkotlin/coroutines/Continuation;)V

    iget-object p0, p0, Lcom/android/settings/spa/app/appinfo/AppAllServicesPresenter;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    const/4 v2, 0x3

    invoke-static {p0, v1, v1, v0, v2}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    return-void
.end method
