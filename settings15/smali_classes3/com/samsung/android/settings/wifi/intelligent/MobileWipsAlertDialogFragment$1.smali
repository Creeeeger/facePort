.class public final Lcom/samsung/android/settings/wifi/intelligent/MobileWipsAlertDialogFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/wifi/intelligent/MobileWipsAlertDialogFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/wifi/intelligent/MobileWipsAlertDialogFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/MobileWipsAlertDialogFragment$1;->this$0:Lcom/samsung/android/settings/wifi/intelligent/MobileWipsAlertDialogFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/MobileWipsAlertDialogFragment$1;->this$0:Lcom/samsung/android/settings/wifi/intelligent/MobileWipsAlertDialogFragment;

    iget-object p1, p1, Lcom/samsung/android/settings/wifi/intelligent/MobileWipsAlertDialogFragment;->mDialog:Landroid/app/AlertDialog;

    if-eqz p1, :cond_0

    const-string p1, "com.samsung.android.settings.wifi.intelligent.MOBILE_WIPS_ALERT_DIALOG_FINISH"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "MobileWipsAlertDialogFragment"

    const-string p2, "onReceive: Close alert dialog"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/intelligent/MobileWipsAlertDialogFragment$1;->this$0:Lcom/samsung/android/settings/wifi/intelligent/MobileWipsAlertDialogFragment;

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/MobileWipsAlertDialogFragment;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/intelligent/MobileWipsAlertDialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    :cond_0
    return-void
.end method
