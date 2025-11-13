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

    iput-object p1, p0, Lcom/samsung/android/bio/iris/SemIrisManager$MyHandler;->this$0:Lcom/samsung/android/bio/iris/SemIrisManager;

    invoke-virtual {p2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/samsung/android/bio/iris/SemIrisManager;Landroid/content/Context;Lcom/samsung/android/bio/iris/SemIrisManager$MyHandler-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/bio/iris/SemIrisManager$MyHandler;-><init>(Lcom/samsung/android/bio/iris/SemIrisManager;Landroid/content/Context;)V

    return-void
.end method

.method private constructor blacklist <init>(Lcom/samsung/android/bio/iris/SemIrisManager;Landroid/os/Looper;)V
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

    iput-object p1, p0, Lcom/samsung/android/bio/iris/SemIrisManager$MyHandler;->this$0:Lcom/samsung/android/bio/iris/SemIrisManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/samsung/android/bio/iris/SemIrisManager;Landroid/os/Looper;Lcom/samsung/android/bio/iris/SemIrisManager$MyHandler-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/bio/iris/SemIrisManager$MyHandler;-><init>(Lcom/samsung/android/bio/iris/SemIrisManager;Landroid/os/Looper;)V

    return-void
.end method

.method private blacklist sendAuthenticatedSucceeded(Lcom/samsung/android/camera/iris/Iris;)V
    .locals 2

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

    iget-object v0, p0, Lcom/samsung/android/bio/iris/SemIrisManager$MyHandler;->this$0:Lcom/samsung/android/bio/iris/SemIrisManager;

    invoke-static {v0}, Lcom/samsung/android/bio/iris/SemIrisManager;->-$$Nest$fgetmAuthenticationCallback(Lcom/samsung/android/bio/iris/SemIrisManager;)Lcom/samsung/android/bio/iris/SemIrisManager$AuthenticationCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/samsung/android/bio/iris/SemIrisManager$AuthenticationResult;

    iget-object v1, p0, Lcom/samsung/android/bio/iris/SemIrisManager$MyHandler;->this$0:Lcom/samsung/android/bio/iris/SemIrisManager;

    invoke-static {v1}, Lcom/samsung/android/bio/iris/SemIrisManager;->-$$Nest$fgetmCryptoObject(Lcom/samsung/android/bio/iris/SemIrisManager;)Lcom/samsung/android/bio/iris/SemIrisManager$CryptoObject;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/samsung/android/bio/iris/SemIrisManager$AuthenticationResult;-><init>(Lcom/samsung/android/bio/iris/SemIrisManager$CryptoObject;Lcom/samsung/android/camera/iris/Iris;)V

    iget-object v1, p0, Lcom/samsung/android/bio/iris/SemIrisManager$MyHandler;->this$0:Lcom/samsung/android/bio/iris/SemIrisManager;

    invoke-static {v1}, Lcom/samsung/android/bio/iris/SemIrisManager;->-$$Nest$fgetmAuthenticationCallback(Lcom/samsung/android/bio/iris/SemIrisManager;)Lcom/samsung/android/bio/iris/SemIrisManager$AuthenticationCallback;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/bio/iris/SemIrisManager$AuthenticationCallback;->onAuthenticationSucceeded(Lcom/samsung/android/bio/iris/SemIrisManager$AuthenticationResult;)V

    :cond_0
    return-void
.end method

.method private blacklist sendAuthenticatedSucceededFidoResultData([B)V
    .locals 2

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

    iget-object v0, p0, Lcom/samsung/android/bio/iris/SemIrisManager$MyHandler;->this$0:Lcom/samsung/android/bio/iris/SemIrisManager;

    invoke-static {v0}, Lcom/samsung/android/bio/iris/SemIrisManager;->-$$Nest$fgetmCryptoObject(Lcom/samsung/android/bio/iris/SemIrisManager;)Lcom/samsung/android/bio/iris/SemIrisManager$CryptoObject;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/bio/iris/SemIrisManager$MyHandler;->this$0:Lcom/samsung/android/bio/iris/SemIrisManager;

    invoke-static {v0}, Lcom/samsung/android/bio/iris/SemIrisManager;->-$$Nest$fgetmCryptoObject(Lcom/samsung/android/bio/iris/SemIrisManager;)Lcom/samsung/android/bio/iris/SemIrisManager$CryptoObject;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/bio/iris/SemIrisManager$CryptoObject;->setFidoResultData([B)V

    :cond_0
    return-void
.end method

.method private blacklist sendEnrollResult(Lcom/samsung/android/camera/iris/Iris;I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/bio/iris/SemIrisManager$MyHandler;->this$0:Lcom/samsung/android/bio/iris/SemIrisManager;

    invoke-static {v0}, Lcom/samsung/android/bio/iris/SemIrisManager;->-$$Nest$fgetmEnrollmentCallback(Lcom/samsung/android/bio/iris/SemIrisManager;)Lcom/samsung/android/bio/iris/SemIrisManager$EnrollmentCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/bio/iris/SemIrisManager$MyHandler;->this$0:Lcom/samsung/android/bio/iris/SemIrisManager;

    invoke-static {v0}, Lcom/samsung/android/bio/iris/SemIrisManager;->-$$Nest$fgetmEnrollmentCallback(Lcom/samsung/android/bio/iris/SemIrisManager;)Lcom/samsung/android/bio/iris/SemIrisManager$EnrollmentCallback;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/samsung/android/bio/iris/SemIrisManager$EnrollmentCallback;->onEnrollmentProgress(I)V

    :cond_0
    return-void
.end method

.method private blacklist sendIRImage([BII)V
    .locals 2

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

    iget-object v0, p0, Lcom/samsung/android/bio/iris/SemIrisManager$MyHandler;->this$0:Lcom/samsung/android/bio/iris/SemIrisManager;

    invoke-static {v0}, Lcom/samsung/android/bio/iris/SemIrisManager;->-$$Nest$fgetmListener(Lcom/samsung/android/bio/iris/SemIrisManager;)Lcom/samsung/android/bio/iris/SemIrisManager$OnIrImageReadyListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/bio/iris/SemIrisManager$MyHandler;->this$0:Lcom/samsung/android/bio/iris/SemIrisManager;

    invoke-static {v0}, Lcom/samsung/android/bio/iris/SemIrisManager;->-$$Nest$fgetmListener(Lcom/samsung/android/bio/iris/SemIrisManager;)Lcom/samsung/android/bio/iris/SemIrisManager$OnIrImageReadyListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/bio/iris/SemIrisManager$OnIrImageReadyListener;->onIrImageReady([BII)V

    :cond_0
    return-void
.end method

.method private blacklist sendRemovedResult(JII)V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/bio/iris/SemIrisManager$MyHandler;->this$0:Lcom/samsung/android/bio/iris/SemIrisManager;

    invoke-static {v0}, Lcom/samsung/android/bio/iris/SemIrisManager;->-$$Nest$fgetmRemovalCallback(Lcom/samsung/android/bio/iris/SemIrisManager;)Lcom/samsung/android/bio/iris/SemIrisManager$RemovalCallback;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/bio/iris/SemIrisManager$MyHandler;->this$0:Lcom/samsung/android/bio/iris/SemIrisManager;

    invoke-static {v0}, Lcom/samsung/android/bio/iris/SemIrisManager;->-$$Nest$fgetmRemovalIris(Lcom/samsung/android/bio/iris/SemIrisManager;)Lcom/samsung/android/camera/iris/Iris;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/camera/iris/Iris;->getIrisId()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/bio/iris/SemIrisManager$MyHandler;->this$0:Lcom/samsung/android/bio/iris/SemIrisManager;

    invoke-static {v1}, Lcom/samsung/android/bio/iris/SemIrisManager;->-$$Nest$fgetmRemovalIris(Lcom/samsung/android/bio/iris/SemIrisManager;)Lcom/samsung/android/camera/iris/Iris;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/camera/iris/Iris;->getGroupId()I

    move-result v1

    const-string v2, " != "

    const-string v3, "Bio.SemIrisManager"

    if-eq p3, v0, :cond_0

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

    :cond_0
    if-eq p4, v1, :cond_1

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

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/bio/iris/SemIrisManager$MyHandler;->this$0:Lcom/samsung/android/bio/iris/SemIrisManager;

    invoke-static {v2}, Lcom/samsung/android/bio/iris/SemIrisManager;->-$$Nest$fgetmRemovalCallback(Lcom/samsung/android/bio/iris/SemIrisManager;)Lcom/samsung/android/bio/iris/SemIrisManager$RemovalCallback;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/bio/iris/SemIrisManager$MyHandler;->this$0:Lcom/samsung/android/bio/iris/SemIrisManager;

    invoke-static {v3}, Lcom/samsung/android/bio/iris/SemIrisManager;->-$$Nest$fgetmRemovalIris(Lcom/samsung/android/bio/iris/SemIrisManager;)Lcom/samsung/android/camera/iris/Iris;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/bio/iris/SemIrisManager$RemovalCallback;->onRemovalSucceeded(Lcom/samsung/android/camera/iris/Iris;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 4

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [B

    invoke-direct {p0, v0}, Lcom/samsung/android/bio/iris/SemIrisManager$MyHandler;->sendAuthenticatedSucceededFidoResultData([B)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [B

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/bio/iris/SemIrisManager$MyHandler;->sendIRImage([BII)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/samsung/android/bio/iris/SemIrisManager$MyHandler;->sendRemovedResult(JII)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/samsung/android/bio/iris/SemIrisManager$MyHandler;->this$0:Lcom/samsung/android/bio/iris/SemIrisManager;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/bio/iris/SemIrisManager;->-$$Nest$msendErrorResult(Lcom/samsung/android/bio/iris/SemIrisManager;JI)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/samsung/android/bio/iris/SemIrisManager$MyHandler;->this$0:Lcom/samsung/android/bio/iris/SemIrisManager;

    invoke-static {v0}, Lcom/samsung/android/bio/iris/SemIrisManager;->-$$Nest$msendAuthenticatedFailed(Lcom/samsung/android/bio/iris/SemIrisManager;)V

    goto :goto_0

    :pswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/camera/iris/Iris;

    invoke-direct {p0, v0}, Lcom/samsung/android/bio/iris/SemIrisManager$MyHandler;->sendAuthenticatedSucceeded(Lcom/samsung/android/camera/iris/Iris;)V

    goto :goto_0

    :pswitch_6
    iget-object v0, p0, Lcom/samsung/android/bio/iris/SemIrisManager$MyHandler;->this$0:Lcom/samsung/android/bio/iris/SemIrisManager;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/bio/iris/SemIrisManager;->-$$Nest$msendAcquiredResult(Lcom/samsung/android/bio/iris/SemIrisManager;JI)V

    goto :goto_0

    :pswitch_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/camera/iris/Iris;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/bio/iris/SemIrisManager$MyHandler;->sendEnrollResult(Lcom/samsung/android/camera/iris/Iris;I)V

    nop

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
