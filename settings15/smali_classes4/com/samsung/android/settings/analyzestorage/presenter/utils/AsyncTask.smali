.class public final Lcom/samsung/android/settings/analyzestorage/presenter/utils/AsyncTask;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lkotlinx/coroutines/CoroutineScope;


# instance fields
.field public final coroutineResult:Lcom/samsung/android/settings/analyzestorage/ui/dialog/FormatProgressDialogFragment$initProgress$task$1;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/analyzestorage/ui/dialog/FormatProgressDialogFragment$initProgress$task$1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/presenter/utils/AsyncTask;->coroutineResult:Lcom/samsung/android/settings/analyzestorage/ui/dialog/FormatProgressDialogFragment$initProgress$task$1;

    return-void
.end method


# virtual methods
.method public final execute(Lkotlin/jvm/functions/Function0;)V
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/settings/analyzestorage/presenter/utils/AsyncTask;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/analyzestorage/presenter/utils/AsyncTask$execute$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/samsung/android/settings/analyzestorage/presenter/utils/AsyncTask$execute$1;-><init>(Lcom/samsung/android/settings/analyzestorage/presenter/utils/AsyncTask;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V

    const/4 p1, 0x2

    invoke-static {p0, v0, v2, v1, p1}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/settings/analyzestorage/presenter/utils/AsyncTask$execute$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/analyzestorage/presenter/utils/AsyncTask$execute$2;-><init>(Lcom/samsung/android/settings/analyzestorage/presenter/utils/AsyncTask;)V

    invoke-virtual {p1, v0}, Lkotlinx/coroutines/JobSupport;->invokeOnCompletion(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/DisposableHandle;

    return-void
.end method

.method public final getCoroutineContext()Lkotlin/coroutines/CoroutineContext;
    .locals 1

    sget-object p0, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    sget-object p0, Lkotlinx/coroutines/internal/MainDispatcherLoader;->dispatcher:Lkotlinx/coroutines/android/HandlerContext;

    invoke-static {}, Lkotlinx/coroutines/JobKt;->Job$default()Lkotlinx/coroutines/JobImpl;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, v0}, Lkotlin/coroutines/CoroutineContext$DefaultImpls;->plus(Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object p0

    return-object p0
.end method
