.class public Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffConfirmDialog;
.super Lcom/android/internal/app/AlertActivity;
.source "AutoPowerOnOffConfirmDialog.java"


# instance fields
.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mConfirmText:Landroid/widget/TextView;

.field private mContext:Landroid/content/Context;

.field private mCountdownTimer:Landroid/os/CountDownTimer;

.field private mCpuWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static bridge synthetic -$$Nest$mcancelCountdownTimer(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffConfirmDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffConfirmDialog;->cancelCountdownTimer()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mregNextAutoPowerOffAlarm(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffConfirmDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffConfirmDialog;->regNextAutoPowerOffAlarm()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mreleaseWakeLock(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffConfirmDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffConfirmDialog;->releaseWakeLock()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstartShutDown(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffConfirmDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffConfirmDialog;->startShutDown()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateText(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffConfirmDialog;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffConfirmDialog;->updateText(J)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    return-void
.end method

.method private acquireWakeLock()V
    .locals 3

    .line 140
    iget-object v0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffConfirmDialog;->mContext:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 141
    invoke-direct {p0}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffConfirmDialog;->releaseWakeLock()V

    const v1, 0x3000000a

    const-string v2, "AutoPowerOffConfirm"

    .line 142
    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffConfirmDialog;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 146
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    return-void
.end method

.method private cancelCountdownTimer()V
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffConfirmDialog;->mCountdownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 177
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    const/4 v0, 0x0

    .line 178
    iput-object v0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffConfirmDialog;->mCountdownTimer:Landroid/os/CountDownTimer;

    :cond_0
    return-void
.end method

.method private createCountdownTimer()V
    .locals 7

    .line 157
    new-instance v6, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffConfirmDialog$4;

    const-wide/16 v2, 0x7530

    const-wide/16 v4, 0x3e8

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffConfirmDialog$4;-><init>(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffConfirmDialog;JJ)V

    .line 172
    invoke-virtual {v6}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffConfirmDialog;->mCountdownTimer:Landroid/os/CountDownTimer;

    return-void
.end method

.method private getContentView()Landroid/view/View;
    .locals 7

    .line 130
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/settings/R$layout;->sec_auto_power_off_confirm:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 131
    sget v1, Lcom/android/settings/R$id;->confirmText:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffConfirmDialog;->mConfirmText:Landroid/widget/TextView;

    .line 133
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$plurals;->sec_auto_power_off_dialog_text_plurals:I

    const-wide/16 v3, 0x1e

    long-to-int v5, v3

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v6, v4

    invoke-virtual {v1, v2, v5, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 134
    iget-object p0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffConfirmDialog;->mConfirmText:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method private regNextAutoPowerOffAlarm()V
    .locals 3

    .line 208
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.settings.action.SET_AUTO_POWER_OFF"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.android.settings"

    .line 209
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "power_off_reg"

    const/4 v2, 0x1

    .line 210
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "by_user"

    const/4 v2, 0x0

    .line 211
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 212
    iget-object p0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffConfirmDialog;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private releaseWakeLock()V
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffConfirmDialog;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 151
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    const/4 v0, 0x0

    .line 152
    iput-object v0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffConfirmDialog;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    :cond_0
    return-void
.end method

.method private showDialog()V
    .locals 3

    .line 90
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 91
    invoke-direct {p0}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffConfirmDialog;->getContentView()Landroid/view/View;

    move-result-object v1

    .line 92
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 93
    sget v1, Lcom/android/settings/R$string;->sec_auto_power_off_dialog_title:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 94
    sget v1, Lcom/android/settings/R$string;->common_ok:I

    new-instance v2, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffConfirmDialog$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffConfirmDialog$1;-><init>(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffConfirmDialog;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 105
    sget v1, Lcom/android/settings/R$string;->common_cancel:I

    new-instance v2, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffConfirmDialog$2;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffConfirmDialog$2;-><init>(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffConfirmDialog;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 115
    new-instance v1, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffConfirmDialog$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffConfirmDialog$3;-><init>(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffConfirmDialog;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 125
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffConfirmDialog;->mAlertDialog:Landroid/app/AlertDialog;

    .line 126
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private startShutDown()V
    .locals 3

    .line 200
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.internal.intent.action.REQUEST_SHUTDOWN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.extra.KEY_CONFIRM"

    const/4 v2, 0x0

    .line 201
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 202
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "android.intent.extra.REBOOT_REASON"

    const-string v2, "[AutoPowerOnOff] AutoPower off shudown"

    .line 203
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 204
    invoke-virtual {p0, v0}, Lcom/android/internal/app/AlertActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private updateText(J)V
    .locals 5

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    const-wide/16 v3, 0x7530

    if-gez v2, :cond_0

    move-wide p1, v0

    goto :goto_0

    :cond_0
    cmp-long v0, p1, v3

    if-lez v0, :cond_1

    move-wide p1, v3

    :cond_1
    :goto_0
    const-wide/16 v0, 0x3e8

    .line 189
    div-long/2addr p1, v0

    const-wide/16 v0, 0x1

    cmp-long v0, p1, v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    .line 190
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/settings/R$plurals;->sec_auto_power_off_dialog_text_plurals:I

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v1

    invoke-virtual {p1, p2, v2, v0}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 191
    iget-object p0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffConfirmDialog;->mConfirmText:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 194
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/android/settings/R$plurals;->sec_auto_power_off_dialog_text_plurals:I

    long-to-int v4, p1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v2, v1

    invoke-virtual {v0, v3, v4, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 195
    iget-object p0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffConfirmDialog;->mConfirmText:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 50
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "AutoPowerOnOffConfirmOnLock"

    const-string v0, "onCreate"

    .line 52
    invoke-static {p1, v0}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffConfirmDialog;->mContext:Landroid/content/Context;

    .line 55
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const v0, 0x280080

    .line 56
    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    const/4 v0, 0x0

    .line 59
    invoke-virtual {p1, v0}, Landroid/view/Window;->setCloseOnTouchOutside(Z)V

    const/16 v0, 0x50

    .line 60
    invoke-virtual {p1, v0}, Landroid/view/Window;->setGravity(I)V

    .line 61
    invoke-direct {p0}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffConfirmDialog;->showDialog()V

    .line 63
    invoke-direct {p0}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffConfirmDialog;->createCountdownTimer()V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    const-string v0, "AutoPowerOnOffConfirmOnLock"

    const-string v1, "onDestroy()"

    .line 83
    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    invoke-direct {p0}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffConfirmDialog;->cancelCountdownTimer()V

    .line 85
    invoke-direct {p0}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffConfirmDialog;->regNextAutoPowerOffAlarm()V

    .line 86
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .locals 0

    .line 76
    invoke-direct {p0}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffConfirmDialog;->releaseWakeLock()V

    .line 77
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 69
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onResume()V

    .line 70
    invoke-direct {p0}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffConfirmDialog;->acquireWakeLock()V

    return-void
.end method
