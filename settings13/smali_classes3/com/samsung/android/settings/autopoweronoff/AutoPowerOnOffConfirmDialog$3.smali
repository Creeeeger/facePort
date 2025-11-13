.class Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffConfirmDialog$3;
.super Ljava/lang/Object;
.source "AutoPowerOnOffConfirmDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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

    .line 115
    iput-object p1, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffConfirmDialog$3;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffConfirmDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    .line 118
    iget-object p1, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffConfirmDialog$3;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffConfirmDialog;

    invoke-static {p1}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffConfirmDialog;->-$$Nest$mreleaseWakeLock(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffConfirmDialog;)V

    .line 119
    iget-object p1, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffConfirmDialog$3;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffConfirmDialog;

    invoke-static {p1}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffConfirmDialog;->-$$Nest$mcancelCountdownTimer(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffConfirmDialog;)V

    .line 120
    iget-object p1, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffConfirmDialog$3;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffConfirmDialog;

    invoke-static {p1}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffConfirmDialog;->-$$Nest$mregNextAutoPowerOffAlarm(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffConfirmDialog;)V

    .line 121
    iget-object p0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffConfirmDialog$3;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffConfirmDialog;

    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->finish()V

    return-void
.end method
