.class Lcom/samsung/android/bio/iris/SemIrisManager$MyHandler;
.super Landroid/os/Handler;
.source "SemIrisManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/bio/iris/SemIrisManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/samsung/android/bio/iris/SemIrisManager;


# direct methods
.method private constructor blacklist <init>(Lcom/samsung/android/bio/iris/SemIrisManager;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .line 3738
    iput-object p1, p0, Lcom/samsung/android/bio/iris/SemIrisManager$MyHandler;->this$0:Lcom/samsung/android/bio/iris/SemIrisManager;

    .line 3740
    invoke-virtual {p2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 3742
    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/samsung/android/bio/iris/SemIrisManager;Landroid/content/Context;Lcom/samsung/android/bio/iris/SemIrisManager$MyHandler-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/bio/iris/SemIrisManager$MyHandler;-><init>(Lcom/samsung/android/bio/iris/SemIrisManager;Landroid/content/Context;)V

    return-void
.end method

.method private constructor blacklist <init>(Lcom/samsung/android/bio/iris/SemIrisManager;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .line 3746
    iput-object p1, p0, Lcom/samsung/android/bio/iris/SemIrisManager$MyHandler;->this$0:Lcom/samsung/android/bio/iris/SemIrisManager;

    .line 3748
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 3750
    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/samsung/android/bio/iris/SemIrisManager;Landroid/os/Looper;Lcom/samsung/android/bio/iris/SemIrisManager$MyHandler-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/bio/iris/SemIrisManager$MyHandler;-><init>(Lcom/samsung/android/bio/iris/SemIrisManager;Landroid/os/Looper;)V

    return-void
.end method

.method private blacklist sendAuthenticatedSucceeded(Lcom/samsung/android/camera/iris/Iris;)V
    .locals 2
    .param p1, "ir"    # Lcom/samsung/android/camera/iris/Iris;

    .line 3886
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sendAuthenticatedSucceeded, ir : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Bio.SemIrisManager"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3888
    iget-object v0, p0, Lcom/samsung/android/bio/iris/SemIrisManager$MyHandler;->this$0:Lcom/samsung/android/bio/iris/SemIrisManager;

    invoke-static {v0}, Lcom/samsung/android/bio/iris/SemIrisManager;->-$$Nest$fgetmAuthenticationCallback(Lcom/samsung/android/bio/iris/SemIrisManager;)Lcom/samsung/android/bio/iris/SemIrisManager$AuthenticationCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3890
    new-instance v0, Lcom/samsung/android/bio/iris/SemIrisManager$AuthenticationResult;

    iget-object v1, p0, Lcom/samsung/android/bio/iris/SemIrisManager$MyHandler;->this$0:Lcom/samsung/android/bio/iris/SemIrisManager;

    invoke-static {v1}, Lcom/samsung/android/bio/iris/SemIrisManager;->-$$Nest$fgetmCryptoObject(Lcom/samsung/android/bio/iris/SemIrisManager;)Lcom/samsung/android/bio/iris/SemIrisManager$CryptoObject;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/samsung/android/bio/iris/SemIrisManager$AuthenticationResult;-><init>(Lcom/samsung/android/bio/iris/SemIrisManager$CryptoObject;Lcom/samsung/android/camera/iris/Iris;)V

    .line 3892
    .local v0, "result":Lcom/samsung/android/bio/iris/SemIrisManager$AuthenticationResult;
    iget-object v1, p0, Lcom/samsung/android/bio/iris/SemIrisManager$MyHandler;->this$0:Lcom/samsung/android/bio/iris/SemIrisManager;

    invoke-static {v1}, Lcom/samsung/android/bio/iris/SemIrisManager;->-$$Nest$fgetmAuthenticationCallback(Lcom/samsung/android/bio/iris/SemIrisManager;)Lcom/samsung/android/bio/iris/SemIrisManager$AuthenticationCallback;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/bio/iris/SemIrisManager$AuthenticationCallback;->onAuthenticationSucceeded(Lcom/samsung/android/bio/iris/SemIrisManager$AuthenticationResult;)V

    .line 3896
    .end local v0    # "result":Lcom/samsung/android/bio/iris/SemIrisManager$AuthenticationResult;
    :cond_0
    return-void
.end method

.method private blacklist sendAuthenticatedSucceededFidoResultData([B)V
    .locals 2
    .param p1, "fidoResultData"    # [B

    .line 3872
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sendAuthenticatedSucceededFidoResultData, fidoResultData : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Bio.SemIrisManager"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3874
    iget-object v0, p0, Lcom/samsung/android/bio/iris/SemIrisManager$MyHandler;->this$0:Lcom/samsung/android/bio/iris/SemIrisManager;

    invoke-static {v0}, Lcom/samsung/android/bio/iris/SemIrisManager;->-$$Nest$fgetmCryptoObject(Lcom/samsung/android/bio/iris/SemIrisManager;)Lcom/samsung/android/bio/iris/SemIrisManager$CryptoObject;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3876
    iget-object v0, p0, Lcom/samsung/android/bio/iris/SemIrisManager$MyHandler;->this$0:Lcom/samsung/android/bio/iris/SemIrisManager;

    invoke-static {v0}, Lcom/samsung/android/bio/iris/SemIrisManager;->-$$Nest$fgetmCryptoObject(Lcom/samsung/android/bio/iris/SemIrisManager;)Lcom/samsung/android/bio/iris/SemIrisManager$CryptoObject;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/bio/iris/SemIrisManager$CryptoObject;->setFidoResultData([B)V

    .line 3880
    :cond_0
    return-void
.end method

.method private blacklist sendEnrollResult(Lcom/samsung/android/camera/iris/Iris;I)V
    .locals 1
    .param p1, "ir"    # Lcom/samsung/android/camera/iris/Iris;
    .param p2, "remaining"    # I

    .line 3858
    iget-object v0, p0, Lcom/samsung/android/bio/iris/SemIrisManager$MyHandler;->this$0:Lcom/samsung/android/bio/iris/SemIrisManager;

    invoke-static {v0}, Lcom/samsung/android/bio/iris/SemIrisManager;->-$$Nest$fgetmEnrollmentCallback(Lcom/samsung/android/bio/iris/SemIrisManager;)Lcom/samsung/android/bio/iris/SemIrisManager$EnrollmentCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3860
    iget-object v0, p0, Lcom/samsung/android/bio/iris/SemIrisManager$MyHandler;->this$0:Lcom/samsung/android/bio/iris/SemIrisManager;

    invoke-static {v0}, Lcom/samsung/android/bio/iris/SemIrisManager;->-$$Nest$fgetmEnrollmentCallback(Lcom/samsung/android/bio/iris/SemIrisManager;)Lcom/samsung/android/bio/iris/SemIrisManager$EnrollmentCallback;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/samsung/android/bio/iris/SemIrisManager$EnrollmentCallback;->onEnrollmentProgress(I)V

    .line 3866
    :cond_0
    return-void
.end method

.method private blacklist sendIRImage([BII)V
    .locals 2
    .param p1, "irisImage"    # [B
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 3816
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sendIRImage, width : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " height : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Bio.SemIrisManager"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3818
    iget-object v0, p0, Lcom/samsung/android/bio/iris/SemIrisManager$MyHandler;->this$0:Lcom/samsung/android/bio/iris/SemIrisManager;

    invoke-static {v0}, Lcom/samsung/android/bio/iris/SemIrisManager;->-$$Nest$fgetmListener(Lcom/samsung/android/bio/iris/SemIrisManager;)Lcom/samsung/android/bio/iris/SemIrisManager$OnIrImageReadyListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3820
    iget-object v0, p0, Lcom/samsung/android/bio/iris/SemIrisManager$MyHandler;->this$0:Lcom/samsung/android/bio/iris/SemIrisManager;

    invoke-static {v0}, Lcom/samsung/android/bio/iris/SemIrisManager;->-$$Nest$fgetmListener(Lcom/samsung/android/bio/iris/SemIrisManager;)Lcom/samsung/android/bio/iris/SemIrisManager$OnIrImageReadyListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/bio/iris/SemIrisManager$OnIrImageReadyListener;->onIrImageReady([BII)V

    .line 3824
    :cond_0
    return-void
.end method

.method private blacklist sendRemovedResult(JII)V
    .locals 6
    .param p1, "deviceId"    # J
    .param p3, "irisId"    # I
    .param p4, "groupId"    # I

    .line 3830
    iget-object v0, p0, Lcom/samsung/android/bio/iris/SemIrisManager$MyHandler;->this$0:Lcom/samsung/android/bio/iris/SemIrisManager;

    invoke-static {v0}, Lcom/samsung/android/bio/iris/SemIrisManager;->-$$Nest$fgetmRemovalCallback(Lcom/samsung/android/bio/iris/SemIrisManager;)Lcom/samsung/android/bio/iris/SemIrisManager$RemovalCallback;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 3832
    iget-object v0, p0, Lcom/samsung/android/bio/iris/SemIrisManager$MyHandler;->this$0:Lcom/samsung/android/bio/iris/SemIrisManager;

    invoke-static {v0}, Lcom/samsung/android/bio/iris/SemIrisManager;->-$$Nest$fgetmRemovalIris(Lcom/samsung/android/bio/iris/SemIrisManager;)Lcom/samsung/android/camera/iris/Iris;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/camera/iris/Iris;->getIrisId()I

    move-result v0

    .line 3834
    .local v0, "reqIrisId":I
    iget-object v1, p0, Lcom/samsung/android/bio/iris/SemIrisManager$MyHandler;->this$0:Lcom/samsung/android/bio/iris/SemIrisManager;

    invoke-static {v1}, Lcom/samsung/android/bio/iris/SemIrisManager;->-$$Nest$fgetmRemovalIris(Lcom/samsung/android/bio/iris/SemIrisManager;)Lcom/samsung/android/camera/iris/Iris;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/camera/iris/Iris;->getGroupId()I

    move-result v1

    .line 3836
    .local v1, "reqGroupId":I
    const-string v2, " != "

    const-string v3, "Bio.SemIrisManager"

    if-eq p3, v0, :cond_0

    .line 3838
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Iris id didn\'t match: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3842
    :cond_0
    if-eq p4, v1, :cond_1

    .line 3844
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Group id didn\'t match: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3848
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/bio/iris/SemIrisManager$MyHandler;->this$0:Lcom/samsung/android/bio/iris/SemIrisManager;

    invoke-static {v2}, Lcom/samsung/android/bio/iris/SemIrisManager;->-$$Nest$fgetmRemovalCallback(Lcom/samsung/android/bio/iris/SemIrisManager;)Lcom/samsung/android/bio/iris/SemIrisManager$RemovalCallback;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/bio/iris/SemIrisManager$MyHandler;->this$0:Lcom/samsung/android/bio/iris/SemIrisManager;

    invoke-static {v3}, Lcom/samsung/android/bio/iris/SemIrisManager;->-$$Nest$fgetmRemovalIris(Lcom/samsung/android/bio/iris/SemIrisManager;)Lcom/samsung/android/camera/iris/Iris;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/bio/iris/SemIrisManager$RemovalCallback;->onRemovalSucceeded(Lcom/samsung/android/camera/iris/Iris;)V

    .line 3852
    .end local v0    # "reqIrisId":I
    .end local v1    # "reqGroupId":I
    :cond_2
    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 3758
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 3774
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [B

    invoke-direct {p0, v0}, Lcom/samsung/android/bio/iris/SemIrisManager$MyHandler;->sendAuthenticatedSucceededFidoResultData([B)V

    .line 3776
    goto :goto_0

    .line 3804
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [B

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/bio/iris/SemIrisManager$MyHandler;->sendIRImage([BII)V

    goto :goto_0

    .line 3798
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/samsung/android/bio/iris/SemIrisManager$MyHandler;->sendRemovedResult(JII)V

    .line 3800
    goto :goto_0

    .line 3792
    :pswitch_3
    iget-object v0, p0, Lcom/samsung/android/bio/iris/SemIrisManager$MyHandler;->this$0:Lcom/samsung/android/bio/iris/SemIrisManager;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/bio/iris/SemIrisManager;->-$$Nest$msendErrorResult(Lcom/samsung/android/bio/iris/SemIrisManager;JI)V

    .line 3794
    goto :goto_0

    .line 3786
    :pswitch_4
    iget-object v0, p0, Lcom/samsung/android/bio/iris/SemIrisManager$MyHandler;->this$0:Lcom/samsung/android/bio/iris/SemIrisManager;

    invoke-static {v0}, Lcom/samsung/android/bio/iris/SemIrisManager;->-$$Nest$msendAuthenticatedFailed(Lcom/samsung/android/bio/iris/SemIrisManager;)V

    .line 3788
    goto :goto_0

    .line 3780
    :pswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/camera/iris/Iris;

    invoke-direct {p0, v0}, Lcom/samsung/android/bio/iris/SemIrisManager$MyHandler;->sendAuthenticatedSucceeded(Lcom/samsung/android/camera/iris/Iris;)V

    .line 3782
    goto :goto_0

    .line 3768
    :pswitch_6
    iget-object v0, p0, Lcom/samsung/android/bio/iris/SemIrisManager$MyHandler;->this$0:Lcom/samsung/android/bio/iris/SemIrisManager;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/bio/iris/SemIrisManager;->-$$Nest$msendAcquiredResult(Lcom/samsung/android/bio/iris/SemIrisManager;JI)V

    .line 3770
    goto :goto_0

    .line 3762
    :pswitch_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/camera/iris/Iris;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/bio/iris/SemIrisManager$MyHandler;->sendEnrollResult(Lcom/samsung/android/camera/iris/Iris;I)V

    .line 3764
    nop

    .line 3810
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x64
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
