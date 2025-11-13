.class final Landroid/media/tv/ad/TvAdService$ServiceHandler;
.super Landroid/os/Handler;
.source "TvAdService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/ad/TvAdService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ServiceHandler"
.end annotation


# static fields
.field private static final blacklist DO_CREATE_SESSION:I = 0x1

.field private static final blacklist DO_NOTIFY_SESSION_CREATED:I = 0x2


# instance fields
.field final synthetic blacklist this$0:Landroid/media/tv/ad/TvAdService;


# direct methods
.method private constructor blacklist <init>(Landroid/media/tv/ad/TvAdService;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/media/tv/ad/TvAdService$ServiceHandler;->this$0:Landroid/media/tv/ad/TvAdService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/media/tv/ad/TvAdService;Landroid/media/tv/ad/TvAdService$ServiceHandler-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/tv/ad/TvAdService$ServiceHandler;-><init>(Landroid/media/tv/ad/TvAdService;)V

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 10

    iget v0, p1, Landroid/os/Message;->what:I

    const-string v1, "error in onSessionCreated"

    const-string v2, "TvAdService"

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unhandled message code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v3, Landroid/media/tv/ad/TvAdService$Session;

    iget-object v4, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v4, Landroid/media/tv/ad/ITvAdSession;

    iget-object v5, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v5, Landroid/media/tv/ad/ITvAdSessionCallback;

    :try_start_0
    invoke-interface {v5, v4}, Landroid/media/tv/ad/ITvAdSessionCallback;->onSessionCreated(Landroid/media/tv/ad/ITvAdSession;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v6

    invoke-static {v2, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    if-eqz v3, :cond_0

    invoke-static {v3, v5}, Landroid/media/tv/ad/TvAdService$Session;->-$$Nest$minitialize(Landroid/media/tv/ad/TvAdService$Session;Landroid/media/tv/ad/ITvAdSessionCallback;)V

    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    return-void

    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v3, Landroid/view/InputChannel;

    iget-object v4, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v4, Landroid/media/tv/ad/ITvAdSessionCallback;

    iget-object v5, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    iget-object v6, v0, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    iget-object v7, p0, Landroid/media/tv/ad/TvAdService$ServiceHandler;->this$0:Landroid/media/tv/ad/TvAdService;

    invoke-virtual {v7, v5, v6}, Landroid/media/tv/ad/TvAdService;->onCreateSession(Ljava/lang/String;Ljava/lang/String;)Landroid/media/tv/ad/TvAdService$Session;

    move-result-object v7

    if-nez v7, :cond_1

    const/4 v8, 0x0

    :try_start_1
    invoke-interface {v4, v8}, Landroid/media/tv/ad/ITvAdSessionCallback;->onSessionCreated(Landroid/media/tv/ad/ITvAdSession;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v8

    invoke-static {v2, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void

    :cond_1
    new-instance v1, Landroid/media/tv/ad/ITvAdSessionWrapper;

    iget-object v2, p0, Landroid/media/tv/ad/TvAdService$ServiceHandler;->this$0:Landroid/media/tv/ad/TvAdService;

    invoke-direct {v1, v2, v7, v3}, Landroid/media/tv/ad/ITvAdSessionWrapper;-><init>(Landroid/content/Context;Landroid/media/tv/ad/TvAdService$Session;Landroid/view/InputChannel;)V

    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v2

    iput-object v7, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    iput-object v1, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    iput-object v4, v2, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    iget-object v8, p0, Landroid/media/tv/ad/TvAdService$ServiceHandler;->this$0:Landroid/media/tv/ad/TvAdService;

    invoke-static {v8}, Landroid/media/tv/ad/TvAdService;->-$$Nest$fgetmServiceHandler(Landroid/media/tv/ad/TvAdService;)Landroid/os/Handler;

    move-result-object v8

    const/4 v9, 0x2

    invoke-virtual {v8, v9, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/Message;->sendToTarget()V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
