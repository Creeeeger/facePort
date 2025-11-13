.class public final Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings$1;
.super Landroid/os/CountDownTimer;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;)V
    .locals 4

    iput-object p1, p0, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings$1;->this$0:Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;

    const-wide/16 v0, 0x4e20

    const-wide/16 v2, 0x3e8

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public final onFinish()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mNoResponseTimer timed out when waiting for message "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings$1;->this$0:Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;

    iget v1, v1, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;->mWaitingMessage:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SoftwareUpdateSettings"

    invoke-static {v1, v0}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings$1;->this$0:Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;

    iget-object v1, v0, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;->mHandler:Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings$2;

    iget v0, v0, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;->mWaitingMessage:I

    invoke-virtual {v1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const/4 v1, -0x1

    iput v1, v0, Landroid/os/Message;->arg1:I

    iget-object p0, p0, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings$1;->this$0:Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;

    iget-object p0, p0, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;->mHandler:Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings$2;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final onTick(J)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mNoResponseTimer "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " onTick + seconds remaining: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v1, 0x3e8

    div-long/2addr p1, v1

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SoftwareUpdateSettings"

    invoke-static {p1, p0}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
