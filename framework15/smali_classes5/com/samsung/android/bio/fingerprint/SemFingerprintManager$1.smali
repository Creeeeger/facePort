.class Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$1;
.super Landroid/hardware/fingerprint/IFingerprintServiceReceiver$Stub;
.source "SemFingerprintManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;-><init>(Landroid/content/Context;Landroid/hardware/fingerprint/FingerprintManager;)V
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
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$1;->this$0:Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;

    invoke-direct {p0}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onAcquired(II)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$1;->this$0:Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;

    invoke-static {v0}, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;->-$$Nest$fgetmHandler(Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x64

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public blacklist onAuthenticationFailed()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$1;->this$0:Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;

    invoke-static {v0}, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;->-$$Nest$fgetmHandler(Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public blacklist onAuthenticationSucceeded(Landroid/hardware/fingerprint/Fingerprint;IZ)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$1;->this$0:Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;

    invoke-static {v0}, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;->-$$Nest$fgetmHandler(Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x65

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public blacklist onChallengeGenerated(IIJ)V
    .locals 0

    return-void
.end method

.method public blacklist onEnrollResult(Landroid/hardware/fingerprint/Fingerprint;I)V
    .locals 0

    return-void
.end method

.method public blacklist onError(II)V
    .locals 5

    move v0, p1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    const/16 v0, 0xa

    goto :goto_0

    :pswitch_2
    const/16 v0, 0x9

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x7

    nop

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$1;->this$0:Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;

    invoke-static {v1}, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;->-$$Nest$fgetmHandler(Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$1;->this$0:Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;

    invoke-static {v2}, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;->-$$Nest$fgetmContext(Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p1, p2}, Landroid/hardware/fingerprint/FingerprintManager;->getErrorString(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x67

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v0, v4, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

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

    return-void
.end method

.method public blacklist onRemoved(Landroid/hardware/fingerprint/Fingerprint;I)V
    .locals 0

    return-void
.end method

.method public blacklist onUdfpsOverlayShown()V
    .locals 0

    return-void
.end method

.method public blacklist onUdfpsPointerDown(I)V
    .locals 0

    return-void
.end method

.method public blacklist onUdfpsPointerUp(I)V
    .locals 0

    return-void
.end method
