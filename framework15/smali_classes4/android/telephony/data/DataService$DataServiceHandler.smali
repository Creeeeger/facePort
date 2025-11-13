.class Landroid/telephony/data/DataService$DataServiceHandler;
.super Landroid/os/Handler;
.source "DataService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/data/DataService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DataServiceHandler"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/telephony/data/DataService;


# direct methods
.method constructor blacklist <init>(Landroid/telephony/data/DataService;Landroid/os/Looper;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/telephony/data/DataService$DataServiceHandler;->this$0:Landroid/telephony/data/DataService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget v3, v2, Landroid/os/Message;->arg1:I

    iget-object v0, v1, Landroid/telephony/data/DataService$DataServiceHandler;->this$0:Landroid/telephony/data/DataService;

    invoke-static {v0}, Landroid/telephony/data/DataService;->-$$Nest$fgetmServiceMap(Landroid/telephony/data/DataService;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Landroid/telephony/data/DataService$DataServiceProvider;

    iget v0, v2, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    move-object v4, v2

    move-object v2, v15

    goto/16 :goto_8

    :pswitch_0
    if-nez v15, :cond_0

    move-object v4, v2

    move-object v2, v15

    goto/16 :goto_8

    :cond_0
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/telephony/data/DataService$ValidationRequest;

    iget v4, v0, Landroid/telephony/data/DataService$ValidationRequest;->cid:I

    iget-object v5, v0, Landroid/telephony/data/DataService$ValidationRequest;->executor:Ljava/util/concurrent/Executor;

    iget-object v6, v0, Landroid/telephony/data/DataService$ValidationRequest;->callback:Lcom/android/internal/telephony/IIntegerConsumer;

    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v7, Landroid/telephony/data/DataService$DataServiceHandler$$ExternalSyntheticLambda0;

    invoke-direct {v7, v6}, Landroid/telephony/data/DataService$DataServiceHandler$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/telephony/IIntegerConsumer;)V

    invoke-static {v7}, Lcom/android/internal/util/FunctionalUtils;->ignoreRemoteException(Lcom/android/internal/util/FunctionalUtils$RemoteExceptionIgnoringConsumer;)Ljava/util/function/Consumer;

    move-result-object v6

    invoke-virtual {v15, v4, v5, v6}, Landroid/telephony/data/DataService$DataServiceProvider;->requestNetworkValidation(ILjava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    move-object v4, v2

    move-object v2, v15

    goto/16 :goto_8

    :pswitch_1
    if-nez v15, :cond_1

    move-object v4, v2

    move-object v2, v15

    goto/16 :goto_8

    :cond_1
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Landroid/telephony/data/DataService$ApnUnthrottledIndication;

    :try_start_0
    iget-object v0, v4, Landroid/telephony/data/DataService$ApnUnthrottledIndication;->dataProfile:Landroid/telephony/data/DataProfile;

    if-eqz v0, :cond_2

    iget-object v0, v4, Landroid/telephony/data/DataService$ApnUnthrottledIndication;->callback:Landroid/telephony/data/IDataServiceCallback;

    iget-object v5, v4, Landroid/telephony/data/DataService$ApnUnthrottledIndication;->dataProfile:Landroid/telephony/data/DataProfile;

    invoke-interface {v0, v5}, Landroid/telephony/data/IDataServiceCallback;->onDataProfileUnthrottled(Landroid/telephony/data/DataProfile;)V

    goto :goto_0

    :cond_2
    iget-object v0, v4, Landroid/telephony/data/DataService$ApnUnthrottledIndication;->callback:Landroid/telephony/data/IDataServiceCallback;

    iget-object v5, v4, Landroid/telephony/data/DataService$ApnUnthrottledIndication;->apn:Ljava/lang/String;

    invoke-interface {v0, v5}, Landroid/telephony/data/IDataServiceCallback;->onApnUnthrottled(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    move-object v4, v2

    move-object v2, v15

    goto/16 :goto_8

    :catch_0
    move-exception v0

    iget-object v5, v1, Landroid/telephony/data/DataService$DataServiceHandler;->this$0:Landroid/telephony/data/DataService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to call onApnUnthrottled. "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/data/DataService;->-$$Nest$mloge(Landroid/telephony/data/DataService;Ljava/lang/String;)V

    move-object v4, v2

    move-object v2, v15

    goto/16 :goto_8

    :pswitch_2
    if-nez v15, :cond_3

    move-object v4, v2

    move-object v2, v15

    goto/16 :goto_8

    :cond_3
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/telephony/data/IDataServiceCallback;

    invoke-static {v15, v0}, Landroid/telephony/data/DataService$DataServiceProvider;->-$$Nest$munregisterForApnUnthrottled(Landroid/telephony/data/DataService$DataServiceProvider;Landroid/telephony/data/IDataServiceCallback;)V

    move-object v4, v2

    move-object v2, v15

    goto/16 :goto_8

    :pswitch_3
    if-nez v15, :cond_4

    move-object v4, v2

    move-object v2, v15

    goto/16 :goto_8

    :cond_4
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/telephony/data/IDataServiceCallback;

    invoke-static {v15, v0}, Landroid/telephony/data/DataService$DataServiceProvider;->-$$Nest$mregisterForApnUnthrottled(Landroid/telephony/data/DataService$DataServiceProvider;Landroid/telephony/data/IDataServiceCallback;)V

    move-object v4, v2

    move-object v2, v15

    goto/16 :goto_8

    :pswitch_4
    if-nez v15, :cond_5

    move-object v4, v2

    move-object v2, v15

    goto/16 :goto_8

    :cond_5
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/telephony/data/DataService$BeginCancelHandoverRequest;

    iget v5, v0, Landroid/telephony/data/DataService$BeginCancelHandoverRequest;->cid:I

    iget-object v6, v0, Landroid/telephony/data/DataService$BeginCancelHandoverRequest;->callback:Landroid/telephony/data/IDataServiceCallback;

    if-eqz v6, :cond_6

    new-instance v4, Landroid/telephony/data/DataServiceCallback;

    iget-object v6, v0, Landroid/telephony/data/DataService$BeginCancelHandoverRequest;->callback:Landroid/telephony/data/IDataServiceCallback;

    invoke-direct {v4, v6}, Landroid/telephony/data/DataServiceCallback;-><init>(Landroid/telephony/data/IDataServiceCallback;)V

    goto :goto_1

    :cond_6
    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v15, v5, v4}, Landroid/telephony/data/DataService$DataServiceProvider;->cancelHandover(ILandroid/telephony/data/DataServiceCallback;)V

    move-object v4, v2

    move-object v2, v15

    goto/16 :goto_8

    :pswitch_5
    if-nez v15, :cond_7

    move-object v4, v2

    move-object v2, v15

    goto/16 :goto_8

    :cond_7
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/telephony/data/DataService$BeginCancelHandoverRequest;

    iget v5, v0, Landroid/telephony/data/DataService$BeginCancelHandoverRequest;->cid:I

    iget-object v6, v0, Landroid/telephony/data/DataService$BeginCancelHandoverRequest;->callback:Landroid/telephony/data/IDataServiceCallback;

    if-eqz v6, :cond_8

    new-instance v4, Landroid/telephony/data/DataServiceCallback;

    iget-object v6, v0, Landroid/telephony/data/DataService$BeginCancelHandoverRequest;->callback:Landroid/telephony/data/IDataServiceCallback;

    invoke-direct {v4, v6}, Landroid/telephony/data/DataServiceCallback;-><init>(Landroid/telephony/data/IDataServiceCallback;)V

    goto :goto_2

    :cond_8
    const/4 v4, 0x0

    :goto_2
    invoke-virtual {v15, v5, v4}, Landroid/telephony/data/DataService$DataServiceProvider;->startHandover(ILandroid/telephony/data/DataServiceCallback;)V

    move-object v4, v2

    move-object v2, v15

    goto/16 :goto_8

    :pswitch_6
    if-nez v15, :cond_9

    move-object v4, v2

    move-object v2, v15

    goto/16 :goto_8

    :cond_9
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Landroid/telephony/data/DataService$DataCallListChangedIndication;

    :try_start_1
    iget-object v0, v4, Landroid/telephony/data/DataService$DataCallListChangedIndication;->callback:Landroid/telephony/data/IDataServiceCallback;

    iget-object v5, v4, Landroid/telephony/data/DataService$DataCallListChangedIndication;->dataCallList:Ljava/util/List;

    invoke-interface {v0, v5}, Landroid/telephony/data/IDataServiceCallback;->onDataCallListChanged(Ljava/util/List;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v4, v2

    move-object v2, v15

    goto/16 :goto_8

    :catch_1
    move-exception v0

    iget-object v5, v1, Landroid/telephony/data/DataService$DataServiceHandler;->this$0:Landroid/telephony/data/DataService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to call onDataCallListChanged. "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/data/DataService;->-$$Nest$mloge(Landroid/telephony/data/DataService;Ljava/lang/String;)V

    move-object v4, v2

    move-object v2, v15

    goto/16 :goto_8

    :pswitch_7
    if-nez v15, :cond_a

    move-object v4, v2

    move-object v2, v15

    goto/16 :goto_8

    :cond_a
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/telephony/data/IDataServiceCallback;

    invoke-static {v15, v0}, Landroid/telephony/data/DataService$DataServiceProvider;->-$$Nest$munregisterForDataCallListChanged(Landroid/telephony/data/DataService$DataServiceProvider;Landroid/telephony/data/IDataServiceCallback;)V

    move-object v4, v2

    move-object v2, v15

    goto/16 :goto_8

    :pswitch_8
    if-nez v15, :cond_b

    move-object v4, v2

    move-object v2, v15

    goto/16 :goto_8

    :cond_b
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/telephony/data/IDataServiceCallback;

    invoke-static {v15, v0}, Landroid/telephony/data/DataService$DataServiceProvider;->-$$Nest$mregisterForDataCallListChanged(Landroid/telephony/data/DataService$DataServiceProvider;Landroid/telephony/data/IDataServiceCallback;)V

    move-object v4, v2

    move-object v2, v15

    goto/16 :goto_8

    :pswitch_9
    if-nez v15, :cond_c

    move-object v4, v2

    move-object v2, v15

    goto/16 :goto_8

    :cond_c
    new-instance v0, Landroid/telephony/data/DataServiceCallback;

    iget-object v4, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/telephony/data/IDataServiceCallback;

    invoke-direct {v0, v4}, Landroid/telephony/data/DataServiceCallback;-><init>(Landroid/telephony/data/IDataServiceCallback;)V

    invoke-virtual {v15, v0}, Landroid/telephony/data/DataService$DataServiceProvider;->requestDataCallList(Landroid/telephony/data/DataServiceCallback;)V

    move-object v4, v2

    move-object v2, v15

    goto/16 :goto_8

    :pswitch_a
    if-nez v15, :cond_d

    move-object v4, v2

    move-object v2, v15

    goto/16 :goto_8

    :cond_d
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/telephony/data/DataService$SetDataProfileRequest;

    iget-object v5, v0, Landroid/telephony/data/DataService$SetDataProfileRequest;->dps:Ljava/util/List;

    iget-boolean v6, v0, Landroid/telephony/data/DataService$SetDataProfileRequest;->isRoaming:Z

    iget-object v7, v0, Landroid/telephony/data/DataService$SetDataProfileRequest;->callback:Landroid/telephony/data/IDataServiceCallback;

    if-eqz v7, :cond_e

    new-instance v4, Landroid/telephony/data/DataServiceCallback;

    iget-object v7, v0, Landroid/telephony/data/DataService$SetDataProfileRequest;->callback:Landroid/telephony/data/IDataServiceCallback;

    invoke-direct {v4, v7}, Landroid/telephony/data/DataServiceCallback;-><init>(Landroid/telephony/data/IDataServiceCallback;)V

    goto :goto_3

    :cond_e
    const/4 v4, 0x0

    :goto_3
    invoke-virtual {v15, v5, v6, v4}, Landroid/telephony/data/DataService$DataServiceProvider;->setDataProfile(Ljava/util/List;ZLandroid/telephony/data/DataServiceCallback;)V

    move-object v4, v2

    move-object v2, v15

    goto/16 :goto_8

    :pswitch_b
    if-nez v15, :cond_f

    move-object v4, v2

    move-object v2, v15

    goto/16 :goto_8

    :cond_f
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/telephony/data/DataService$SetInitialAttachApnRequest;

    iget-object v5, v0, Landroid/telephony/data/DataService$SetInitialAttachApnRequest;->dataProfile:Landroid/telephony/data/DataProfile;

    iget-boolean v6, v0, Landroid/telephony/data/DataService$SetInitialAttachApnRequest;->isRoaming:Z

    iget-object v7, v0, Landroid/telephony/data/DataService$SetInitialAttachApnRequest;->callback:Landroid/telephony/data/IDataServiceCallback;

    if-eqz v7, :cond_10

    new-instance v4, Landroid/telephony/data/DataServiceCallback;

    iget-object v7, v0, Landroid/telephony/data/DataService$SetInitialAttachApnRequest;->callback:Landroid/telephony/data/IDataServiceCallback;

    invoke-direct {v4, v7}, Landroid/telephony/data/DataServiceCallback;-><init>(Landroid/telephony/data/IDataServiceCallback;)V

    goto :goto_4

    :cond_10
    const/4 v4, 0x0

    :goto_4
    invoke-virtual {v15, v5, v6, v4}, Landroid/telephony/data/DataService$DataServiceProvider;->setInitialAttachApn(Landroid/telephony/data/DataProfile;ZLandroid/telephony/data/DataServiceCallback;)V

    move-object v4, v2

    move-object v2, v15

    goto/16 :goto_8

    :pswitch_c
    if-nez v15, :cond_11

    move-object v4, v2

    move-object v2, v15

    goto/16 :goto_8

    :cond_11
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/telephony/data/DataService$DeactivateDataCallRequest;

    iget v5, v0, Landroid/telephony/data/DataService$DeactivateDataCallRequest;->cid:I

    iget v6, v0, Landroid/telephony/data/DataService$DeactivateDataCallRequest;->reason:I

    iget-object v7, v0, Landroid/telephony/data/DataService$DeactivateDataCallRequest;->callback:Landroid/telephony/data/IDataServiceCallback;

    if-eqz v7, :cond_12

    new-instance v4, Landroid/telephony/data/DataServiceCallback;

    iget-object v7, v0, Landroid/telephony/data/DataService$DeactivateDataCallRequest;->callback:Landroid/telephony/data/IDataServiceCallback;

    invoke-direct {v4, v7}, Landroid/telephony/data/DataServiceCallback;-><init>(Landroid/telephony/data/IDataServiceCallback;)V

    goto :goto_5

    :cond_12
    const/4 v4, 0x0

    :goto_5
    invoke-virtual {v15, v5, v6, v4}, Landroid/telephony/data/DataService$DataServiceProvider;->deactivateDataCall(IILandroid/telephony/data/DataServiceCallback;)V

    move-object v4, v2

    move-object v2, v15

    goto/16 :goto_8

    :pswitch_d
    if-nez v15, :cond_13

    move-object v4, v2

    move-object v2, v15

    goto/16 :goto_8

    :cond_13
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/telephony/data/DataService$SetupDataCallRequest;

    iget v5, v0, Landroid/telephony/data/DataService$SetupDataCallRequest;->accessNetworkType:I

    iget-object v6, v0, Landroid/telephony/data/DataService$SetupDataCallRequest;->dataProfile:Landroid/telephony/data/DataProfile;

    iget-boolean v7, v0, Landroid/telephony/data/DataService$SetupDataCallRequest;->isRoaming:Z

    iget-boolean v8, v0, Landroid/telephony/data/DataService$SetupDataCallRequest;->allowRoaming:Z

    iget v9, v0, Landroid/telephony/data/DataService$SetupDataCallRequest;->reason:I

    iget-object v10, v0, Landroid/telephony/data/DataService$SetupDataCallRequest;->linkProperties:Landroid/net/LinkProperties;

    iget v11, v0, Landroid/telephony/data/DataService$SetupDataCallRequest;->pduSessionId:I

    iget-object v12, v0, Landroid/telephony/data/DataService$SetupDataCallRequest;->sliceInfo:Landroid/telephony/data/NetworkSliceInfo;

    iget-object v13, v0, Landroid/telephony/data/DataService$SetupDataCallRequest;->trafficDescriptor:Landroid/telephony/data/TrafficDescriptor;

    iget-boolean v14, v0, Landroid/telephony/data/DataService$SetupDataCallRequest;->matchAllRuleAllowed:Z

    iget-object v4, v0, Landroid/telephony/data/DataService$SetupDataCallRequest;->callback:Landroid/telephony/data/IDataServiceCallback;

    if-eqz v4, :cond_14

    new-instance v4, Landroid/telephony/data/DataServiceCallback;

    iget-object v2, v0, Landroid/telephony/data/DataService$SetupDataCallRequest;->callback:Landroid/telephony/data/IDataServiceCallback;

    invoke-direct {v4, v2}, Landroid/telephony/data/DataServiceCallback;-><init>(Landroid/telephony/data/IDataServiceCallback;)V

    move-object/from16 v16, v4

    goto :goto_6

    :cond_14
    const/16 v16, 0x0

    :goto_6
    move-object v4, v15

    move-object v2, v15

    move-object/from16 v15, v16

    invoke-virtual/range {v4 .. v15}, Landroid/telephony/data/DataService$DataServiceProvider;->setupDataCall(ILandroid/telephony/data/DataProfile;ZZILandroid/net/LinkProperties;ILandroid/telephony/data/NetworkSliceInfo;Landroid/telephony/data/TrafficDescriptor;ZLandroid/telephony/data/DataServiceCallback;)V

    move-object/from16 v4, p1

    goto :goto_8

    :pswitch_e
    move-object v2, v15

    const/4 v0, 0x0

    :goto_7
    iget-object v2, v1, Landroid/telephony/data/DataService$DataServiceHandler;->this$0:Landroid/telephony/data/DataService;

    invoke-static {v2}, Landroid/telephony/data/DataService;->-$$Nest$fgetmServiceMap(Landroid/telephony/data/DataService;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_16

    iget-object v2, v1, Landroid/telephony/data/DataService$DataServiceHandler;->this$0:Landroid/telephony/data/DataService;

    invoke-static {v2}, Landroid/telephony/data/DataService;->-$$Nest$fgetmServiceMap(Landroid/telephony/data/DataService;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroid/telephony/data/DataService$DataServiceProvider;

    if-eqz v15, :cond_15

    invoke-virtual {v15}, Landroid/telephony/data/DataService$DataServiceProvider;->close()V

    :cond_15
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_16
    iget-object v0, v1, Landroid/telephony/data/DataService$DataServiceHandler;->this$0:Landroid/telephony/data/DataService;

    invoke-static {v0}, Landroid/telephony/data/DataService;->-$$Nest$fgetmServiceMap(Landroid/telephony/data/DataService;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    move-object/from16 v4, p1

    goto :goto_9

    :pswitch_f
    move-object v2, v15

    if-eqz v2, :cond_17

    invoke-virtual {v2}, Landroid/telephony/data/DataService$DataServiceProvider;->close()V

    iget-object v0, v1, Landroid/telephony/data/DataService$DataServiceHandler;->this$0:Landroid/telephony/data/DataService;

    invoke-static {v0}, Landroid/telephony/data/DataService;->-$$Nest$fgetmServiceMap(Landroid/telephony/data/DataService;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->remove(I)V

    move-object/from16 v4, p1

    goto :goto_8

    :cond_17
    move-object/from16 v4, p1

    goto :goto_8

    :pswitch_10
    move-object v2, v15

    iget-object v0, v1, Landroid/telephony/data/DataService$DataServiceHandler;->this$0:Landroid/telephony/data/DataService;

    move-object/from16 v4, p1

    iget v5, v4, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v5}, Landroid/telephony/data/DataService;->onCreateDataServiceProvider(I)Landroid/telephony/data/DataService$DataServiceProvider;

    move-result-object v15

    if-eqz v15, :cond_18

    iget-object v0, v1, Landroid/telephony/data/DataService$DataServiceHandler;->this$0:Landroid/telephony/data/DataService;

    invoke-static {v0}, Landroid/telephony/data/DataService;->-$$Nest$fgetmServiceMap(Landroid/telephony/data/DataService;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, v3, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_9

    :goto_8
    move-object v15, v2

    :cond_18
    :goto_9
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
