.class public final Lretrofit2/ExecutorCallAdapterFactory$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lretrofit2/CallAdapter;
.implements Lretrofit2/Callback;


# instance fields
.field public final synthetic this$0:Ljava/lang/Object;

.field public final synthetic val$responseType:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lretrofit2/ExecutorCallAdapterFactory$1;->this$0:Ljava/lang/Object;

    iput-object p2, p0, Lretrofit2/ExecutorCallAdapterFactory$1;->val$responseType:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public adapt(Lretrofit2/OkHttpCall;)Ljava/lang/Object;
    .locals 1

    new-instance v0, Lretrofit2/ExecutorCallAdapterFactory$ExecutorCallbackCall;

    iget-object p0, p0, Lretrofit2/ExecutorCallAdapterFactory$1;->this$0:Ljava/lang/Object;

    check-cast p0, Lretrofit2/ExecutorCallAdapterFactory;

    iget-object p0, p0, Lretrofit2/ExecutorCallAdapterFactory;->callbackExecutor:Ljava/util/concurrent/Executor;

    invoke-direct {v0, p0, p1}, Lretrofit2/ExecutorCallAdapterFactory$ExecutorCallbackCall;-><init>(Ljava/util/concurrent/Executor;Lretrofit2/Call;)V

    return-object v0
.end method

.method public onFailure(Ljava/lang/Throwable;)V
    .locals 3

    iget-object v0, p0, Lretrofit2/ExecutorCallAdapterFactory$1;->this$0:Ljava/lang/Object;

    check-cast v0, Lretrofit2/ExecutorCallAdapterFactory$ExecutorCallbackCall;

    iget-object v0, v0, Lretrofit2/ExecutorCallAdapterFactory$ExecutorCallbackCall;->callbackExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lretrofit2/ExecutorCallAdapterFactory$ExecutorCallbackCall$1$1;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v2}, Lretrofit2/ExecutorCallAdapterFactory$ExecutorCallbackCall$1$1;-><init>(Lretrofit2/ExecutorCallAdapterFactory$1;Ljava/lang/Object;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onResponse(Lretrofit2/Response;)V
    .locals 3

    iget-object v0, p0, Lretrofit2/ExecutorCallAdapterFactory$1;->this$0:Ljava/lang/Object;

    check-cast v0, Lretrofit2/ExecutorCallAdapterFactory$ExecutorCallbackCall;

    iget-object v0, v0, Lretrofit2/ExecutorCallAdapterFactory$ExecutorCallbackCall;->callbackExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lretrofit2/ExecutorCallAdapterFactory$ExecutorCallbackCall$1$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lretrofit2/ExecutorCallAdapterFactory$ExecutorCallbackCall$1$1;-><init>(Lretrofit2/ExecutorCallAdapterFactory$1;Ljava/lang/Object;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public responseType()Ljava/lang/reflect/Type;
    .locals 0

    iget-object p0, p0, Lretrofit2/ExecutorCallAdapterFactory$1;->val$responseType:Ljava/lang/Object;

    check-cast p0, Ljava/lang/reflect/Type;

    return-object p0
.end method
