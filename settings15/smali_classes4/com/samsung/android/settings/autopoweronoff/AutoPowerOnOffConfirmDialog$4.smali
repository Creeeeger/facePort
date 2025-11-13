.class public final Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffConfirmDialog$4;
.super Landroid/os/CountDownTimer;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffConfirmDialog;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffConfirmDialog;J)V
    .locals 2

    iput-object p1, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffConfirmDialog$4;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffConfirmDialog;

    const-wide/16 v0, 0x3e8

    invoke-direct {p0, p2, p3, v0, v1}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public final onFinish()V
    .locals 2

    const-string v0, "AutoPowerOnOffConfirmOnLock"

    const-string v1, "Timer expired, shutting down"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffConfirmDialog$4;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffConfirmDialog;

    sget v1, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffConfirmDialog;->$r8$clinit:I

    invoke-virtual {v0}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffConfirmDialog;->releaseWakeLock()V

    iget-object v0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffConfirmDialog$4;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffConfirmDialog;

    invoke-virtual {v0}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffConfirmDialog;->cancelCountdownTimer()V

    iget-object v0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffConfirmDialog$4;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffConfirmDialog;

    invoke-virtual {v0}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffConfirmDialog;->regNextAutoPowerOffAlarm()V

    iget-object p0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffConfirmDialog$4;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffConfirmDialog;

    invoke-static {p0}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffConfirmDialog;->-$$Nest$mstartShutDown(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffConfirmDialog;)V

    return-void
.end method

.method public final onTick(J)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onTick : millisUntilFinished = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AutoPowerOnOffConfirmOnLock"

    invoke-static {v1, v0}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffConfirmDialog$4;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffConfirmDialog;

    sget v0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffConfirmDialog;->$r8$clinit:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    :goto_0
    move-wide p1, v0

    goto :goto_1

    :cond_0
    const-wide/16 v0, 0x7530

    cmp-long v2, p1, v0

    if-lez v2, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    iput-wide p1, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffConfirmDialog;->mRemainTime:J

    const-wide/16 v0, 0x3e8

    div-long/2addr p1, v0

    const-wide/16 v0, 0x1

    cmp-long v0, p1, v0

    const v1, 0x7f120034

    const v2, 0x7f120035

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result p2

    if-eqz p2, :cond_2

    move v1, v2

    :cond_2
    const/4 p2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v1, p2, v0}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffConfirmDialog;->mConfirmText:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v3

    if-eqz v3, :cond_4

    move v1, v2

    :cond_4
    long-to-int v2, p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, v1, v2, p1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffConfirmDialog;->mConfirmText:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    return-void
.end method
