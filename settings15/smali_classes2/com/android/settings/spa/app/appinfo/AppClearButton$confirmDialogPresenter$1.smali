.class final synthetic Lcom/android/settings/spa/app/appinfo/AppClearButton$confirmDialogPresenter$1;
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

    invoke-virtual {p0}, Lcom/android/settings/spa/app/appinfo/AppClearButton$confirmDialogPresenter$1;->invoke()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke()V
    .locals 4

    iget-object p0, p0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    check-cast p0, Lcom/android/settings/spa/app/appinfo/PackageInfoPresenter;

    const/16 v0, 0x39b

    invoke-virtual {p0, v0}, Lcom/android/settings/spa/app/appinfo/PackageInfoPresenter;->logAction(I)V

    sget-object v0, Lkotlinx/coroutines/Dispatchers;->IO:Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    new-instance v1, Lcom/android/settings/spa/app/appinfo/PackageInfoPresenter$clearInstantApp$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/settings/spa/app/appinfo/PackageInfoPresenter$clearInstantApp$1;-><init>(Lcom/android/settings/spa/app/appinfo/PackageInfoPresenter;Lkotlin/coroutines/Continuation;)V

    iget-object p0, p0, Lcom/android/settings/spa/app/appinfo/PackageInfoPresenter;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    const/4 v3, 0x2

    invoke-static {p0, v0, v2, v1, v3}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    return-void
.end method
