.class public final Lcom/android/settings/network/apn/PreferredApnRepository$preferredApnFlow$$inlined$map$1$2;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic $this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

.field public final synthetic this$0:Lcom/android/settings/network/apn/PreferredApnRepository;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/FlowCollector;Lcom/android/settings/network/apn/PreferredApnRepository;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/network/apn/PreferredApnRepository$preferredApnFlow$$inlined$map$1$2;->$this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

    iput-object p2, p0, Lcom/android/settings/network/apn/PreferredApnRepository$preferredApnFlow$$inlined$map$1$2;->this$0:Lcom/android/settings/network/apn/PreferredApnRepository;

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 11

    const-string v0, "["

    instance-of v1, p2, Lcom/android/settings/network/apn/PreferredApnRepository$preferredApnFlow$$inlined$map$1$2$1;

    if-eqz v1, :cond_0

    move-object v1, p2

    check-cast v1, Lcom/android/settings/network/apn/PreferredApnRepository$preferredApnFlow$$inlined$map$1$2$1;

    iget v2, v1, Lcom/android/settings/network/apn/PreferredApnRepository$preferredApnFlow$$inlined$map$1$2$1;->label:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Lcom/android/settings/network/apn/PreferredApnRepository$preferredApnFlow$$inlined$map$1$2$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/android/settings/network/apn/PreferredApnRepository$preferredApnFlow$$inlined$map$1$2$1;

    invoke-direct {v1, p0, p2}, Lcom/android/settings/network/apn/PreferredApnRepository$preferredApnFlow$$inlined$map$1$2$1;-><init>(Lcom/android/settings/network/apn/PreferredApnRepository$preferredApnFlow$$inlined$map$1$2;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v1, Lcom/android/settings/network/apn/PreferredApnRepository$preferredApnFlow$$inlined$map$1$2$1;->result:Ljava/lang/Object;

    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v3, v1, Lcom/android/settings/network/apn/PreferredApnRepository$preferredApnFlow$$inlined$map$1$2$1;->label:I

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    if-ne v3, v4, :cond_1

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Unit;

    iget-object p1, p0, Lcom/android/settings/network/apn/PreferredApnRepository$preferredApnFlow$$inlined$map$1$2;->this$0:Lcom/android/settings/network/apn/PreferredApnRepository;

    iget-object v5, p1, Lcom/android/settings/network/apn/PreferredApnRepository;->contentResolver:Landroid/content/ContentResolver;

    iget-object v6, p1, Lcom/android/settings/network/apn/PreferredApnRepository;->preferredApnUri:Landroid/net/Uri;

    const-string p2, "_id"

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x0

    const-string v10, "name ASC"

    const/4 v8, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    const/4 v5, 0x0

    if-eqz v3, :cond_3

    :try_start_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-ne v6, v4, :cond_3

    invoke-interface {v3, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {v3, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_3
    move-object p2, v5

    :goto_1
    const-string v6, "PreferredApnRepository"

    iget p1, p1, Lcom/android/settings/network/apn/PreferredApnRepository;->subId:I

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "] preferred APN: "

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v3, v5}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    iput v4, v1, Lcom/android/settings/network/apn/PreferredApnRepository$preferredApnFlow$$inlined$map$1$2$1;->label:I

    iget-object p0, p0, Lcom/android/settings/network/apn/PreferredApnRepository$preferredApnFlow$$inlined$map$1$2;->$this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

    invoke-interface {p0, p2, v1}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v2, :cond_4

    return-object v2

    :cond_4
    :goto_2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :goto_3
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p1

    invoke-static {v3, p0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1
.end method
