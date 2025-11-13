.class public final Lretrofit2/ExecutorCallAdapterFactory$ExecutorCallbackCall$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$1:Lretrofit2/ExecutorCallAdapterFactory$1;

.field public final synthetic val$response:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lretrofit2/ExecutorCallAdapterFactory$1;Ljava/lang/Object;I)V
    .locals 0

    iput p3, p0, Lretrofit2/ExecutorCallAdapterFactory$ExecutorCallbackCall$1$1;->$r8$classId:I

    iput-object p1, p0, Lretrofit2/ExecutorCallAdapterFactory$ExecutorCallbackCall$1$1;->this$1:Lretrofit2/ExecutorCallAdapterFactory$1;

    iput-object p2, p0, Lretrofit2/ExecutorCallAdapterFactory$ExecutorCallbackCall$1$1;->val$response:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lretrofit2/ExecutorCallAdapterFactory$ExecutorCallbackCall$1$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lretrofit2/ExecutorCallAdapterFactory$ExecutorCallbackCall$1$1;->this$1:Lretrofit2/ExecutorCallAdapterFactory$1;

    iget-object v0, v0, Lretrofit2/ExecutorCallAdapterFactory$1;->val$responseType:Ljava/lang/Object;

    check-cast v0, Lretrofit2/Callback;

    iget-object p0, p0, Lretrofit2/ExecutorCallAdapterFactory$ExecutorCallbackCall$1$1;->val$response:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Throwable;

    invoke-interface {v0, p0}, Lretrofit2/Callback;->onFailure(Ljava/lang/Throwable;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lretrofit2/ExecutorCallAdapterFactory$ExecutorCallbackCall$1$1;->this$1:Lretrofit2/ExecutorCallAdapterFactory$1;

    iget-object v0, v0, Lretrofit2/ExecutorCallAdapterFactory$1;->this$0:Ljava/lang/Object;

    check-cast v0, Lretrofit2/ExecutorCallAdapterFactory$ExecutorCallbackCall;

    iget-object v0, v0, Lretrofit2/ExecutorCallAdapterFactory$ExecutorCallbackCall;->delegate:Lretrofit2/Call;

    invoke-interface {v0}, Lretrofit2/Call;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lretrofit2/ExecutorCallAdapterFactory$ExecutorCallbackCall$1$1;->this$1:Lretrofit2/ExecutorCallAdapterFactory$1;

    iget-object p0, p0, Lretrofit2/ExecutorCallAdapterFactory$1;->val$responseType:Ljava/lang/Object;

    check-cast p0, Lretrofit2/Callback;

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Canceled"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v0}, Lretrofit2/Callback;->onFailure(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lretrofit2/ExecutorCallAdapterFactory$ExecutorCallbackCall$1$1;->this$1:Lretrofit2/ExecutorCallAdapterFactory$1;

    iget-object v0, v0, Lretrofit2/ExecutorCallAdapterFactory$1;->val$responseType:Ljava/lang/Object;

    check-cast v0, Lretrofit2/Callback;

    iget-object p0, p0, Lretrofit2/ExecutorCallAdapterFactory$ExecutorCallbackCall$1$1;->val$response:Ljava/lang/Object;

    check-cast p0, Lretrofit2/Response;

    invoke-interface {v0, p0}, Lretrofit2/Callback;->onResponse(Lretrofit2/Response;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
