.class Landroid/telephony/data/DataService$IDataServiceWrapper;
.super Landroid/telephony/data/IDataService$Stub;
.source "DataService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/data/DataService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IDataServiceWrapper"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/telephony/data/DataService;


# direct methods
.method private constructor blacklist <init>(Landroid/telephony/data/DataService;)V
    .locals 0

    .line 740
    iput-object p1, p0, Landroid/telephony/data/DataService$IDataServiceWrapper;->this$0:Landroid/telephony/data/DataService;

    invoke-direct {p0}, Landroid/telephony/data/IDataService$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/telephony/data/DataService;Landroid/telephony/data/DataService$IDataServiceWrapper-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telephony/data/DataService$IDataServiceWrapper;-><init>(Landroid/telephony/data/DataService;)V

    return-void
.end method


# virtual methods
.method public blacklist cancelHandover(IILandroid/telephony/data/IDataServiceCallback;)V
    .locals 4
    .param p1, "slotIndex"    # I
    .param p2, "cid"    # I
    .param p3, "callback"    # Landroid/telephony/data/IDataServiceCallback;

    .line 833
    if-nez p3, :cond_0

    .line 834
    iget-object v0, p0, Landroid/telephony/data/DataService$IDataServiceWrapper;->this$0:Landroid/telephony/data/DataService;

    const-string v1, "cancelHandover: callback is null"

    invoke-static {v0, v1}, Landroid/telephony/data/DataService;->-$$Nest$mloge(Landroid/telephony/data/DataService;Ljava/lang/String;)V

    .line 835
    return-void

    .line 837
    :cond_0
    new-instance v0, Landroid/telephony/data/DataService$BeginCancelHandoverRequest;

    invoke-direct {v0, p2, p3}, Landroid/telephony/data/DataService$BeginCancelHandoverRequest;-><init>(ILandroid/telephony/data/IDataServiceCallback;)V

    .line 838
    .local v0, "req":Landroid/telephony/data/DataService$BeginCancelHandoverRequest;
    iget-object v1, p0, Landroid/telephony/data/DataService$IDataServiceWrapper;->this$0:Landroid/telephony/data/DataService;

    invoke-static {v1}, Landroid/telephony/data/DataService;->-$$Nest$fgetmHandler(Landroid/telephony/data/DataService;)Landroid/telephony/data/DataService$DataServiceHandler;

    move-result-object v1

    const/16 v2, 0xd

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3, v0}, Landroid/telephony/data/DataService$DataServiceHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 839
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 840
    return-void
.end method

.method public greylist-max-o createDataServiceProvider(I)V
    .locals 3
    .param p1, "slotIndex"    # I

    .line 743
    iget-object v0, p0, Landroid/telephony/data/DataService$IDataServiceWrapper;->this$0:Landroid/telephony/data/DataService;

    invoke-static {v0}, Landroid/telephony/data/DataService;->-$$Nest$fgetmHandler(Landroid/telephony/data/DataService;)Landroid/telephony/data/DataService$DataServiceHandler;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/telephony/data/DataService$DataServiceHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 744
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 745
    return-void
.end method

.method public greylist-max-o deactivateDataCall(IIILandroid/telephony/data/IDataServiceCallback;)V
    .locals 4
    .param p1, "slotIndex"    # I
    .param p2, "cid"    # I
    .param p3, "reason"    # I
    .param p4, "callback"    # Landroid/telephony/data/IDataServiceCallback;

    .line 769
    iget-object v0, p0, Landroid/telephony/data/DataService$IDataServiceWrapper;->this$0:Landroid/telephony/data/DataService;

    invoke-static {v0}, Landroid/telephony/data/DataService;->-$$Nest$fgetmHandler(Landroid/telephony/data/DataService;)Landroid/telephony/data/DataService$DataServiceHandler;

    move-result-object v0

    new-instance v1, Landroid/telephony/data/DataService$DeactivateDataCallRequest;

    invoke-direct {v1, p2, p3, p4}, Landroid/telephony/data/DataService$DeactivateDataCallRequest;-><init>(IILandroid/telephony/data/IDataServiceCallback;)V

    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p1, v3, v1}, Landroid/telephony/data/DataService$DataServiceHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 771
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 772
    return-void
.end method

