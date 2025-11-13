.class Lcom/samsung/android/settings/wifi/intelligent/MobileWipsAlertDialogFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "MobileWipsAlertDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/wifi/intelligent/MobileWipsAlertDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/intelligent/MobileWipsAlertDialogFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/intelligent/MobileWipsAlertDialogFragment;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/MobileWipsAlertDialogFragment$1;->this$0:Lcom/samsung/android/settings/wifi/intelligent/MobileWipsAlertDialogFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 62
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/MobileWipsAlertDialogFragment$1;->this$0:Lcom/samsung/android/settings/wifi/intelligent/MobileWipsAlertDialogFragment;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/intelligent/MobileWipsAlertDialogFragment;->-$$Nest$fgetmDialog(Lcom/samsung/android/settings/wifi/intelligent/MobileWipsAlertDialogFragment;)Landroid/app/AlertDialog;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.samsung.android.settings.wifi.intelligent.MOBILE_WIPS_ALERT_DIALOG_FINISH"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "MobileWipsAlertDialogFragment"

    const-string p2, "onReceive: Close alert dialog"

    .line 63
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/intelligent/MobileWipsAlertDialogFragment$1;->this$0:Lcom/samsung/android/settings/wifi/intelligent/MobileWipsAlertDialogFragment;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/intelligent/MobileWipsAlertDialogFragment;->-$$Nest$fgetmDialog(Lcom/samsung/android/settings/wifi/intelligent/MobileWipsAlertDialogFragment;)Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/intelligent/MobileWipsAlertDialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    :cond_0
    return-void
.end method
