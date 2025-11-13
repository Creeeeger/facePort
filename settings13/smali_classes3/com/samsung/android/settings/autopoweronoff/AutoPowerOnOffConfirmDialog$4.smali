.class Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffConfirmDialog$4;
.super Landroid/os/CountDownTimer;
.source "AutoPowerOnOffConfirmDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffConfirmDialog;->createCountdownTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffConfirmDialog;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffConfirmDialog;JJ)V
    .locals 0

    .line 157
    iput-object p1, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffConfirmDialog$4;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffConfirmDialog;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    const-string v0, "AutoPowerOnOffConfirmOnLock"

    const-string v1, "Timer expired, shutting down"

    .line 166
    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    iget-object v0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffConfirmDialog$4;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffConfirmDialog;

    invoke-static {v0}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffConfirmDialog;->-$$Nest$mreleaseWakeLock(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffConfirmDialog;)V

    .line 168
    iget-object v0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffConfirmDialog$4;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffConfirmDialog;

    invoke-static {v0}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffConfirmDialog;->-$$Nest$mcancelCountdownTimer(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffConfirmDialog;)V

    .line 169
    iget-object v0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffConfirmDialog$4;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffConfirmDialog;

    invoke-static {v0}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffConfirmDialog;->-$$Nest$mregNextAutoPowerOffAlarm(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffConfirmDialog;)V

    .line 170
    iget-object p0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffConfirmDialog$4;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffConfirmDialog;

    invoke-static {p0}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffConfirmDialog;->-$$Nest$mstartShutDown(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffConfirmDialog;)V

    return-void
.end method

.method public onTick(J)V
    .locals 2

    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTick : millisUntilFinished = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AutoPowerOnOffConfirmOnLock"

    invoke-static {v1, v0}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    iget-object p0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffConfirmDialog$4;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffConfirmDialog;

    invoke-static {p0, p1, p2}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffConfirmDialog;->-$$Nest$mupdateText(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffConfirmDialog;J)V

    return-void
.end method