.method public greylist-max-o registerForDataCallListChanged(ILandroid/telephony/data/IDataServiceCallback;)V
    .locals 3
    .param p1, "slotIndex"    # I
    .param p2, "callback"    # Landroid/telephony/data/IDataServiceCallback;

    .line 801
    if-nez p2, :cond_0

    .line 802
    iget-object v0, p0, Landroid/telephony/data/DataService$IDataServiceWrapper;->this$0:Landroid/telephony/data/DataService;

    const-string/jumbo v1, "registerForDataCallListChanged: callback is null"

    invoke-static {v0, v1}, Landroid/telephony/data/DataService;->-$$Nest$mloge(Landroid/telephony/data/DataService;Ljava/lang/String;)V

    .line 803
    return-void

    .line 805
    :cond_0
    iget-object v0, p0, Landroid/telephony/data/DataService$IDataServiceWrapper;->this$0:Landroid/telephony/data/DataService;

    invoke-static {v0}, Landroid/telephony/data/DataService;->-$$Nest$fgetmHandler(Landroid/telephony/data/DataService;)Landroid/telephony/data/DataService$DataServiceHandler;

    move-result-object v0

    const/16 v1, 0x9

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2, p2}, Landroid/telephony/data/DataService$DataServiceHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 806
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 807
    return-void
.end method

.method public blacklist registerForUnthrottleApn(ILandroid/telephony/data/IDataServiceCallback;)V
    .locals 3
    .param p1, "slotIndex"    # I
    .param p2, "callback"    # Landroid/telephony/data/IDataServiceCallback;

    .line 844
    if-nez p2, :cond_0

    .line 845
    iget-object v0, p0, Landroid/telephony/data/DataService$IDataServiceWrapper;->this$0:Landroid/telephony/data/DataService;

    const-string/jumbo v1, "registerForUnthrottleApn: callback is null"

    invoke-static {v0, v1}, Landroid/telephony/data/DataService;->-$$Nest$mloge(Landroid/telephony/data/DataService;Ljava/lang/String;)V

    .line 846
    return-void

    .line 848
    :cond_0
    iget-object v0, p0, Landroid/telephony/data/DataService$IDataServiceWrapper;->this$0:Landroid/telephony/data/DataService;

    invoke-static {v0}, Landroid/telephony/data/DataService;->-$$Nest$fgetmHandler(Landroid/telephony/data/DataService;)Landroid/telephony/data/DataService$DataServiceHandler;

    move-result-object v0

    const/16 v1, 0xe

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2, p2}, Landroid/telephony/data/DataService$DataServiceHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 849
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 850
    return-void
.end method

.method public greylist-max-o removeDataServiceProvider(I)V
    .locals 3
    .param p1, "slotIndex"    # I

    .line 749
    iget-object v0, p0, Landroid/telephony/data/DataService$IDataServiceWrapper;->this$0:Landroid/telephony/data/DataService;

    invoke-static {v0}, Landroid/telephony/data/DataService;->-$$Nest$fgetmHandler(Landroid/telephony/data/DataService;)Landroid/telephony/data/DataService$DataServiceHandler;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/telephony/data/DataService$DataServiceHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 750
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 751
    return-void
.end method

.method public blacklist requestDataCallList(ILandroid/telephony/data/IDataServiceCallback;)V
    .locals 3
    .param p1, "slotIndex"    # I
    .param p2, "callback"    # Landroid/telephony/data/IDataServiceCallback;

    .line 791
    if-nez p2, :cond_0

    .line 792
    iget-object v0, p0, Landroid/telephony/data/DataService$IDataServiceWrapper;->this$0:Landroid/telephony/data/DataService;

    const-string/jumbo v1, "requestDataCallList: callback is null"

    invoke-static {v0, v1}, Landroid/telephony/data/DataService;->-$$Nest$mloge(Landroid/telephony/data/DataService;Ljava/lang/String;)V

    .line 793
    return-void

    .line 795
    :cond_0
    iget-object v0, p0, Landroid/telephony/data/DataService$IDataServiceWrapper;->this$0:Landroid/telephony/data/DataService;

    invoke-static {v0}, Landroid/telephony/data/DataService;->-$$Nest$fgetmHandler(Landroid/telephony/data/DataService;)Landroid/telephony/data/DataService$DataServiceHandler;

    move-result-object v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2, p2}, Landroid/telephony/data/DataService$DataServiceHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 796
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 797
    return-void
.end method

