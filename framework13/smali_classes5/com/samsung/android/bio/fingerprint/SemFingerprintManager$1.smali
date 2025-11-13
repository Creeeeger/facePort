.class Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$1;
.super Landroid/hardware/fingerprint/IFingerprintServiceReceiver$Stub;
.source "SemFingerprintManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;

    .line 667
    iput-object p1, p0, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$1;->this$0:Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;

    invoke-direct {p0}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onAcquired(II)V
    .locals 5
    .param p1, "acquireInfo"    # I
    .param p2, "vendorCode"    # I

    .line 672
    iget-object v0, p0, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$1;->this$0:Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;

    invoke-static {v0}, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;->-$$Nest$fgetmHandler(Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$1;->this$0:Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;

    .line 673
    invoke-static {v1, p1}, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;->-$$Nest$mconvertAcquiredCode(Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;I)I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$1;->this$0:Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;

    invoke-static {v2}, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;->-$$Nest$fgetmContext(Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;)Landroid/content/Context;

    move-result-object v2

    .line 674
    invoke-static {v2, p1, p2}, Landroid/hardware/fingerprint/FingerprintManager;->getAcquiredString(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v2

    .line 672
    const/16 v3, 0x64

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v1, v4, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 674
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 675
    return-void
.end method

.method public blacklist onAuthenticationFailed()V
    .locals 2

    .line 684
    iget-object v0, p0, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$1;->this$0:Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;

    invoke-static {v0}, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;->-$$Nest$fgetmHandler(Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 685
    return-void
.end method

.method public blacklist onAuthenticationSucceeded(Landroid/hardware/fingerprint/Fingerprint;IZ)V
    .locals 3
    .param p1, "fp"    # Landroid/hardware/fingerprint/Fingerprint;
    .param p2, "userId"    # I
    .param p3, "isStrongBiometric"    # Z

    .line 679
    iget-object v0, p0, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$1;->this$0:Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;

    invoke-static {v0}, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;->-$$Nest$fgetmHandler(Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x65

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 680
    return-void
.end method

.method public blacklist onChallengeGenerated(IIJ)V
    .locals 0
    .param p1, "sensorId"    # I
    .param p2, "userId"    # I
    .param p3, "challenge"    # J

    .line 720
    return-void
.end method

.method public blacklist onEnrollResult(Landroid/hardware/fingerprint/Fingerprint;I)V
    .locals 0
    .param p1, "fp"    # Landroid/hardware/fingerprint/Fingerprint;
    .param p2, "remaining"    # I

    .line 712
    return-void
.end method

.method public blacklist onError(II)V
    .locals 5
    .param p1, "fpErrorCode"    # I
    .param p2, "vendor"    # I

    .line 694
    move v0, p1

    .line 695
    .local v0, "errorCode":I
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 703
    :pswitch_1
    const/16 v0, 0xa

    goto :goto_0

    .line 700
    :pswitch_2
    const/16 v0, 0x9

    .line 701
    goto :goto_0

    .line 697
    :pswitch_3
    const/4 v0, 0x7

    .line 698
    nop

    .line 706
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$1;->this$0:Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;

    invoke-static {v1}, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;->-$$Nest$fgetmHandler(Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x67

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$1;->this$0:Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;

    invoke-static {v4}, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;->-$$Nest$fgetmContext(Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;)Landroid/content/Context;

    move-result-object v4

    .line 707
    invoke-static {v4, p1, p2}, Landroid/hardware/fingerprint/FingerprintManager;->getErrorString(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v4

    .line 706
    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 707
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 708
    return-void

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public blacklist onFingerprintDetected(IIZ)V
    .locals 0
    .param p1, "sensorId"    # I
    .param p2, "userId"    # I
    .param p3, "isStrongBiometric"    # Z

    .line 690
    return-void
.end method

.method public blacklist onRemoved(Landroid/hardware/fingerprint/Fingerprint;I)V
    .locals 0
    .param p1, "fp"    # Landroid/hardware/fingerprint/Fingerprint;
    .param p2, "remaining"    # I

    .line 716
    return-void
.end method

.method public blacklist onUdfpsPointerDown(I)V
    .locals 0
    .param p1, "sensorId"    # I

    .line 724
    return-void
.end method

.method public blacklist onUdfpsPointerUp(I)V
    .locals 0
    .param p1, "sensorId"    # I

    .line 728
    return-void
.end method
