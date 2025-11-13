.class public final Lcom/android/settingslib/spaprivileged/model/enterprise/RestrictionsProviderImpl;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final context:Landroid/content/Context;

.field public final restrictedMode:Lkotlinx/coroutines/flow/Flow;

.field public final restrictions:Lcom/android/settingslib/spaprivileged/model/enterprise/Restrictions;

.field public final userManager$delegate:Lkotlin/Lazy;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/spaprivileged/model/enterprise/Restrictions;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "restrictions"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/spaprivileged/model/enterprise/RestrictionsProviderImpl;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/settingslib/spaprivileged/model/enterprise/RestrictionsProviderImpl;->restrictions:Lcom/android/settingslib/spaprivileged/model/enterprise/Restrictions;

    new-instance p1, Lcom/android/settingslib/spaprivileged/model/enterprise/RestrictionsProviderImpl$userManager$2;

    invoke-direct {p1, p0}, Lcom/android/settingslib/spaprivileged/model/enterprise/RestrictionsProviderImpl$userManager$2;-><init>(Lcom/android/settingslib/spaprivileged/model/enterprise/RestrictionsProviderImpl;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settingslib/spaprivileged/model/enterprise/RestrictionsProviderImpl;->userManager$delegate:Lkotlin/Lazy;

    new-instance p1, Lcom/android/settingslib/spaprivileged/model/enterprise/RestrictionsProviderImpl$restrictedMode$1;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/android/settingslib/spaprivileged/model/enterprise/RestrictionsProviderImpl$restrictedMode$1;-><init>(Lcom/android/settingslib/spaprivileged/model/enterprise/RestrictionsProviderImpl;Lkotlin/coroutines/Continuation;)V

    new-instance p2, Lkotlinx/coroutines/flow/SafeFlow;

    invoke-direct {p2, p1}, Lkotlinx/coroutines/flow/SafeFlow;-><init>(Lkotlin/jvm/functions/Function2;)V

    sget-object p1, Lkotlinx/coroutines/Dispatchers;->IO:Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    invoke-static {p2, p1}, Lkotlinx/coroutines/flow/FlowKt;->flowOn(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settingslib/spaprivileged/model/enterprise/RestrictionsProviderImpl;->restrictedMode:Lkotlinx/coroutines/flow/Flow;

    return-void
.end method
