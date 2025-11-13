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
    .param p2, "looper"    # Landroid/os/Looper;

    .line 547
    iput-object p1, p0, Landroid/telephony/data/DataService$DataServiceHandler;->this$0:Landroid/telephony/data/DataService;

    .line 548
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 549
    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 17
    .param p1, "message"    # Landroid/os/Message;

    .line 554
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget v3, v2, Landroid/os/Message;->arg1:I

    .line 555
    .local v3, "slotIndex":I
    iget-object v0, v1, Landroid/telephony/data/DataService$DataServiceHandler;->this$0:Landroid/telephony/data/DataService;

    invoke-static {v0}, Landroid/telephony/data/DataService;->-$$Nest$fgetmServiceMap(Landroid/telephony/data/DataService;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Landroid/telephony/data/DataService$DataServiceProvider;

    .line 557
    .local v15, "serviceProvider":Landroid/telephony/data/DataService$DataServiceProvider;
    iget v0, v2, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    move-object v4, v2

    move-object v2, v15

    .end local v15    # "serviceProvider":Landroid/telephony/data/DataService$DataServiceProvider;
    .local v2, "serviceProvider":Landroid/telephony/data/DataService$DataServiceProvider;
    goto/16 :goto_8

    .line 672
    .end local v2    # "serviceProvider":Landroid/telephony/data/DataService$DataServiceProvider;
    .restart local v15    # "serviceProvider":Landroid/telephony/data/DataService$DataServiceProvider;
    :pswitch_0
    if-nez v15, :cond_0

    move-object v4, v2

    move-object v2, v15

    goto/16 :goto_8

    .line 673
    :cond_0
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Landroid/telephony/data/DataService$ApnUnthrottledIndication;

    .line 676
    .local v4, "apnUnthrottledIndication":Landroid/telephony/data/DataService$ApnUnthrottledIndication;
    :try_start_0
    iget-object v0, v4, Landroid/telephony/data/DataService$ApnUnthrottledIndication;->dataProfile:Landroid/telephony/data/DataProfile;

    if-eqz v0, :cond_1

    .line 677
    iget-object v0, v4, Landroid/telephony/data/DataService$ApnUnthrottledIndication;->callback:Landroid/telephony/data/IDataServiceCallback;

    iget-object v5, v4, Landroid/telephony/data/DataService$ApnUnthrottledIndication;->dataProfile:Landroid/telephony/data/DataProfile;

    .line 678
    invoke-interface {v0, v5}, Landroid/telephony/data/IDataServiceCallback;->onDataProfileUnthrottled(Landroid/telephony/data/DataProfile;)V

    goto :goto_0

    .line 680
    :cond_1
    iget-object v0, v4, Landroid/telephony/data/DataService$ApnUnthrottledIndication;->callback:Landroid/telephony/data/IDataServiceCallback;

    iget-object v5, v4, Landroid/telephony/data/DataService$ApnUnthrottledIndication;->apn:Ljava/lang/String;

    .line 681
    invoke-interface {v0, v5}, Landroid/telephony/data/IDataServiceCallback;->onApnUnthrottled(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 685
    :goto_0
    move-object v4, v2

    move-object v2, v15

    goto/16 :goto_8

    .line 683
    :catch_0
    move-exception v0

    .line 684
    .local v0, "e":Landroid/os/RemoteException;
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

    .line 667
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v4    # "apnUnthrottledIndication":Landroid/telephony/data/DataService$ApnUnthrottledIndication;
    :pswitch_1
    if-nez v15, :cond_2

    move-object v4, v2

    move-object v2, v15

    goto/16 :goto_8

    .line 668
    :cond_2
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/telephony/data/IDataServiceCallback;

    .line 669
    .local v0, "callback":Landroid/telephony/data/IDataServiceCallback;
    invoke-static {v15, v0}, Landroid/telephony/data/DataService$DataServiceProvider;->-$$Nest$munregisterForApnUnthrottled(Landroid/telephony/data/DataService$DataServiceProvider;Landroid/telephony/data/IDataServiceCallback;)V

    .line 670
    move-object v4, v2

    move-object v2, v15

    goto/16 :goto_8

    .line 663
    .end local v0    # "callback":Landroid/telephony/data/IDataServiceCallback;
    :pswitch_2
    if-nez v15, :cond_3

    move-object v4, v2

    move-object v2, v15

    goto/16 :goto_8

    .line 664
    :cond_3
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/telephony/data/IDataServiceCallback;

    invoke-static {v15, v0}, Landroid/telephony/data/DataService$DataServiceProvider;->-$$Nest$mregisterForApnUnthrottled(Landroid/telephony/data/DataService$DataServiceProvider;Landroid/telephony/data/IDataServiceCallback;)V

    .line 665
    move-object v4, v2

    move-object v2, v15

    goto/16 :goto_8

    .line 656
    :pswitch_3
    if-nez v15, :cond_4

    move-object v4, v2

    move-object v2, v15

    goto/16 :goto_8

    .line 657
    :cond_4
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/telephony/data/DataService$BeginCancelHandoverRequest;

    .line 658
    .local v0, "cReq":Landroid/telephony/data/DataService$BeginCancelHandoverRequest;
    iget v5, v0, Landroid/telephony/data/DataService$BeginCancelHandoverRequest;->cid:I

    .line 659
    iget-object v6, v0, Landroid/telephony/data/DataService$BeginCancelHandoverRequest;->callback:Landroid/telephony/data/IDataServiceCallback;

    if-eqz v6, :cond_5

    .line 660
    new-instance v4, Landroid/telephony/data/DataServiceCallback;

    iget-object v6, v0, Landroid/telephony/data/DataService$BeginCancelHandoverRequest;->callback:Landroid/telephony/data/IDataServiceCallback;

    invoke-direct {v4, v6}, Landroid/telephony/data/DataServiceCallback;-><init>(Landroid/telephony/data/IDataServiceCallback;)V

    goto :goto_1

    :cond_5
    const/4 v4, 0x0

    .line 658
    :goto_1
    invoke-virtual {v15, v5, v4}, Landroid/telephony/data/DataService$DataServiceProvider;->cancelHandover(ILandroid/telephony/data/DataServiceCallback;)V

    .line 661
    move-object v4, v2

    move-object v2, v15

    goto/16 :goto_8

    .line 649
    .end local v0    # "cReq":Landroid/telephony/data/DataService$BeginCancelHandoverRequest;
    :pswitch_4
    if-nez v15, :cond_6

    move-object v4, v2

    move-object v2, v15

    goto/16 :goto_8

    .line 650
    :cond_6
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/telephony/data/DataService$BeginCancelHandoverRequest;

    .line 651
    .local v0, "bReq":Landroid/telephony/data/DataService$BeginCancelHandoverRequest;
    iget v5, v0, Landroid/telephony/data/DataService$BeginCancelHandoverRequest;->cid:I

    .line 652
    iget-object v6, v0, Landroid/telephony/data/DataService$BeginCancelHandoverRequest;->callback:Landroid/telephony/data/IDataServiceCallback;

    if-eqz v6, :cond_7

    .line 653
    new-instance v4, Landroid/telephony/data/DataServiceCallback;

    iget-object v6, v0, Landroid/telephony/data/DataService$BeginCancelHandoverRequest;->callback:Landroid/telephony/data/IDataServiceCallback;

    invoke-direct {v4, v6}, Landroid/telephony/data/DataServiceCallback;-><init>(Landroid/telephony/data/IDataServiceCallback;)V

    goto :goto_2

    :cond_7
    const/4 v4, 0x0

    .line 651
    :goto_2
    invoke-virtual {v15, v5, v4}, Landroid/telephony/data/DataService$DataServiceProvider;->startHandover(ILandroid/telephony/data/DataServiceCallback;)V

    .line 654
    move-object v4, v2

    move-object v2, v15

    goto/16 :goto_8

    .line 639
    .end local v0    # "bReq":Landroid/telephony/data/DataService$BeginCancelHandoverRequest;
    :pswitch_5
    if-nez v15, :cond_8

    move-object v4, v2

    move-object v2, v15

    goto/16 :goto_8

    .line 640
    :cond_8
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Landroid/telephony/data/DataService$DataCallListChangedIndication;

    .line 643
    .local v4, "indication":Landroid/telephony/data/DataService$DataCallListChangedIndication;
    :try_start_1
    iget-object v0, v4, Landroid/telephony/data/DataService$DataCallListChangedIndication;->callback:Landroid/telephony/data/IDataServiceCallback;

    iget-object v5, v4, Landroid/telephony/data/DataService$DataCallListChangedIndication;->dataCallList:Ljava/util/List;

    invoke-interface {v0, v5}, Landroid/telephony/data/IDataServiceCallback;->onDataCallListChanged(Ljava/util/List;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 646
    move-object v4, v2

    move-object v2, v15

    goto/16 :goto_8

    .line 644
    :catch_1
    move-exception v0

    .line 645
    .local v0, "e":Landroid/os/RemoteException;
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

    .line 647
    .end local v0    # "e":Landroid/os/RemoteException;
    move-object v4, v2

    move-object v2, v15

    goto/16 :goto_8

    .line 634
    .end local v4    # "indication":Landroid/telephony/data/DataService$DataCallListChangedIndication;
    :pswitch_6
    if-nez v15, :cond_9

    move-object v4, v2

    move-object v2, v15

    goto/16 :goto_8

    .line 635
    :cond_9
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/telephony/data/IDataServiceCallback;

    .line 636
    .local v0, "callback":Landroid/telephony/data/IDataServiceCallback;
    invoke-static {v15, v0}, Landroid/telephony/data/DataService$DataServiceProvider;->-$$Nest$munregisterForDataCallListChanged(Landroid/telephony/data/DataService$DataServiceProvider;Landroid/telephony/data/IDataServiceCallback;)V

    .line 637
    move-object v4, v2

    move-object v2, v15

    goto/16 :goto_8

    .line 630
    .end local v0    # "callback":Landroid/telephony/data/IDataServiceCallback;
    :pswitch_7
    if-nez v15, :cond_a

    move-object v4, v2

    move-object v2, v15

    goto/16 :goto_8

    .line 631
    :cond_a
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/telephony/data/IDataServiceCallback;

    invoke-static {v15, v0}, Landroid/telephony/data/DataService$DataServiceProvider;->-$$Nest$mregisterForDataCallListChanged(Landroid/telephony/data/DataService$DataServiceProvider;Landroid/telephony/data/IDataServiceCallback;)V

    .line 632
    move-object v4, v2

    move-object v2, v15

    goto/16 :goto_8

    .line 624
    :pswitch_8
    if-nez v15, :cond_b

    move-object v4, v2

    move-object v2, v15

    goto/16 :goto_8

    .line 626
    :cond_b
    new-instance v0, Landroid/telephony/data/DataServiceCallback;

    iget-object v4, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/telephony/data/IDataServiceCallback;

    invoke-direct {v0, v4}, Landroid/telephony/data/DataServiceCallback;-><init>(Landroid/telephony/data/IDataServiceCallback;)V

    invoke-virtual {v15, v0}, Landroid/telephony/data/DataService$DataServiceProvider;->requestDataCallList(Landroid/telephony/data/DataServiceCallback;)V

    .line 628
    move-object v4, v2

    move-object v2, v15

    goto/16 :goto_8

    .line 614
    :pswitch_9
    if-nez v15, :cond_c

    move-object v4, v2

    move-object v2, v15

    goto/16 :goto_8

    .line 615
    :cond_c
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/telephony/data/DataService$SetDataProfileRequest;

    .line 617
    .local v0, "setDataProfileRequest":Landroid/telephony/data/DataService$SetDataProfileRequest;
    iget-object v5, v0, Landroid/telephony/data/DataService$SetDataProfileRequest;->dps:Ljava/util/List;

    iget-boolean v6, v0, Landroid/telephony/data/DataService$SetDataProfileRequest;->isRoaming:Z

    .line 619
    iget-object v7, v0, Landroid/telephony/data/DataService$SetDataProfileRequest;->callback:Landroid/telephony/data/IDataServiceCallback;

    if-eqz v7, :cond_d

    .line 620
    new-instance v4, Landroid/telephony/data/DataServiceCallback;

    iget-object v7, v0, Landroid/telephony/data/DataService$SetDataProfileRequest;->callback:Landroid/telephony/data/IDataServiceCallback;

    invoke-direct {v4, v7}, Landroid/telephony/data/DataServiceCallback;-><init>(Landroid/telephony/data/IDataServiceCallback;)V

    goto :goto_3

    .line 621
    :cond_d
    const/4 v4, 0x0

    .line 617
    :goto_3
    invoke-virtual {v15, v5, v6, v4}, Landroid/telephony/data/DataService$DataServiceProvider;->setDataProfile(Ljava/util/List;ZLandroid/telephony/data/DataServiceCallback;)V

    .line 622
    move-object v4, v2

    move-object v2, v15

    goto/16 :goto_8

    .line 604
    .end local v0    # "setDataProfileRequest":Landroid/telephony/data/DataService$SetDataProfileRequest;
    :pswitch_a
    if-nez v15, :cond_e

    move-object v4, v2

    move-object v2, v15

    goto/16 :goto_8

    .line 605
    :cond_e
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/telephony/data/DataService$SetInitialAttachApnRequest;

    .line 607
    .local v0, "setInitialAttachApnRequest":Landroid/telephony/data/DataService$SetInitialAttachApnRequest;
    iget-object v5, v0, Landroid/telephony/data/DataService$SetInitialAttachApnRequest;->dataProfile:Landroid/telephony/data/DataProfile;

    iget-boolean v6, v0, Landroid/telephony/data/DataService$SetInitialAttachApnRequest;->isRoaming:Z

    .line 609
    iget-object v7, v0, Landroid/telephony/data/DataService$SetInitialAttachApnRequest;->callback:Landroid/telephony/data/IDataServiceCallback;

    if-eqz v7, :cond_f

    .line 610
    new-instance v4, Landroid/telephony/data/DataServiceCallback;

    iget-object v7, v0, Landroid/telephony/data/DataService$SetInitialAttachApnRequest;->callback:Landroid/telephony/data/IDataServiceCallback;

    invoke-direct {v4, v7}, Landroid/telephony/data/DataServiceCallback;-><init>(Landroid/telephony/data/IDataServiceCallback;)V

    goto :goto_4

    .line 611
    :cond_f
    const/4 v4, 0x0

    .line 607
    :goto_4
    invoke-virtual {v15, v5, v6, v4}, Landroid/telephony/data/DataService$DataServiceProvider;->setInitialAttachApn(Landroid/telephony/data/DataProfile;ZLandroid/telephony/data/DataServiceCallback;)V

    .line 612
    move-object v4, v2

    move-object v2, v15

    goto/16 :goto_8

    .line 594
    .end local v0    # "setInitialAttachApnRequest":Landroid/telephony/data/DataService$SetInitialAttachApnRequest;
    :pswitch_b
    if-nez v15, :cond_10

    move-object v4, v2

    move-object v2, v15

    goto/16 :goto_8

    .line 595
    :cond_10
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/telephony/data/DataService$DeactivateDataCallRequest;

    .line 597
    .local v0, "deactivateDataCallRequest":Landroid/telephony/data/DataService$DeactivateDataCallRequest;
    iget v5, v0, Landroid/telephony/data/DataService$DeactivateDataCallRequest;->cid:I

    iget v6, v0, Landroid/telephony/data/DataService$DeactivateDataCallRequest;->reason:I

    .line 599
    iget-object v7, v0, Landroid/telephony/data/DataService$DeactivateDataCallRequest;->callback:Landroid/telephony/data/IDataServiceCallback;

    if-eqz v7, :cond_11

    .line 600
    new-instance v4, Landroid/telephony/data/DataServiceCallback;

    iget-object v7, v0, Landroid/telephony/data/DataService$DeactivateDataCallRequest;->callback:Landroid/telephony/data/IDataServiceCallback;

    invoke-direct {v4, v7}, Landroid/telephony/data/DataServiceCallback;-><init>(Landroid/telephony/data/IDataServiceCallback;)V

    goto :goto_5

    .line 601
    :cond_11
    const/4 v4, 0x0

    .line 597
    :goto_5
    invoke-virtual {v15, v5, v6, v4}, Landroid/telephony/data/DataService$DataServiceProvider;->deactivateDataCall(IILandroid/telephony/data/DataServiceCallback;)V

    .line 602
    move-object v4, v2

    move-object v2, v15

    goto/16 :goto_8

    .line 580
    .end local v0    # "deactivateDataCallRequest":Landroid/telephony/data/DataService$DeactivateDataCallRequest;
    :pswitch_c
    if-nez v15, :cond_12

    move-object v4, v2

    move-object v2, v15

    goto/16 :goto_8

    .line 581
    :cond_12
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/telephony/data/DataService$SetupDataCallRequest;

    .line 582
    .local v0, "setupDataCallRequest":Landroid/telephony/data/DataService$SetupDataCallRequest;
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

    .line 588
    iget-object v4, v0, Landroid/telephony/data/DataService$SetupDataCallRequest;->callback:Landroid/telephony/data/IDataServiceCallback;

    if-eqz v4, :cond_13

    .line 589
    new-instance v4, Landroid/telephony/data/DataServiceCallback;

    iget-object v2, v0, Landroid/telephony/data/DataService$SetupDataCallRequest;->callback:Landroid/telephony/data/IDataServiceCallback;

    invoke-direct {v4, v2}, Landroid/telephony/data/DataServiceCallback;-><init>(Landroid/telephony/data/IDataServiceCallback;)V

    move-object/from16 v16, v4

    goto :goto_6

    .line 590
    :cond_13
    const/16 v16, 0x0

    .line 582
    :goto_6
    move-object v4, v15

    move-object v2, v15

    .end local v15    # "serviceProvider":Landroid/telephony/data/DataService$DataServiceProvider;
    .restart local v2    # "serviceProvider":Landroid/telephony/data/DataService$DataServiceProvider;
    move-object/from16 v15, v16

    invoke-virtual/range {v4 .. v15}, Landroid/telephony/data/DataService$DataServiceProvider;->setupDataCall(ILandroid/telephony/data/DataProfile;ZZILandroid/net/LinkProperties;ILandroid/telephony/data/NetworkSliceInfo;Landroid/telephony/data/TrafficDescriptor;ZLandroid/telephony/data/DataServiceCallback;)V

    .line 592
    move-object/from16 v4, p1

    goto :goto_8

    .line 571
    .end local v0    # "setupDataCallRequest":Landroid/telephony/data/DataService$SetupDataCallRequest;
    .end local v2    # "serviceProvider":Landroid/telephony/data/DataService$DataServiceProvider;
    .restart local v15    # "serviceProvider":Landroid/telephony/data/DataService$DataServiceProvider;
    :pswitch_d
    move-object v2, v15

    .end local v15    # "serviceProvider":Landroid/telephony/data/DataService$DataServiceProvider;
    .restart local v2    # "serviceProvider":Landroid/telephony/data/DataService$DataServiceProvider;
    const/4 v0, 0x0

    .end local v2    # "serviceProvider":Landroid/telephony/data/DataService$DataServiceProvider;
    .local v0, "i":I
    .restart local v15    # "serviceProvider":Landroid/telephony/data/DataService$DataServiceProvider;
    :goto_7
    iget-object v2, v1, Landroid/telephony/data/DataService$DataServiceHandler;->this$0:Landroid/telephony/data/DataService;

    invoke-static {v2}, Landroid/telephony/data/DataService;->-$$Nest$fgetmServiceMap(Landroid/telephony/data/DataService;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_15

    .line 572
    iget-object v2, v1, Landroid/telephony/data/DataService$DataServiceHandler;->this$0:Landroid/telephony/data/DataService;

    invoke-static {v2}, Landroid/telephony/data/DataService;->-$$Nest$fgetmServiceMap(Landroid/telephony/data/DataService;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroid/telephony/data/DataService$DataServiceProvider;

    .line 573
    if-eqz v15, :cond_14

    .line 574
    invoke-virtual {v15}, Landroid/telephony/data/DataService$DataServiceProvider;->close()V

    .line 571
    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 577
    .end local v0    # "i":I
    :cond_15
    iget-object v0, v1, Landroid/telephony/data/DataService$DataServiceHandler;->this$0:Landroid/telephony/data/DataService;

    invoke-static {v0}, Landroid/telephony/data/DataService;->-$$Nest$fgetmServiceMap(Landroid/telephony/data/DataService;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 578
    move-object/from16 v4, p1

    goto :goto_9

    .line 565
    :pswitch_e
    move-object v2, v15

    .end local v15    # "serviceProvider":Landroid/telephony/data/DataService$DataServiceProvider;
    .restart local v2    # "serviceProvider":Landroid/telephony/data/DataService$DataServiceProvider;
    if-eqz v2, :cond_16

    .line 566
    invoke-virtual {v2}, Landroid/telephony/data/DataService$DataServiceProvider;->close()V

    .line 567
    iget-object v0, v1, Landroid/telephony/data/DataService$DataServiceHandler;->this$0:Landroid/telephony/data/DataService;

    invoke-static {v0}, Landroid/telephony/data/DataService;->-$$Nest$fgetmServiceMap(Landroid/telephony/data/DataService;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->remove(I)V

    move-object/from16 v4, p1

    goto :goto_8

    .line 565
    :cond_16
    move-object/from16 v4, p1

    goto :goto_8

    .line 559
    .end local v2    # "serviceProvider":Landroid/telephony/data/DataService$DataServiceProvider;
    .restart local v15    # "serviceProvider":Landroid/telephony/data/DataService$DataServiceProvider;
    :pswitch_f
    move-object v2, v15

    .end local v15    # "serviceProvider":Landroid/telephony/data/DataService$DataServiceProvider;
    .restart local v2    # "serviceProvider":Landroid/telephony/data/DataService$DataServiceProvider;
    iget-object v0, v1, Landroid/telephony/data/DataService$DataServiceHandler;->this$0:Landroid/telephony/data/DataService;

    move-object/from16 v4, p1

    iget v5, v4, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v5}, Landroid/telephony/data/DataService;->onCreateDataServiceProvider(I)Landroid/telephony/data/DataService$DataServiceProvider;

    move-result-object v15

    .line 560
    .end local v2    # "serviceProvider":Landroid/telephony/data/DataService$DataServiceProvider;
    .restart local v15    # "serviceProvider":Landroid/telephony/data/DataService$DataServiceProvider;
    if-eqz v15, :cond_17

    .line 561
    iget-object v0, v1, Landroid/telephony/data/DataService$DataServiceHandler;->this$0:Landroid/telephony/data/DataService;

    invoke-static {v0}, Landroid/telephony/data/DataService;->-$$Nest$fgetmServiceMap(Landroid/telephony/data/DataService;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, v3, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_9

    .line 688
    .end local v15    # "serviceProvider":Landroid/telephony/data/DataService$DataServiceProvider;
    .restart local v2    # "serviceProvider":Landroid/telephony/data/DataService$DataServiceProvider;
    :goto_8
    move-object v15, v2

    .end local v2    # "serviceProvider":Landroid/telephony/data/DataService$DataServiceProvider;
    .restart local v15    # "serviceProvider":Landroid/telephony/data/DataService$DataServiceProvider;
    :cond_17
    :goto_9
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
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
