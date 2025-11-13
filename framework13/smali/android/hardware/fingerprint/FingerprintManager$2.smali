.class Landroid/hardware/fingerprint/FingerprintManager$2;
.super Landroid/hardware/fingerprint/IFingerprintServiceReceiver$Stub;
.source "FingerprintManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/fingerprint/FingerprintManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/hardware/fingerprint/FingerprintManager;


# direct methods
.method constructor blacklist <init>(Landroid/hardware/fingerprint/FingerprintManager;)V
    .locals 0
    .param p1, "this$0"    # Landroid/hardware/fingerprint/FingerprintManager;

    .line 1672
    iput-object p1, p0, Landroid/hardware/fingerprint/FingerprintManager$2;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-direct {p0}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onAcquired(II)V
    .locals 2
    .param p1, "acquireInfo"    # I
    .param p2, "vendorCode"    # I

    .line 1681
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager$2;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-static {v0}, Landroid/hardware/fingerprint/FingerprintManager;->-$$Nest$fgetmHandler(Landroid/hardware/fingerprint/FingerprintManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x65

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1682
    return-void
.end method

.method public blacklist onAuthenticationFailed()V
    .locals 2

    .line 1699
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager$2;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-static {v0}, Landroid/hardware/fingerprint/FingerprintManager;->-$$Nest$fgetmHandler(Landroid/hardware/fingerprint/FingerprintManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x67

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1700
    return-void
.end method

.method public blacklist onAuthenticationSucceeded(Landroid/hardware/fingerprint/Fingerprint;IZ)V
    .locals 2
    .param p1, "fp"    # Landroid/hardware/fingerprint/Fingerprint;
    .param p2, "userId"    # I
    .param p3, "isStrongBiometric"    # Z

    .line 1687
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager$2;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-static {v0}, Landroid/hardware/fingerprint/FingerprintManager;->-$$Nest$fgetmHandler(Landroid/hardware/fingerprint/FingerprintManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x66

    invoke-virtual {v0, v1, p2, p3, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1688
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1689
    return-void
.end method

.method public blacklist onChallengeGenerated(IIJ)V
    .locals 3
    .param p1, "sensorId"    # I
    .param p2, "userId"    # I
    .param p3, "challenge"    # J

    .line 1714
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager$2;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-static {v0}, Landroid/hardware/fingerprint/FingerprintManager;->-$$Nest$fgetmHandler(Landroid/hardware/fingerprint/FingerprintManager;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0x6a

    invoke-virtual {v0, v2, p1, p2, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1715
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1716
    return-void
.end method

.method public blacklist onEnrollResult(Landroid/hardware/fingerprint/Fingerprint;I)V
    .locals 3
    .param p1, "fp"    # Landroid/hardware/fingerprint/Fingerprint;
    .param p2, "remaining"    # I

    .line 1676
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager$2;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-static {v0}, Landroid/hardware/fingerprint/FingerprintManager;->-$$Nest$fgetmHandler(Landroid/hardware/fingerprint/FingerprintManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x64

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1677
    return-void
.end method

.method public blacklist onError(II)V
    .locals 2
    .param p1, "error"    # I
    .param p2, "vendorCode"    # I

    .line 1704
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager$2;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-static {v0}, Landroid/hardware/fingerprint/FingerprintManager;->-$$Nest$fgetmHandler(Landroid/hardware/fingerprint/FingerprintManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x68

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1705
    return-void
.end method

.method public blacklist onFingerprintDetected(IIZ)V
    .locals 3
    .param p1, "sensorId"    # I
    .param p2, "userId"    # I
    .param p3, "isStrongBiometric"    # Z

    .line 1693
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager$2;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-static {v0}, Landroid/hardware/fingerprint/FingerprintManager;->-$$Nest$fgetmHandler(Landroid/hardware/fingerprint/FingerprintManager;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0x6b

    invoke-virtual {v0, v2, p1, p2, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1694
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1695
    return-void
.end method

.method public blacklist onRemoved(Landroid/hardware/fingerprint/Fingerprint;I)V
    .locals 3
    .param p1, "fp"    # Landroid/hardware/fingerprint/Fingerprint;
    .param p2, "remaining"    # I

    .line 1709
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager$2;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-static {v0}, Landroid/hardware/fingerprint/FingerprintManager;->-$$Nest$fgetmHandler(Landroid/hardware/fingerprint/FingerprintManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x69

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1710
    return-void
.end method

.method public blacklist onUdfpsPointerDown(I)V
    .locals 3
    .param p1, "sensorId"    # I

    .line 1720
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager$2;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-static {v0}, Landroid/hardware/fingerprint/FingerprintManager;->-$$Nest$fgetmHandler(Landroid/hardware/fingerprint/FingerprintManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x6c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1721
    return-void
.end method

.method public blacklist onUdfpsPointerUp(I)V
    .locals 3
    .param p1, "sensorId"    # I

    .line 1725
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager$2;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-static {v0}, Landroid/hardware/fingerprint/FingerprintManager;->-$$Nest$fgetmHandler(Landroid/hardware/fingerprint/FingerprintManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x6d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1726
    return-void
.end method
