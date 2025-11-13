.class Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffConfirmDialog$1;
.super Ljava/lang/Object;
.source "AutoPowerOnOffConfirmDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffConfirmDialog;->showDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffConfirmDialog;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffConfirmDialog;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffConfirmDialog$1;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffConfirmDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 99
    iget-object p1, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffConfirmDialog$1;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffConfirmDialog;

    invoke-static {p1}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffConfirmDialog;->-$$Nest$mreleaseWakeLock(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffConfirmDialog;)V

    .line 100
    iget-object p1, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffConfirmDialog$1;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffConfirmDialog;

    invoke-static {p1}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffConfirmDialog;->-$$Nest$mcancelCountdownTimer(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffConfirmDialog;)V

    .line 101
    iget-object p1, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffConfirmDialog$1;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffConfirmDialog;

    invoke-static {p1}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffConfirmDialog;->-$$Nest$mregNextAutoPowerOffAlarm(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffConfirmDialog;)V

    .line 102
    iget-object p0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffConfirmDialog$1;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffConfirmDialog;

    invoke-static {p0}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffConfirmDialog;->-$$Nest$mstartShutDown(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffConfirmDialog;)V

    return-void
.end method
