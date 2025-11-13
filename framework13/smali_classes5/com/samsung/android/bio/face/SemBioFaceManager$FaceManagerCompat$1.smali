.class Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat$1;
.super Landroid/hardware/face/IFaceServiceReceiver$Stub;
.source "SemBioFaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->initHAL()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;)V
    .locals 0
    .param p1, "this$1"    # Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;

    .line 1741
    iput-object p1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat$1;->this$1:Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;

    invoke-direct {p0}, Landroid/hardware/face/IFaceServiceReceiver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onAcquired(II)V
    .locals 4
    .param p1, "acquireInfo"    # I
    .param p2, "vendorCode"    # I

    .line 1749
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat$1;->this$1:Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;

    iget-object v0, v0, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-static {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->-$$Nest$fgetmContext(Lcom/samsung/android/bio/face/SemBioFaceManager;)Landroid/content/Context;

    move-result-object v0

    .line 1750
    invoke-static {v0, p1, p2}, Landroid/hardware/face/FaceManager;->getHelpMessage(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v0

    .line 1751
    .local v0, "helpMsg":Ljava/lang/String;
    invoke-static {p1, p2}, Lcom/samsung/android/bio/face/SemBioFaceManager;->getSepMappedAcquiredInfo(II)I

    move-result p1

    .line 1752
    iget-object v1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat$1;->this$1:Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;

    iget-object v1, v1, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-static {v1}, Lcom/samsung/android/bio/face/SemBioFaceManager;->-$$Nest$fgetmHandler(Lcom/samsung/android/bio/face/SemBioFaceManager;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x65

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1754
    return-void
.end method

.method public blacklist onAuthenticationFailed()V
    .locals 2

    .line 1771
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat$1;->this$1:Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;

    iget-object v0, v0, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-static {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->-$$Nest$fgetmHandler(Lcom/samsung/android/bio/face/SemBioFaceManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x67

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1772
    return-void
.end method

.method public blacklist onAuthenticationFrame(Landroid/hardware/face/FaceAuthenticationFrame;)V
    .locals 2
    .param p1, "frame"    # Landroid/hardware/face/FaceAuthenticationFrame;

    .line 1802
    invoke-virtual {p1}, Landroid/hardware/face/FaceAuthenticationFrame;->getData()Landroid/hardware/face/FaceDataFrame;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/face/FaceDataFrame;->getAcquiredInfo()I

    move-result v0

    invoke-virtual {p1}, Landroid/hardware/face/FaceAuthenticationFrame;->getData()Landroid/hardware/face/FaceDataFrame;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/face/FaceDataFrame;->getVendorCode()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat$1;->onAcquired(II)V

    .line 1803
    return-void
.end method

.method public blacklist onAuthenticationSucceeded(Landroid/hardware/face/Face;IZ)V
    .locals 3
    .param p1, "face"    # Landroid/hardware/face/Face;
    .param p2, "userId"    # I
    .param p3, "isStrongBiometric"    # Z

    .line 1758
    new-instance v0, Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationResult;

    iget-object v1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat$1;->this$1:Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;

    iget-object v1, v1, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-static {v1}, Lcom/samsung/android/bio/face/SemBioFaceManager;->-$$Nest$fgetmCryptoObject(Lcom/samsung/android/bio/face/SemBioFaceManager;)Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;

    move-result-object v1

    .line 1760
    if-nez p1, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/samsung/android/bio/face/SemBioFace;

    invoke-direct {v2, p1}, Lcom/samsung/android/bio/face/SemBioFace;-><init>(Landroid/hardware/face/Face;)V

    :goto_0
    invoke-direct {v0, v1, v2, p2, p3}, Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationResult;-><init>(Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;Lcom/samsung/android/bio/face/SemBioFace;IZ)V

    .line 1761
    .local v0, "result":Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationResult;
    iget-object v1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat$1;->this$1:Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;

    iget-object v1, v1, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-static {v1}, Lcom/samsung/android/bio/face/SemBioFaceManager;->-$$Nest$fgetmHandler(Lcom/samsung/android/bio/face/SemBioFaceManager;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x66

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1762
    return-void
.end method

.method public blacklist onChallengeGenerated(IIJ)V
    .locals 0
    .param p1, "sensorId"    # I
    .param p2, "userId"    # I
    .param p3, "challenge"    # J

    .line 1798
    return-void
.end method

.method public blacklist onEnrollResult(Landroid/hardware/face/Face;I)V
    .locals 0
    .param p1, "face"    # Landroid/hardware/face/Face;
    .param p2, "remaining"    # I

    .line 1745
    return-void
.end method

.method public blacklist onEnrollmentFrame(Landroid/hardware/face/FaceEnrollFrame;)V
    .locals 0
    .param p1, "frame"    # Landroid/hardware/face/FaceEnrollFrame;

    .line 1807
    return-void
.end method

.method public blacklist onError(II)V
    .locals 4
    .param p1, "error"    # I
    .param p2, "vendorCode"    # I

    .line 1776
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat$1;->this$1:Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;

    iget-object v0, v0, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-static {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->-$$Nest$fgetmContext(Lcom/samsung/android/bio/face/SemBioFaceManager;)Landroid/content/Context;

    move-result-object v0

    .line 1777
    invoke-static {v0, p1, p2}, Landroid/hardware/face/FaceManager;->getErrorString(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v0

    .line 1779
    .local v0, "errMsg":Ljava/lang/String;
    invoke-static {p1, p2}, Lcom/samsung/android/bio/face/SemBioFaceManager;->getSepMappedError(II)I

    move-result p1

    .line 1781
    iget-object v1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat$1;->this$1:Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;

    iget-object v1, v1, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-static {v1}, Lcom/samsung/android/bio/face/SemBioFaceManager;->-$$Nest$fgetmHandler(Lcom/samsung/android/bio/face/SemBioFaceManager;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x68

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1782
    return-void
.end method

.method public blacklist onFaceDetected(IIZ)V
    .locals 0
    .param p1, "sensorId"    # I
    .param p2, "userId"    # I
    .param p3, "isStrongBiometric"    # Z

    .line 1767
    return-void
.end method

.method public blacklist onFeatureGet(Z[I[Z)V
    .locals 0
    .param p1, "success"    # Z
    .param p2, "feature"    # [I
    .param p3, "value"    # [Z

    .line 1794
    return-void
.end method

.method public blacklist onFeatureSet(ZI)V
    .locals 0
    .param p1, "success"    # Z
    .param p2, "feature"    # I

    .line 1790
    return-void
.end method

.method public blacklist onRemoved(Landroid/hardware/face/Face;I)V
    .locals 0
    .param p1, "face"    # Landroid/hardware/face/Face;
    .param p2, "remaining"    # I

    .line 1786
    return-void
.end method

.method public blacklist onSemAuthenticationSucceeded(Landroid/hardware/face/Face;IZ[B)V
    .locals 1
    .param p1, "face"    # Landroid/hardware/face/Face;
    .param p2, "userId"    # I
    .param p3, "isStrongBiometric"    # Z
    .param p4, "fidoResultData"    # [B

    .line 1811
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat$1;->this$1:Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;

    iget-object v0, v0, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-static {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->-$$Nest$fgetmCryptoObject(Lcom/samsung/android/bio/face/SemBioFaceManager;)Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1812
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat$1;->this$1:Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;

    iget-object v0, v0, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-static {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->-$$Nest$fgetmCryptoObject(Lcom/samsung/android/bio/face/SemBioFaceManager;)Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;

    move-result-object v0

    invoke-static {v0, p4}, Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;->-$$Nest$msetFidoResultData(Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;[B)V

    .line 1814
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat$1;->onAuthenticationSucceeded(Landroid/hardware/face/Face;IZ)V

    .line 1815
    return-void
.end method

.method public blacklist onSemImageProcessed([BIIIILandroid/os/Bundle;)V
    .locals 0
    .param p1, "data"    # [B
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "orientation"    # I
    .param p5, "imageFormat"    # I
    .param p6, "b"    # Landroid/os/Bundle;

    .line 1819
    return-void
.end method

.method public blacklist onSemStatusUpdate(ILjava/lang/String;)V
    .locals 0
    .param p1, "status"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .line 1823
    return-void
.end method