.method public greylist-max-o setDataProfile(ILjava/util/List;ZLandroid/telephony/data/IDataServiceCallback;)V
    .locals 4
    .param p1, "slotIndex"    # I
    .param p3, "isRoaming"    # Z
    .param p4, "callback"    # Landroid/telephony/data/IDataServiceCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/telephony/data/DataProfile;",
            ">;Z",
            "Landroid/telephony/data/IDataServiceCallback;",
            ")V"
        }
    .end annotation

    .line 785
    .local p2, "dps":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/data/DataProfile;>;"
    iget-object v0, p0, Landroid/telephony/data/DataService$IDataServiceWrapper;->this$0:Landroid/telephony/data/DataService;

    invoke-static {v0}, Landroid/telephony/data/DataService;->-$$Nest$fgetmHandler(Landroid/telephony/data/DataService;)Landroid/telephony/data/DataService$DataServiceHandler;

    move-result-object v0

    new-instance v1, Landroid/telephony/data/DataService$SetDataProfileRequest;

    invoke-direct {v1, p2, p3, p4}, Landroid/telephony/data/DataService$SetDataProfileRequest;-><init>(Ljava/util/List;ZLandroid/telephony/data/IDataServiceCallback;)V

    const/4 v2, 0x7

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p1, v3, v1}, Landroid/telephony/data/DataService$DataServiceHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 786
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 787
    return-void
.end method

.method public greylist-max-o setInitialAttachApn(ILandroid/telephony/data/DataProfile;ZLandroid/telephony/data/IDataServiceCallback;)V
    .locals 4
    .param p1, "slotIndex"    # I
    .param p2, "dataProfile"    # Landroid/telephony/data/DataProfile;
    .param p3, "isRoaming"    # Z
    .param p4, "callback"    # Landroid/telephony/data/IDataServiceCallback;

    .line 777
    iget-object v0, p0, Landroid/telephony/data/DataService$IDataServiceWrapper;->this$0:Landroid/telephony/data/DataService;

    invoke-static {v0}, Landroid/telephony/data/DataService;->-$$Nest$fgetmHandler(Landroid/telephony/data/DataService;)Landroid/telephony/data/DataService$DataServiceHandler;

    move-result-object v0

    new-instance v1, Landroid/telephony/data/DataService$SetInitialAttachApnRequest;

    invoke-direct {v1, p2, p3, p4}, Landroid/telephony/data/DataService$SetInitialAttachApnRequest;-><init>(Landroid/telephony/data/DataProfile;ZLandroid/telephony/data/IDataServiceCallback;)V

    const/4 v2, 0x6

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p1, v3, v1}, Landroid/telephony/data/DataService$DataServiceHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 779
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 780
    return-void
.end method

.method public blacklist setupDataCall(IILandroid/telephony/data/DataProfile;ZZILandroid/net/LinkProperties;ILandroid/telephony/data/NetworkSliceInfo;Landroid/telephony/data/TrafficDescriptor;ZLandroid/telephony/data/IDataServiceCallback;)V
    .locals 15
    .param p1, "slotIndex"    # I
    .param p2, "accessNetworkType"    # I
    .param p3, "dataProfile"    # Landroid/telephony/data/DataProfile;
    .param p4, "isRoaming"    # Z
    .param p5, "allowRoaming"    # Z
    .param p6, "reason"    # I
    .param p7, "linkProperties"    # Landroid/net/LinkProperties;
    .param p8, "pduSessionId"    # I
    .param p9, "sliceInfo"    # Landroid/telephony/data/NetworkSliceInfo;
    .param p10, "trafficDescriptor"    # Landroid/telephony/data/TrafficDescriptor;
    .param p11, "matchAllRuleAllowed"    # Z
    .param p12, "callback"    # Landroid/telephony/data/IDataServiceCallback;

    .line 759
    move-object v0, p0

    iget-object v1, v0, Landroid/telephony/data/DataService$IDataServiceWrapper;->this$0:Landroid/telephony/data/DataService;

    invoke-static {v1}, Landroid/telephony/data/DataService;->-$$Nest$fgetmHandler(Landroid/telephony/data/DataService;)Landroid/telephony/data/DataService$DataServiceHandler;

    move-result-object v1

    new-instance v14, Landroid/telephony/data/DataService$SetupDataCallRequest;

    move-object v2, v14

    move/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move/from16 v12, p11

    move-object/from16 v13, p12

    invoke-direct/range {v2 .. v13}, Landroid/telephony/data/DataService$SetupDataCallRequest;-><init>(ILandroid/telephony/data/DataProfile;ZZILandroid/net/LinkProperties;ILandroid/telephony/data/NetworkSliceInfo;Landroid/telephony/data/TrafficDescriptor;ZLandroid/telephony/data/IDataServiceCallback;)V

    const/4 v2, 0x4

    const/4 v3, 0x0

    move/from16 v4, p1

    invoke-virtual {v1, v2, v4, v3, v14}, Landroid/telephony/data/DataService$DataServiceHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 763
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 764
    return-void
