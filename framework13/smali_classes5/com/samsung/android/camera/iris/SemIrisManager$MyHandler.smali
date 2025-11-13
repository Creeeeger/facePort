.class Lcom/samsung/android/camera/iris/SemIrisManager$MyHandler;
.super Landroid/os/Handler;
.source "SemIrisManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camera/iris/SemIrisManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/samsung/android/camera/iris/SemIrisManager;


# direct methods
.method private constructor blacklist <init>(Lcom/samsung/android/camera/iris/SemIrisManager;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .line 1693
    iput-object p1, p0, Lcom/samsung/android/camera/iris/SemIrisManager$MyHandler;->this$0:Lcom/samsung/android/camera/iris/SemIrisManager;

    .line 1694
    invoke-virtual {p2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1695
    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/samsung/android/camera/iris/SemIrisManager;Landroid/content/Context;Lcom/samsung/android/camera/iris/SemIrisManager$MyHandler-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/camera/iris/SemIrisManager$MyHandler;-><init>(Lcom/samsung/android/camera/iris/SemIrisManager;Landroid/content/Context;)V

    return-void
.end method

.method private constructor blacklist <init>(Lcom/samsung/android/camera/iris/SemIrisManager;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .line 1697
    iput-object p1, p0, Lcom/samsung/android/camera/iris/SemIrisManager$MyHandler;->this$0:Lcom/samsung/android/camera/iris/SemIrisManager;

    .line 1698
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1699
    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/samsung/android/camera/iris/SemIrisManager;Landroid/os/Looper;Lcom/samsung/android/camera/iris/SemIrisManager$MyHandler-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/camera/iris/SemIrisManager$MyHandler;-><init>(Lcom/samsung/android/camera/iris/SemIrisManager;Landroid/os/Looper;)V

    return-void
.end method

.method private blacklist sendAcquiredResult(JI)V
    .locals 2
    .param p1, "deviceId"    # J
    .param p3, "acquireInfo"    # I

    .line 1798
    iget-object v0, p0, Lcom/samsung/android/camera/iris/SemIrisManager$MyHandler;->this$0:Lcom/samsung/android/camera/iris/SemIrisManager;

    invoke-static {v0}, Lcom/samsung/android/camera/iris/SemIrisManager;->-$$Nest$fgetmAuthenticationCallback(Lcom/samsung/android/camera/iris/SemIrisManager;)Lcom/samsung/android/camera/iris/SemIrisManager$AuthenticationCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1799
    iget-object v0, p0, Lcom/samsung/android/camera/iris/SemIrisManager$MyHandler;->this$0:Lcom/samsung/android/camera/iris/SemIrisManager;

    invoke-static {v0}, Lcom/samsung/android/camera/iris/SemIrisManager;->-$$Nest$fgetmAuthenticationCallback(Lcom/samsung/android/camera/iris/SemIrisManager;)Lcom/samsung/android/camera/iris/SemIrisManager$AuthenticationCallback;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/samsung/android/camera/iris/SemIrisManager$AuthenticationCallback;->onAuthenticationAcquired(I)V

    .line 1801
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/camera/iris/SemIrisManager$MyHandler;->this$0:Lcom/samsung/android/camera/iris/SemIrisManager;

    invoke-static {v0, p3}, Lcom/samsung/android/camera/iris/SemIrisManager;->-$$Nest$mgetAcquiredString(Lcom/samsung/android/camera/iris/SemIrisManager;I)Ljava/lang/String;

    move-result-object v0

    .line 1802
    .local v0, "msg":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 1803
    return-void

    .line 1806
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/camera/iris/SemIrisManager$MyHandler;->this$0:Lcom/samsung/android/camera/iris/SemIrisManager;

    invoke-static {v1}, Lcom/samsung/android/camera/iris/SemIrisManager;->-$$Nest$fgetmEnrollmentCallback(Lcom/samsung/android/camera/iris/SemIrisManager;)Lcom/samsung/android/camera/iris/SemIrisManager$EnrollmentCallback;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1807
    iget-object v1, p0, Lcom/samsung/android/camera/iris/SemIrisManager$MyHandler;->this$0:Lcom/samsung/android/camera/iris/SemIrisManager;

    invoke-static {v1}, Lcom/samsung/android/camera/iris/SemIrisManager;->-$$Nest$fgetmEnrollmentCallback(Lcom/samsung/android/camera/iris/SemIrisManager;)Lcom/samsung/android/camera/iris/SemIrisManager$EnrollmentCallback;

    move-result-object v1

    invoke-virtual {v1, p3, v0}, Lcom/samsung/android/camera/iris/SemIrisManager$EnrollmentCallback;->onEnrollmentHelp(ILjava/lang/CharSequence;)V

    goto :goto_0

    .line 1808
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/camera/iris/SemIrisManager$MyHandler;->this$0:Lcom/samsung/android/camera/iris/SemIrisManager;

    invoke-static {v1}, Lcom/samsung/android/camera/iris/SemIrisManager;->-$$Nest$fgetmAuthenticationCallback(Lcom/samsung/android/camera/iris/SemIrisManager;)Lcom/samsung/android/camera/iris/SemIrisManager$AuthenticationCallback;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 1809
    if-nez v0, :cond_3

    .line 1810
    return-void

    .line 1812
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/camera/iris/SemIrisManager$MyHandler;->this$0:Lcom/samsung/android/camera/iris/SemIrisManager;

    invoke-static {v1}, Lcom/samsung/android/camera/iris/SemIrisManager;->-$$Nest$fgetmAuthenticationCallback(Lcom/samsung/android/camera/iris/SemIrisManager;)Lcom/samsung/android/camera/iris/SemIrisManager$AuthenticationCallback;

    move-result-object v1

    invoke-virtual {v1, p3, v0}, Lcom/samsung/android/camera/iris/SemIrisManager$AuthenticationCallback;->onAuthenticationHelp(ILjava/lang/CharSequence;)V

    .line 1814
    :cond_4
    :goto_0
    return-void
.end method

.method private blacklist sendAuthenticatedFailed()V
    .locals 1

    .line 1792
    iget-object v0, p0, Lcom/samsung/android/camera/iris/SemIrisManager$MyHandler;->this$0:Lcom/samsung/android/camera/iris/SemIrisManager;

    invoke-static {v0}, Lcom/samsung/android/camera/iris/SemIrisManager;->-$$Nest$fgetmAuthenticationCallback(Lcom/samsung/android/camera/iris/SemIrisManager;)Lcom/samsung/android/camera/iris/SemIrisManager$AuthenticationCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1793
    iget-object v0, p0, Lcom/samsung/android/camera/iris/SemIrisManager$MyHandler;->this$0:Lcom/samsung/android/camera/iris/SemIrisManager;

    invoke-static {v0}, Lcom/samsung/android/camera/iris/SemIrisManager;->-$$Nest$fgetmAuthenticationCallback(Lcom/samsung/android/camera/iris/SemIrisManager;)Lcom/samsung/android/camera/iris/SemIrisManager$AuthenticationCallback;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/camera/iris/SemIrisManager$AuthenticationCallback;->onAuthenticationFailed()V

    .line 1795
    :cond_0
    return-void
.end method

.method private blacklist sendAuthenticatedSucceeded(Lcom/samsung/android/camera/iris/Iris;)V
    .locals 2
    .param p1, "ir"    # Lcom/samsung/android/camera/iris/Iris;

    .line 1784
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sendAuthenticatedSucceeded, ir : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemIrisManager"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1785
    iget-object v0, p0, Lcom/samsung/android/camera/iris/SemIrisManager$MyHandler;->this$0:Lcom/samsung/android/camera/iris/SemIrisManager;

    invoke-static {v0}, Lcom/samsung/android/camera/iris/SemIrisManager;->-$$Nest$fgetmAuthenticationCallback(Lcom/samsung/android/camera/iris/SemIrisManager;)Lcom/samsung/android/camera/iris/SemIrisManager$AuthenticationCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1786
    new-instance v0, Lcom/samsung/android/camera/iris/SemIrisManager$AuthenticationResult;

    iget-object v1, p0, Lcom/samsung/android/camera/iris/SemIrisManager$MyHandler;->this$0:Lcom/samsung/android/camera/iris/SemIrisManager;

    invoke-static {v1}, Lcom/samsung/android/camera/iris/SemIrisManager;->-$$Nest$fgetmCryptoObject(Lcom/samsung/android/camera/iris/SemIrisManager;)Lcom/samsung/android/camera/iris/SemIrisManager$CryptoObject;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/samsung/android/camera/iris/SemIrisManager$AuthenticationResult;-><init>(Lcom/samsung/android/camera/iris/SemIrisManager$CryptoObject;Lcom/samsung/android/camera/iris/Iris;)V

    .line 1787
    .local v0, "result":Lcom/samsung/android/camera/iris/SemIrisManager$AuthenticationResult;
    iget-object v1, p0, Lcom/samsung/android/camera/iris/SemIrisManager$MyHandler;->this$0:Lcom/samsung/android/camera/iris/SemIrisManager;

    invoke-static {v1}, Lcom/samsung/android/camera/iris/SemIrisManager;->-$$Nest$fgetmAuthenticationCallback(Lcom/samsung/android/camera/iris/SemIrisManager;)Lcom/samsung/android/camera/iris/SemIrisManager$AuthenticationCallback;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/camera/iris/SemIrisManager$AuthenticationCallback;->onAuthenticationSucceeded(Lcom/samsung/android/camera/iris/SemIrisManager$AuthenticationResult;)V

    .line 1789
    .end local v0    # "result":Lcom/samsung/android/camera/iris/SemIrisManager$AuthenticationResult;
    :cond_0
    return-void
.end method

.method private blacklist sendAuthenticatedSucceededFidoResultData([B)V
    .locals 2
    .param p1, "fidoResultData"    # [B

    .line 1777
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

    const-string v1, "SemIrisManager"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1778
    iget-object v0, p0, Lcom/samsung/android/camera/iris/SemIrisManager$MyHandler;->this$0:Lcom/samsung/android/camera/iris/SemIrisManager;

    invoke-static {v0}, Lcom/samsung/android/camera/iris/SemIrisManager;->-$$Nest$fgetmCryptoObject(Lcom/samsung/android/camera/iris/SemIrisManager;)Lcom/samsung/android/camera/iris/SemIrisManager$CryptoObject;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1779
    iget-object v0, p0, Lcom/samsung/android/camera/iris/SemIrisManager$MyHandler;->this$0:Lcom/samsung/android/camera/iris/SemIrisManager;

    invoke-static {v0}, Lcom/samsung/android/camera/iris/SemIrisManager;->-$$Nest$fgetmCryptoObject(Lcom/samsung/android/camera/iris/SemIrisManager;)Lcom/samsung/android/camera/iris/SemIrisManager$CryptoObject;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/samsung/android/camera/iris/SemIrisManager$CryptoObject;->-$$Nest$msetFidoResultData(Lcom/samsung/android/camera/iris/SemIrisManager$CryptoObject;[B)V

    .line 1781
    :cond_0
    return-void
.end method

.method private blacklist sendEnrollResult(Lcom/samsung/android/camera/iris/Iris;I)V
    .locals 1
    .param p1, "ir"    # Lcom/samsung/android/camera/iris/Iris;
    .param p2, "remaining"    # I

    .line 1770
    iget-object v0, p0, Lcom/samsung/android/camera/iris/SemIrisManager$MyHandler;->this$0:Lcom/samsung/android/camera/iris/SemIrisManager;

    invoke-static {v0}, Lcom/samsung/android/camera/iris/SemIrisManager;->-$$Nest$fgetmEnrollmentCallback(Lcom/samsung/android/camera/iris/SemIrisManager;)Lcom/samsung/android/camera/iris/SemIrisManager$EnrollmentCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1771
    iget-object v0, p0, Lcom/samsung/android/camera/iris/SemIrisManager$MyHandler;->this$0:Lcom/samsung/android/camera/iris/SemIrisManager;

    invoke-static {v0}, Lcom/samsung/android/camera/iris/SemIrisManager;->-$$Nest$fgetmEnrollmentCallback(Lcom/samsung/android/camera/iris/SemIrisManager;)Lcom/samsung/android/camera/iris/SemIrisManager$EnrollmentCallback;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/samsung/android/camera/iris/SemIrisManager$EnrollmentCallback;->onEnrollmentProgress(I)V

    .line 1774
    :cond_0
    return-void
.end method

.method private blacklist sendErrorResult(JI)V
    .locals 3
    .param p1, "deviceId"    # J
    .param p3, "errMsgId"    # I

    .line 1756
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sendErrorResult, errMsgId : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemIrisManager"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1757
    const/4 v0, 0x4

    if-ne p3, v0, :cond_0

    .line 1758
    return-void

    .line 1760
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/camera/iris/SemIrisManager$MyHandler;->this$0:Lcom/samsung/android/camera/iris/SemIrisManager;

    invoke-static {v0}, Lcom/samsung/android/camera/iris/SemIrisManager;->-$$Nest$fgetmEnrollmentCallback(Lcom/samsung/android/camera/iris/SemIrisManager;)Lcom/samsung/android/camera/iris/SemIrisManager$EnrollmentCallback;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1761
    iget-object v0, p0, Lcom/samsung/android/camera/iris/SemIrisManager$MyHandler;->this$0:Lcom/samsung/android/camera/iris/SemIrisManager;

    invoke-static {v0}, Lcom/samsung/android/camera/iris/SemIrisManager;->-$$Nest$fgetmEnrollmentCallback(Lcom/samsung/android/camera/iris/SemIrisManager;)Lcom/samsung/android/camera/iris/SemIrisManager$EnrollmentCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/camera/iris/SemIrisManager$MyHandler;->this$0:Lcom/samsung/android/camera/iris/SemIrisManager;

    invoke-static {v1, p3}, Lcom/samsung/android/camera/iris/SemIrisManager;->-$$Nest$mgetErrorString(Lcom/samsung/android/camera/iris/SemIrisManager;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p3, v1}, Lcom/samsung/android/camera/iris/SemIrisManager$EnrollmentCallback;->onEnrollmentError(ILjava/lang/CharSequence;)V

    goto :goto_0

    .line 1762
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/camera/iris/SemIrisManager$MyHandler;->this$0:Lcom/samsung/android/camera/iris/SemIrisManager;

    invoke-static {v0}, Lcom/samsung/android/camera/iris/SemIrisManager;->-$$Nest$fgetmAuthenticationCallback(Lcom/samsung/android/camera/iris/SemIrisManager;)Lcom/samsung/android/camera/iris/SemIrisManager$AuthenticationCallback;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1763
    iget-object v0, p0, Lcom/samsung/android/camera/iris/SemIrisManager$MyHandler;->this$0:Lcom/samsung/android/camera/iris/SemIrisManager;

    invoke-static {v0}, Lcom/samsung/android/camera/iris/SemIrisManager;->-$$Nest$fgetmAuthenticationCallback(Lcom/samsung/android/camera/iris/SemIrisManager;)Lcom/samsung/android/camera/iris/SemIrisManager$AuthenticationCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/camera/iris/SemIrisManager$MyHandler;->this$0:Lcom/samsung/android/camera/iris/SemIrisManager;

    invoke-static {v1, p3}, Lcom/samsung/android/camera/iris/SemIrisManager;->-$$Nest$mgetErrorString(Lcom/samsung/android/camera/iris/SemIrisManager;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p3, v1}, Lcom/samsung/android/camera/iris/SemIrisManager$AuthenticationCallback;->onAuthenticationError(ILjava/lang/CharSequence;)V

    goto :goto_0

    .line 1764
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/camera/iris/SemIrisManager$MyHandler;->this$0:Lcom/samsung/android/camera/iris/SemIrisManager;

    invoke-static {v0}, Lcom/samsung/android/camera/iris/SemIrisManager;->-$$Nest$fgetmRemovalCallback(Lcom/samsung/android/camera/iris/SemIrisManager;)Lcom/samsung/android/camera/iris/SemIrisManager$RemovalCallback;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1765
    iget-object v0, p0, Lcom/samsung/android/camera/iris/SemIrisManager$MyHandler;->this$0:Lcom/samsung/android/camera/iris/SemIrisManager;

    invoke-static {v0}, Lcom/samsung/android/camera/iris/SemIrisManager;->-$$Nest$fgetmRemovalCallback(Lcom/samsung/android/camera/iris/SemIrisManager;)Lcom/samsung/android/camera/iris/SemIrisManager$RemovalCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/camera/iris/SemIrisManager$MyHandler;->this$0:Lcom/samsung/android/camera/iris/SemIrisManager;

    invoke-static {v1}, Lcom/samsung/android/camera/iris/SemIrisManager;->-$$Nest$fgetmRemovalIris(Lcom/samsung/android/camera/iris/SemIrisManager;)Lcom/samsung/android/camera/iris/Iris;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/camera/iris/SemIrisManager$MyHandler;->this$0:Lcom/samsung/android/camera/iris/SemIrisManager;

    invoke-static {v2, p3}, Lcom/samsung/android/camera/iris/SemIrisManager;->-$$Nest$mgetErrorString(Lcom/samsung/android/camera/iris/SemIrisManager;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, p3, v2}, Lcom/samsung/android/camera/iris/SemIrisManager$RemovalCallback;->onRemovalError(Lcom/samsung/android/camera/iris/Iris;ILjava/lang/CharSequence;)V

    .line 1767
    :cond_3
    :goto_0
    return-void
.end method

.method private blacklist sendIRImage([BII)V
    .locals 2
    .param p1, "irisImage"    # [B
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 1732
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

    const-string v1, "SemIrisManager"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1733
    iget-object v0, p0, Lcom/samsung/android/camera/iris/SemIrisManager$MyHandler;->this$0:Lcom/samsung/android/camera/iris/SemIrisManager;

    invoke-static {v0}, Lcom/samsung/android/camera/iris/SemIrisManager;->-$$Nest$fgetmEnrollmentCallback(Lcom/samsung/android/camera/iris/SemIrisManager;)Lcom/samsung/android/camera/iris/SemIrisManager$EnrollmentCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1734
    iget-object v0, p0, Lcom/samsung/android/camera/iris/SemIrisManager$MyHandler;->this$0:Lcom/samsung/android/camera/iris/SemIrisManager;

    invoke-static {v0}, Lcom/samsung/android/camera/iris/SemIrisManager;->-$$Nest$fgetmEnrollmentCallback(Lcom/samsung/android/camera/iris/SemIrisManager;)Lcom/samsung/android/camera/iris/SemIrisManager$EnrollmentCallback;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/camera/iris/SemIrisManager$EnrollmentCallback;->onIRImage([BII)V

    .line 1736
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/camera/iris/SemIrisManager$MyHandler;->this$0:Lcom/samsung/android/camera/iris/SemIrisManager;

    invoke-static {v0}, Lcom/samsung/android/camera/iris/SemIrisManager;->-$$Nest$fgetmAuthenticationCallback(Lcom/samsung/android/camera/iris/SemIrisManager;)Lcom/samsung/android/camera/iris/SemIrisManager$AuthenticationCallback;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1737
    iget-object v0, p0, Lcom/samsung/android/camera/iris/SemIrisManager$MyHandler;->this$0:Lcom/samsung/android/camera/iris/SemIrisManager;

    invoke-static {v0}, Lcom/samsung/android/camera/iris/SemIrisManager;->-$$Nest$fgetmAuthenticationCallback(Lcom/samsung/android/camera/iris/SemIrisManager;)Lcom/samsung/android/camera/iris/SemIrisManager$AuthenticationCallback;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/camera/iris/SemIrisManager$AuthenticationCallback;->onIRImage([BII)V

    .line 1739
    :cond_1
    return-void
.end method

.method private blacklist sendRemovedResult(JII)V
    .locals 6
    .param p1, "deviceId"    # J
    .param p3, "irisId"    # I
    .param p4, "groupId"    # I

    .line 1742
    iget-object v0, p0, Lcom/samsung/android/camera/iris/SemIrisManager$MyHandler;->this$0:Lcom/samsung/android/camera/iris/SemIrisManager;

    invoke-static {v0}, Lcom/samsung/android/camera/iris/SemIrisManager;->-$$Nest$fgetmRemovalCallback(Lcom/samsung/android/camera/iris/SemIrisManager;)Lcom/samsung/android/camera/iris/SemIrisManager$RemovalCallback;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1743
    iget-object v0, p0, Lcom/samsung/android/camera/iris/SemIrisManager$MyHandler;->this$0:Lcom/samsung/android/camera/iris/SemIrisManager;

    invoke-static {v0}, Lcom/samsung/android/camera/iris/SemIrisManager;->-$$Nest$fgetmRemovalIris(Lcom/samsung/android/camera/iris/SemIrisManager;)Lcom/samsung/android/camera/iris/Iris;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/camera/iris/Iris;->getIrisId()I

    move-result v0

    .line 1744
    .local v0, "reqIrisId":I
    iget-object v1, p0, Lcom/samsung/android/camera/iris/SemIrisManager$MyHandler;->this$0:Lcom/samsung/android/camera/iris/SemIrisManager;

    invoke-static {v1}, Lcom/samsung/android/camera/iris/SemIrisManager;->-$$Nest$fgetmRemovalIris(Lcom/samsung/android/camera/iris/SemIrisManager;)Lcom/samsung/android/camera/iris/Iris;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/camera/iris/Iris;->getGroupId()I

    move-result v1

    .line 1745
    .local v1, "reqGroupId":I
    const-string v2, " != "

    const-string v3, "SemIrisManager"

    if-eq p3, v0, :cond_0

    .line 1746
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

    .line 1748
    :cond_0
    if-eq p4, v1, :cond_1

    .line 1749
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

    .line 1751
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/camera/iris/SemIrisManager$MyHandler;->this$0:Lcom/samsung/android/camera/iris/SemIrisManager;

    invoke-static {v2}, Lcom/samsung/android/camera/iris/SemIrisManager;->-$$Nest$fgetmRemovalCallback(Lcom/samsung/android/camera/iris/SemIrisManager;)Lcom/samsung/android/camera/iris/SemIrisManager$RemovalCallback;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/camera/iris/SemIrisManager$MyHandler;->this$0:Lcom/samsung/android/camera/iris/SemIrisManager;

    invoke-static {v3}, Lcom/samsung/android/camera/iris/SemIrisManager;->-$$Nest$fgetmRemovalIris(Lcom/samsung/android/camera/iris/SemIrisManager;)Lcom/samsung/android/camera/iris/Iris;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/camera/iris/SemIrisManager$RemovalCallback;->onRemovalSucceeded(Lcom/samsung/android/camera/iris/Iris;)V

    .line 1753
    .end local v0    # "reqIrisId":I
    .end local v1    # "reqGroupId":I
    :cond_2
    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 1703
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1711
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [B

    invoke-direct {p0, v0}, Lcom/samsung/android/camera/iris/SemIrisManager$MyHandler;->sendAuthenticatedSucceededFidoResultData([B)V

    .line 1712
    goto :goto_0

    .line 1726
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [B

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/camera/iris/SemIrisManager$MyHandler;->sendIRImage([BII)V

    goto :goto_0

    .line 1723
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/samsung/android/camera/iris/SemIrisManager$MyHandler;->sendRemovedResult(JII)V

    .line 1724
    goto :goto_0

    .line 1720
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/camera/iris/SemIrisManager$MyHandler;->sendErrorResult(JI)V

    .line 1721
    goto :goto_0

    .line 1717
    :pswitch_4
    invoke-direct {p0}, Lcom/samsung/android/camera/iris/SemIrisManager$MyHandler;->sendAuthenticatedFailed()V

    .line 1718
    goto :goto_0

    .line 1714
    :pswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/camera/iris/Iris;

    invoke-direct {p0, v0}, Lcom/samsung/android/camera/iris/SemIrisManager$MyHandler;->sendAuthenticatedSucceeded(Lcom/samsung/android/camera/iris/Iris;)V

    .line 1715
    goto :goto_0

    .line 1708
    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/camera/iris/SemIrisManager$MyHandler;->sendAcquiredResult(JI)V

    .line 1709
    goto :goto_0

    .line 1705
    :pswitch_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/camera/iris/Iris;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/camera/iris/SemIrisManager$MyHandler;->sendEnrollResult(Lcom/samsung/android/camera/iris/Iris;I)V

    .line 1706
    nop

    .line 1729
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
