.class Landroid/telecom/ConnectionService$2;
.super Landroid/os/Handler;
.source "ConnectionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/ConnectionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/telecom/ConnectionService;


# direct methods
.method constructor blacklist <init>(Landroid/telecom/ConnectionService;Landroid/os/Looper;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 21

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    iget v0, v11, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const-string v2, "createConnectionFailed %s"

    const-string v3, "Enqueueing pre-init conference request %s"

    const-string v4, "H.CS.crCoC"

    const-string v5, "H.CS.crCoF"

    const-string v6, "H.CS.crCo"

    const-string v7, "H.CS.r"

    const-string v12, "Enqueueing pre-init request %s"

    const-string v8, "H.CS.cASC"

    const/4 v9, 0x0

    const/4 v13, 0x1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_9

    :pswitch_1
    iget-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    invoke-static {v0, v8}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iget-object v3, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v3, v0, v2}, Landroid/telecom/ConnectionService;->-$$Nest$monMuteStateChanged(Landroid/telecom/ConnectionService;Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    nop

    goto/16 :goto_9

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    throw v0

    :pswitch_2
    iget-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    invoke-static {v0, v8}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    :try_start_1
    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    iget-object v3, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v3, v0, v2}, Landroid/telecom/ConnectionService;->-$$Nest$monAvailableCallEndpointsChanged(Landroid/telecom/ConnectionService;Ljava/lang/String;Ljava/util/List;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    nop

    goto/16 :goto_9

    :catchall_1
    move-exception v0

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    throw v0

    :pswitch_3
    iget-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    invoke-static {v0, v8}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    :try_start_2
    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v2, Landroid/telecom/CallEndpoint;

    iget-object v3, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v3, v0, v2}, Landroid/telecom/ConnectionService;->-$$Nest$monCallEndpointChanged(Landroid/telecom/ConnectionService;Ljava/lang/String;Landroid/telecom/CallEndpoint;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    nop

    goto/16 :goto_9

    :catchall_2
    move-exception v0

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    throw v0

    :pswitch_4
    iget-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    const-string v2, "H.CS.tBNUS"

    invoke-static {v0, v2}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    :try_start_3
    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iget-object v3, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v3, v0, v2}, Landroid/telecom/ConnectionService;->-$$Nest$monTrackedByNonUiService(Landroid/telecom/ConnectionService;Ljava/lang/String;Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    nop

    goto/16 :goto_9

    :catchall_3
    move-exception v0

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    throw v0

    :pswitch_5
    iget-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    const-string v2, "H.CS.uAU"

    invoke-static {v0, v2}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    :try_start_4
    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iget-object v3, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v3, v0, v2}, Landroid/telecom/ConnectionService;->-$$Nest$monUsingAlternativeUi(Landroid/telecom/ConnectionService;Ljava/lang/String;Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    nop

    goto/16 :goto_9

    :catchall_4
    move-exception v0

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    throw v0

    :pswitch_6
    iget-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    :try_start_5
    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    const-string v2, "H.CS.oCFC"

    invoke-static {v0, v2}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v2, Landroid/telecom/Connection$CallFilteringCompletionInfo;

    iget-object v3, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v3, v0, v2}, Landroid/telecom/ConnectionService;->-$$Nest$monCallFilteringCompleted(Landroid/telecom/ConnectionService;Ljava/lang/String;Landroid/telecom/Connection$CallFilteringCompletionInfo;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    nop

    goto/16 :goto_9

    :catchall_5
    move-exception v0

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    throw v0

    :pswitch_7
    iget-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    const-string v2, "H.CS.cTrans"

    invoke-static {v0, v2}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    :try_start_6
    iget-object v0, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v3, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-static {v0, v2, v3}, Landroid/telecom/ConnectionService;->-$$Nest$mconsultativeTransfer(Landroid/telecom/ConnectionService;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    nop

    goto/16 :goto_9

    :catchall_6
    move-exception v0

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    throw v0

    :pswitch_8
    iget-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    const-string v2, "H.CS.trans"

    invoke-static {v0, v2}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    :try_start_7
    iget v0, v1, Lcom/android/internal/os/SomeArgs;->argi1:I

    if-ne v0, v13, :cond_0

    move v9, v13

    :cond_0
    move v0, v9

    iget-object v2, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    iget-object v3, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v4, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v4, Landroid/net/Uri;

    invoke-static {v2, v3, v4, v0}, Landroid/telecom/ConnectionService;->-$$Nest$mtransfer(Landroid/telecom/ConnectionService;Ljava/lang/String;Landroid/net/Uri;Z)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    nop

    goto/16 :goto_9

    :catchall_7
    move-exception v0

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    throw v0

    :pswitch_9
    iget-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    :try_start_8
    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    const-string v2, "H.CS.aP"

    invoke-static {v0, v2}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    iget-object v0, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v3, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Ljava/util/List;

    invoke-static {v0, v2, v3}, Landroid/telecom/ConnectionService;->-$$Nest$maddConferenceParticipants(Landroid/telecom/ConnectionService;Ljava/lang/String;Ljava/util/List;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_8

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    nop

    goto/16 :goto_9

    :catchall_8
    move-exception v0

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    throw v0

    :pswitch_a
    iget-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    invoke-static {v0, v7}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    :try_start_9
    iget-object v0, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget v3, v1, Lcom/android/internal/os/SomeArgs;->argi1:I

    invoke-static {v0, v2, v3}, Landroid/telecom/ConnectionService;->-$$Nest$mreject(Landroid/telecom/ConnectionService;Ljava/lang/String;I)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_9

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    nop

    goto/16 :goto_9

    :catchall_9
    move-exception v0

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    throw v0

    :pswitch_b
    iget-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v12, v0

    check-cast v12, Lcom/android/internal/os/SomeArgs;

    iget-object v0, v12, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    invoke-static {v0, v5}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    :try_start_a
    iget-object v0, v12, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, v12, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v1, Landroid/telecom/ConnectionRequest;

    move-object v14, v1

    iget v1, v12, Lcom/android/internal/os/SomeArgs;->argi1:I

    if-ne v1, v13, :cond_1

    move v9, v13

    :cond_1
    iget-object v1, v12, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    check-cast v1, Landroid/telecom/PhoneAccountHandle;

    move-object v13, v1

    iget-object v1, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v1}, Landroid/telecom/ConnectionService;->-$$Nest$fgetmAreAccountsInitialized(Landroid/telecom/ConnectionService;)Z

    move-result v1

    if-nez v1, :cond_2

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v10, v3, v1}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v1}, Landroid/telecom/ConnectionService;->-$$Nest$fgetmPreInitializationConnectionRequests(Landroid/telecom/ConnectionService;)Ljava/util/List;

    move-result-object v15

    new-instance v16, Landroid/telecom/ConnectionService$2$6;

    const-string v3, "H.CS.crConfF.pIConfR"

    const/4 v4, 0x0

    move-object/from16 v1, v16

    move-object/from16 v2, p0

    move-object v5, v13

    move-object v6, v0

    move-object v7, v14

    move v8, v9

    invoke-direct/range {v1 .. v8}, Landroid/telecom/ConnectionService$2$6;-><init>(Landroid/telecom/ConnectionService$2;Ljava/lang/String;Ljava/lang/Object;Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Landroid/telecom/ConnectionRequest;Z)V

    invoke-virtual/range {v16 .. v16}, Landroid/telecom/ConnectionService$2$6;->prepare()Ljava/lang/Runnable;

    move-result-object v1

    invoke-interface {v15, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const-string v1, "createConferenceFailed %s"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v10, v1, v2}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v1, v13, v0, v14, v9}, Landroid/telecom/ConnectionService;->-$$Nest$mcreateConferenceFailed(Landroid/telecom/ConnectionService;Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Landroid/telecom/ConnectionRequest;Z)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_a

    :goto_0
    invoke-virtual {v12}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    nop

    goto/16 :goto_9

    :catchall_a
    move-exception v0

    invoke-virtual {v12}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    throw v0

    :pswitch_c
    iget-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lcom/android/internal/os/SomeArgs;

    iget-object v0, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    invoke-static {v0, v4}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    :try_start_b
    iget-object v0, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v4, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v4}, Landroid/telecom/ConnectionService;->-$$Nest$fgetmAreAccountsInitialized(Landroid/telecom/ConnectionService;)Z

    move-result v4

    if-nez v4, :cond_3

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v10, v3, v4}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v3, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v3}, Landroid/telecom/ConnectionService;->-$$Nest$fgetmPreInitializationConnectionRequests(Landroid/telecom/ConnectionService;)Ljava/util/List;

    move-result-object v3

    new-instance v4, Landroid/telecom/ConnectionService$2$5;

    const-string v5, "H.CS.crConfC.pIConfR"

    invoke-direct {v4, v10, v5, v1, v0}, Landroid/telecom/ConnectionService$2$5;-><init>(Landroid/telecom/ConnectionService$2;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/telecom/ConnectionService$2$5;->prepare()Ljava/lang/Runnable;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    iget-object v1, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v1, v0}, Landroid/telecom/ConnectionService;->-$$Nest$mnotifyCreateConferenceComplete(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_b

    :goto_1
    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    nop

    goto/16 :goto_9

    :catchall_b
    move-exception v0

    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    throw v0

    :pswitch_d
    iget-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v12, v0

    check-cast v12, Lcom/android/internal/os/SomeArgs;

    iget-object v0, v12, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    invoke-static {v0, v6}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    :try_start_c
    iget-object v0, v12, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Landroid/telecom/PhoneAccountHandle;

    iget-object v0, v12, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Ljava/lang/String;

    iget-object v0, v12, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    move-object v7, v0

    check-cast v7, Landroid/telecom/ConnectionRequest;

    iget v0, v12, Lcom/android/internal/os/SomeArgs;->argi1:I

    if-ne v0, v13, :cond_4

    move v8, v13

    goto :goto_2

    :cond_4
    move v8, v9

    :goto_2
    iget v0, v12, Lcom/android/internal/os/SomeArgs;->argi2:I

    if-ne v0, v13, :cond_5

    move v9, v13

    :cond_5
    iget-object v0, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v0}, Landroid/telecom/ConnectionService;->-$$Nest$fgetmAreAccountsInitialized(Landroid/telecom/ConnectionService;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "Enqueueing pre-initconference request %s"

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v10, v0, v1}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v0}, Landroid/telecom/ConnectionService;->-$$Nest$fgetmPreInitializationConnectionRequests(Landroid/telecom/ConnectionService;)Ljava/util/List;

    move-result-object v0

    new-instance v13, Landroid/telecom/ConnectionService$2$4;

    const-string v3, "H.CS.crConf.pIConfR"

    const/4 v4, 0x0

    move-object v1, v13

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v9}, Landroid/telecom/ConnectionService$2$4;-><init>(Landroid/telecom/ConnectionService$2;Ljava/lang/String;Ljava/lang/Object;Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Landroid/telecom/ConnectionRequest;ZZ)V

    invoke-virtual {v13}, Landroid/telecom/ConnectionService$2$4;->prepare()Ljava/lang/Runnable;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_6
    iget-object v13, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    move-object v14, v5

    move-object v15, v6

    move-object/from16 v16, v7

    move/from16 v17, v8

    move/from16 v18, v9

    invoke-static/range {v13 .. v18}, Landroid/telecom/ConnectionService;->-$$Nest$mcreateConference(Landroid/telecom/ConnectionService;Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Landroid/telecom/ConnectionRequest;ZZ)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_c

    :goto_3
    invoke-virtual {v12}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    nop

    goto/16 :goto_9

    :catchall_c
    move-exception v0

    invoke-virtual {v12}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    throw v0

    :pswitch_e
    iget-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    const-string v2, "H.CS.def"

    invoke-static {v0, v2}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    :try_start_d
    iget-object v0, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v3, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Landroid/net/Uri;

    invoke-static {v0, v2, v3}, Landroid/telecom/ConnectionService;->-$$Nest$mdeflect(Landroid/telecom/ConnectionService;Ljava/lang/String;Landroid/net/Uri;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_d

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    nop

    goto/16 :goto_9

    :catchall_d
    move-exception v0

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    throw v0

    :pswitch_f
    iget-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    :try_start_e
    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    const-string v2, "H.CS.hC"

    invoke-static {v0, v2}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v2, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v2, v0}, Landroid/telecom/ConnectionService;->-$$Nest$mnotifyHandoverComplete(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_e

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    nop

    goto/16 :goto_9

    :catchall_e
    move-exception v0

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    throw v0

    :pswitch_10
    iget-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v8, v0

    check-cast v8, Lcom/android/internal/os/SomeArgs;

    iget-object v0, v8, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    const-string v1, "H.CS.haF"

    invoke-static {v0, v1}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    :try_start_f
    iget-object v0, v8, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, v8, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v1, Landroid/telecom/ConnectionRequest;

    move-object v9, v1

    iget-object v1, v8, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    move v13, v1

    iget-object v1, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v1}, Landroid/telecom/ConnectionService;->-$$Nest$fgetmAreAccountsInitialized(Landroid/telecom/ConnectionService;)Z

    move-result v1

    if-nez v1, :cond_7

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v10, v12, v1}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v1}, Landroid/telecom/ConnectionService;->-$$Nest$fgetmPreInitializationConnectionRequests(Landroid/telecom/ConnectionService;)Ljava/util/List;

    move-result-object v12

    new-instance v14, Landroid/telecom/ConnectionService$2$7;

    const-string v3, "H.CS.haF.pICR"

    const/4 v4, 0x0

    move-object v1, v14

    move-object/from16 v2, p0

    move-object v5, v0

    move-object v6, v9

    move v7, v13

    invoke-direct/range {v1 .. v7}, Landroid/telecom/ConnectionService$2$7;-><init>(Landroid/telecom/ConnectionService$2;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Landroid/telecom/ConnectionRequest;I)V

    invoke-virtual {v14}, Landroid/telecom/ConnectionService$2$7;->prepare()Ljava/lang/Runnable;

    move-result-object v1

    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_7
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v10, v2, v1}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v1, v0, v9, v13}, Landroid/telecom/ConnectionService;->-$$Nest$mhandoverFailed(Landroid/telecom/ConnectionService;Ljava/lang/String;Landroid/telecom/ConnectionRequest;I)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_f

    :goto_4
    invoke-virtual {v8}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    nop

    goto/16 :goto_9

    :catchall_f
    move-exception v0

    invoke-virtual {v8}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    throw v0

    :pswitch_11
    iget-object v0, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-virtual {v0}, Landroid/telecom/ConnectionService;->onConnectionServiceFocusGained()V

    goto/16 :goto_9

    :pswitch_12
    iget-object v0, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-virtual {v0}, Landroid/telecom/ConnectionService;->onConnectionServiceFocusLost()V

    goto/16 :goto_9

    :pswitch_13
    iget-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lcom/android/internal/os/SomeArgs;

    iget-object v0, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    invoke-static {v0, v4}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    :try_start_10
    iget-object v0, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v3, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v3}, Landroid/telecom/ConnectionService;->-$$Nest$fgetmAreAccountsInitialized(Landroid/telecom/ConnectionService;)Z

    move-result v3

    if-nez v3, :cond_8

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v10, v12, v3}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v3, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v3}, Landroid/telecom/ConnectionService;->-$$Nest$fgetmPreInitializationConnectionRequests(Landroid/telecom/ConnectionService;)Ljava/util/List;

    move-result-object v3

    new-instance v4, Landroid/telecom/ConnectionService$2$2;

    const-string v5, "H.CS.crCoC.pICR"

    invoke-direct {v4, v10, v5, v1, v0}, Landroid/telecom/ConnectionService$2$2;-><init>(Landroid/telecom/ConnectionService$2;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/telecom/ConnectionService$2$2;->prepare()Ljava/lang/Runnable;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_8
    iget-object v1, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v1, v0}, Landroid/telecom/ConnectionService;->-$$Nest$mnotifyCreateConnectionComplete(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_10

    :goto_5
    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    nop

    goto/16 :goto_9

    :catchall_10
    move-exception v0

    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    throw v0

    :pswitch_14
    iget-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    :try_start_11
    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    const-string v2, "H.CS.rTRUR"

    invoke-static {v0, v2}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v2, Landroid/telecom/Connection$RttTextStream;

    iget-object v3, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v3, v0, v2}, Landroid/telecom/ConnectionService;->-$$Nest$mhandleRttUpgradeResponse(Landroid/telecom/ConnectionService;Ljava/lang/String;Landroid/telecom/Connection$RttTextStream;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_11

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    nop

    goto/16 :goto_9

    :catchall_11
    move-exception v0

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    throw v0

    :pswitch_15
    iget-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    :try_start_12
    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    const-string v2, "H.CS.-RTT"

    invoke-static {v0, v2}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v2, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v2, v0}, Landroid/telecom/ConnectionService;->-$$Nest$mstopRtt(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_12

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    nop

    goto/16 :goto_9

    :catchall_12
    move-exception v0

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    throw v0

    :pswitch_16
    iget-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    :try_start_13
    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    const-string v2, "H.CS.+RTT"

    invoke-static {v0, v2}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v2, Landroid/telecom/Connection$RttTextStream;

    iget-object v3, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v3, v0, v2}, Landroid/telecom/ConnectionService;->-$$Nest$mstartRtt(Landroid/telecom/ConnectionService;Ljava/lang/String;Landroid/telecom/Connection$RttTextStream;)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_13

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    nop

    goto/16 :goto_9

    :catchall_13
    move-exception v0

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    throw v0

    :pswitch_17
    iget-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v14, v0

    check-cast v14, Lcom/android/internal/os/SomeArgs;

    iget-object v0, v14, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    invoke-static {v0, v5}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    :try_start_14
    iget-object v0, v14, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, v14, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v1, Landroid/telecom/ConnectionRequest;

    move-object v15, v1

    iget v1, v14, Lcom/android/internal/os/SomeArgs;->argi1:I

    if-ne v1, v13, :cond_9

    move v9, v13

    :cond_9
    iget-object v1, v14, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    check-cast v1, Landroid/telecom/PhoneAccountHandle;

    move-object v13, v1

    iget-object v1, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v1}, Landroid/telecom/ConnectionService;->-$$Nest$fgetmAreAccountsInitialized(Landroid/telecom/ConnectionService;)Z

    move-result v1

    if-nez v1, :cond_a

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v10, v12, v1}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v1}, Landroid/telecom/ConnectionService;->-$$Nest$fgetmPreInitializationConnectionRequests(Landroid/telecom/ConnectionService;)Ljava/util/List;

    move-result-object v12

    new-instance v16, Landroid/telecom/ConnectionService$2$3;

    const-string v3, "H.CS.crCoF.pICR"

    const/4 v4, 0x0

    move-object/from16 v1, v16

    move-object/from16 v2, p0

    move-object v5, v13

    move-object v6, v0

    move-object v7, v15

    move v8, v9

    invoke-direct/range {v1 .. v8}, Landroid/telecom/ConnectionService$2$3;-><init>(Landroid/telecom/ConnectionService$2;Ljava/lang/String;Ljava/lang/Object;Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Landroid/telecom/ConnectionRequest;Z)V

    invoke-virtual/range {v16 .. v16}, Landroid/telecom/ConnectionService$2$3;->prepare()Ljava/lang/Runnable;

    move-result-object v1

    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_a
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v10, v2, v1}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v1, v13, v0, v15, v9}, Landroid/telecom/ConnectionService;->-$$Nest$mcreateConnectionFailed(Landroid/telecom/ConnectionService;Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Landroid/telecom/ConnectionRequest;Z)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_14

    :goto_6
    invoke-virtual {v14}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    nop

    goto/16 :goto_9

    :catchall_14
    move-exception v0

    invoke-virtual {v14}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    throw v0

    :pswitch_18
    iget-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    :try_start_15
    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    const-string v2, "H.CS.oEC"

    invoke-static {v0, v2}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v2, Landroid/os/Bundle;

    iget-object v3, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v3, v0, v2}, Landroid/telecom/ConnectionService;->-$$Nest$mhandleExtrasChanged(Landroid/telecom/ConnectionService;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_15

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    nop

    goto/16 :goto_9

    :catchall_15
    move-exception v0

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    throw v0

    :pswitch_19
    iget-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    :try_start_16
    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    const-string v2, "H.CS.sCE"

    invoke-static {v0, v2}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v3, v1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    iget-object v4, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v4, v0, v2, v3}, Landroid/telecom/ConnectionService;->-$$Nest$msendCallEvent(Landroid/telecom/ConnectionService;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_16

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    nop

    goto/16 :goto_9

    :catchall_16
    move-exception v0

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    throw v0

    :pswitch_1a
    iget-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    :try_start_17
    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    const-string v2, "H.CS.pEC"

    invoke-static {v0, v2}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    iget-object v0, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/telecom/ConnectionService;->-$$Nest$mpullExternalCall(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_17

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    nop

    goto/16 :goto_9

    :catchall_17
    move-exception v0

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    throw v0

    :pswitch_1b
    iget-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    const-string v2, "H.CS.s"

    invoke-static {v0, v2}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    :try_start_18
    iget-object v0, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/telecom/ConnectionService;->-$$Nest$msilence(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_18

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    nop

    goto/16 :goto_9

    :catchall_18
    move-exception v0

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    throw v0

    :pswitch_1c
    iget-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    const-string v2, "H.CS.rWM"

    invoke-static {v0, v2}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    :try_start_19
    iget-object v0, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v3, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-static {v0, v2, v3}, Landroid/telecom/ConnectionService;->-$$Nest$mreject(Landroid/telecom/ConnectionService;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_19

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    nop

    goto/16 :goto_9

    :catchall_19
    move-exception v0

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    throw v0

    :pswitch_1d
    iget-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    :try_start_1a
    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    const-string v2, "H.CS.sC"

    invoke-static {v0, v2}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    iget-object v0, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/telecom/ConnectionService;->-$$Nest$mswapConference(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_1a

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    nop

    goto/16 :goto_9

    :catchall_1a
    move-exception v0

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    throw v0

    :pswitch_1e
    iget-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    :try_start_1b
    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    const-string v2, "H.CS.mC"

    invoke-static {v0, v2}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    iget-object v0, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/telecom/ConnectionService;->-$$Nest$mmergeConference(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_1b

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    nop

    goto/16 :goto_9

    :catchall_1b
    move-exception v0

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    throw v0

    :pswitch_1f
    iget-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    const-string v2, "H.CS.anV"

    invoke-static {v0, v2}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    :try_start_1c
    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget v2, v1, Lcom/android/internal/os/SomeArgs;->argi1:I

    iget-object v3, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v3, v0, v2}, Landroid/telecom/ConnectionService;->-$$Nest$manswerVideo(Landroid/telecom/ConnectionService;Ljava/lang/String;I)V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_1c

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    nop

    goto/16 :goto_9

    :catchall_1c
    move-exception v0

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    throw v0

    :pswitch_20
    iget-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    :try_start_1d
    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    const-string v2, "H.CS.rCSA"

    invoke-static {v0, v2}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    iget-object v0, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v0}, Landroid/telecom/ConnectionService;->-$$Nest$fgetmAdapter(Landroid/telecom/ConnectionService;)Landroid/telecom/ConnectionServiceAdapter;

    move-result-object v0

    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    invoke-virtual {v0, v2}, Landroid/telecom/ConnectionServiceAdapter;->removeAdapter(Lcom/android/internal/telecom/IConnectionServiceAdapter;)V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_1d

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    nop

    goto/16 :goto_9

    :catchall_1d
    move-exception v0

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    throw v0

    :pswitch_21
    iget-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    :try_start_1e
    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    const-string v2, "H.CS.oPDC"

    invoke-static {v0, v2}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget v2, v1, Lcom/android/internal/os/SomeArgs;->argi1:I

    if-ne v2, v13, :cond_b

    move v9, v13

    :cond_b
    move v2, v9

    iget-object v3, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v3, v0, v2}, Landroid/telecom/ConnectionService;->-$$Nest$monPostDialContinue(Landroid/telecom/ConnectionService;Ljava/lang/String;Z)V
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_1e

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    nop

    goto/16 :goto_9

    :catchall_1e
    move-exception v0

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    throw v0

    :pswitch_22
    iget-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    :try_start_1f
    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    const-string v2, "H.CS.sFC"

    invoke-static {v0, v2}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    iget-object v0, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/telecom/ConnectionService;->-$$Nest$msplitFromConference(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_1f

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    nop

    goto/16 :goto_9

    :catchall_1f
    move-exception v0

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    throw v0

    :pswitch_23
    iget-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    :try_start_20
    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    const-string v2, "H.CS.c"

    invoke-static {v0, v2}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v3, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v3, v0, v2}, Landroid/telecom/ConnectionService;->-$$Nest$mconference(Landroid/telecom/ConnectionService;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_20

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    nop

    goto/16 :goto_9

    :catchall_20
    move-exception v0

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    throw v0

    :pswitch_24
    iget-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    :try_start_21
    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    const-string v2, "H.CS.sDT"

    invoke-static {v0, v2}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    iget-object v0, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/telecom/ConnectionService;->-$$Nest$mstopDtmfTone(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_21

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    nop

    goto/16 :goto_9

    :catchall_21
    move-exception v0

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    throw v0

    :pswitch_25
    iget-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    :try_start_22
    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    const-string v2, "H.CS.pDT"

    invoke-static {v0, v2}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    iget-object v0, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v3, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Character;

    invoke-virtual {v3}, Ljava/lang/Character;->charValue()C

    move-result v3

    invoke-static {v0, v2, v3}, Landroid/telecom/ConnectionService;->-$$Nest$mplayDtmfTone(Landroid/telecom/ConnectionService;Ljava/lang/String;C)V
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_22

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    nop

    goto/16 :goto_9

    :catchall_22
    move-exception v0

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    throw v0

    :pswitch_26
    iget-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    invoke-static {v0, v8}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    :try_start_23
    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v2, Landroid/telecom/CallAudioState;

    iget-object v3, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    new-instance v4, Landroid/telecom/CallAudioState;

    invoke-direct {v4, v2}, Landroid/telecom/CallAudioState;-><init>(Landroid/telecom/CallAudioState;)V

    invoke-static {v3, v0, v4}, Landroid/telecom/ConnectionService;->-$$Nest$monCallAudioStateChanged(Landroid/telecom/ConnectionService;Ljava/lang/String;Landroid/telecom/CallAudioState;)V
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_23

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    nop

    goto/16 :goto_9

    :catchall_23
    move-exception v0

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    throw v0

    :pswitch_27
    iget-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    const-string v2, "H.CS.u"

    invoke-static {v0, v2}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    :try_start_24
    iget-object v0, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/telecom/ConnectionService;->-$$Nest$munhold(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_24

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    nop

    goto/16 :goto_9

    :catchall_24
    move-exception v0

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    throw v0

    :pswitch_28
    iget-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    invoke-static {v0, v7}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    :try_start_25
    iget-object v0, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/telecom/ConnectionService;->-$$Nest$mhold(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_25

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    nop

    goto/16 :goto_9

    :catchall_25
    move-exception v0

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    throw v0

    :pswitch_29
    iget-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    const-string v2, "H.CS.d"

    invoke-static {v0, v2}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    :try_start_26
    iget-object v0, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/telecom/ConnectionService;->-$$Nest$mdisconnect(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_26

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    nop

    goto/16 :goto_9

    :catchall_26
    move-exception v0

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    throw v0

    :pswitch_2a
    iget-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    invoke-static {v0, v7}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    :try_start_27
    iget-object v0, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/telecom/ConnectionService;->-$$Nest$mreject(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_27

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    nop

    goto/16 :goto_9

    :catchall_27
    move-exception v0

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    throw v0

    :pswitch_2b
    iget-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    const-string v2, "H.CS.an"

    invoke-static {v0, v2}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    :try_start_28
    iget-object v0, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/telecom/ConnectionService;->-$$Nest$manswer(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_28

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    nop

    goto/16 :goto_9

    :catchall_28
    move-exception v0

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    throw v0

    :pswitch_2c
    iget-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    const-string v2, "H.CS.ab"

    invoke-static {v0, v2}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    :try_start_29
    iget-object v0, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/telecom/ConnectionService;->-$$Nest$mabort(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_29

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    nop

    goto/16 :goto_9

    :catchall_29
    move-exception v0

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    throw v0

    :pswitch_2d
    iget-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v14, v0

    check-cast v14, Lcom/android/internal/os/SomeArgs;

    iget-object v0, v14, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    invoke-static {v0, v6}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    :try_start_2a
    iget-object v0, v14, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Landroid/telecom/PhoneAccountHandle;

    iget-object v0, v14, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Ljava/lang/String;

    iget-object v0, v14, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    move-object v7, v0

    check-cast v7, Landroid/telecom/ConnectionRequest;

    iget v0, v14, Lcom/android/internal/os/SomeArgs;->argi1:I

    if-ne v0, v13, :cond_c

    move v8, v13

    goto :goto_7

    :cond_c
    move v8, v9

    :goto_7
    iget v0, v14, Lcom/android/internal/os/SomeArgs;->argi2:I

    if-ne v0, v13, :cond_d

    move v9, v13

    :cond_d
    iget-object v0, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v0}, Landroid/telecom/ConnectionService;->-$$Nest$fgetmAreAccountsInitialized(Landroid/telecom/ConnectionService;)Z

    move-result v0

    if-nez v0, :cond_e

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v10, v12, v0}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v0}, Landroid/telecom/ConnectionService;->-$$Nest$fgetmPreInitializationConnectionRequests(Landroid/telecom/ConnectionService;)Ljava/util/List;

    move-result-object v0

    new-instance v12, Landroid/telecom/ConnectionService$2$1;

    const-string v3, "H.CS.crCo.pICR"

    const/4 v4, 0x0

    move-object v1, v12

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v9}, Landroid/telecom/ConnectionService$2$1;-><init>(Landroid/telecom/ConnectionService$2;Ljava/lang/String;Ljava/lang/Object;Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Landroid/telecom/ConnectionRequest;ZZ)V

    invoke-virtual {v12}, Landroid/telecom/ConnectionService$2$1;->prepare()Ljava/lang/Runnable;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_e
    iget-object v15, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    move-object/from16 v16, v5

    move-object/from16 v17, v6

    move-object/from16 v18, v7

    move/from16 v19, v8

    move/from16 v20, v9

    invoke-static/range {v15 .. v20}, Landroid/telecom/ConnectionService;->-$$Nest$mcreateConnection(Landroid/telecom/ConnectionService;Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Landroid/telecom/ConnectionRequest;ZZ)V
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_2a

    :goto_8
    invoke-virtual {v14}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    nop

    goto :goto_9

    :catchall_2a
    move-exception v0

    invoke-virtual {v14}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    throw v0

    :pswitch_2e
    iget-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    :try_start_2b
    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v2, Landroid/telecom/Logging/Session;

    const-string v3, "H.CS.aCSA"

    invoke-static {v2, v3}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    iget-object v2, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v2}, Landroid/telecom/ConnectionService;->-$$Nest$fgetmAdapter(Landroid/telecom/ConnectionService;)Landroid/telecom/ConnectionServiceAdapter;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/telecom/ConnectionServiceAdapter;->addAdapter(Lcom/android/internal/telecom/IConnectionServiceAdapter;)V

    iget-object v2, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v2}, Landroid/telecom/ConnectionService;->-$$Nest$monAdapterAttached(Landroid/telecom/ConnectionService;)V
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_2b

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    nop

    goto :goto_9

    :catchall_2b
    move-exception v0

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    throw v0

    :goto_9
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_0
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
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
    .end packed-switch
.end method
