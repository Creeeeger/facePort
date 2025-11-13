.class Landroid/service/controls/ControlsProviderService$RequestHandler;
.super Landroid/os/Handler;
.source "ControlsProviderService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/controls/ControlsProviderService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RequestHandler"
.end annotation


# static fields
.field private static final blacklist MSG_ACTION:I = 0x3

.field private static final blacklist MSG_LOAD:I = 0x1

.field private static final blacklist MSG_LOAD_CONTROLS_PROVIDER_INFO:I = 0x65

.field private static final blacklist MSG_LOAD_SUGGESTED:I = 0x4

.field private static final blacklist MSG_SUBSCRIBE:I = 0x2


# instance fields
.field final synthetic blacklist this$0:Landroid/service/controls/ControlsProviderService;


# direct methods
.method constructor blacklist <init>(Landroid/service/controls/ControlsProviderService;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .line 225
    iput-object p1, p0, Landroid/service/controls/ControlsProviderService$RequestHandler;->this$0:Landroid/service/controls/ControlsProviderService;

    .line 226
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 227
    return-void
.end method

.method private blacklist consumerFor(Ljava/lang/String;Landroid/service/controls/IControlsActionCallback;)Ljava/util/function/Consumer;
    .locals 1
    .param p1, "controlId"    # Ljava/lang/String;
    .param p2, "cb"    # Landroid/service/controls/IControlsActionCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/service/controls/IControlsActionCallback;",
            ")",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 300
    new-instance v0, Landroid/service/controls/ControlsProviderService$RequestHandler$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p2, p1}, Landroid/service/controls/ControlsProviderService$RequestHandler$$ExternalSyntheticLambda0;-><init>(Landroid/service/controls/ControlsProviderService$RequestHandler;Landroid/service/controls/IControlsActionCallback;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .line 230
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    const-string v2, "ControlsProviderService"

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 243
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/service/controls/IControlsSubscriber;

    .line 244
    .local v0, "cs":Landroid/service/controls/IControlsSubscriber;
    new-instance v3, Landroid/service/controls/ControlsProviderService$SubscriberProxy;

    iget-object v4, p0, Landroid/service/controls/ControlsProviderService$RequestHandler;->this$0:Landroid/service/controls/ControlsProviderService;

    invoke-static {v4}, Landroid/service/controls/ControlsProviderService;->-$$Nest$fgetmToken(Landroid/service/controls/ControlsProviderService;)Landroid/os/IBinder;

    move-result-object v4

    invoke-direct {v3, v1, v4, v0}, Landroid/service/controls/ControlsProviderService$SubscriberProxy;-><init>(ZLandroid/os/IBinder;Landroid/service/controls/IControlsSubscriber;)V

    move-object v1, v3

    .line 246
    .local v1, "proxy":Landroid/service/controls/ControlsProviderService$SubscriberProxy;
    iget-object v3, p0, Landroid/service/controls/ControlsProviderService$RequestHandler;->this$0:Landroid/service/controls/ControlsProviderService;

    .line 247
    invoke-virtual {v3}, Landroid/service/controls/ControlsProviderService;->createPublisherForSuggested()Ljava/util/concurrent/Flow$Publisher;

    move-result-object v3

    .line 248
    .local v3, "publisher":Ljava/util/concurrent/Flow$Publisher;, "Ljava/util/concurrent/Flow$Publisher<Landroid/service/controls/Control;>;"
    if-nez v3, :cond_0

    .line 249
    const-string v4, "No publisher provided for suggested controls"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    invoke-virtual {v1}, Landroid/service/controls/ControlsProviderService$SubscriberProxy;->onComplete()V

    goto/16 :goto_0

    .line 253
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createPublisherForSuggested mToken:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/service/controls/ControlsProviderService$RequestHandler;->this$0:Landroid/service/controls/ControlsProviderService;

    invoke-static {v5}, Landroid/service/controls/ControlsProviderService;->-$$Nest$fgetmToken(Landroid/service/controls/ControlsProviderService;)Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    invoke-interface {v3, v1}, Ljava/util/concurrent/Flow$Publisher;->subscribe(Ljava/util/concurrent/Flow$Subscriber;)V

    .line 257
    goto/16 :goto_0

    .line 274
    .end local v0    # "cs":Landroid/service/controls/IControlsSubscriber;
    .end local v1    # "proxy":Landroid/service/controls/ControlsProviderService$SubscriberProxy;
    .end local v3    # "publisher":Ljava/util/concurrent/Flow$Publisher;, "Ljava/util/concurrent/Flow$Publisher<Landroid/service/controls/Control;>;"
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/service/controls/ControlsProviderService$ActionMessage;

    .line 277
    .local v0, "aMsg":Landroid/service/controls/ControlsProviderService$ActionMessage;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "performControlAction mToken:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroid/service/controls/ControlsProviderService$RequestHandler;->this$0:Landroid/service/controls/ControlsProviderService;

    invoke-static {v3}, Landroid/service/controls/ControlsProviderService;->-$$Nest$fgetmToken(Landroid/service/controls/ControlsProviderService;)Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", ControlId:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, v0, Landroid/service/controls/ControlsProviderService$ActionMessage;->mControlId:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    iget-object v1, p0, Landroid/service/controls/ControlsProviderService$RequestHandler;->this$0:Landroid/service/controls/ControlsProviderService;

    iget-object v2, v0, Landroid/service/controls/ControlsProviderService$ActionMessage;->mControlId:Ljava/lang/String;

    iget-object v3, v0, Landroid/service/controls/ControlsProviderService$ActionMessage;->mAction:Landroid/service/controls/actions/ControlAction;

    iget-object v4, v0, Landroid/service/controls/ControlsProviderService$ActionMessage;->mControlId:Ljava/lang/String;

    iget-object v5, v0, Landroid/service/controls/ControlsProviderService$ActionMessage;->mCb:Landroid/service/controls/IControlsActionCallback;

    .line 280
    invoke-direct {p0, v4, v5}, Landroid/service/controls/ControlsProviderService$RequestHandler;->consumerFor(Ljava/lang/String;Landroid/service/controls/IControlsActionCallback;)Ljava/util/function/Consumer;

    move-result-object v4

    .line 279
    invoke-virtual {v1, v2, v3, v4}, Landroid/service/controls/ControlsProviderService;->performControlAction(Ljava/lang/String;Landroid/service/controls/actions/ControlAction;Ljava/util/function/Consumer;)V

    .line 281
    goto/16 :goto_0

    .line 261
    .end local v0    # "aMsg":Landroid/service/controls/ControlsProviderService$ActionMessage;
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/service/controls/ControlsProviderService$SubscribeMessage;

    .line 262
    .local v0, "sMsg":Landroid/service/controls/ControlsProviderService$SubscribeMessage;
    new-instance v1, Landroid/service/controls/ControlsProviderService$SubscriberProxy;

    iget-object v3, p0, Landroid/service/controls/ControlsProviderService$RequestHandler;->this$0:Landroid/service/controls/ControlsProviderService;

    const/4 v4, 0x0

    invoke-static {v3}, Landroid/service/controls/ControlsProviderService;->-$$Nest$fgetmToken(Landroid/service/controls/ControlsProviderService;)Landroid/os/IBinder;

    move-result-object v5

    iget-object v6, v0, Landroid/service/controls/ControlsProviderService$SubscribeMessage;->mSubscriber:Landroid/service/controls/IControlsSubscriber;

    invoke-direct {v1, v3, v4, v5, v6}, Landroid/service/controls/ControlsProviderService$SubscriberProxy;-><init>(Landroid/content/Context;ZLandroid/os/IBinder;Landroid/service/controls/IControlsSubscriber;)V

    .line 266
    .restart local v1    # "proxy":Landroid/service/controls/ControlsProviderService$SubscriberProxy;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createPublisherFor mToken:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/service/controls/ControlsProviderService$RequestHandler;->this$0:Landroid/service/controls/ControlsProviderService;

    invoke-static {v4}, Landroid/service/controls/ControlsProviderService;->-$$Nest$fgetmToken(Landroid/service/controls/ControlsProviderService;)Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", ControlIds:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/service/controls/ControlsProviderService$SubscribeMessage;->mControlIds:Ljava/util/List;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    iget-object v2, p0, Landroid/service/controls/ControlsProviderService$RequestHandler;->this$0:Landroid/service/controls/ControlsProviderService;

    iget-object v3, v0, Landroid/service/controls/ControlsProviderService$SubscribeMessage;->mControlIds:Ljava/util/List;

    invoke-virtual {v2, v3}, Landroid/service/controls/ControlsProviderService;->createPublisherFor(Ljava/util/List;)Ljava/util/concurrent/Flow$Publisher;

    move-result-object v2

    .line 269
    invoke-interface {v2, v1}, Ljava/util/concurrent/Flow$Publisher;->subscribe(Ljava/util/concurrent/Flow$Subscriber;)V

    .line 270
    goto :goto_0

    .line 232
    .end local v0    # "sMsg":Landroid/service/controls/ControlsProviderService$SubscribeMessage;
    .end local v1    # "proxy":Landroid/service/controls/ControlsProviderService$SubscriberProxy;
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/service/controls/IControlsSubscriber;

    .line 233
    .local v0, "cs":Landroid/service/controls/IControlsSubscriber;
    new-instance v3, Landroid/service/controls/ControlsProviderService$SubscriberProxy;

    iget-object v4, p0, Landroid/service/controls/ControlsProviderService$RequestHandler;->this$0:Landroid/service/controls/ControlsProviderService;

    invoke-static {v4}, Landroid/service/controls/ControlsProviderService;->-$$Nest$fgetmToken(Landroid/service/controls/ControlsProviderService;)Landroid/os/IBinder;

    move-result-object v4

    invoke-direct {v3, v1, v4, v0}, Landroid/service/controls/ControlsProviderService$SubscriberProxy;-><init>(ZLandroid/os/IBinder;Landroid/service/controls/IControlsSubscriber;)V

    move-object v1, v3

    .line 236
    .restart local v1    # "proxy":Landroid/service/controls/ControlsProviderService$SubscriberProxy;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createPublisherForAllAvailable mToken:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/service/controls/ControlsProviderService$RequestHandler;->this$0:Landroid/service/controls/ControlsProviderService;

    invoke-static {v4}, Landroid/service/controls/ControlsProviderService;->-$$Nest$fgetmToken(Landroid/service/controls/ControlsProviderService;)Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    iget-object v2, p0, Landroid/service/controls/ControlsProviderService$RequestHandler;->this$0:Landroid/service/controls/ControlsProviderService;

    invoke-virtual {v2}, Landroid/service/controls/ControlsProviderService;->createPublisherForAllAvailable()Ljava/util/concurrent/Flow$Publisher;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/concurrent/Flow$Publisher;->subscribe(Ljava/util/concurrent/Flow$Subscriber;)V

    .line 239
    nop

    .line 285
    .end local v0    # "cs":Landroid/service/controls/IControlsSubscriber;
    .end local v1    # "proxy":Landroid/service/controls/ControlsProviderService$SubscriberProxy;
    :goto_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x65

    if-ne v0, v1, :cond_1

    .line 286
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/service/controls/IControlsProviderInfoSubscriber;

    .line 288
    .local v0, "cpis":Landroid/service/controls/IControlsProviderInfoSubscriber;
    iget-object v1, p0, Landroid/service/controls/ControlsProviderService$RequestHandler;->this$0:Landroid/service/controls/ControlsProviderService;

    invoke-static {v1}, Landroid/service/controls/ControlsProviderService;->-$$Nest$fgetmControlsProviderInfoSupplier(Landroid/service/controls/ControlsProviderService;)Ljava/util/function/Supplier;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 290
    :try_start_0
    iget-object v1, p0, Landroid/service/controls/ControlsProviderService$RequestHandler;->this$0:Landroid/service/controls/ControlsProviderService;

    invoke-static {v1}, Landroid/service/controls/ControlsProviderService;->-$$Nest$fgetmToken(Landroid/service/controls/ControlsProviderService;)Landroid/os/IBinder;

    move-result-object v1

    iget-object v2, p0, Landroid/service/controls/ControlsProviderService$RequestHandler;->this$0:Landroid/service/controls/ControlsProviderService;

    invoke-static {v2}, Landroid/service/controls/ControlsProviderService;->-$$Nest$fgetmControlsProviderInfoSupplier(Landroid/service/controls/ControlsProviderService;)Ljava/util/function/Supplier;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/controls/ControlsProviderInfo;

    invoke-interface {v0, v1, v2}, Landroid/service/controls/IControlsProviderInfoSubscriber;->onNext(Landroid/os/IBinder;Landroid/service/controls/ControlsProviderInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 293
    goto :goto_1

    .line 291
    :catch_0
    move-exception v1

    .line 292
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 296
    .end local v0    # "cpis":Landroid/service/controls/IControlsProviderInfoSubscriber;
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method synthetic blacklist lambda$consumerFor$0$android-service-controls-ControlsProviderService$RequestHandler(Landroid/service/controls/IControlsActionCallback;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 2
    .param p1, "cb"    # Landroid/service/controls/IControlsActionCallback;
    .param p2, "controlId"    # Ljava/lang/String;
    .param p3, "response"    # Ljava/lang/Integer;

    .line 301
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Landroid/service/controls/actions/ControlAction;->isValidResponse(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 303
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Not valid response result: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ControlsProviderService"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    .line 307
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/service/controls/ControlsProviderService$RequestHandler;->this$0:Landroid/service/controls/ControlsProviderService;

    invoke-static {v0}, Landroid/service/controls/ControlsProviderService;->-$$Nest$fgetmToken(Landroid/service/controls/ControlsProviderService;)Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {p1, v0, p2, v1}, Landroid/service/controls/IControlsActionCallback;->accept(Landroid/os/IBinder;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 310
    goto :goto_0

    .line 308
    :catch_0
    move-exception v0

    .line 309
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 311
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method
