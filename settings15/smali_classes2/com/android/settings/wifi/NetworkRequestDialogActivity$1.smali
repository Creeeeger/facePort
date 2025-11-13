.class public final Lcom/android/settings/wifi/NetworkRequestDialogActivity$1;
.super Landroid/os/Handler;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/android/settings/wifi/NetworkRequestDialogActivity;


# direct methods
.method public constructor <init>(Lcom/android/settings/wifi/NetworkRequestDialogActivity;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wifi/NetworkRequestDialogActivity$1;->this$0:Lcom/android/settings/wifi/NetworkRequestDialogActivity;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 0

    iget p1, p1, Landroid/os/Message;->what:I

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    sget-object p1, Lcom/android/settings/wifi/NetworkRequestErrorDialogFragment$ERROR_DIALOG_TYPE;->TIME_OUT:Lcom/android/settings/wifi/NetworkRequestErrorDialogFragment$ERROR_DIALOG_TYPE;

    iget-object p0, p0, Lcom/android/settings/wifi/NetworkRequestDialogActivity$1;->this$0:Lcom/android/settings/wifi/NetworkRequestDialogActivity;

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/NetworkRequestDialogActivity;->stopScanningAndPopErrorDialog(Lcom/android/settings/wifi/NetworkRequestErrorDialogFragment$ERROR_DIALOG_TYPE;)V

    :goto_0
    return-void
.end method
