.class final Lcom/android/settingslib/spaprivileged/template/app/AppStorageSizeKt$getStorageSize$1$1;
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
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\u0010\u0000\u001a\u00020\u0001*\u0010\u0012\u000c\u0012\n \u0004*\u0004\u0018\u00010\u00030\u00030\u0002H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/flow/FlowCollector;",
        "",
        "kotlin.jvm.PlatformType"
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
.field final synthetic $context:Landroid/content/Context;

.field final synthetic $this_getStorageSize:Landroid/content/pm/ApplicationInfo;

.field private synthetic L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p2, p0, Lcom/android/settingslib/spaprivileged/template/app/AppStorageSizeKt$getStorageSize$1$1;->$this_getStorageSize:Landroid/content/pm/ApplicationInfo;

    iput-object p1, p0, Lcom/android/settingslib/spaprivileged/template/app/AppStorageSizeKt$getStorageSize$1$1;->$context:Landroid/content/Context;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    new-instance v0, Lcom/android/settingslib/spaprivileged/template/app/AppStorageSizeKt$getStorageSize$1$1;

    iget-object v1, p0, Lcom/android/settingslib/spaprivileged/template/app/AppStorageSizeKt$getStorageSize$1$1;->$this_getStorageSize:Landroid/content/pm/ApplicationInfo;

    iget-object p0, p0, Lcom/android/settingslib/spaprivileged/template/app/AppStorageSizeKt$getStorageSize$1$1;->$context:Landroid/content/Context;

    invoke-direct {v0, p0, v1, p2}, Lcom/android/settingslib/spaprivileged/template/app/AppStorageSizeKt$getStorageSize$1$1;-><init>(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/android/settingslib/spaprivileged/template/app/AppStorageSizeKt$getStorageSize$1$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/flow/FlowCollector;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/settingslib/spaprivileged/template/app/AppStorageSizeKt$getStorageSize$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/settingslib/spaprivileged/template/app/AppStorageSizeKt$getStorageSize$1$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/settingslib/spaprivileged/template/app/AppStorageSizeKt$getStorageSize$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/android/settingslib/spaprivileged/template/app/AppStorageSizeKt$getStorageSize$1$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/settingslib/spaprivileged/template/app/AppStorageSizeKt$getStorageSize$1$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/flow/FlowCollector;

    iget-object v1, p0, Lcom/android/settingslib/spaprivileged/template/app/AppStorageSizeKt$getStorageSize$1$1;->$this_getStorageSize:Landroid/content/pm/ApplicationInfo;

    iget-object v3, p0, Lcom/android/settingslib/spaprivileged/template/app/AppStorageSizeKt$getStorageSize$1$1;->$context:Landroid/content/Context;

    invoke-static {v3, v1}, Lcom/android/settingslib/spaprivileged/template/app/AppStorageSizeKt;->calculateSizeBytes(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v3, p0, Lcom/android/settingslib/spaprivileged/template/app/AppStorageSizeKt$getStorageSize$1$1;->$context:Landroid/content/Context;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    const-string v1, ""

    :goto_0
    iput v2, p0, Lcom/android/settingslib/spaprivileged/template/app/AppStorageSizeKt$getStorageSize$1$1;->label:I

    invoke-interface {p1, v1, p0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_3

    return-object v0

    :cond_3
    :goto_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