.end method

.method public blacklist startHandover(IILandroid/telephony/data/IDataServiceCallback;)V
    .locals 4
    .param p1, "slotIndex"    # I
    .param p2, "cid"    # I
    .param p3, "callback"    # Landroid/telephony/data/IDataServiceCallback;

    .line 821
    if-nez p3, :cond_0

    .line 822
    iget-object v0, p0, Landroid/telephony/data/DataService$IDataServiceWrapper;->this$0:Landroid/telephony/data/DataService;

    const-string/jumbo v1, "startHandover: callback is null"

    invoke-static {v0, v1}, Landroid/telephony/data/DataService;->-$$Nest$mloge(Landroid/telephony/data/DataService;Ljava/lang/String;)V

    .line 823
    return-void

    .line 825
    :cond_0
    new-instance v0, Landroid/telephony/data/DataService$BeginCancelHandoverRequest;

    invoke-direct {v0, p2, p3}, Landroid/telephony/data/DataService$BeginCancelHandoverRequest;-><init>(ILandroid/telephony/data/IDataServiceCallback;)V

    .line 826
    .local v0, "req":Landroid/telephony/data/DataService$BeginCancelHandoverRequest;
    iget-object v1, p0, Landroid/telephony/data/DataService$IDataServiceWrapper;->this$0:Landroid/telephony/data/DataService;

    invoke-static {v1}, Landroid/telephony/data/DataService;->-$$Nest$fgetmHandler(Landroid/telephony/data/DataService;)Landroid/telephony/data/DataService$DataServiceHandler;

    move-result-object v1

    const/16 v2, 0xc

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3, v0}, Landroid/telephony/data/DataService$DataServiceHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 828
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 829
    return-void
.end method

.method public greylist-max-o unregisterForDataCallListChanged(ILandroid/telephony/data/IDataServiceCallback;)V
    .locals 3
    .param p1, "slotIndex"    # I
    .param p2, "callback"    # Landroid/telephony/data/IDataServiceCallback;

    .line 811
    if-nez p2, :cond_0

    .line 812
    iget-object v0, p0, Landroid/telephony/data/DataService$IDataServiceWrapper;->this$0:Landroid/telephony/data/DataService;

    const-string/jumbo v1, "unregisterForDataCallListChanged: callback is null"

    invoke-static {v0, v1}, Landroid/telephony/data/DataService;->-$$Nest$mloge(Landroid/telephony/data/DataService;Ljava/lang/String;)V

    .line 813
    return-void

    .line 815
    :cond_0
    iget-object v0, p0, Landroid/telephony/data/DataService$IDataServiceWrapper;->this$0:Landroid/telephony/data/DataService;

    invoke-static {v0}, Landroid/telephony/data/DataService;->-$$Nest$fgetmHandler(Landroid/telephony/data/DataService;)Landroid/telephony/data/DataService$DataServiceHandler;

    move-result-object v0

    const/16 v1, 0xa

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2, p2}, Landroid/telephony/data/DataService$DataServiceHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 816
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 817
    return-void
.end method

.method public blacklist unregisterForUnthrottleApn(ILandroid/telephony/data/IDataServiceCallback;)V
    .locals 3
    .param p1, "slotIndex"    # I
    .param p2, "callback"    # Landroid/telephony/data/IDataServiceCallback;

    .line 854
    if-nez p2, :cond_0

    .line 855
    iget-object v0, p0, Landroid/telephony/data/DataService$IDataServiceWrapper;->this$0:Landroid/telephony/data/DataService;

    const-string/jumbo v1, "uregisterForUnthrottleApn: callback is null"

    invoke-static {v0, v1}, Landroid/telephony/data/DataService;->-$$Nest$mloge(Landroid/telephony/data/DataService;Ljava/lang/String;)V

    .line 856
    return-void

    .line 858
    :cond_0
    iget-object v0, p0, Landroid/telephony/data/DataService$IDataServiceWrapper;->this$0:Landroid/telephony/data/DataService;

    invoke-static {v0}, Landroid/telephony/data/DataService;->-$$Nest$fgetmHandler(Landroid/telephony/data/DataService;)Landroid/telephony/data/DataService$DataServiceHandler;

    move-result-object v0

    const/16 v1, 0xf

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2, p2}, Landroid/telephony/data/DataService$DataServiceHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 859
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 860
    return-void
.end method
