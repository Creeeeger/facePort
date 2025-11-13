.class public final Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffConfirmDialog$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffConfirmDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffConfirmDialog;I)V
    .locals 0

    iput p2, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffConfirmDialog$1;->$r8$classId:I

    iput-object p1, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffConfirmDialog$1;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffConfirmDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget p1, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffConfirmDialog$1;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffConfirmDialog$1;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffConfirmDialog;

    sget p2, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffConfirmDialog;->$r8$clinit:I

    invoke-virtual {p1}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffConfirmDialog;->releaseWakeLock()V

    iget-object p1, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffConfirmDialog$1;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffConfirmDialog;

    invoke-virtual {p1}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffConfirmDialog;->cancelCountdownTimer()V

    iget-object p1, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffConfirmDialog$1;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffConfirmDialog;

    invoke-virtual {p1}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffConfirmDialog;->regNextAutoPowerOffAlarm()V

    iget-object p0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffConfirmDialog$1;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffConfirmDialog;

    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->finish()V

    return-void

    :pswitch_0
    iget-object p1, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffConfirmDialog$1;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffConfirmDialog;

    sget p2, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffConfirmDialog;->$r8$clinit:I

    invoke-virtual {p1}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffConfirmDialog;->releaseWakeLock()V

    iget-object p1, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffConfirmDialog$1;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffConfirmDialog;

    invoke-virtual {p1}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffConfirmDialog;->cancelCountdownTimer()V

    iget-object p1, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffConfirmDialog$1;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffConfirmDialog;

    invoke-virtual {p1}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffConfirmDialog;->regNextAutoPowerOffAlarm()V

    iget-object p0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffConfirmDialog$1;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffConfirmDialog;

    invoke-static {p0}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffConfirmDialog;->-$$Nest$mstartShutDown(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffConfirmDialog;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
